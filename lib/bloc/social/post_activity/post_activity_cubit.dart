import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:otaku_world/constants/string_constants.dart';
import 'package:otaku_world/graphql/__generated/graphql/fragments.graphql.dart';
import 'package:otaku_world/graphql/__generated/graphql/social/post_activity.graphql.dart';

part 'post_activity_state.dart';

class PostActivityCubit extends Cubit<PostActivityState> {
  PostActivityCubit() : super(PostActivityInitial());

  Future<void> postActivity(
    GraphQLClient client, {
    required String text,
  }) async {
    emit(PostingActivity());
    final response = await client.mutate$PostActivity(
      Options$Mutation$PostActivity(
        variables: Variables$Mutation$PostActivity(
          text: text,
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
          log('Response errors: ');

          if (error?.message == null) {
            emit(PostActivityError(
              StringConstants.noInternetError
            ));
          } else {
            if (error!.message.contains('validation')) {
              emit(PostActivityError(StringConstants.validationError));
            } else {
              emit(PostActivityError(error.message));
            }
          }
        } else {
          emit(PostActivityError(StringConstants.noInternetError));
        }
      } else {
        emit(PostActivityError(StringConstants.noInternetError));
      }
    } else {
      final data = response.parsedData?.SaveTextActivity;

      if (data == null) {
        emit(PostActivityError(StringConstants.somethingWentWrongError));
      } else {
        emit(PostedActivity(activity: data));
      }
    }
  }
}
