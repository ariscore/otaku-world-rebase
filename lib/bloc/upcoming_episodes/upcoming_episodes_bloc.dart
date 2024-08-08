import 'dart:developer' as dev;

import 'package:graphql_flutter/graphql_flutter.dart';

import '../../graphql/__generated/graphql/home/upcoming_episodes.graphql.dart';
import '../paginated_data/paginated_data_bloc.dart';

class UpcomingEpisodesBloc extends PaginatedDataBloc<
    Query$GetUpcomingEpisodes, Query$GetUpcomingEpisodes$Page$media> {
  @override
  Future<QueryResult<Query$GetUpcomingEpisodes>> loadData(
      GraphQLClient client,
      ) async {
    return client.query$GetUpcomingEpisodes(
      Options$Query$GetUpcomingEpisodes(
        cacheRereadPolicy: CacheRereadPolicy.ignoreAll,
        fetchPolicy: FetchPolicy.networkOnly,
        variables: Variables$Query$GetUpcomingEpisodes(
          page: page,
        ),
      ),
    );
  }

  @override
  void processData(QueryResult<Query$GetUpcomingEpisodes> response) {
    final data = response.parsedData!;
    hasNextPage = data.Page!.pageInfo!.hasNextPage!;
    dev.log('Page: $page');
    page++;
    list.addAll(data.Page!.media!);
    dev.log('Episodes list size: ${list.length}');
  }
}
