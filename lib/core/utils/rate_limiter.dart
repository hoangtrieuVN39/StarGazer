/// Utility class để kiểm soát tần suất gửi request.
/// Ngăn chặn spam và bảo vệ API khỏi quá tải.
class RateLimiter {
  /// Số request tối đa trong một khung thời gian
  static const maxRequests = 10;

  /// Khung thời gian để tính rate limit (1 phút)
  static const timeWindow = Duration(minutes: 1);

  /// Lưu thời gian của các request
  final _requests = <DateTime>[];

  /// Kiểm tra xem có thể thực hiện request mới không
  /// Returns true nếu trong giới hạn, false nếu đã quá giới hạn
  bool checkLimit() {
    final now = DateTime.now();
    // Loại bỏ các request cũ hơn timeWindow
    _requests.removeWhere((time) => now.difference(time) > timeWindow);

    if (_requests.length >= maxRequests) {
      return false;
    }

    _requests.add(now);
    return true;
  }

  void reset() {
    _requests.clear();
  }
}
