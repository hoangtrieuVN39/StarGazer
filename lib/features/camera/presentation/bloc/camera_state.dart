part of 'camera_bloc.dart';

@freezed
class CameraState with _$CameraState {
  const factory CameraState({
    @Default(false) bool cameraInitial,
    @Default(false) bool cameraCaptureInProgress,
    @Default(false) bool cameraCaptureSuccess,
    @Default(false) bool cameraCaptureFailure,
    @Default(false) bool cameraFailure,
    @Default(null) XFile? image,
    @Default(CameraLensDirection.back) CameraLensDirection? cameraLensDirection,
    @Default(false) bool openGallery,
    @Default(false) bool imageSelected,
  }) = _CameraState;
}
