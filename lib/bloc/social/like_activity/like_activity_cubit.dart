import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:otaku_world/graphql/__generated/graphql/social/like_activity.graphql.dart';

part 'like_activity_state.dart';

class LikeActivityCubit extends Cubit<LikeActivityState> {
  LikeActivityCubit() : super(LikeActivityInitial());

  Future<Either<String, bool>> toggleLike(GraphQLClient client, {required int activityId,}) async {
    final response = await client.mutate$ToggleActivityLike(
      Options$Mutation$ToggleActivityLike(
        variables: Variables$Mutation$ToggleActivityLike(
          id: activityId,
        ),
      ),
    );
    log('Response: $response');

    if (response.hasException) {
      final exception = response.exception!;
      log(exception.toString());
      if (exception.linkException != null) {
        return left('Please check your internet connection!');
      }else {
        return left('Something went wrong!');
      }
    } else {
      final data = response.parsedData?.ToggleLikeV2;
      if (data == null) {
        log('Data is null');
        return left('Something went wrong!');
      }else {
        if (data is Mutation$ToggleActivityLike$ToggleLikeV2$$ListActivity) {
          return right(data.isLiked ?? false);
        } else if (data is Mutation$ToggleActivityLike$ToggleLikeV2$$MessageActivity) {
          return right(data.isLiked ?? false);
        } else if (data is Mutation$ToggleActivityLike$ToggleLikeV2$$TextActivity) {
          return right(data.isLiked ?? false);
        }
      }
    }
    return left('Something went wrong!');
  }
}
