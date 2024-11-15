import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:otaku_world/graphql/__generated/graphql/fragments.graphql.dart';
import 'package:otaku_world/graphql/__generated/graphql/social/save_message_activity.graphql.dart';

import '../../../constants/string_constants.dart';

part 'send_message_state.dart';

class SendMessageCubit extends Cubit<SendMessageState> {
  SendMessageCubit() : super(SendMessageInitial());

  bool isPrivate = false;

  Future<void> sendMessage(
    GraphQLClient client, {
    required String text,
    required int receiverId,
  }) async {
    emit(SendingMessage());
    final response = await client.mutate$SaveMessageActivity(
      Options$Mutation$SaveMessageActivity(
        variables: Variables$Mutation$SaveMessageActivity(
          text: text,
          private: isPrivate,
          recipientId: receiverId,
        ),
      ),
    );

    if (response.hasException) {
      final exception = response.exception!;
      log(exception.toString());
      if (exception.linkException != null) {
        if (exception.linkException is ServerException) {
          log('It is server exception');
          final response =
              (exception.linkException! as ServerException).parsedResponse;
          final error = response?.errors?.firstOrNull;

          if (error?.message == null) {
            emit(SendMessageError(StringConstants.noInternetError));
          } else {
            if (error!.message.contains('validation')) {
              emit(SendMessageError(StringConstants.validationError));
            } else {
              emit(SendMessageError(error.message));
            }
          }
        } else {
          emit(SendMessageError(StringConstants.noInternetError));
        }
      } else {
        emit(SendMessageError(StringConstants.noInternetError));
      }
    } else {
      final data = response.parsedData?.SaveMessageActivity;

      if (data == null) {
        emit(SendMessageError(StringConstants.somethingWentWrongError));
      } else {
        emit(SentMessage(message: data));
      }
    }
  }

  void changePrivate() {
    isPrivate = !isPrivate;
  }
}
