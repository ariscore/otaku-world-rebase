import 'package:graphql_flutter/graphql_flutter.dart';

import '../core/model/custom_error.dart';

class GraphQLErrorHandler {
  static const int _rateLimitStatusCode = 429;

  /// Main error handling method that processes OperationException
  static CustomError handleException(OperationException exception) {
    // First priority: Check for GraphQL errors (server-side errors)
    if (exception.graphqlErrors.isNotEmpty) {
      final graphqlError = _handleGraphQLErrors(exception.graphqlErrors);
      if (graphqlError != null) {
        return graphqlError;
      }
    }

    // Second priority: Check for link exceptions (network/HTTP errors)
    if (exception.linkException != null) {
      return _handleLinkException(exception.linkException!);
    }

    // Fallback for any other cases
    return CustomError.unexpectedError();
  }

  /// Handles GraphQL-specific errors from the server
  static CustomError? _handleGraphQLErrors(List<GraphQLError> graphqlErrors) {
    for (final error in graphqlErrors) {
      // Rate limit detection for AniList API
      if (error.message == "Too Many Requests." ||
          error.message.toLowerCase().contains('too many requests')) {
        final status = error.extensions?['status'];
        if (status == _rateLimitStatusCode) {
          return CustomError.rateLimitExceeded();
        }
      }

      // Check status field directly for rate limiting
      final status = error.extensions?['status'];
      if (status == _rateLimitStatusCode) {
        return CustomError.rateLimitExceeded();
      }

      // Handle validation errors
      if (error.message.toLowerCase().contains('validation')) {
        return CustomError.validationError(message: error.message);
      }

      // Handle other specific GraphQL errors with meaningful messages
      if (error.message.isNotEmpty) {
        return CustomError.serverError(message: error.message);
      }
    }

    return null; // No specific GraphQL error handled
  }

  /// Handles link exceptions (network, HTTP, parsing errors)
  static CustomError _handleLinkException(LinkException linkException) {
    // Check if it's a ServerException (HTTP response with error)
    if (linkException is ServerException) {
      return _handleServerException(linkException);
    }

    // Check for rate limiting in the exception message
    if (linkException.toString().contains('$_rateLimitStatusCode') ||
        linkException.toString().toLowerCase().contains('rate limit')) {
      return CustomError.rateLimitExceeded();
    }

    // Check for specific network error types
    if (linkException.toString().toLowerCase().contains('socketexception') ||
        linkException.toString().toLowerCase().contains('handshakeexception') ||
        linkException.toString().toLowerCase().contains('timeout')) {
      return CustomError.networkError();
    }

    // General link exception fallback
    return CustomError.networkError();
  }

  /// Handles ServerException specifically (when server returns HTTP error)
  static CustomError _handleServerException(ServerException serverException) {
    final response = serverException.parsedResponse;

    // Check if there are errors in the parsed response
    if (response?.errors != null && response!.errors!.isNotEmpty) {
      final error = response.errors!.first;

      if (error.message.isEmpty) {
        return CustomError.networkError();
      }

      // Handle validation errors
      if (error.message.toLowerCase().contains('validation')) {
        return CustomError.validationError(message: error.message);
      }

      // Return server error with the specific message
      return CustomError.serverError(message: error.message);
    }

    // Check HTTP status code for rate limiting
    // Note: ServerException might have statusCode property depending on your GraphQL client
    if (serverException.statusCode == _rateLimitStatusCode) {
      return CustomError.rateLimitExceeded();
    }

    // Fallback for server exceptions without parseable errors
    return CustomError.networkError();
  }

  /// Alternative method that matches your original commented code structure
  static CustomError handleExceptionLegacy(OperationException exception) {
    // Handle GraphQL errors first
    if (exception.graphqlErrors.isNotEmpty) {
      final error = exception.graphqlErrors.first;

      // Rate limit check
      if (error.message == "Too Many Requests." ||
          error.extensions?['status'] == _rateLimitStatusCode) {
        return CustomError.rateLimitExceeded(resetTime: "1 minute");
      }

      // Validation error check
      if (error.message.toLowerCase().contains('validation')) {
        return CustomError.validationError(message: error.message);
      }

      // Return the error message
      return CustomError.serverError(message: error.message);
    }

    // Handle link exceptions (matches your commented code logic)
    if (exception.linkException != null) {
      if (exception.linkException is ServerException) {
        final serverException = exception.linkException! as ServerException;
        final response = serverException.parsedResponse;
        final error = response?.errors?.firstOrNull;

        if (error?.message == null) {
          return CustomError.networkError();
        } else {
          if (error!.message.toLowerCase().contains('validation')) {
            return CustomError.validationError(message: error.message);
          } else {
            return CustomError.serverError(message: error.message);
          }
        }
      } else {
        // Rate limit check in link exception
        if (exception.linkException
            .toString()
            .contains('$_rateLimitStatusCode')) {
          return CustomError.rateLimitExceeded();
        }
        return CustomError.networkError();
      }
    } else {
      return CustomError.networkError();
    }
  }
}

// Extension to make firstOrNull available if not already imported
extension ListExtension<T> on List<T> {
  T? get firstOrNull => isEmpty ? null : first;
}
