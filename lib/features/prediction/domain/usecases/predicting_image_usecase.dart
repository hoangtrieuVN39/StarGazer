import 'package:camera/camera.dart';
import 'package:tflite_flutter/tflite_flutter.dart';
import 'package:image/image.dart' as img;
import 'dart:io';
import 'dart:typed_data';
import 'dart:io' show Platform;
import 'package:path_provider/path_provider.dart';
import 'package:stargazer/core/constants.dart';

class PredictingImageUsecase {
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

  Future<List<double>> call(XFile imageFile) async {
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
      return flattenedOutput;
    } catch (e) {
      print('Error during inference: $e');
      rethrow;
    }
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
