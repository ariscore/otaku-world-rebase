import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:otaku_world/graphql/__generated/graphql/fragments.graphql.dart';
import 'package:otaku_world/graphql/__generated/graphql/reviews/review_detail.graphql.dart';

part 'review_detail_event.dart';

part 'review_detail_state.dart';

class ReviewDetailBloc extends Bloc<ReviewDetailEvent, ReviewDetailState> {
  ReviewDetailBloc() : super(ReviewDetailInitial()) {
    on<LoadReviewDetail>(_onLoadReviewDetail);
  }

  Future<void> _onLoadReviewDetail(
    LoadReviewDetail event,
    Emitter<ReviewDetailState> emit,
  ) async {
    emit(ReviewDetailLoading());
    final response = await event.client.query$GetReviewDetail(
      Options$Query$GetReviewDetail(
        variables: Variables$Query$GetReviewDetail(
          id: event.id,
        ),
      ),
    );

    if (response.hasException) {
      emit(const ReviewDetailError('Failed to load review!'));
    }else {
      emit(ReviewDetailLoaded(response.parsedData!.Review!));
    }
  }
}
