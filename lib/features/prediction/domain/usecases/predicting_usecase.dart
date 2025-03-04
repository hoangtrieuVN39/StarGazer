import 'dart:math';
import 'package:camera/camera.dart';
import 'package:tflite_flutter/tflite_flutter.dart';
import 'package:image/image.dart' as img;

import 'dart:typed_data';
import 'dart:io';

import 'package:path_provider/path_provider.dart';
import 'package:stargazer/core/constants.dart';

class PredictingUsecase {
  Future<String> call(List<double> prediction) async {
    if (prediction.length != 30) {
      throw ArgumentError(
        'Cần chính xác 30 điểm (3 đường chỉ x 5 điểm x 2 tọa độ)',
      );
    }

    final lines = {
      'heart': HandLine(prediction.sublist(0, 10)),
      'mind': HandLine(prediction.sublist(10, 20)),
      'life': HandLine(prediction.sublist(20, 30)),
    };

    final heartReading = _analyzeHeartLine(lines['heart']!);
    final mindReading = _analyzeMindLine(lines['mind']!);
    final lifeReading = _analyzeLifeLine(lines['life']!);

    return '''
    Đường Tình Duyên: $heartReading
    Đường Trí Đạo: $mindReading
    Đường Sinh Mệnh: $lifeReading
    ''';
  }

  String _analyzeHeartLine(HandLine line) {
    final length = line.calculateLength();
    final curvature = line.calculateCurvature();
    final branches = line.countBranches();

    if (curvature > 0.8) return 'Tình cảm nồng nhiệt, dễ yêu say đắm';
    if (length > 120) return 'Trái tim nhạy cảm, dễ tổn thương';
    if (branches > 2) return 'Đa tình, nhiều mối quan hệ phức tạp';
    return 'Tình cảm ổn định, chung thủy';
  }

  String _analyzeMindLine(HandLine line) {
    final slope = line.calculateSlope();
    final straightness = line.calculateStraightness();

    if (slope.abs() > 0.7) return 'Trí tuệ xuất chúng, tư duy sắc bén';
    if (straightness > 0.9) return 'Thực tế, logic mạnh mẽ';
    return 'Sáng tạo, trí tưởng tượng phong phú';
  }

  String _analyzeLifeLine(HandLine line) {
    final depth = line.calculateDepth();
    final breaks = line.countBreaks();

    if (depth > 0.9) return 'Sức khỏe dồi dào, trường thọ';
    if (breaks > 0) return 'Cuộc sống nhiều biến động cần lưu ý';
    return 'Năng lượng ổn định, sinh lực tốt';
  }
}

class HandLine {
  final List<Point> points;

  HandLine(List<double> coordinates) : points = _parseCoordinates(coordinates);

  static List<Point> _parseCoordinates(List<double> coords) {
    return List.generate(5, (i) => Point(coords[i * 2], coords[i * 2 + 1]));
  }

  double calculateLength() => points.first.distanceTo(points.last);

  double calculateSlope() {
    final deltaX = points.last.x - points.first.x;
    if (deltaX == 0) return double.infinity;
    return (points.last.y - points.first.y) / deltaX;
  }

  double calculateCurvature() {
    final straightLength = points.first.distanceTo(points.last);
    final totalLength = calculateTotalLength();
    return totalLength > 0 ? (totalLength / straightLength) - 1 : 0.0;
  }

  double calculateTotalLength() {
    double length = 0.0;
    for (int i = 0; i < points.length - 1; i++) {
      length += points[i].distanceTo(points[i + 1]);
    }
    return length;
  }

  double calculateStraightness() {
    final straightLength = points.first.distanceTo(points.last);
    final totalLength = calculateTotalLength();
    return totalLength > 0 ? straightLength / totalLength : 1.0;
  }

  int countBranches() {
    int count = 0;
    final avgY = points.map((p) => p.y).reduce((a, b) => a + b) / points.length;
    for (final p in points) {
      if (p.y > avgY * 1.2) count++;
    }
    return count;
  }

  int countBreaks() {
    int breaks = 0;
    for (int i = 1; i < points.length; i++) {
      if (points[i].distanceTo(points[i - 1]) > 50) breaks++;
    }
    return breaks;
  }

  double calculateDepth() {
    final start = points.first;
    final end = points.last;
    final midPoint = points[2];
    final expectedY = (start.y + end.y) / 2;
    return (midPoint.y - expectedY).abs();
  }
}

class Point {
  final double x;
  final double y;

  Point(this.x, this.y);

  double distanceTo(Point other) {
    return sqrt(pow(x - other.x, 2) + pow(y - other.y, 2));
  }
}
