import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:otaku_world/graphql/__generated/graphql/details/media_activities.graphql.dart';

import '../../paginated_data/paginated_data_bloc.dart';

class SocialBloc extends PaginatedDataBloc<Query$MediaActivityQuery, dynamic> {
  final int mediaId;
  bool isFollowing = false;

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
}
