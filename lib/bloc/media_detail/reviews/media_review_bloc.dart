import 'dart:developer';

import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:otaku_world/bloc/paginated_data/paginated_data_bloc.dart';
import 'package:otaku_world/graphql/__generated/graphql/details/media_review.graphql.dart';

import '../../../graphql/__generated/graphql/fragments.graphql.dart';
import '../../../graphql/__generated/graphql/schema.graphql.dart';

class MediaReviewBloc
    extends PaginatedDataBloc<Query$MediaReviews, Fragment$Review> {
  final int mediaId;
  Enum$ReviewSort reviewSort = Enum$ReviewSort.RATING_DESC;

  MediaReviewBloc({required this.mediaId});

  void applyFilter(Enum$ReviewSort reviewSort, GraphQLClient client) {
    this.reviewSort = reviewSort;
    add(ResetData());
    add(LoadData(client));
  }

  @override
  Future<QueryResult<Query$MediaReviews>> loadData(GraphQLClient client) {
    return client.query$MediaReviews(
      Options$Query$MediaReviews(
        fetchPolicy: FetchPolicy.networkOnly,
        variables: Variables$Query$MediaReviews(
          page: page,
          mediaId: mediaId,
          reviewSort: reviewSort,
        ),
      ),
    );
  }

  @override
  void processData(QueryResult<Query$MediaReviews> response) {
    final data = response.parsedData!;
    hasNextPage = data.Media!.reviews!.pageInfo!.hasNextPage!;
    page++;
    list.addAll(data.Media!.reviews!.nodes!);
  }

  void updateReviewRating({
    required int reviewId,
    required Enum$ReviewRating userRating,
  }) {
    log('Updating review $userRating');
    final reviewIndex = list.indexWhere((review) => review?.id == reviewId);
    if (reviewIndex != -1) {
      log('Review index: $reviewIndex');
      final review = list[reviewIndex]!;

      int ratingDelta = 0;
      int ratingAmountDelta = 0;

      // Handle the old rating
      switch (review.userRating) {
        case Enum$ReviewRating.UP_VOTE:
          ratingDelta--;
          ratingAmountDelta--;
          break;
        case Enum$ReviewRating.DOWN_VOTE:
          ratingAmountDelta--;
          break;
        default:
          break;
      }

      // Handle the new rating
      switch (userRating) {
        case Enum$ReviewRating.UP_VOTE:
          ratingDelta++;
          ratingAmountDelta++;
          break;
        case Enum$ReviewRating.DOWN_VOTE:
          ratingAmountDelta++;
          break;
        default:
          break;
      }

      list[reviewIndex] = review.copyWith(
        rating: (review.rating ?? 0) + ratingDelta,
        ratingAmount: (review.ratingAmount ?? 0) + ratingAmountDelta,
        userRating: userRating,
      );
      log('Updated review: ${list[reviewIndex]}');
      add(UpdateData<Fragment$Review>(list: list));
    }
  }
}
