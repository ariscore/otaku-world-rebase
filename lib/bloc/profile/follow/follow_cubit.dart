import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:otaku_world/graphql/__generated/graphql/user/toggle_follow.graphql.dart';

import '../../../core/model/custom_error.dart';
import '../../../utils/graphql_error_handler.dart';

part 'follow_state.dart';

class FollowCubit extends Cubit<FollowState> {
  FollowCubit({required this.userId}) : super(FollowInitial());

  final int userId;

  void toggleUserFollow(GraphQLClient client) async {
    emit(ProcessingFollow());
    final response = await client.mutate$ToggleFollow(
      Options$Mutation$ToggleFollow(
        variables: Variables$Mutation$ToggleFollow(
          userId: userId,
        ),
      ),
    );
    log('Response: $response');
    if (response.hasException) {
      final exception = response.exception!;
      emit(
        UserFollowError(
          (GraphQLErrorHandler.handleException(exception)),
        ),
      );
    } else {
      final user = response.parsedData?.ToggleFollow;
      if (user == null) {
        emit(UserFollowError(CustomError.unexpectedError()));
      } else {
        emit(ToggleComplete(
          isFollowing: user.isFollowing ?? false,
        ));
      }
    }
  }
}
