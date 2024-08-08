import 'dart:developer' as dev;

import 'package:bloc/bloc.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:otaku_world/bloc/search/search_base/search_base_bloc.dart';
import 'package:otaku_world/graphql/__generated/graphql/fragments.graphql.dart';
import 'package:otaku_world/graphql/__generated/graphql/search/search_characters.graphql.dart';

class SearchCharactersBloc extends SearchBaseBloc<Query$SearchCharacters,
    Fragment$SearchResultCharacter> {
  @override
  Future<QueryResult<Query$SearchCharacters>> loadData(
    GraphQLClient client,
    String search,
  ) {
    return client.query$SearchCharacters(
      Options$Query$SearchCharacters(
        variables: Variables$Query$SearchCharacters(
          page: page,
          search: search,
        ),
      ),
    );
  }

  @override
  void processData(QueryResult<Query$SearchCharacters> response) {
    final data = response.parsedData!;
    hasNextPage = data.Page!.pageInfo!.hasNextPage!;
    dev.log('Page: $page', name: 'SearchCharactersBloc');
    page++;
    list.addAll(data.Page!.characters!);
    dev.log(
      'Characters list size: ${list.length}',
      name: 'SearchCharactersBloc',
    );
  }

  @override
  void onTransition(Transition<SearchBaseEvent, SearchBaseState> transition) {
    dev.log(transition.toString(), name: 'SearchCharactersBloc');
    super.onTransition(transition);
  }
}
