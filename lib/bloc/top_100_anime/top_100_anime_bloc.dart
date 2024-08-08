import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:otaku_world/graphql/__generated/graphql/discover/anime/top_100_anime.graphql.dart';

import '../../graphql/__generated/graphql/fragments.graphql.dart';
import '../paginated_data/paginated_data_bloc.dart';
import 'dart:developer' as dev;

class Top100AnimeBloc
    extends PaginatedDataBloc<Query$GetTop100Anime, Fragment$MediaShort> {
  @override
  Future<QueryResult<Query$GetTop100Anime>> loadData(GraphQLClient client) {
    return client.query$GetTop100Anime(
      Options$Query$GetTop100Anime(
        variables: Variables$Query$GetTop100Anime(page: page),
      ),
    );
  }

  @override
  void processData(QueryResult<Query$GetTop100Anime> response) {
    final data = response.parsedData!;
    hasNextPage = data.Page!.pageInfo!.hasNextPage!;
    dev.log('Page: $page', name: 'Top100AnimeBloc');
    page++;
    list.addAll(data.Page!.media!);
    dev.log('Anime list size: ${list.length}', name: 'Top100AnimeBloc');
  }
}
