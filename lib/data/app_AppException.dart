class AppException implements Exception {
  final message;
  final prefix;

  AppException([this.message, this.prefix]);

  String toString() {
    return '$prefix$message';
  }
}

class InternetException extends AppException {
  InternetException([String? message]) : super(message, 'No Internet: ');
}

class ServerException extends AppException {
  ServerException([String? message]) : super(message, 'Server Error: ');
}

class CacheException extends AppException {
  CacheException([String? message]) : super(message, 'Cache Error: ');
}

class UnknownException extends AppException {
  UnknownException([String? message]) : super(message, 'Unknown Error: ');
}

class BadRequestException extends AppException {
  BadRequestException([String? message]) : super(message, 'Bad Request: ');
}

class UnauthorisedException extends AppException {
  UnauthorisedException([String? message]) : super(message, 'Unauthorised: ');
}

class InvalidInputException extends AppException {
  InvalidInputException([String? message]) : super(message, 'Invalid Input: ');
}

class NotFoundException extends AppException {
  NotFoundException([String? message]) : super(message, 'Not Found: ');
}

class ForbiddenException extends AppException {
  ForbiddenException([String? message]) : super(message, 'Forbidden: ');
}

class ConflictException extends AppException {
  ConflictException([String? message]) : super(message, 'Conflict: ');
}

class RequestTimeoutException extends AppException {
  RequestTimeoutException([String? message])
      : super(message, 'Request Timeout: ');
}

class UnprocessableEntityException extends AppException {
  UnprocessableEntityException([String? message])
      : super(message, 'Unprocessable Entity: ');
}

class InternalServerErrorException extends AppException {
  InternalServerErrorException([String? message])
      : super(message, 'Internal Server Error: ');
}

class ServiceUnavailableException extends AppException {
  ServiceUnavailableException([String? message])
      : super(message, 'Service Unavailable: ');
}

class GatewayTimeoutException extends AppException {
  GatewayTimeoutException([String? message])
      : super(message, 'Gateway Timeout: ');
}

class HttpVersionNotSupportedException extends AppException {
  HttpVersionNotSupportedException([String? message])
      : super(message, 'HTTP Version Not Supported: ');
}

class VariantAlsoNegotiatesException extends AppException {
  VariantAlsoNegotiatesException([String? message])
      : super(message, 'Variant Also Negotiates: ');
}

class InsufficientStorageException extends AppException {
  InsufficientStorageException([String? message])
      : super(message, 'Insufficient Storage: ');
}

class LoopDetectedException extends AppException {
  LoopDetectedException([String? message]) : super(message, 'Loop Detected: ');
}

class NotExtended extends AppException {
  NotExtended([String? message]) : super(message, 'Not Extended: ');
}

class NetworkAuthenticationRequiredException extends AppException {
  NetworkAuthenticationRequiredException([String? message])
      : super(message, 'Network Authentication Required: ');
}

class NetworkConnectTimeoutException extends AppException {
  NetworkConnectTimeoutException([String? message])
      : super(message, 'Network Connect Timeout: ');
}

class NetworkReadTimeoutException extends AppException {
  NetworkReadTimeoutException([String? message])
      : super(message, 'Network Read Timeout: ');
}

class NetworkWriteTimeoutException extends AppException {
  NetworkWriteTimeoutException([String? message])
      : super(message, 'Network Write Timeout: ');
}

class NetworkTimeoutException extends AppException {
  NetworkTimeoutException([String? message])
      : super(message, 'Network Timeout: ');
}
