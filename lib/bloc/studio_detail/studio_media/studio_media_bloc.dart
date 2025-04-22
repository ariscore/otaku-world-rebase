
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:otaku_world/bloc/paginated_data/paginated_data_bloc.dart';
import 'package:otaku_world/graphql/__generated/graphql/fragments.graphql.dart';

import '../../../graphql/__generated/graphql/schema.graphql.dart';
import '../../../graphql/__generated/graphql/studio_detail/studio_media.graphql.dart';

class StudioMediaBloc
    extends PaginatedDataBloc<Query$getStudioMedia, Fragment$MediaShort> {
  final int studioId;
  Enum$MediaSort mediaSort = Enum$MediaSort.POPULARITY_DESC;
  bool isOnMyList = false;

  StudioMediaBloc({required this.studioId});

  void applyFilter({
    required Enum$MediaSort mediaSort,
    required GraphQLClient client,
    required bool isOnMyList,
  }) {
    this.mediaSort = mediaSort;
    this.isOnMyList = isOnMyList;
    add(ResetData());
    add(LoadData(client));
  }

  @override
  Future<QueryResult<Query$getStudioMedia>> loadData(GraphQLClient client) {
    return client.query$getStudioMedia(
      Options$Query$getStudioMedia(
        fetchPolicy: FetchPolicy.networkOnly,
        variables: Variables$Query$getStudioMedia(
          id: studioId,
          onList: isOnMyList,
          page: page,
          sort: [mediaSort],
        ),
        cacheRereadPolicy: CacheRereadPolicy.ignoreAll,
      ),
    );
  }

  @override
  void processData(QueryResult<Query$getStudioMedia> response) {
    final data = response.parsedData!;
    hasNextPage = data.Studio?.media?.pageInfo?.hasNextPage ?? false;
    page++;
    list.addAll(
      data.Studio!.media!.edges!.map(
        (e) => e?.node,
      ),
    );
  }
}
