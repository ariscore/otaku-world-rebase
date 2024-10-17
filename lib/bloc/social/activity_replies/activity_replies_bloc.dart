import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:otaku_world/bloc/paginated_data/paginated_data_bloc.dart';
import 'package:otaku_world/graphql/__generated/graphql/fragments.graphql.dart';
import 'package:otaku_world/graphql/__generated/graphql/social/activity_replies.graphql.dart';
import 'package:otaku_world/graphql/__generated/graphql/social/delete_activity_reply.graphql.dart';
import 'package:otaku_world/graphql/__generated/graphql/social/like_activity_reply.graphql.dart';

import '../../../constants/string_constants.dart';

class ActivityRepliesBloc extends PaginatedDataBloc<Query$GetActivityReplies,
    Fragment$ActivityReply> {
  ActivityRepliesBloc({required this.activityId}) : super();

  final int activityId;
  bool showProgress = false;

  @override
  Future<QueryResult<Query$GetActivityReplies>> loadData(GraphQLClient client) {
    return client.query$GetActivityReplies(
      Options$Query$GetActivityReplies(
        cacheRereadPolicy: CacheRereadPolicy.ignoreAll,
        fetchPolicy: FetchPolicy.networkOnly,
        variables: Variables$Query$GetActivityReplies(
          page: page,
          activityId: activityId,
        ),
      ),
    );
  }

  @override
  void processData(QueryResult<Query$GetActivityReplies> response) {
    final data = response.parsedData!;
    hasNextPage = data.Page!.pageInfo!.hasNextPage!;
    log('Page: $page', name: 'ActivityRepliesBloc');
    page++;
    list.addAll(data.Page!.activityReplies!);
    log('Replies size: ${list.length}', name: 'ActivityRepliesBloc');
  }

  Future<Either<String, bool>> toggleLike(
    GraphQLClient client, {
    required int replyId,
  }) async {
    final response = await client.mutate$ToggleActivityReply(
      Options$Mutation$ToggleActivityReply(
        variables: Variables$Mutation$ToggleActivityReply(
          id: replyId,
        ),
      ),
    );
    log('Response: $response');

    if (response.hasException) {
      final exception = response.exception!;
      log(exception.toString());
      if (exception.linkException != null) {
        return left('Please check your internet connection!');
      } else {
        return left('Something went wrong!');
      }
    } else {
      final data = response.parsedData?.ToggleLikeV2;
      if (data == null) {
        log('Data is null');
        return left('Something went wrong!');
      } else {
        return right(
          (data as Mutation$ToggleActivityReply$ToggleLikeV2$$ActivityReply)
                  .isLiked ??
              false,
        );
      }
    }
  }

  Future<String?> deleteActivityReply(
    GraphQLClient client, {
    required int replyId,
  }) async {
    if (showProgress) {
      return ActivityConstants.alreadyInProgress;
    } else {
      showProgress = true;
      add(const UpdateLoading(true));
      final response = await client.mutate$DeleteActivityReply(
        Options$Mutation$DeleteActivityReply(
          variables: Variables$Mutation$DeleteActivityReply(
            id: replyId,
          ),
        ),
      );

      log('Response: $response');

      if (response.hasException) {
        showProgress = false;
        add(const UpdateLoading(false));
        if (response.exception!.linkException != null) {
          return 'Please check your internet connection!';
        } else {
          return 'Something went wrong!';
        }
      } else {
        list.removeWhere((e) => e?.id == replyId);
        showProgress = false;
        add(const UpdateLoading(false));
        add(UpdateData(list: list));
        return null;
      }
    }
  }
}
