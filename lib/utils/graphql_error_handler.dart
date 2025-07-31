import 'package:graphql_flutter/graphql_flutter.dart';

import '../core/model/custom_error.dart';

class GraphQLErrorHandler {
  static const int _rateLimitStatusCode = 429;
  static const String _tooManyRequests = 'too many requests.';

  static CustomError handleException(OperationException exception) {
    if (exception.graphqlErrors.isNotEmpty) {
      final graphqlError = _handleGraphQLErrors(exception.graphqlErrors);
      if (graphqlError != null) {
        return graphqlError;
      }
    }

    if (exception.linkException != null) {
      return _handleLinkException(exception.linkException!);
    }

    return CustomError.unexpectedError();
  }

  static CustomError? _handleGraphQLErrors(List<GraphQLError> graphqlErrors) {
    for (final error in graphqlErrors) {
      // Rate limit detection for AniList API
      if (error.message == "Too Many Requests." ||
          error.message.toLowerCase().contains(_tooManyRequests)) {
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

  static CustomError _handleLinkException(LinkException linkException) {
    if (linkException.toString().contains('$_rateLimitStatusCode') ||
        linkException.toString().toLowerCase().contains(_tooManyRequests)) {
      return CustomError.rateLimitExceeded();
    }
    if (linkException.toString().toLowerCase().contains('socketexception') ||
        linkException.toString().toLowerCase().contains('handshakeexception') ||
        linkException.toString().toLowerCase().contains('timeout')) {
      return CustomError.networkError();
    }
    if (linkException is ServerException) {
      return _handleServerException(linkException);
    }

    // General link exception fallback
    return CustomError.networkError();
  }

  static CustomError _handleServerException(ServerException serverException) {
    final response = serverException.parsedResponse;

    if (serverException.statusCode == _rateLimitStatusCode) {
      return CustomError.rateLimitExceeded();
    }
    if (response?.errors != null && response!.errors!.isNotEmpty) {
      final error = response.errors!.first;

      if (error.message.isEmpty) {
        return CustomError.networkError();
      }

      if (error.message.toLowerCase().contains(_tooManyRequests)) {
        return CustomError.rateLimitExceeded();
      }
      if (error.message.toLowerCase().contains('validation')) {
        return CustomError.validationError(message: error.message);
      }

      return CustomError.serverError(message: error.message);
    }
    return CustomError.networkError();
  }
}

extension ListExtension<T> on List<T> {
  T? get firstOrNull => isEmpty ? null : first;
}
