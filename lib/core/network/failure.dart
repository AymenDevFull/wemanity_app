abstract class Failure {
  int code;
  String? message;

  Failure({this.code = 0, this.message});

  factory Failure.fromJson(int statusCode, {Map<String, dynamic>? json}) {
    return ApiFailure(
      code: (json?['code'] ?? 0) as int,
      message: json?['message'] as String?,
    );
  }
}

class ApiFailure extends Failure {
  ApiFailure({int code = 0, String? message})
      : super(code: code, message: message);
}

class ServerFailure extends Failure {
  ServerFailure({int code = 0, String? message})
      : super(code: code, message: message);
}
