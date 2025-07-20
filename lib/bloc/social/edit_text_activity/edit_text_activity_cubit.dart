import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:otaku_world/core/model/custom_error.dart';
import 'package:otaku_world/graphql/__generated/graphql/social/post_activity.graphql.dart';
import 'package:otaku_world/utils/graphql_error_handler.dart';

import '../../../graphql/__generated/graphql/fragments.graphql.dart';

part 'edit_text_activity_state.dart';

class EditTextActivityCubit extends Cubit<EditTextActivityState> {
  EditTextActivityCubit({
    required this.activityId,
  }) : super(EditTextActivityInitial());

  final int activityId;

  Future<void> editActivity(
    GraphQLClient client, {
    required String text,
  }) async {
    emit(EditingActivity());
    final response = await client.mutate$PostActivity(
      Options$Mutation$PostActivity(
        variables: Variables$Mutation$PostActivity(
          id: activityId,
          text: text,
        ),
      ),
    );
    log('Response: $response');

    if (response.hasException) {
      // final exception = response.exception!;
      // log(exception.toString());
      // if (exception.linkException != null) {
      //   if (exception.linkException is ServerException) {
      //     log('It is server exception');
      //     final response =
      //         (exception.linkException! as ServerException).parsedResponse;
      //     final error = response?.errors?.firstOrNull;
      //     log('Response errors: ');
      //
      //     if (error?.message == null) {
      //       emit(EditActivityError(StringConstants.noInternetError));
      //     } else {
      //       if (error!.message.contains('validation')) {
      //         emit(EditActivityError(StringConstants.validationError));
      //       } else {
      //         emit(EditActivityError(error.message));
      //       }
      //     }
      //   } else {
      //     emit(EditActivityError(StringConstants.noInternetError));
      //   }
      // } else {
      //   emit(EditActivityError(StringConstants.noInternetError));
      // }
      final exception = response.exception!;
      emit(EditActivityError((GraphQLErrorHandler.handleException(exception))));
    } else {
      final data = response.parsedData?.SaveTextActivity;
      log('Edit activity data: ${data?.isLiked}');

      if (data == null) {
        emit(EditActivityError(CustomError.unexpectedError()));
      } else {
        emit(EditedActivity(activity: data));
      }
    }
  }
}
