import 'dart:async';
import 'package:equatable/equatable.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:otaku_world/bloc/paginated_data/paginated_data_bloc.dart';
import 'package:otaku_world/graphql/__generated/graphql/fragments.graphql.dart';

import '../../../graphql/__generated/graphql/reviews/reviews.graphql.dart';
import '../../../graphql/__generated/graphql/schema.graphql.dart';

part '../reviews/review_event.dart';
part '../reviews/review_state.dart';

class ReviewsBloc extends PaginatedDataBloc<Query$GetReviews, Fragment$Review> {
  Enum$ReviewSort reviewSort = Enum$ReviewSort.CREATED_AT;
  Enum$MediaType? mediaType;

  void applyFilters(GraphQLClient client) {
    add(ResetData());
    add(LoadData(client));
  }

  void resetFilters() {
    reviewSort = Enum$ReviewSort.CREATED_AT;
    mediaType = null;
  }

  @override
  Future<QueryResult<Query$GetReviews>> loadData(GraphQLClient client) {
    return client.query$GetReviews(
      Options$Query$GetReviews(
        fetchPolicy: FetchPolicy.networkOnly,
        variables: Variables$Query$GetReviews(
          page: page,
          mediaSort: reviewSort,
          type: mediaType,
        ),
      ),
    );
  }

  @override
  void processData(QueryResult<Query$GetReviews> response) {
    final data = response.parsedData!;
    hasNextPage = data.Page!.pageInfo!.hasNextPage!;
    dev.log('Page: $page', name: 'Review Bloc');
    page++;
    list.addAll(data.Page!.reviews!);
    dev.log('Episodes list size: ${list.length}', name: 'ReviewBloc');
  }
}
