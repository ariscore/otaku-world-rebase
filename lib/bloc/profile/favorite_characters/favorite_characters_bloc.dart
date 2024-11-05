import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:otaku_world/bloc/paginated_data/paginated_data_bloc.dart';
import 'package:otaku_world/graphql/__generated/graphql/fragments.graphql.dart';
import 'package:otaku_world/graphql/__generated/graphql/user/favorite_characters.graphql.dart';

class FavoriteCharactersBloc
    extends PaginatedDataBloc<Query$FavoriteCharacters, Fragment$CharacterShort> {
  FavoriteCharactersBloc({required this.userId});

  final int userId;

  @override
  Future<QueryResult<Query$FavoriteCharacters>> loadData(GraphQLClient client) {
    return client.query$FavoriteCharacters(
      Options$Query$FavoriteCharacters(
        fetchPolicy: FetchPolicy.networkOnly,
        cacheRereadPolicy: CacheRereadPolicy.ignoreOptimisitic,
        variables: Variables$Query$FavoriteCharacters(
          userId: userId,
          page: page,
        ),
      ),
    );
  }

  @override
  void processData(QueryResult<Query$FavoriteCharacters> response) {
    final data = response.parsedData!;
    hasNextPage = data.User?.favourites?.characters?.pageInfo?.hasNextPage ?? false;
    page++;
    list.addAll(data.User?.favourites?.characters?.nodes ?? []);
  }
}
