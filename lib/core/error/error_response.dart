/// ErrorResponse class is used to handle error response from the server
class ErrorResponse {
  /// Creates a new ErrorResponse
  const ErrorResponse({
    required this.message,
    required this.code,
  });

  /// Brief description of the error
  final String message;

  /// Error code, for now using HTTP status code
  final int code;

  /// Converts this object to a Map in JSON format
  Map<String, dynamic> toJson() {
    return {
      'message': message,
      'code': code,
    };
  }
}
