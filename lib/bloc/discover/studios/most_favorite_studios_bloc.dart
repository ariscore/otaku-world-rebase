import 'dart:developer';

import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:otaku_world/bloc/paginated_data/paginated_data_bloc.dart';
import 'package:otaku_world/graphql/__generated/graphql/discover/studios/most_favorite_studios.graphql.dart';
import 'package:otaku_world/graphql/__generated/graphql/fragments.graphql.dart';

class MostFavoriteStudiosBloc extends PaginatedDataBloc<
    Query$GetMostFavoriteStudios, Fragment$SearchResultStudio> {
  @override
  Future<QueryResult<Query$GetMostFavoriteStudios>> loadData(
    GraphQLClient client,
  ) {
    return client.query$GetMostFavoriteStudios(
      Options$Query$GetMostFavoriteStudios(
        variables: Variables$Query$GetMostFavoriteStudios(page: page),
      ),
    );
  }

  @override
  void processData(QueryResult<Query$GetMostFavoriteStudios> response) {
    final data = response.parsedData!;
    hasNextPage = data.Page!.pageInfo!.hasNextPage!;
    log('Page: $page', name: 'FavoriteStudios');
    page++;
    list.addAll(data.Page!.studios!);
    log('Anime list size: ${list.length}', name: 'FavoriteStudios');
  }
}
