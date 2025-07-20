import 'package:graphql_flutter/graphql_flutter.dart';

import '../core/model/custom_error.dart';

class GraphQLErrorHandler {
  static const int _rateLimitStatusCode = 429;

  static CustomError handleException(OperationException exception) {
    // Check for GraphQL errors (server-side errors)
    if (exception.graphqlErrors.isNotEmpty) {
      for (final error in exception.graphqlErrors) {
        // AniList API specific rate limit detection
        // Based on official docs: message "Too Many Requests." with status 429
        if (error.message == "Too Many Requests." ||
            error.message.toLowerCase().contains('too many requests')) {
          // Check for status 429 in the error
          final status = error.extensions?['status'];
          if (status == _rateLimitStatusCode) {
            return CustomError.rateLimitExceeded(
              resetTime: "1 minute", // AniList has 1 minute timeout
            );
          }
        }

        // Also check status field directly (as shown in docs)
        final status = error.extensions?['status'];
        if (status == _rateLimitStatusCode) {
          return CustomError.rateLimitExceeded();
        }
      }
    }

    // Check for link exceptions (network/HTTP errors)
    if (exception.linkException != null) {
      final linkException = exception.linkException!;

      // Check if it's an HTTP exception with status 429
      if (linkException.toString().contains('$_rateLimitStatusCode') ||
          linkException.toString().toLowerCase().contains('rate limit')) {
        return CustomError.rateLimitExceeded();
      }

      return CustomError.networkError();
    }

    return CustomError.unexpectedError();
  }
}
