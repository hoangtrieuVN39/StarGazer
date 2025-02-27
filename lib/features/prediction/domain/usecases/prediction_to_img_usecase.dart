import 'dart:io';

import 'package:camera/camera.dart';
import 'package:image/image.dart' as img;
import 'package:path_provider/path_provider.dart';
import 'package:stargazer/core/constants.dart';

class PredictionToImgUsecase {
  static const imageSize = IMAGE_SIZE_1D;

  Future<XFile> call(XFile image, List<double> prediction) async {
    final file = File(image.path);
    final bytes = await file.readAsBytes();
    final originalImage = img.decodeImage(bytes)!;
    final originalWidth = originalImage.width;
    final originalHeight = originalImage.height;

    // Calculate scale factors based on original image size
    final scaleX = originalWidth / imageSize;
    final scaleY = originalHeight / imageSize;

    // Store coordinates for drawing lines
    List<Point> points = [];

    // Process each set of coordinates (x, y)
    for (int i = 0; i < prediction.length; i += 2) {
      final x = (prediction[i] * scaleX).toDouble();
      final y = (prediction[i + 1] * scaleY).toDouble();

      // Convert to integers and clamp within image bounds
      final intX = x.toInt().clamp(0, originalWidth - 1);
      final intY = y.toInt().clamp(0, originalHeight - 1);

      points.add(Point(intX, intY));

      // Draw a filled circle at each point
      img.fillCircle(
        originalImage,
        x: intX,
        y: intY,
        radius: 10,
        color: img.ColorRgba8(255, 0, 0, 255), // Red color
      );
    }

    // Draw lines connecting points within each group of 5
    for (int i = 0; i < points.length; i += 5) {
      final endIndex = (i + 5).clamp(0, points.length);
      final groupPoints = points.sublist(i, endIndex);

      // Connect points within the group
      for (int j = 0; j < groupPoints.length - 1; j++) {
        img.drawLine(
          originalImage,
          x1: groupPoints[j].x,
          y1: groupPoints[j].y,
          x2: groupPoints[j + 1].x,
          y2: groupPoints[j + 1].y,
          color: img.ColorRgba8(
            255,
            255,
            255,
            200,
          ), // White lines with some transparency
          thickness: 4,
        );
      }
    }

    // Save to temporary file
    final modifiedBytes = img.encodeJpg(originalImage);
    final tempDir = await getTemporaryDirectory();
    final tempFile = File(
      '${tempDir.path}/processed_${DateTime.now().millisecondsSinceEpoch}.jpg',
    );
    await tempFile.writeAsBytes(modifiedBytes);
    return XFile(tempFile.path);
  }
}

class Point {
  final int x;
  final int y;
  Point(this.x, this.y);
}
