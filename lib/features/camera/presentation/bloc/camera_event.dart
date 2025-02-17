part of 'camera_bloc.dart';

@freezed
class CameraEvent with _$CameraEvent {
  const factory CameraEvent.initialized() = _Initialized;
  const factory CameraEvent.captured() = _Captured;
  const factory CameraEvent.stopped() = _Stopped;
  const factory CameraEvent.cameraLensDirectionChanged() =
      _CameraLensDirectionChanged;
  const factory CameraEvent.openGallery() = _OpenGallery;
}
