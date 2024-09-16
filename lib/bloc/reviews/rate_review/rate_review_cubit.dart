import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:otaku_world/graphql/__generated/graphql/reviews/rate_review.graphql.dart';
import 'package:otaku_world/graphql/__generated/graphql/schema.graphql.dart';

part 'rate_review_state.dart';

class RateReviewCubit extends Cubit<RateReviewState> {
  RateReviewCubit() : super(RateReviewInitial());

  Future<Either<String, bool>> toggleUpVote(
    GraphQLClient client, {
    required int reviewId,
    required bool isUpVote,
  }) async {
    final response = await client.mutate$RateReview(
      Options$Mutation$RateReview(
        variables: Variables$Mutation$RateReview(
          rating: isUpVote ? Enum$ReviewRating.NO_VOTE : Enum$ReviewRating.UP_VOTE,
          reviewId: reviewId,
        ),
      ),
    );
    log('Response: $response');

    if (response.hasException) {
      final exception = response.exception!;
      log(exception.toString());
      if (exception.linkException != null) {
        return left('Please check your internet connection!');
      } else {
        return left('Something went wrong!');
      }
    } else {
      final rating = response.parsedData!.RateReview?.userRating;
      return right(rating == Enum$ReviewRating.UP_VOTE);
    }
  }

  Future<Either<String, bool>> toggleDownVote(GraphQLClient client, {required int reviewId, required bool isDownVote,}) async {
    final response = await client.mutate$RateReview(
      Options$Mutation$RateReview(
        variables: Variables$Mutation$RateReview(
          rating: isDownVote ? Enum$ReviewRating.NO_VOTE : Enum$ReviewRating.DOWN_VOTE,
          reviewId: reviewId,
        ),
      ),
    );
    log('Response: $response');

    if (response.hasException) {
      final exception = response.exception!;
      log(exception.toString());
      if (exception.linkException != null) {
        return left('Please check your internet connection!');
      } else {
        return left('Something went wrong!');
      }
    } else {
      final rating = response.parsedData!.RateReview?.userRating;
      return right(rating == Enum$ReviewRating.DOWN_VOTE);
    }
  }
}
