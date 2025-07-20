import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:otaku_world/bloc/paginated_data/paginated_data_bloc.dart';
import 'package:otaku_world/graphql/__generated/graphql/fragments.graphql.dart';

import '../../../graphql/__generated/graphql/schema.graphql.dart';
import '../../../graphql/__generated/graphql/studio_detail/studio_media.graphql.dart';

class StudioMediaBloc
    extends PaginatedDataBloc<Query$getStudioMedia, Fragment$MediaShort> {
  bool? displayAdultContent;
  GraphQLClient? _client;
  final int studioId;
  final ValueNotifier<Enum$MediaSort> mediaSortNotifier =
      ValueNotifier<Enum$MediaSort>(Enum$MediaSort.POPULARITY_DESC);
  final ValueNotifier<bool> isOnMyList = ValueNotifier(false);

  StudioMediaBloc({required this.studioId});

  void initializeBloc({
    required GraphQLClient client,
    bool? displayAdultContent,
  }) {
    _client = client;
    this.displayAdultContent = displayAdultContent;
    add(LoadData(client));
  }

  void applyFilter({
    required GraphQLClient client,
  }) {
    add(ResetData());
    add(LoadData(client));
  }

  @override
  Future<QueryResult<Query$getStudioMedia>> loadData(
    GraphQLClient client,
  ) async {
    log(
      'StudioMediaBloc loadData called with studioId: $studioId AND page: $page AND sort: ${mediaSortNotifier.value} AND onList: ${isOnMyList.value}',
    );
    final data = await client.query$getStudioMedia(
      Options$Query$getStudioMedia(
        fetchPolicy: FetchPolicy.noCache,
        variables: Variables$Query$getStudioMedia(
          id: studioId,
          onList: isOnMyList.value ? isOnMyList.value : null,
          page: page,
          sort: [mediaSortNotifier.value],
        ),
        cacheRereadPolicy: CacheRereadPolicy.ignoreAll,
      ),
    );
    return data;
  }

/*
  @override
  void processData(QueryResult<Query$getStudioMedia> response) {
    final data = response.parsedData!;
    hasNextPage = data.Studio?.media?.pageInfo?.hasNextPage ?? false;
    page++;

    final mediaList = data.Studio!.media!.edges!.map((e) => e?.node).toList();

    // Apply content filtering based on displayAdultContent setting
    if (displayAdultContent == false) {
      // If displayAdultContent is false, exclude adult content
      final filteredMedia = mediaList.where((media) {
        // If isAdult is null, we assume it's not adult content
        return media?.isAdult != true;
      }).toList();

      if (filteredMedia.isEmpty && hasNextPage && _client != null) {
        add(LoadData(_client!));
      }
      list.addAll(filteredMedia);
    } else {
      // If displayAdultContent is true or null, include all content
      list.addAll(mediaList);
    }
  }*/
  @override
  void processData(QueryResult<Query$getStudioMedia> response) {
    final data = response.parsedData!;
    hasNextPage = data.Studio?.media?.pageInfo?.hasNextPage ?? false;
    page++;

    final mediaList = data.Studio!.media!.edges!.map((e) => e?.node).toList();
    list.addAll(mediaList);
  }
}
