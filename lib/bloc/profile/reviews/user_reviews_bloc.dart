import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:otaku_world/graphql/__generated/graphql/fragments.graphql.dart';
import 'package:otaku_world/graphql/__generated/graphql/user/user_reviews.graphql.dart';

import '../../../graphql/__generated/graphql/schema.graphql.dart';
import '../../paginated_data/paginated_data_bloc.dart';

class UserReviewsBloc
    extends PaginatedDataBloc<Query$UserReviews, Fragment$Review> {
  UserReviewsBloc({required this.userId});

  final int userId;

  @override
  Future<QueryResult<Query$UserReviews>> loadData(GraphQLClient client) {
    return client.query$UserReviews(
      Options$Query$UserReviews(
        fetchPolicy: FetchPolicy.networkOnly,
        variables: Variables$Query$UserReviews(
          page: page,
          userId: userId,
        ),
      ),
    );
  }

  @override
  void processData(QueryResult<Query$UserReviews> response) {
    final data = response.parsedData!;
    hasNextPage = data.Page!.pageInfo!.hasNextPage!;
    page++;
    list.addAll(data.Page!.reviews!);
  }

  void updateReviewRating({
    required int reviewId,
    required Enum$ReviewRating userRating,
  }) {
    // dev.log('Updating review $userRating');
    final reviewIndex = list.indexWhere((review) => review?.id == reviewId);
    if (reviewIndex != -1) {
      // dev.log('Review index: $reviewIndex');
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
      // dev.log('Updated review: ${list[reviewIndex]}');
      add(UpdateData<Fragment$Review>(list: list));
    }
  }
}
