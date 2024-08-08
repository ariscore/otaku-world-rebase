part of 'review_detail_bloc.dart';

abstract class ReviewDetailEvent extends Equatable {
  const ReviewDetailEvent();

  @override
  List<Object?> get props => [];
}

class LoadReviewDetail extends ReviewDetailEvent {
  const LoadReviewDetail({required this.id, required this.client});

  final int id;
  final GraphQLClient client;
}
