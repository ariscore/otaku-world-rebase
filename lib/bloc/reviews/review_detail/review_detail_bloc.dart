import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:otaku_world/graphql/__generated/graphql/fragments.graphql.dart';
import 'package:otaku_world/graphql/__generated/graphql/reviews/review_detail.graphql.dart';

import '../../../core/model/custom_error.dart';
import '../../../utils/graphql_error_handler.dart';

part 'review_detail_event.dart';
part 'review_detail_state.dart';

class ReviewDetailBloc extends Bloc<ReviewDetailEvent, ReviewDetailState> {
  ReviewDetailBloc({required this.reviewId}) : super(ReviewDetailInitial()) {
    on<LoadReviewDetail>(_onLoadReviewDetail);
  }

  final int reviewId;

  Future<void> _onLoadReviewDetail(
    LoadReviewDetail event,
    Emitter<ReviewDetailState> emit,
  ) async {
    emit(ReviewDetailLoading());
    final response = await event.client.query$GetReviewDetail(
      Options$Query$GetReviewDetail(
        fetchPolicy: FetchPolicy.networkOnly,
        variables: Variables$Query$GetReviewDetail(
          id: reviewId,
        ),
      ),
    );

    if (response.hasException) {
      final exception = response.exception!;
      emit(
        ReviewDetailError(
          (GraphQLErrorHandler.handleException(exception)),
        ),
      );
    } else {
      emit(ReviewDetailLoaded(response.parsedData!.Review!));
    }
  }
}
