import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:otaku_world/graphql/__generated/graphql/discover/anime/top_upcoming_anime.graphql.dart';
import 'package:otaku_world/graphql/__generated/graphql/fragments.graphql.dart';

import '../paginated_data/paginated_data_bloc.dart';
import 'dart:developer' as dev;

class TopUpcomingAnimeBloc
    extends PaginatedDataBloc<Query$GetTopUpcomingAnime, Fragment$MediaShort> {
  @override
  Future<QueryResult<Query$GetTopUpcomingAnime>> loadData(
    GraphQLClient client,
  ) {
    return client.query$GetTopUpcomingAnime(
      Options$Query$GetTopUpcomingAnime(
        variables: Variables$Query$GetTopUpcomingAnime(page: page),
      ),
    );
  }

  @override
  void processData(QueryResult<Query$GetTopUpcomingAnime> response) {
    final data = response.parsedData!;
    hasNextPage = data.Page!.pageInfo!.hasNextPage!;
    dev.log('Page: $page', name: 'TopUpcomingAnimeBloc');
    page++;
    list.addAll(data.Page!.media!);
    dev.log('Anime list size: ${list.length}', name: 'TopUpcomingAnimeBloc');
  }
}
