import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:otaku_world/bloc/paginated_data/paginated_data_bloc.dart';
import 'package:otaku_world/graphql/__generated/graphql/details/staff.graphql.dart';

class StaffBloc extends PaginatedDataBloc<Query$MediaStaff,
    Query$MediaStaff$Media$staff$edges> {
  final int mediaId;

  StaffBloc({required this.mediaId});

  @override
  Future<QueryResult<Query$MediaStaff>> loadData(GraphQLClient client) {
    return client.query$MediaStaff(
      Options$Query$MediaStaff(
        cacheRereadPolicy: CacheRereadPolicy.mergeOptimistic,
        variables: Variables$Query$MediaStaff(
          mediaId: mediaId,
          page: page,
        ),
      ),
    );
  }

  @override
  void processData(QueryResult<Query$MediaStaff> response) {
    final data = response.parsedData;
    hasNextPage = data!.Media!.staff!.pageInfo!.hasNextPage!;
    page++;
    list.addAll(data.Media!.staff!.edges!);
  }
}
