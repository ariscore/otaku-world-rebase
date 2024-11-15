import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:otaku_world/bloc/paginated_data/paginated_data_bloc.dart';
import 'package:otaku_world/graphql/__generated/graphql/fragments.graphql.dart';
import 'package:otaku_world/graphql/__generated/graphql/user/favorite_staff.graphql.dart';

class FavoriteStaffBloc
    extends PaginatedDataBloc<Query$FavoriteStaff, Fragment$StaffShort> {
  FavoriteStaffBloc({required this.userId});

  final int userId;

  @override
  Future<QueryResult<Query$FavoriteStaff>> loadData(GraphQLClient client) {
    return client.query$FavoriteStaff(
      Options$Query$FavoriteStaff(
        fetchPolicy: FetchPolicy.networkOnly,
        cacheRereadPolicy: CacheRereadPolicy.ignoreOptimisitic,
        variables: Variables$Query$FavoriteStaff(
          userId: userId,
          page: page,
        ),
      ),
    );
  }

  @override
  void processData(QueryResult<Query$FavoriteStaff> response) {
    final data = response.parsedData!;
    hasNextPage = data.User?.favourites?.staff?.pageInfo?.hasNextPage ?? false;
    page++;
    list.addAll(data.User?.favourites?.staff?.nodes ?? []);
  }
}
