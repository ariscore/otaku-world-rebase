import 'dart:async';
import 'package:equatable/equatable.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:otaku_world/bloc/paginated_data/paginated_data_bloc.dart';
import 'package:otaku_world/graphql/__generated/graphql/fragments.graphql.dart';
import 'dart:developer' as dev;
import '../../../graphql/__generated/graphql/reviews/reviews.graphql.dart';

part '../reviews/reviews_event.dart';

part '../reviews/reviews_state.dart';

class ReviewsBloc
    extends PaginatedDataBloc<Query$GetReviews, Fragment$Review> {
  @override
  Future<QueryResult<Query$GetReviews>> loadData(GraphQLClient client) {
    return client.query$GetReviews(
      Options$Query$GetReviews(
        fetchPolicy: FetchPolicy.networkOnly,
        variables: Variables$Query$GetReviews(
          page: page,
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
