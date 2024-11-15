import 'dart:developer';

import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:otaku_world/constants/string_constants.dart';
import 'package:otaku_world/graphql/__generated/graphql/details/media_activities.graphql.dart';
import 'package:otaku_world/graphql/__generated/graphql/fragments.graphql.dart';
import 'package:otaku_world/graphql/__generated/graphql/social/activity_subscription.graphql.dart';
import 'package:otaku_world/graphql/__generated/graphql/social/delete_activity.graphql.dart';

import '../../paginated_data/paginated_data_bloc.dart';

class SocialBloc extends PaginatedDataBloc<Query$MediaActivityQuery, dynamic> {
  final int mediaId;
  bool isFollowing = false;
  bool isTogglingSubscription = false;
  bool showProgress = false;

  SocialBloc({required this.mediaId});

  void toggleIsFollowing(
    bool isFollowing,
    GraphQLClient client,
  ) {
    this.isFollowing = isFollowing;
    add(RefreshData(client));
  }

  @override
  Future<QueryResult<Query$MediaActivityQuery>> loadData(GraphQLClient client) {
    return client.query$MediaActivityQuery(
      Options$Query$MediaActivityQuery(
        cacheRereadPolicy: CacheRereadPolicy.ignoreAll,
        fetchPolicy: FetchPolicy.networkOnly,
        variables: Variables$Query$MediaActivityQuery(
          mediaId: mediaId,
          page: page,
          isFollowing: isFollowing,
        ),
      ),
    );
  }

  @override
  void processData(QueryResult<Query$MediaActivityQuery> response) {
    final data = response.parsedData;
    hasNextPage = data!.Page!.pageInfo!.hasNextPage!;
    page++;
    list.addAll(data.Page!.activities!.toList());
  }

  void toggleLike({required int activityId}) {
    log('Toggling like for id: $activityId');
    int index = list.indexWhere((e) => e.id == activityId);

    if (index != -1) {
      final activity = list[index];
      if (activity is Fragment$ListActivity) {
        if (activity.isLiked!) {
          list[index] = activity.copyWith(
            isLiked: false,
            likeCount: activity.likeCount - 1,
          );
        } else {
          list[index] = activity.copyWith(
            isLiked: true,
            likeCount: activity.likeCount + 1,
          );
        }
      }
    }

    Future.delayed(const Duration(milliseconds: 1000), () {
      add(UpdateData(list: list));
    });
  }

  Future<String?> toggleActivitySubscription(
    GraphQLClient client, {
    required int activityId,
    required bool subscribe,
  }) async {
    if (isTogglingSubscription) {
      return ActivityConstants.alreadyInProgress;
    } else {
      isTogglingSubscription = true;
      log('Activity subscription: ${!subscribe}');
      final response = await client.mutate$ActivitySubscription(
        Options$Mutation$ActivitySubscription(
          variables: Variables$Mutation$ActivitySubscription(
            activityId: activityId,
            subscribe: !subscribe,
          ),
        ),
      );
      log('Response: $response');

      isTogglingSubscription = false;
      if (response.hasException) {
        if (response.exception!.linkException != null) {
          return 'Please check your internet connection!';
        } else {
          return 'Something went wrong!';
        }
      } else {
        return null;
      }
    }
  }

  Future<String?> deleteActivity(
    GraphQLClient client, {
    required int activityId,
  }) async {
    if (showProgress) {
      return ActivityConstants.alreadyInProgress;
    } else {
      showProgress = true;
      add(const UpdateLoading(true));
      final response = await client.mutate$DeleteActivity(
        Options$Mutation$DeleteActivity(
          variables: Variables$Mutation$DeleteActivity(
            activityId: activityId,
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
        list.removeWhere((e) => e.id == activityId);
        showProgress = false;
        add(const UpdateLoading(false));
        add(UpdateData(list: list));
        return null;
      }
    }
  }

  void updateReplyCount({required int activityId, required bool increase}) {
    final index = list.indexWhere((e) => e.id == activityId);

    final inc = increase ? 1 : -1;
    if (index != -1) {
      final activity = list[index];
      if (activity is Query$MediaActivityQuery$Page$activities$$ListActivity) {
        list[index] = activity.copyWith(
          replyCount: activity.replyCount + inc,
        );
      }
    }

    add(UpdateData(list: list));
  }
}
