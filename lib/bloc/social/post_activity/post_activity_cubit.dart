import 'package:bloc/bloc.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:otaku_world/graphql/__generated/graphql/fragments.graphql.dart';
import 'package:otaku_world/graphql/__generated/graphql/social/post_activity.graphql.dart';

import '../../../core/model/custom_error.dart';
import '../../../utils/graphql_error_handler.dart';

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
      emit(
        PostActivityError(
          (GraphQLErrorHandler.handleException(exception)),
        ),
      );
    } else {
      final data = response.parsedData?.SaveTextActivity;

      if (data == null) {
        emit(PostActivityError(CustomError.unexpectedError()));
      } else {
        emit(PostedActivity(activity: data));
      }
    }
  }
}
