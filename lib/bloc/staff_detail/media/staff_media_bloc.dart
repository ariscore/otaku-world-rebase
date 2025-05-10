import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:otaku_world/bloc/paginated_data/paginated_data_bloc.dart';
import 'package:otaku_world/graphql/__generated/graphql/staff_detail/staff_media.graphql.dart';

import '../../../graphql/__generated/graphql/schema.graphql.dart';

class StaffMediaBloc extends PaginatedDataBloc<Query$staffMedia,
    Query$staffMedia$Staff$staffMedia$edges$node> {
  final int staffId;
  final Enum$MediaType mediaType;
  Enum$MediaSort mediaSort = Enum$MediaSort.POPULARITY_DESC;
  bool isOnMyList = false;

  StaffMediaBloc({
    required this.staffId,
    required this.mediaType,
  });

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
  Future<QueryResult<Query$staffMedia>> loadData(GraphQLClient client) {
    return client.query$staffMedia(
      Options$Query$staffMedia(
        fetchPolicy: FetchPolicy.networkOnly,
        variables: Variables$Query$staffMedia(
          staffId: staffId,
          onList: isOnMyList,
          page: page,
          sort: [mediaSort],
          type: mediaType,
        ),
        cacheRereadPolicy: CacheRereadPolicy.ignoreAll,
      ),
    );
  }

  @override
  void processData(QueryResult<Query$staffMedia> response) {
    final data = response.parsedData!;
    hasNextPage = data.Staff?.staffMedia?.pageInfo?.hasNextPage ?? false;
    page++;
    if (data.Staff?.staffMedia?.edges != null) {
      list.addAll(
        data.Staff!.staffMedia!.edges!.map(
          (e) => e?.node,
        ),
      );
    }
  }
}
