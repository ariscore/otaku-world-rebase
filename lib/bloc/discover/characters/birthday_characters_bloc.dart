import 'dart:developer';

import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:otaku_world/bloc/paginated_data/paginated_data_bloc.dart';
import 'package:otaku_world/graphql/__generated/graphql/discover/characters/birthday_characters.graphql.dart';
import 'package:otaku_world/graphql/__generated/graphql/fragments.graphql.dart';

class BirthdayCharactersBloc extends PaginatedDataBloc<
    Query$GetBirthdayCharacters, Fragment$CharacterShort> {
  @override
  Future<QueryResult<Query$GetBirthdayCharacters>> loadData(
    GraphQLClient client,
  ) {
    return client.query$GetBirthdayCharacters(
      Options$Query$GetBirthdayCharacters(
        variables: Variables$Query$GetBirthdayCharacters(page: page),
      ),
    );
  }

  @override
  void processData(QueryResult<Query$GetBirthdayCharacters> response) {
    final data = response.parsedData!;
    hasNextPage = data.Page!.pageInfo!.hasNextPage!;
    log('Page: $page', name: 'BirthdayCharacters');
    page++;
    list.addAll(data.Page!.characters!);
    log('Anime list size: ${list.length}', name: 'BirthdayCharacters');
  }
}
