import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:otaku_world/graphql/__generated/graphql/social/save_activity_reply.graphql.dart';

import '../../../core/model/custom_error.dart';
import '../../../graphql/__generated/graphql/fragments.graphql.dart';
import '../../../utils/graphql_error_handler.dart';

part 'edit_activity_reply_state.dart';

class EditActivityReplyCubit extends Cubit<EditActivityReplyState> {
  EditActivityReplyCubit({
    required this.replyId,
    required this.activityId,
  }) : super(EditActivityReplyInitial());

  final int replyId;
  final int activityId;

  Future<void> editActivityReply(
    GraphQLClient client, {
    required String text,
  }) async {
    log('Replying activity');
    emit(EditingActivityReply());
    final response = await client.mutate$SaveActivityReply(
      Options$Mutation$SaveActivityReply(
        variables: Variables$Mutation$SaveActivityReply(
          id: replyId,
          activityId: activityId,
          text: text,
        ),
      ),
    );

    if (response.hasException) {
      final exception = response.exception!;
      emit(
        EditActivityReplyError(
          (GraphQLErrorHandler.handleException(exception)),
        ),
      );
    } else {
      final data = response.parsedData?.SaveActivityReply;

      if (data == null) {
        emit(EditActivityReplyError(
          CustomError.unexpectedError(),
        ));
      } else {
        emit(EditedActivityReply(activityReply: data));
      }
    }
  }
}
