import 'dart:developer';

import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:otaku_world/bloc/paginated_data/paginated_data_bloc.dart';
import 'package:otaku_world/graphql/__generated/graphql/fragments.graphql.dart';
import 'package:otaku_world/graphql/__generated/graphql/social/activity_replies.graphql.dart';

class ActivityRepliesBloc
    extends PaginatedDataBloc<Query$GetActivityReplies, Fragment$ActivityReply> {
  ActivityRepliesBloc({required this.activityId}) : super();

  final int activityId;

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

}
