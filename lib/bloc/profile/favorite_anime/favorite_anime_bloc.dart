import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:otaku_world/bloc/paginated_data/paginated_data_bloc.dart';
import 'package:otaku_world/graphql/__generated/graphql/fragments.graphql.dart';
import 'package:otaku_world/graphql/__generated/graphql/user/favorite_anime.graphql.dart';

class FavoriteAnimeBloc
    extends PaginatedDataBloc<Query$FavoriteAnime, Fragment$MediaShort> {
  FavoriteAnimeBloc({required this.userId});

  final int userId;

  @override
  Future<QueryResult<Query$FavoriteAnime>> loadData(GraphQLClient client) {
    return client.query$FavoriteAnime(
      Options$Query$FavoriteAnime(
        fetchPolicy: FetchPolicy.networkOnly,
        variables: Variables$Query$FavoriteAnime(
          userId: userId,
          page: page,
        ),
      ),
    );
  }

  @override
  void processData(QueryResult<Query$FavoriteAnime> response) {
    final data = response.parsedData!;
    hasNextPage = data.User?.favourites?.anime?.pageInfo?.hasNextPage ?? false;
    page++;
    list.addAll(data.User?.favourites?.anime?.nodes ?? []);
  }
}
