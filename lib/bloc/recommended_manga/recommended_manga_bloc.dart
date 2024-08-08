import 'dart:developer' as dev;

import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:otaku_world/bloc/paginated_data/paginated_data_bloc.dart';
import 'package:otaku_world/graphql/__generated/graphql/fragments.graphql.dart';

import '../../graphql/__generated/graphql/home/recommended_manga.graphql.dart';

class RecommendedMangaBloc
    extends PaginatedDataBloc<Query$GetRecommendedManga, Fragment$MediaShort> {
  @override
  Future<QueryResult<Query$GetRecommendedManga>> loadData(GraphQLClient client) {
    return client.query$GetRecommendedManga(
      Options$Query$GetRecommendedManga(
        variables: Variables$Query$GetRecommendedManga(page: page),
      ),
    );
  }

  @override
  void processData(QueryResult<Query$GetRecommendedManga> response) {
    final data = response.parsedData!;
    hasNextPage = data.Page!.pageInfo!.hasNextPage!;
    dev.log('Page: $page', name: 'RecommendedAnimeBloc');
    page++;
    list.addAll(data.Page!.media!);
    dev.log('Episodes list size: ${list.length}', name: 'RecommendedAnimeBloc');
  }
}
