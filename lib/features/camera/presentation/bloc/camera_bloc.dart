import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:camera/camera.dart';
import 'package:stargazer/features/camera/presentation/camera_utils.dart';
import 'package:image_picker/image_picker.dart';

part 'camera_event.dart';
part 'camera_state.dart';
part 'camera_bloc.freezed.dart';

class CameraBloc extends Bloc<CameraEvent, CameraState> {
  final CameraUtils cameraUtils = CameraUtils();
  late CameraController cameraController;
  CameraLensDirection cameraLensDirection = CameraLensDirection.back;
  ResolutionPreset resolutionPreset = ResolutionPreset.high;

  CameraController? getCameraController() =>
      state.CameraInitial ? cameraController : null;

  CameraBloc() : super(const CameraState()) {
    on<_Captured>((event, emit) async {
      if (!state.CameraInitial) return;
      try {
        final image = await cameraController.takePicture();
        emit(state.copyWith(CameraCaptureSuccess: true, image: image));
      } catch (e) {
        emit(state.copyWith(CameraCaptureFailure: true));
      }
    });

    on<_Initialized>((event, emit) async {
      try {
        cameraController = await cameraUtils.getCameraController(
          resolutionPreset,
          cameraLensDirection,
        );
        await cameraController.initialize();
        emit(state.copyWith(CameraInitial: true));
      } catch (e) {
        emit(state.copyWith(CameraFailure: true));
      }
    });

    on<_CameraLensDirectionChanged>((event, emit) async {
      try {
        emit(state.copyWith(CameraInitial: false));
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
        emit(state.copyWith(CameraInitial: true));
      } catch (e) {
        emit(state.copyWith(CameraFailure: true));
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
        emit(state.copyWith(openGallery: false, CameraFailure: true));
      }
    });

    on<_Stopped>((event, emit) async {
      if (!state.CameraInitial) return;
      try {
        await cameraController.dispose();
        emit(state.copyWith(CameraFailure: true));
      } catch (e) {
        emit(state.copyWith(CameraFailure: true));
      }
    });

    add(const CameraEvent.initialized());
  }

  @override
  Future<void> close() async {
    if (state.CameraInitial) {
      await cameraController.dispose();
    }
    return super.close();
  }
}
