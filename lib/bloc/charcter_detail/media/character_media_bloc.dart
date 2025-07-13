import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:otaku_world/bloc/paginated_data/paginated_data_bloc.dart';
import 'package:otaku_world/graphql/__generated/graphql/character-detail/character_media.graphql.dart';

import '../../../core/ui/shimmers/detail_screens/shimmer_details.dart';
import '../../../graphql/__generated/graphql/schema.graphql.dart';

class CharacterMediaBloc extends PaginatedDataBloc<Query$getCharacterMedia,
    Query$getCharacterMedia$Character$media$edges> {
  final int characterId;
  final ValueNotifier<Enum$MediaSort> mediaSortNotifier =
      ValueNotifier<Enum$MediaSort>(Enum$MediaSort.POPULARITY_DESC);
  final ValueNotifier<bool> isOnMyList = ValueNotifier(false);

  CharacterMediaBloc({required this.characterId});

  void applyFilter({
    required GraphQLClient client,
  }) {
    add(ResetData());
    add(LoadData(client));
  }


  @override
  Future<QueryResult<Query$getCharacterMedia>> loadData(GraphQLClient client) {
    return client.query$getCharacterMedia(
      Options$Query$getCharacterMedia(
        fetchPolicy: FetchPolicy.networkOnly,
        variables: Variables$Query$getCharacterMedia(
          characterId: characterId,
          onList: isOnMyList.value ? isOnMyList.value : null,
          page: page,
          sort: [mediaSortNotifier.value],
        ),
        cacheRereadPolicy: CacheRereadPolicy.ignoreAll,
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
