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
      title: "Rate Limit Exceeded",
      subtitle: resetTime != null
          ? "Please try again after $resetTime"
          : "Please try again in a few minutes",
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

  String get message {
    return subtitle ?? title ?? StringConstants.somethingWentWrongError;
  }

  @override
  String toString() {
    return 'CustomError{message: $subtitle, title: $title, type: $type}';
  }
}
