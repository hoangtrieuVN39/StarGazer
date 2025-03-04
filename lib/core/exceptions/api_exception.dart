class ApiException implements Exception {
  final String message;
  final int code;

  ApiException({required this.message, required this.code});

  static const int MISSING_API_KEY = 1001;
  static const int TIMEOUT = 1002;
  static const int EMPTY_RESPONSE = 1003;
  static const int NETWORK_ERROR = 1004;
  static const int UNKNOWN = 1005;
}
