import 'dart:developer';

import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:otaku_world/bloc/paginated_data/paginated_data_bloc.dart';
import 'package:otaku_world/graphql/__generated/graphql/discover/characters/most_favorite_characters.graphql.dart';
import 'package:otaku_world/graphql/__generated/graphql/fragments.graphql.dart';

class MostFavoriteCharactersBloc extends PaginatedDataBloc<Query$GetMostFavoriteCharacters, Fragment$CharacterShort> {
  @override
  Future<QueryResult<Query$GetMostFavoriteCharacters>> loadData(GraphQLClient client,) {
    return client.query$GetMostFavoriteCharacters(
      Options$Query$GetMostFavoriteCharacters(
        variables: Variables$Query$GetMostFavoriteCharacters(page: page),
      ),
    );
  }

  @override
  void processData(QueryResult<Query$GetMostFavoriteCharacters> response) {
    final data = response.parsedData!;
    hasNextPage = data.Page!.pageInfo!.hasNextPage!;
    log('Page: $page', name: 'FavoriteCharacters');
    page++;
    list.addAll(data.Page!.characters!);
    log('Anime list size: ${list.length}', name: 'FavoriteCharacters');
  }

}