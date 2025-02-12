part of 'camera_bloc.dart';

@freezed
class CameraState with _$CameraState {
  const factory CameraState({
    @Default(false) bool CameraInitial,
    @Default(false) bool CameraCaptureInProgress,
    @Default(false) bool CameraCaptureSuccess,
    @Default(false) bool CameraCaptureFailure,
    @Default(false) bool CameraFailure,
    @Default(null) XFile? image,
    @Default(CameraLensDirection.back) CameraLensDirection? cameraLensDirection,
    @Default(false) bool openGallery,
    @Default(false) bool imageSelected,
  }) = _CameraState;
}
