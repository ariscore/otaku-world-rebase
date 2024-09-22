import 'dart:async';
import 'dart:developer' as dev;

import 'package:equatable/equatable.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:otaku_world/bloc/paginated_data/paginated_data_bloc.dart';
import 'package:otaku_world/graphql/__generated/graphql/fragments.graphql.dart';

import '../../../graphql/__generated/graphql/reviews/reviews.graphql.dart';
import '../../../graphql/__generated/graphql/schema.graphql.dart';

part '../reviews/reviews_event.dart';
part '../reviews/reviews_state.dart';

class ReviewsBloc extends PaginatedDataBloc<Query$GetReviews, Fragment$Review> {
  final List<Enum$ReviewSort> reviewSortList = [
    Enum$ReviewSort.CREATED_AT_DESC,
    Enum$ReviewSort.CREATED_AT,
    Enum$ReviewSort.SCORE_DESC,
    Enum$ReviewSort.SCORE,
    Enum$ReviewSort.RATING_DESC,
    Enum$ReviewSort.RATING,
    Enum$ReviewSort.UPDATED_AT_DESC,
    Enum$ReviewSort.UPDATED_AT
  ];

  final List<String> mediaSort = ['All', 'Anime', 'Manga'];

  Enum$ReviewSort reviewSort = Enum$ReviewSort.CREATED_AT_DESC;
  String mediaType = 'All';

  void applyFilters(GraphQLClient client) {
    add(ResetData());
    add(LoadData(client));
  }

  void resetFilters() {
    reviewSort = Enum$ReviewSort.CREATED_AT_DESC;
    mediaType = 'All';
  }

  @override
  Future<QueryResult<Query$GetReviews>> loadData(GraphQLClient client) {
    return client.query$GetReviews(
      Options$Query$GetReviews(
        fetchPolicy: FetchPolicy.networkOnly,
        variables: Variables$Query$GetReviews(
          page: page,
          mediaSort: reviewSort,
          type: getReviewMediaTypeSort(mediaType),
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

  Enum$MediaType? getReviewMediaTypeSort(String sort) {
    if (sort == 'Manga') {
      return Enum$MediaType.MANGA;
    } else if (sort == 'Anime') {
      return Enum$MediaType.ANIME;
    } else {
      return null;
    }
  }
}
