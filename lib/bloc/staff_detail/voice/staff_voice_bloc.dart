import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:otaku_world/bloc/paginated_data/paginated_data_bloc.dart';
import 'package:otaku_world/graphql/__generated/graphql/staff_detail/staff_voice.graphql.dart';

import '../../../graphql/__generated/graphql/schema.graphql.dart';

class StaffVoiceBloc extends PaginatedDataBloc<Query$staffVoice,
    Query$staffVoice$Staff$characterMedia$edges> {
  final int staffId;
  final ValueNotifier<Enum$MediaSort> mediaSortNotifier =
      ValueNotifier<Enum$MediaSort>(Enum$MediaSort.POPULARITY_DESC);
  final ValueNotifier<bool> isOnMyList = ValueNotifier(false);

  StaffVoiceBloc({required this.staffId});

  void applyFilter({
    required GraphQLClient client,
  }) {
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
          onList: isOnMyList.value ? isOnMyList.value : null,
          sort: [mediaSortNotifier.value],
          page: page,
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
