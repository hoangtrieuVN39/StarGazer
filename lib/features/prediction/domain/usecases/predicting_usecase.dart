import 'package:camera/camera.dart';
import 'package:tflite_flutter/tflite_flutter.dart';
import 'package:image/image.dart' as img;
import 'dart:io';
import 'dart:typed_data';
import 'dart:io' show Platform;
import 'package:path_provider/path_provider.dart';
import 'package:stargazer/core/constants.dart';

class PredictingUsecase {
  static const imageSize = 224; // Define your model's required image size
  Interpreter? _interpreter;
  bool _isInitialized = false;

  Future<void> initialize() async {
    try {
      if (!_isInitialized) {
        _interpreter = await Interpreter.fromAsset(MODEL_PATH);
        _isInitialized = true;
      }
    } catch (e) {
      print('Error initializing interpreter: $e');
      rethrow;
    }
  }

  Future<XFile> call(XFile imageFile) async {
    // Check if interpreter is initialized
    if (!_isInitialized || _interpreter == null) {
      await initialize();
    }

    if (_interpreter == null) {
      throw StateError('Failed to initialize TFLite interpreter');
    }

    // Read the image file
    final File file = File(imageFile.path);
    final bytes = await file.readAsBytes();

    // Decode and preprocess the image
    final image = img.decodeImage(bytes);
    if (image == null) throw Exception('Failed to decode image');
    final processedImage = preprocessImage(image);

    // Reshape the input to match model's expected shape [1, 224, 224, 3]
    final inputArray = processedImage.reshape([1, imageSize, imageSize, 3]);

    // Get output shape and create output array
    final outputShape = _interpreter!.getOutputTensor(0).shape;
    final outputSize = outputShape.reduce((a, b) => a * b);
    var output = List<double>.filled(outputSize, 0).reshape(outputShape);

    try {
      _interpreter!.run(inputArray, output);
      // Extract the predictions from the nested list
      List<double> flattenedOutput = output[0]; // Get first batch
      return drawPrediction(imageFile, flattenedOutput);
    } catch (e) {
      print('Error during inference: $e');
      rethrow;
    }
  }

  Future<XFile> drawPrediction(XFile image, List<double> prediction) async {
    final file = File(image.path);
    final bytes = await file.readAsBytes();
    final originalImage = img.decodeImage(bytes)!;
    final originalWidth = originalImage.width;
    final originalHeight = originalImage.height;

    // Calculate scale factors based on original image size
    final scaleX = originalWidth / imageSize;
    final scaleY = originalHeight / imageSize;

    // Store coordinates for drawing lines
    List<Point> points = [];

    // Process each set of coordinates (x, y)
    for (int i = 0; i < prediction.length; i += 2) {
      final x = (prediction[i] * scaleX).toDouble();
      final y = (prediction[i + 1] * scaleY).toDouble();

      // Convert to integers and clamp within image bounds
      final intX = x.toInt().clamp(0, originalWidth - 1);
      final intY = y.toInt().clamp(0, originalHeight - 1);

      points.add(Point(intX, intY));

      // Draw a filled circle at each point
      img.fillCircle(
        originalImage,
        x: intX,
        y: intY,
        radius: 10,
        color: img.ColorRgba8(255, 0, 0, 255), // Red color
      );
    }

    // Draw lines connecting points within each group of 5
    for (int i = 0; i < points.length; i += 5) {
      final endIndex = (i + 5).clamp(0, points.length);
      final groupPoints = points.sublist(i, endIndex);

      // Connect points within the group
      for (int j = 0; j < groupPoints.length - 1; j++) {
        img.drawLine(
          originalImage,
          x1: groupPoints[j].x,
          y1: groupPoints[j].y,
          x2: groupPoints[j + 1].x,
          y2: groupPoints[j + 1].y,
          color: img.ColorRgba8(
            255,
            255,
            255,
            200,
          ), // White lines with some transparency
          thickness: 4,
        );
      }
    }

    // Save to temporary file
    final modifiedBytes = img.encodeJpg(originalImage);
    final tempDir = await getTemporaryDirectory();
    final tempFile = File(
      '${tempDir.path}/processed_${DateTime.now().millisecondsSinceEpoch}.jpg',
    );
    await tempFile.writeAsBytes(modifiedBytes);
    return XFile(tempFile.path);
  }

  List<double> preprocessImage(img.Image image) {
    // Resize the image
    final resizedImage = img.copyResize(
      image,
      width: imageSize,
      height: imageSize,
    );

    // Convert to RGB if needed
    final rgbImage = img.grayscale(resizedImage);

    // Create input array and normalize pixel values
    final input = Float32List(1 * imageSize * imageSize * 3);
    var pixelIndex = 0;

    for (var y = 0; y < imageSize; y++) {
      for (var x = 0; x < imageSize; x++) {
        final pixel = rgbImage.getPixel(x, y);
        // Normalize to [-1, 1] range
        input[pixelIndex++] = (pixel.r / 255.0) * 2 - 1;
        input[pixelIndex++] = (pixel.g / 255.0) * 2 - 1;
        input[pixelIndex++] = (pixel.b / 255.0) * 2 - 1;
      }
    }
    print(input);
    return input;
  }

  void dispose() {
    if (_isInitialized) {
      _interpreter?.close();
      _interpreter = null;
      _isInitialized = false;
    }
  }
}

class Point {
  final int x;
  final int y;
  Point(this.x, this.y);
}
