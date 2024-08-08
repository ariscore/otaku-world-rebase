import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:otaku_world/graphql/__generated/graphql/discover/manga/all_time_popular_manga.graphql.dart';
import 'dart:developer' as dev;
import '../../graphql/__generated/graphql/fragments.graphql.dart';
import '../paginated_data/paginated_data_bloc.dart';

class AllTimePopularMangaBloc extends PaginatedDataBloc<
    Query$GetAllTimePopularManga, Fragment$MediaShort> {
  @override
  Future<QueryResult<Query$GetAllTimePopularManga>> loadData(
      GraphQLClient client) {
    return client.query$GetAllTimePopularManga(
      Options$Query$GetAllTimePopularManga(
        variables: Variables$Query$GetAllTimePopularManga(page: page),
      ),
    );
  }

  @override
  void processData(QueryResult<Query$GetAllTimePopularManga> response) {
    final data = response.parsedData!;
    hasNextPage = data.Page!.pageInfo!.hasNextPage!;
    dev.log('Page: $page', name: 'AllTimePopularMangaBloc');
    page++;
    list.addAll(data.Page!.media!);
    dev.log('Anime list size: ${list.length}', name: 'AllTimePopularMangaBloc');
  }
}
