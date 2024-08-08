import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:otaku_world/graphql/__generated/graphql/discover/manga/top_100_manga.graphql.dart';
import 'dart:developer' as dev;
import '../../graphql/__generated/graphql/fragments.graphql.dart';
import '../paginated_data/paginated_data_bloc.dart';

class Top100MangaBloc
    extends PaginatedDataBloc<Query$GetTop100Manga, Fragment$MediaShort> {
  @override
  Future<QueryResult<Query$GetTop100Manga>> loadData(GraphQLClient client) {
    return client.query$GetTop100Manga(
      Options$Query$GetTop100Manga(
        variables: Variables$Query$GetTop100Manga(page: page),
      ),
    );
  }

  @override
  void processData(QueryResult<Query$GetTop100Manga> response) {
    final data = response.parsedData!;
    hasNextPage = data.Page!.pageInfo!.hasNextPage!;
    dev.log('Page: $page', name: 'Top100MangaBloc');
    page++;
    list.addAll(data.Page!.media!);
    dev.log('Anime list size: ${list.length}', name: 'Top100MangaBloc');
  }
}
