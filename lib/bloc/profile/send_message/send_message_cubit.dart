import 'package:bloc/bloc.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:otaku_world/graphql/__generated/graphql/fragments.graphql.dart';
import 'package:otaku_world/graphql/__generated/graphql/social/save_message_activity.graphql.dart';

import '../../../core/model/custom_error.dart';
import '../../../utils/graphql_error_handler.dart';

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
      emit(
        SendMessageError(
          (GraphQLErrorHandler.handleException(exception)),
        ),
      );
    } else {
      final data = response.parsedData?.SaveMessageActivity;

      if (data == null) {
        emit(SendMessageError(CustomError.unexpectedError()));
      } else {
        emit(SentMessage(message: data));
      }
    }
  }

  void changePrivate() {
    isPrivate = !isPrivate;
  }
}
