import 'package:camera/camera.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:stargazer/core/constants.dart';

class CameraUtils {
  Future<CameraController> getCameraController(
    ResolutionPreset resolutionPreset,
    CameraLensDirection cameraLensDirection,
  ) async {
    final cameras = await availableCameras();
    final camera = cameras.first;
    return CameraController(camera, resolutionPreset, enableAudio: false);
  }

  Future<String> getPath() async =>
      join((await getApplicationCacheDirectory()).path, IMAGE_NAME);
}
