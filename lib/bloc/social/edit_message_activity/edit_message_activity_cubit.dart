import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:otaku_world/graphql/__generated/graphql/fragments.graphql.dart';
import 'package:otaku_world/graphql/__generated/graphql/social/save_message_activity.graphql.dart';

import '../../../constants/string_constants.dart';

part 'edit_message_activity_state.dart';

class EditMessageActivityCubit extends Cubit<EditMessageActivityState> {
  EditMessageActivityCubit({required this.activityId,}) : super(EditMessageActivityInitial());

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
      log(exception.toString());
      if (exception.linkException != null) {
        if (exception.linkException is ServerException) {
          log('It is server exception');
          final response =
              (exception.linkException! as ServerException).parsedResponse;
          final error = response?.errors?.firstOrNull;
          log('Response errors: ');

          if (error?.message == null) {
            emit(EditActivityError(StringConstants.noInternetError));
          } else {
            if (error!.message.contains('validation')) {
              emit(EditActivityError(StringConstants.validationError));
            } else {
              emit(EditActivityError(error.message));
            }
          }
        } else {
          emit(EditActivityError(StringConstants.noInternetError));
        }
      } else {
        emit(EditActivityError(StringConstants.noInternetError));
      }
    } else {
      final data = response.parsedData?.SaveMessageActivity;
      log('Edit activity data: ${data?.isLiked}');

      if (data == null) {
        emit(EditActivityError(StringConstants.somethingWentWrongError));
      } else {
        emit(EditedActivity(activity: data));
      }
    }
  }
}
