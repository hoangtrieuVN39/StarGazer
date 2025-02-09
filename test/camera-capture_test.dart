import 'package:camera/camera.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:stargazer/features/camera/presentation/bloc/camera_bloc.dart';
import 'package:bloc_test/bloc_test.dart';

void main() {
  group('Camera Capture Tests', () {
    late CameraBloc cameraBloc;

    setUp(() {
      cameraBloc = CameraBloc();
    });

    test('Initial state should be CameraInitial', () {
      expect(cameraBloc.state.CameraInitial, true);
    });

    test('CameraCaptureSuccess should contain image path', () {
      cameraBloc.add(const CameraEvent.captured());
      expect(cameraBloc.state.image, isA<XFile>());
    });


    // test('CameraCaptureFailure should contain error message', () {
    //   final failureState = CameraCaptureFailure(
    //     error: 'Camera permission denied',
    //   );
    //   expect(failureState.error, 'Camera permission denied');
    // });
  });

  // group('Camera Utils Tests', () {
  //   test('Image path should be valid', () {
  //     final imagePath = generateImagePath(); // Implement this utility function
  //     expect(imagePath, matches(RegExp(r'^[\w/\-. ]+$')));
  //   });
  // });
}
