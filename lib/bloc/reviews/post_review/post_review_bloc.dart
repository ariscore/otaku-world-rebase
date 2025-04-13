import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:otaku_world/graphql/__generated/graphql/reviews/fetch_review.graphql.dart';
import 'package:otaku_world/graphql/__generated/graphql/reviews/post_review.graphql.dart';

part 'post_review_event.dart';
part 'post_review_state.dart';

class PostReviewBloc extends Bloc<PostReviewEvent, PostReviewState> {
  PostReviewBloc() : super(PostReviewInitial()) {
    on<FetchReview>(_onFetchReview);
    on<SubmitReview>(_onSubmitReview);
  }

  Future<void> _onFetchReview(
    FetchReview event,
    Emitter<PostReviewState> emit,
  ) async {
    emit(ReviewLoading());
    try {
      log('Fetching review by id : ${event.userId} and ${event.mediaId}');
      final response = await event.client.query$FetchReviewByUserId(
        Options$Query$FetchReviewByUserId(
          variables: Variables$Query$FetchReviewByUserId(
            userId: event.userId,
            mediaId: event.mediaId,
          ),
        ),
      );

      if (response.hasException) {
        emit(const ReviewLoaded(null));
      } else {
        if (response.parsedData != null) {
          log(response.toString());
          final Query$FetchReviewByUserId$Review? review =
              response.parsedData?.Review;
          if (review != null) {
            emit(ReviewLoaded(review));
          }
        }
      }
    } catch (e) {
      emit(PostReviewFetchFailure(error: e.toString()));
    }
  }

  Future<void> _onSubmitReview(
    SubmitReview event,
    Emitter<PostReviewState> emit,
  ) async {
    emit(ReviewLoading());
    try {
      log('${event.body},${event.reviewId},${event.mediaId},${event.score}, ${event.summary},  ${event.isPrivate}');
      final response = await event.client.mutate$SaveReview(
        Options$Mutation$SaveReview(
          variables: Variables$Mutation$SaveReview(
            mediaId: event.mediaId,
            body: event.body,
            summary: event.summary,
            score: event.score,
            private: event.isPrivate,
            saveReviewId: event.reviewId,
          ),
        ),
      );
      log('Response: $response');

      if (response.hasException) {
        final exception = response.exception!;
        log(exception.toString());
        if (exception.linkException != null) {
          emit(
            const PostReviewSubmitFailure(
              error: 'Please check your internet connection!',
            ),
          );
        } else {
          emit(
            const PostReviewSubmitFailure(
              error: 'SomeThing went wrong!',
            ),
          );
        }
      }
    } catch (e) {
      emit(PostReviewSubmitFailure(error: e.toString()));
    }
  }
}
