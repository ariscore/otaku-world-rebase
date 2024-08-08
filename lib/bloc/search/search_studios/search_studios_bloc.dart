import 'dart:developer' as dev;

import 'package:bloc/bloc.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:otaku_world/bloc/search/search_base/search_base_bloc.dart';
import 'package:otaku_world/graphql/__generated/graphql/fragments.graphql.dart';
import 'package:otaku_world/graphql/__generated/graphql/search/search_studios.graphql.dart';

class SearchStudiosBloc
    extends SearchBaseBloc<Query$SearchStudios, Fragment$SearchResultStudio> {
  @override
  Future<QueryResult<Query$SearchStudios>> loadData(
      GraphQLClient client,
      String search,
      ) {
    return client.query$SearchStudios(
      Options$Query$SearchStudios(
        variables: Variables$Query$SearchStudios(
          page: page,
          search: search,
        ),
      ),
    );
  }

  @override
  void processData(QueryResult<Query$SearchStudios> response) {
    final data = response.parsedData!;
    hasNextPage = data.Page!.pageInfo!.hasNextPage!;
    dev.log('Page: $page', name: 'SearchStudiosBloc');
    page++;
    list.addAll(data.Page!.studios!);
    dev.log(
      'Studios list size: ${list.length}',
      name: 'SearchStudiosBloc',
    );
  }

  @override
  void onTransition(Transition<SearchBaseEvent, SearchBaseState> transition) {
    dev.log(transition.toString(), name: 'SearchStudiosBloc');
    super.onTransition(transition);
  }
}
