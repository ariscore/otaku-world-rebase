import 'dart:developer' as dev;

import 'package:bloc/bloc.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:otaku_world/bloc/search/search_base/search_base_bloc.dart';
import 'package:otaku_world/graphql/__generated/graphql/fragments.graphql.dart';
import 'package:otaku_world/graphql/__generated/graphql/schema.graphql.dart';
import 'package:otaku_world/graphql/__generated/graphql/search/search_media.graphql.dart';

class SearchMangaBloc extends SearchBaseBloc<Query$SearchMedia, Fragment$SearchResultMedia> {
  @override
  Future<QueryResult<Query$SearchMedia>> loadData(GraphQLClient client, String search,) {
    return client.query$SearchMedia(
      Options$Query$SearchMedia(
        cacheRereadPolicy: CacheRereadPolicy.ignoreAll,
        fetchPolicy: FetchPolicy.networkOnly,
        variables: Variables$Query$SearchMedia(
          page: page,
          search: search,
          type: Enum$MediaType.MANGA,
        ),
      ),
    );
  }

  @override
  void processData(QueryResult<Query$SearchMedia> response) {
    final data = response.parsedData!;
    hasNextPage = data.Page!.pageInfo!.hasNextPage!;
    dev.log('Page: $page', name: 'SearchMangaBloc');
    page++;
    list.addAll(data.Page!.media!);
    dev.log('Media list size: ${list.length}', name: 'SearchMangaBloc');
  }

  @override
  void onTransition(Transition<SearchBaseEvent, SearchBaseState> transition) {
    dev.log(transition.toString(), name: 'SearchMangaBloc');
    super.onTransition(transition);
  }

}