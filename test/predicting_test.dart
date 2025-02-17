import 'dart:io';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:stargazer/features/prediction/domain/usecases/predicting_usecase.dart';
import 'package:image/image.dart' as img;
import 'package:tflite_flutter/tflite_flutter.dart';

void main() {
  group('Predicting Tests', () {
    late PredictingUsecase predictingUsecase;

    setUp(() async {
      TestWidgetsFlutterBinding.ensureInitialized();
      predictingUsecase = PredictingUsecase();
    });

    tearDown(() {
      predictingUsecase
          .dispose(); // Make sure to add a dispose method to clean up resources
    });

    test('preprocess image should return a tensor', () async {
      File image = File('lib/assets/testing/IMG_0002.jpg');
      final bytes = await image.readAsBytes();
      final imageBytes = img.decodeImage(bytes);
      final tensor = predictingUsecase.preprocessImage(imageBytes!);
      expect(tensor.length, 1 * 224 * 224 * 3);
    });

    test('predict should return a list of double', () async {
      File image = File('lib/assets/testing/IMG_0002.jpg');
      // when(predictingUsecase.call(any)).thenAnswer((_) async {
      //   return [0.1, 0.2, 0.7];
      // });
      final output = await predictingUsecase.call(XFile(image.path));
      print(output);
    });
  });
}
