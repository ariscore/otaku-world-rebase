part of 'review_detail_bloc.dart';

abstract class ReviewDetailState extends Equatable {
  const ReviewDetailState();

  @override
  List<Object> get props => [];
}

class ReviewDetailInitial extends ReviewDetailState {}

class ReviewDetailLoading extends ReviewDetailState {}

class ReviewDetailLoaded extends ReviewDetailState {
  const ReviewDetailLoaded(this.review);

  final Fragment$ReviewDetail review;

  @override
  List<Object> get props => [review];
}

class ReviewDetailError extends ReviewDetailState {
  const ReviewDetailError(this.error);

  final CustomError error;
}
