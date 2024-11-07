import 'dart:developer';

import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:otaku_world/bloc/paginated_data/paginated_data_bloc.dart';
import 'package:otaku_world/graphql/__generated/graphql/user/media_posters.graphql.dart';

class MediaPostersBloc
    extends PaginatedDataBloc<Query$MediaPosters, Fragment$MediaPoster> {
  MediaPostersBloc({required this.idIn});

  final List<int?> idIn;

  @override
  Future<QueryResult<Query$MediaPosters>> loadData(GraphQLClient client) {
    return client.query$MediaPosters(
      Options$Query$MediaPosters(
        fetchPolicy: FetchPolicy.cacheFirst,
        variables: Variables$Query$MediaPosters(
          page: page,
          id_in: idIn,
        ),
      ),
    );
  }

  @override
  void processData(QueryResult<Query$MediaPosters> response) {
    log('Response: $response');
    final data = response.parsedData!;
    hasNextPage = data.Page!.pageInfo!.hasNextPage!;
    page++;
    list.addAll(data.Page!.media!);
  }
}
