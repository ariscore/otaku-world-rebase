import 'dart:developer' as dev;

import 'package:bloc/bloc.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:otaku_world/bloc/search/search_base/search_base_bloc.dart';
import 'package:otaku_world/graphql/__generated/graphql/fragments.graphql.dart';
import 'package:otaku_world/graphql/__generated/graphql/search/search_staff.graphql.dart';

class SearchStaffBloc
    extends SearchBaseBloc<Query$SearchStaff, Fragment$SearchResultStaff> {
  @override
  Future<QueryResult<Query$SearchStaff>> loadData(
    GraphQLClient client,
    String search,
  ) {
    return client.query$SearchStaff(
      Options$Query$SearchStaff(
        variables: Variables$Query$SearchStaff(
          page: page,
          search: search,
        ),
      ),
    );
  }

  @override
  void processData(QueryResult<Query$SearchStaff> response) {
    final data = response.parsedData!;
    hasNextPage = data.Page!.pageInfo!.hasNextPage!;
    dev.log('Page: $page', name: 'SearchStaffBloc');
    page++;
    list.addAll(data.Page!.staff!);
    dev.log(
      'Staff list size: ${list.length}',
      name: 'SearchStaffBloc',
    );
  }

  @override
  void onTransition(Transition<SearchBaseEvent, SearchBaseState> transition) {
    dev.log(transition.toString(), name: 'SearchStaffBloc');
    super.onTransition(transition);
  }
}
