import 'dart:developer';

import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:otaku_world/bloc/paginated_data/paginated_data_bloc.dart';
import 'package:otaku_world/graphql/__generated/graphql/user/character_images.graphql.dart';

class CharacterImagesBloc
    extends PaginatedDataBloc<Query$CharacterImages, Fragment$CharacterImage> {
  CharacterImagesBloc({required this.idIn});

  final List<int?> idIn;

  @override
  Future<QueryResult<Query$CharacterImages>> loadData(GraphQLClient client) {
    return client.query$CharacterImages(
      Options$Query$CharacterImages(
        fetchPolicy: FetchPolicy.cacheFirst,
        variables: Variables$Query$CharacterImages(
          page: page,
          id_in: idIn,
        ),
      ),
    );
  }

  @override
  void processData(QueryResult<Query$CharacterImages> response) {
    log('Response: $response');
    final data = response.parsedData!;
    hasNextPage = data.Page!.pageInfo!.hasNextPage!;
    page++;
    list.addAll(data.Page!.characters!);
  }
}
