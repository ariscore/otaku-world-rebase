import 'dart:developer' as dev;

import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:otaku_world/bloc/paginated_data/paginated_data_bloc.dart';
import 'package:otaku_world/graphql/__generated/graphql/fragments.graphql.dart';
import 'package:otaku_world/graphql/__generated/graphql/home/recommended_anime.graphql.dart';

class RecommendedAnimeBloc
    extends PaginatedDataBloc<Query$GetRecommendedAnime, Fragment$MediaShort> {
  @override
  Future<QueryResult<Query$GetRecommendedAnime>> loadData(GraphQLClient client) {
    return client.query$GetRecommendedAnime(
      Options$Query$GetRecommendedAnime(
        variables: Variables$Query$GetRecommendedAnime(page: page),
      ),
    );
  }

  @override
  void processData(QueryResult<Query$GetRecommendedAnime> response) {
    final data = response.parsedData!;
    hasNextPage = data.Page!.pageInfo!.hasNextPage!;
    dev.log('Page: $page', name: 'RecommendedAnimeBloc');
    page++;
    list.addAll(data.Page!.media!);
    dev.log('Episodes list size: ${list.length}', name: 'RecommendedAnimeBloc');
  }
}
