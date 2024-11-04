import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:otaku_world/bloc/paginated_data/paginated_data_bloc.dart';
import 'package:otaku_world/graphql/__generated/graphql/fragments.graphql.dart';
import 'package:otaku_world/graphql/__generated/graphql/user/favorite_studios.graphql.dart';

class FavoriteStudiosBloc
    extends PaginatedDataBloc<Query$FavoriteStudios, Fragment$SearchResultStudio> {
  FavoriteStudiosBloc({required this.userId});

  final int userId;

  @override
  Future<QueryResult<Query$FavoriteStudios>> loadData(GraphQLClient client) {
    return client.query$FavoriteStudios(
      Options$Query$FavoriteStudios(
        fetchPolicy: FetchPolicy.networkOnly,
        cacheRereadPolicy: CacheRereadPolicy.ignoreOptimisitic,
        variables: Variables$Query$FavoriteStudios(
          userId: userId,
          page: page,
        ),
      ),
    );
  }

  @override
  void processData(QueryResult<Query$FavoriteStudios> response) {
    final data = response.parsedData!;
    hasNextPage = data.User?.favourites?.studios?.pageInfo?.hasNextPage ?? false;
    page++;
    list.addAll(data.User?.favourites?.studios?.nodes ?? []);
  }
}
