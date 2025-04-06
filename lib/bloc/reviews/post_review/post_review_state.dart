part of 'post_review_bloc.dart';


abstract class PostReviewState extends Equatable {
  const PostReviewState();

  @override
  List<Object?> get props => [];
}

class PostReviewInitial extends PostReviewState {}

class ReviewLoading extends PostReviewState {}

class ReviewLoaded extends PostReviewState {
  final Map<String, dynamic> review;

  const ReviewLoaded(this.review);

  @override
  List<Object?> get props => [review];
}

class PostReviewFailure extends PostReviewState {
  final String error;
  const PostReviewFailure({required this.error});

  @override
  List<Object?> get props => [error];
}