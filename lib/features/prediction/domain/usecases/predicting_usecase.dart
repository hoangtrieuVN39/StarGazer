import 'package:camera/camera.dart';
import 'package:tflite_flutter/tflite_flutter.dart';
import 'package:image/image.dart' as img;
import 'dart:io';
import 'dart:typed_data';
import 'dart:io' show Platform;
import 'package:path_provider/path_provider.dart';

class PredictingUsecase {
  static const imageSize = 224; // Define your model's required image size
  Interpreter? _interpreter;

  Future<XFile> call(XFile imageFile) async {
    // Ensure interpreter is initialized
    _interpreter = await Interpreter.fromAsset('lib/assets/model/model.tflite');

    // Read the image file
    final File file = File(imageFile.path);
    final bytes = await file.readAsBytes();

    // Decode and preprocess the image
    final image = img.decodeImage(bytes);
    if (image == null) throw Exception('Failed to decode image');
    final processedImage = preprocessImage(image);

    // Run inference
    final outputShape = _interpreter!.getOutputTensor(0).shape;
    final outputSize = outputShape.reduce((a, b) => a * b);
    final output = List<double>.filled(outputSize, 0).reshape(outputShape);

    _interpreter!.run(processedImage, output);

    return drawPrediction(imageFile, output);
  }

  Future<XFile> drawPrediction(XFile image, List<dynamic> prediction) async {
    final file = File(image.path);
    final bytes = await file.readAsBytes();
    final originalImage = img.decodeImage(bytes)!;
    final originalWidth = originalImage.width;
    final originalHeight = originalImage.height;

    // Calculate scale factors based on original image size
    final scaleX = originalWidth / imageSize;
    final scaleY = originalHeight / imageSize;

    // Process each set of coordinates (x1, y1, x2, y2)
    for (int i = 0; i + 3 < prediction.length; i += 4) {
      final x1 = prediction[i] * scaleX;
      final y1 = prediction[i + 1] * scaleY;
      final x2 = prediction[i + 2] * scaleX;
      final y2 = prediction[i + 3] * scaleY;

      // Convert to integers and clamp within image bounds
      final intX1 = x1.toInt().clamp(0, originalWidth - 1);
      final intY1 = y1.toInt().clamp(0, originalHeight - 1);
      final intX2 = x2.toInt().clamp(0, originalWidth - 1);
      final intY2 = y2.toInt().clamp(0, originalHeight - 1);

      // Draw rectangle with red border
      img.drawRect(
        originalImage,
        x1: intX1,
        y1: intY1,
        x2: intX2,
        y2: intY2,
        color: img.ColorRgba8(255, 0, 0, 255),
        thickness: 2,
      );
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
    _interpreter?.close();
    _interpreter = null;
  }
}
