import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:otaku_world/bloc/paginated_data/paginated_data_bloc.dart';
import 'package:otaku_world/graphql/__generated/graphql/staff_detail/staff_voice.graphql.dart';

import '../../../graphql/__generated/graphql/schema.graphql.dart';

class StaffVoiceBloc extends PaginatedDataBloc<
    Query$staffVoice, Query$staffVoice$Staff$characterMedia$edges> {
  final int staffId;
  Enum$MediaSort mediaSort = Enum$MediaSort.POPULARITY_DESC;
  bool isOnMyList = false;

  StaffVoiceBloc({required this.staffId});

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
  Future<QueryResult<Query$staffVoice>> loadData(GraphQLClient client) {
    return client.query$staffVoice(
      Options$Query$staffVoice(
        fetchPolicy: FetchPolicy.networkOnly,
        variables: Variables$Query$staffVoice(
          staffId: staffId,
          onList: isOnMyList,
          page: page,
          sort: [mediaSort],
        ),
        cacheRereadPolicy: CacheRereadPolicy.ignoreAll,
      ),
    );
  }

  @override
  void processData(QueryResult<Query$staffVoice> response) {
    final data = response.parsedData!;
    hasNextPage = data.Staff?.characterMedia?.pageInfo?.hasNextPage ?? false;
    page++;
    if (data.Staff?.characterMedia?.edges != null) {
      list.addAll(
        data.Staff!.characterMedia!.edges!,
      );
    }
  }
}