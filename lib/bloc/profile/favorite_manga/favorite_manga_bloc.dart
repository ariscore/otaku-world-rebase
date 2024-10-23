import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:otaku_world/bloc/paginated_data/paginated_data_bloc.dart';
import 'package:otaku_world/graphql/__generated/graphql/fragments.graphql.dart';
import 'package:otaku_world/graphql/__generated/graphql/user/favorite_manga.graphql.dart';

class FavoriteMangaBloc
    extends PaginatedDataBloc<Query$FavoriteManga, Fragment$MediaShort> {
  FavoriteMangaBloc({required this.userId});

  final int userId;

  @override
  Future<QueryResult<Query$FavoriteManga>> loadData(GraphQLClient client) {
    return client.query$FavoriteManga(
      Options$Query$FavoriteManga(
        fetchPolicy: FetchPolicy.networkOnly,
        variables: Variables$Query$FavoriteManga(
          userId: userId,
          page: page,
        ),
      ),
    );
  }

  @override
  void processData(QueryResult<Query$FavoriteManga> response) {
    final data = response.parsedData!;
    hasNextPage = data.User?.favourites?.manga?.pageInfo?.hasNextPage ?? false;
    page++;
    list.addAll(data.User?.favourites?.manga?.nodes ?? []);
  }
}
