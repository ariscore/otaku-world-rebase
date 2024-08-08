import 'dart:developer';

import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:otaku_world/bloc/paginated_data/paginated_data_bloc.dart';
import 'package:otaku_world/graphql/__generated/graphql/discover/staff/most_favorite_staff.graphql.dart';
import 'package:otaku_world/graphql/__generated/graphql/fragments.graphql.dart';

class MostFavoriteStaffBloc
    extends PaginatedDataBloc<Query$GetMostFavoriteStaff, Fragment$StaffShort> {
  @override
  Future<QueryResult<Query$GetMostFavoriteStaff>> loadData(
    GraphQLClient client,
  ) {
    return client.query$GetMostFavoriteStaff(
      Options$Query$GetMostFavoriteStaff(
        variables: Variables$Query$GetMostFavoriteStaff(page: page),
      ),
    );
  }

  @override
  void processData(QueryResult<Query$GetMostFavoriteStaff> response) {
    final data = response.parsedData!;
    hasNextPage = data.Page!.pageInfo!.hasNextPage!;
    log('Page: $page', name: 'FavoriteStaff');
    page++;
    list.addAll(data.Page!.staff!);
    log('Anime list size: ${list.length}', name: 'FavoriteStaff');
  }
}
