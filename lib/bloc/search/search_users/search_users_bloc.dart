import 'dart:developer' as dev;

import 'package:bloc/bloc.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:otaku_world/bloc/search/search_base/search_base_bloc.dart';
import 'package:otaku_world/graphql/__generated/graphql/fragments.graphql.dart';
import 'package:otaku_world/graphql/__generated/graphql/search/search_users.graphql.dart';

class SearchUsersBloc
    extends SearchBaseBloc<Query$SearchUsers, Fragment$SearchResultUser> {
  @override
  Future<QueryResult<Query$SearchUsers>> loadData(
      GraphQLClient client,
      String search,
      ) {
    return client.query$SearchUsers(
      Options$Query$SearchUsers(
        cacheRereadPolicy: CacheRereadPolicy.ignoreAll,
        fetchPolicy: FetchPolicy.networkOnly,
        variables: Variables$Query$SearchUsers(
          page: page,
          search: search,
        ),
      ),
    );
  }

  @override
  void processData(QueryResult<Query$SearchUsers> response) {
    final data = response.parsedData!;
    hasNextPage = data.Page!.pageInfo!.hasNextPage!;
    dev.log('Page: $page', name: 'SearchUsersBloc');
    page++;
    list.addAll(data.Page!.users!);
    dev.log(
      'Users list size: ${list.length}',
      name: 'SearchUsersBloc',
    );
  }

  @override
  void onTransition(Transition<SearchBaseEvent, SearchBaseState> transition) {
    dev.log(transition.toString(), name: 'SearchUsersBloc');
    super.onTransition(transition);
  }
}
