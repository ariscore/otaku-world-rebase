import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:otaku_world/graphql/__generated/graphql/fragments.graphql.dart';
import 'package:otaku_world/graphql/__generated/graphql/social/save_message_activity.graphql.dart';

import '../../../core/model/custom_error.dart';
import '../../../utils/graphql_error_handler.dart';

part 'edit_message_activity_state.dart';

class EditMessageActivityCubit extends Cubit<EditMessageActivityState> {
  EditMessageActivityCubit({
    required this.activityId,
  }) : super(EditMessageActivityInitial());

  final int activityId;

  Future<void> editActivity(
    GraphQLClient client, {
    required String text,
  }) async {
    emit(EditingActivity());
    final response = await client.mutate$SaveMessageActivity(
      Options$Mutation$SaveMessageActivity(
        variables: Variables$Mutation$SaveMessageActivity(
          id: activityId,
          text: text,
        ),
      ),
    );
    log('Response: $response');

    if (response.hasException) {
      final exception = response.exception!;
      emit(
        EditActivityError(
          (GraphQLErrorHandler.handleException(exception)),
        ),
      );
    } else {
      final data = response.parsedData?.SaveMessageActivity;
      log('Edit activity data: ${data?.isLiked}');

      if (data == null) {
        emit(EditActivityError(CustomError.unexpectedError()));
      } else {
        emit(EditedActivity(activity: data));
      }
    }
  }
}
