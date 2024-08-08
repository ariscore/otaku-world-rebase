import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:otaku_world/bloc/paginated_data/paginated_data_bloc.dart';
import 'package:otaku_world/graphql/__generated/graphql/discover/anime/top_airing_anime.graphql.dart';
import 'package:otaku_world/graphql/__generated/graphql/fragments.graphql.dart';
import 'dart:developer' as dev;

class TopAiringAnimeBloc
    extends PaginatedDataBloc<Query$GetTopAiringAnime, Fragment$MediaShort> {
  @override
  Future<QueryResult<Query$GetTopAiringAnime>> loadData(GraphQLClient client) {
    return client.query$GetTopAiringAnime(
      Options$Query$GetTopAiringAnime(
        variables: Variables$Query$GetTopAiringAnime(page: page),
      ),
    );
  }

  @override
  void processData(QueryResult<Query$GetTopAiringAnime> response) {
    final data = response.parsedData!;
    hasNextPage = data.Page!.pageInfo!.hasNextPage!;
    dev.log('Page: $page', name: 'TopAiringAnimeBloc');
    page++;
    list.addAll(data.Page!.media!);
    dev.log('Anime list size: ${list.length}', name: 'TopAiringAnimeBloc');
  }
}
