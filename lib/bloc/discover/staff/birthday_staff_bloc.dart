import 'dart:developer';

import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:otaku_world/bloc/paginated_data/paginated_data_bloc.dart';
import 'package:otaku_world/graphql/__generated/graphql/discover/staff/birthday_staff.graphql.dart';
import 'package:otaku_world/graphql/__generated/graphql/fragments.graphql.dart';

class BirthdayStaffBloc
    extends PaginatedDataBloc<Query$GetBirthdayStaff, Fragment$StaffShort> {
  @override
  Future<QueryResult<Query$GetBirthdayStaff>> loadData(GraphQLClient client) {
    return client.query$GetBirthdayStaff(
      Options$Query$GetBirthdayStaff(
        variables: Variables$Query$GetBirthdayStaff(page: page),
      ),
    );
  }

  @override
  void processData(QueryResult<Query$GetBirthdayStaff> response) {
    final data = response.parsedData!;
    hasNextPage = data.Page!.pageInfo!.hasNextPage!;
    log('Page: $page', name: 'BirthdayStaff');
    page++;
    list.addAll(data.Page!.staff!);
    log('Anime list size: ${list.length}', name: 'BirthdayStaff');
  }
}
