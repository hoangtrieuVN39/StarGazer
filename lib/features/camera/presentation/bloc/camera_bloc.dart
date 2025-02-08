import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:camera/camera.dart';
import 'package:stargazer/features/camera/presentation/camera_utils.dart';

part 'camera_event.dart';
part 'camera_state.dart';
part 'camera_bloc.freezed.dart';

class CameraBloc extends Bloc<CameraEvent, CameraState> {
  final CameraUtils cameraUtils = CameraUtils();
  late CameraController cameraController;

  getCameraController() => cameraController;

  CameraBloc() : super(const CameraState()) {
    on<_Captured>((event, emit) async {
      final image = await cameraController.takePicture();
      emit(state.copyWith(CameraCaptureSuccess: true, image: image));
    });

    on<_Initialized>((event, emit) async {
      final cameras = await availableCameras();
      final camera = cameras.last;
      cameraController = CameraController(camera, ResolutionPreset.high);
      await cameraController.initialize().then((_) {
        emit(state.copyWith(CameraInitial: true));
      });
    });
    on<_Stopped>((event, emit) async {
      await cameraController.dispose();
      emit(state.copyWith(CameraFailure: true));
    });

    add(const _Initialized());
  }
}
