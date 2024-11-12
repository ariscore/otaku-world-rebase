import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:otaku_world/constants/string_constants.dart';
import 'package:otaku_world/graphql/__generated/graphql/user/toggle_follow.graphql.dart';

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
    String error = StringConstants.somethingWentWrongError;

    if (response.hasException) {
      if (response.exception!.linkException != null) {
        error = StringConstants.noInternetError;
      }
      emit(UserFollowError(error));
    } else {
      final user = response.parsedData?.ToggleFollow;
      if (user == null) {
        emit(UserFollowError(error));
      } else {
        emit(ToggleComplete(
          isFollowing: user.isFollowing ?? false,
        ));
      }
    }
  }
}
