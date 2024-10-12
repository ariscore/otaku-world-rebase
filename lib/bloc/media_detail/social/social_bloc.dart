import 'dart:developer';

import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:otaku_world/constants/string_constants.dart';
import 'package:otaku_world/graphql/__generated/graphql/details/media_activities.graphql.dart';
import 'package:otaku_world/graphql/__generated/graphql/social/activity_subscription.graphql.dart';

import '../../paginated_data/paginated_data_bloc.dart';

class SocialBloc extends PaginatedDataBloc<Query$MediaActivityQuery, dynamic> {
  final int mediaId;
  bool isFollowing = false;
  bool isTogglingSubscription = false;

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
}
