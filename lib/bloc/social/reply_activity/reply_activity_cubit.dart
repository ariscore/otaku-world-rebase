import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:otaku_world/graphql/__generated/graphql/fragments.graphql.dart';
import 'package:otaku_world/graphql/__generated/graphql/social/save_activity_reply.graphql.dart';

part 'reply_activity_state.dart';

class ReplyActivityCubit extends Cubit<ReplyActivityState> {
  ReplyActivityCubit({
    required this.activityId,
  }) : super(ReplyActivityInitial());

  final int activityId;

  Future<void> replyActivity(GraphQLClient client, {required String text,}) async {
    log('Replying activity');
    emit(ReplyingActivity());
    final response = await client.mutate$SaveActivityReply(
      Options$Mutation$SaveActivityReply(
        variables: Variables$Mutation$SaveActivityReply(
          activityId: activityId,
          text: text,
        ),
      ),
    );

    if (response.hasException) {
      final exception = response.exception!;
      log(exception.toString());
      if (exception.linkException != null) {
        emit(ReplyError('Please check your internet connection!'));
      } else {
        emit(ReplyError('Please check your internet connection!'));
      }
    } else {
      final data = response.parsedData?.SaveActivityReply;

      if (data == null) {
        emit(ReplyError('Please check your internet connection!'));
      } else {
        emit(RepliedActivity(activityReply: data));
      }
    }
  }
}
