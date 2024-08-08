import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:otaku_world/graphql/__generated/graphql/discover/anime/all_time_popular_anime.graphql.dart';

import 'dart:developer' as dev;

import '../../../../graphql/__generated/graphql/fragments.graphql.dart';
import '../../../paginated_data/paginated_data_bloc.dart';

class AllTimePopularAnimeBloc extends PaginatedDataBloc<
    Query$GetAllTimePopularAnime, Fragment$MediaShort> {
  @override
  Future<QueryResult<Query$GetAllTimePopularAnime>> loadData(
      GraphQLClient client) {
    return client.query$GetAllTimePopularAnime(
      Options$Query$GetAllTimePopularAnime(
        variables: Variables$Query$GetAllTimePopularAnime(page: page),
      ),
    );
  }

  @override
  void processData(QueryResult<Query$GetAllTimePopularAnime> response) {
    final data = response.parsedData!;
    hasNextPage = data.Page!.pageInfo!.hasNextPage!;
    dev.log('Page: $page', name: 'AllTimePopularAnimeBloc');
    page++;
    list.addAll(data.Page!.media!);
    dev.log('Anime list size: ${list.length}', name: 'AllTimePopularAnimeBloc');
  }
}
