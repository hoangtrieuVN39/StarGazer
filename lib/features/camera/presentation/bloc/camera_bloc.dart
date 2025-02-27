import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:camera/camera.dart';
import 'package:stargazer/core/constants/route_constants.dart';
import 'package:stargazer/features/camera/presentation/camera_utils.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';

part 'camera_event.dart';
part 'camera_state.dart';
part 'camera_bloc.freezed.dart';

class CameraBloc extends Bloc<CameraEvent, CameraState> {
  final CameraUtils cameraUtils = CameraUtils();
  late CameraController cameraController;
  CameraLensDirection cameraLensDirection = CameraLensDirection.back;
  ResolutionPreset resolutionPreset = ResolutionPreset.high;

  CameraController? getCameraController() =>
      state.cameraInitial ? cameraController : null;

  CameraBloc() : super(const CameraState()) {
    on<_Captured>((event, emit) async {
      if (!state.cameraInitial) return;
      try {
        final image = await cameraController.takePicture();
        emit(state.copyWith(cameraCaptureSuccess: true, image: image));
      } catch (e) {
        emit(state.copyWith(cameraCaptureFailure: true));
      }
    });

    on<_Initialized>((event, emit) async {
      try {
        cameraController = await cameraUtils.getCameraController(
          resolutionPreset,
          cameraLensDirection,
        );
        await cameraController.initialize();
        emit(state.copyWith(cameraInitial: true));
      } catch (e) {
        emit(state.copyWith(cameraFailure: true));
      }
    });

    on<_CameraLensDirectionChanged>((event, emit) async {
      try {
        emit(state.copyWith(cameraInitial: false));
        await cameraController.dispose();
        cameraLensDirection =
            cameraLensDirection == CameraLensDirection.back
                ? CameraLensDirection.front
                : CameraLensDirection.back;
        cameraController = await cameraUtils.getCameraController(
          resolutionPreset,
          cameraLensDirection,
        );
        await cameraController.initialize();
        if (cameraController.value.isInitialized) {
          emit(
            state.copyWith(
              cameraInitial: true,
              cameraLensDirectionFailure: false,
            ),
          );
        } else {
          emit(
            state.copyWith(
              cameraInitial: false,
              cameraLensDirectionFailure: true,
            ),
          );
        }
      } catch (e) {
        emit(state.copyWith(cameraLensDirectionFailure: true));
      }
    });

    on<_OpenGallery>((event, emit) async {
      emit(state.copyWith(openGallery: true));
      try {
        final image = await ImagePicker().pickImage(
          source: ImageSource.gallery,
        );
        emit(state.copyWith(openGallery: false, image: image));
      } catch (e) {
        emit(state.copyWith(openGallery: false, cameraFailure: true));
      }
    });

    on<_Stopped>((event, emit) async {
      if (!state.cameraInitial) return;
      try {
        await cameraController.dispose();
        emit(state.copyWith(cameraFailure: true));
      } catch (e) {
        emit(state.copyWith(cameraFailure: true));
      }
    });

    add(const CameraEvent.initialized());
  }

  @override
  Future<void> close() async {
    if (state.cameraInitial) {
      await cameraController.dispose();
    }
    return super.close();
  }

  void navigateToPrediction(BuildContext context) {
    Navigator.pushReplacementNamed(context, RouteConstants.prediction);
  }
}
