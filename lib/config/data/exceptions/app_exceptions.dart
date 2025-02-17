/// Base class for custom application exceptions.
class AppException implements Exception {
  final String message; // User-friendly message
  final String prefix; // Prefix for categorization

  /// Constructor for creating an [AppException] instance.
  AppException([
    this.message = 'An unexpected error occurred.',
    this.prefix = 'Error',
  ]);

  @override
  String toString() => '$prefix: $message'; // Returns a formatted error message
}

/// Exception for data fetch failures.
class FetchDataException extends AppException {
  FetchDataException([String? message])
    : super(
        message ??
            'Unable to fetch data. Please check your connection and try again.',
        'Network Error',
      );
}

/// Exception for unauthorized access.
class UnauthorizedException extends AppException {
  UnauthorizedException([String? message])
    : super(
        message ?? 'You are not authorized. Please log in again.',
        'Unauthorized',
      );
}

/// Exception for bad requests (e.g., invalid inputs).
class BadRequestException extends AppException {
  BadRequestException([String? message])
    : super(
        message ?? 'Invalid request. Please verify your input and try again.',
        'Bad Request',
      );
}

/// Exception for invalid user input.
class InvalidInputException extends AppException {
  InvalidInputException([String? message])
    : super(
        message ?? 'Invalid input detected. Please correct and retry.',
        'Validation Error',
      );
}

/// Exception for no internet connection.
class NoInternetException extends AppException {
  NoInternetException([String? message])
    : super(
        message ??
            'No internet connection. Please check your network settings.',
        'Connectivity Issue',
      );
}

/// Exception for request timeouts.
class TimeoutException extends AppException {
  TimeoutException([String? message])
    : super(
        message ?? 'Request timeout. Please try again later.',
        'Timeout Error',
      );
}

/// Exception for server errors.
class ServerException extends AppException {
  ServerException([String? message])
    : super(
        message ??
            'Server error. Our team is working on it. Please try again later.',
        'Server Error',
      );
}

/// Exception for forbidden access.
class ForbiddenException extends AppException {
  ForbiddenException([String? message])
    : super(
        message ?? 'You do not have permission to access this resource.',
        'Access Denied',
      );
}

/// Exception for resource not found errors.
class NotFoundException extends AppException {
  NotFoundException([String? message])
    : super(message ?? 'Requested resource not found.', 'Not Found');
}

/// Exception for conflicts (e.g., duplicate entries).
class ConflictException extends AppException {
  ConflictException([String? message])
    : super(
        message ?? 'Conflict detected. Please review your request.',
        'Conflict Error',
      );
}

/// Exception for precondition failures.
class PreconditionFailedException extends AppException {
  PreconditionFailedException([String? message])
    : super(
        message ??
            'A required condition was not met. Please check and try again.',
        'Precondition Failed',
      );
}
