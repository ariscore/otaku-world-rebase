import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:otaku_world/bloc/paginated_data/paginated_data_bloc.dart';
import 'package:otaku_world/graphql/__generated/graphql/character-detail/character_media.graphql.dart';

import '../../../graphql/__generated/graphql/schema.graphql.dart';

class CharacterMediaBloc extends PaginatedDataBloc<Query$getCharacterMedia,
    Query$getCharacterMedia$Character$media$edges> {
  final int characterId;
  Enum$MediaSort mediaSort = Enum$MediaSort.POPULARITY_DESC;
  bool isOnMyList = false;
  Enum$MediaType? mediaType;

  CharacterMediaBloc({required this.characterId});

  void applyFilter({
    required Enum$MediaSort mediaSort,
    required GraphQLClient client,
    required bool isOnMyList,
    Enum$MediaType? mediaType,
  }) {
    this.mediaSort = mediaSort;
    this.isOnMyList = isOnMyList;
    this.mediaType = mediaType;
    add(ResetData());
    add(LoadData(client));
  }

  @override
  Future<QueryResult<Query$getCharacterMedia>> loadData(GraphQLClient client) {
    return client.query$getCharacterMedia(
      Options$Query$getCharacterMedia(
        variables: Variables$Query$getCharacterMedia(
          characterId: characterId,
          onList: isOnMyList,
          page: page,
          sort: [mediaSort],
          type: mediaType,
        ),
      ),
    );
  }

  @override
  void processData(QueryResult<Query$getCharacterMedia> response) {
    final data = response.parsedData!;

    hasNextPage = data.Character?.media?.pageInfo?.hasNextPage ?? false;
    page++;
    list.addAll(data.Character!.media!.edges!);
  }
}
