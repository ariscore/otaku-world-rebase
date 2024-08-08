import 'package:equatable/equatable.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:otaku_world/bloc/paginated_data/paginated_data_bloc.dart';

import '../../../graphql/__generated/graphql/details/characters.graphql.dart';

part 'characters_event.dart';
part 'characters_state.dart';

class CharactersBloc extends PaginatedDataBloc<Query$Characters,
    Query$Characters$Media$characters$edges> {
  final int mediaId;

  CharactersBloc({required this.mediaId});

  @override
  Future<QueryResult<Query$Characters>> loadData(GraphQLClient client) {
    return client.query$Characters(
      Options$Query$Characters(
        cacheRereadPolicy: CacheRereadPolicy.mergeOptimistic,
        variables: Variables$Query$Characters(
          mediaId: mediaId,
          page: page,
        ),
      ),
    );
  }

  @override
  void processData(QueryResult<Query$Characters> response) {
    final data = response.parsedData;
    hasNextPage = data!.Media!.characters!.pageInfo!.hasNextPage!;
    page++;
    list.addAll(data.Media!.characters!.edges!);
  }
}
