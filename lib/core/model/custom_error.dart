import 'package:otaku_world/constants/string_constants.dart';
import 'package:otaku_world/core/types/enums.dart';

class CustomError {
  final String? subtitle;
  final String? title;
  final ErrorType? type;

  CustomError({
    this.subtitle,
    this.type,
    this.title,
  });

  factory CustomError.rateLimitExceeded({String? resetTime}) {
    return CustomError(
      title: "Too Many Requests",
      subtitle: resetTime != null
          ? "You've hit the request limit. Please wait until $resetTime to try again."
          : "You've made too many requests in a short time. Please wait few minutes.",
      type: ErrorType.rateLimit,
    );
  }

  factory CustomError.networkError() {
    return CustomError(
      title: StringConstants.noInternet,
      subtitle: StringConstants.noInternetError,
      type: ErrorType.noInternet,
    );
  }

  factory CustomError.unexpectedError() {
    return CustomError(
      title: StringConstants.somethingWentWrong,
      subtitle: StringConstants.somethingWentWrongError,
      type: ErrorType.unknown,
    );
  }

  /// Server error factory constructor
  factory CustomError.serverError({String? message}) {
    return CustomError(
      title: "Server Error",
      subtitle:
          message ?? "Something went wrong on the server. Please try again.",
      type: ErrorType.server,
    );
  }

  /// Validation error factory constructor
  factory CustomError.validationError({String? message}) {
    return CustomError(
      title: "Validation Error",
      subtitle: message ?? StringConstants.validationError,
      type: ErrorType.validation,
    );
  }

  String get message {
    return subtitle ?? title ?? StringConstants.somethingWentWrongError;
  }

  @override
  String toString() {
    return 'CustomError{message: $subtitle, title: $title, type: $type}';
  }
}
