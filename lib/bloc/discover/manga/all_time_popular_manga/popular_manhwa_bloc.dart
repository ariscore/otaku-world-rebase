import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:otaku_world/graphql/__generated/graphql/discover/manga/popular_manhwa.graphql.dart';
import 'dart:developer' as dev;

import '../../../../graphql/__generated/graphql/fragments.graphql.dart';
import '../../../paginated_data/paginated_data_bloc.dart';

class PopularManhwaBloc
    extends PaginatedDataBloc<Query$GetPopularManhwa, Fragment$MediaShort> {
  @override
  Future<QueryResult<Query$GetPopularManhwa>> loadData(GraphQLClient client) {
    return client.query$GetPopularManhwa(
      Options$Query$GetPopularManhwa(
        variables: Variables$Query$GetPopularManhwa(page: page),
      ),
    );
  }

  @override
  void processData(QueryResult<Query$GetPopularManhwa> response) {
    final data = response.parsedData!;
    hasNextPage = data.Page!.pageInfo!.hasNextPage!;
    dev.log('Page: $page', name: 'AllTimePopularMangaBloc');
    page++;
    list.addAll(data.Page!.media!);
    dev.log('Anime list size: ${list.length}', name: 'AllTimePopularMangaBloc');
  }
}
