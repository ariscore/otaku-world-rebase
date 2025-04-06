part of 'post_review_bloc.dart';


abstract class PostReviewState extends Equatable {
  const PostReviewState();

  @override
  List<Object?> get props => [];
}

class PostReviewInitial extends PostReviewState {}

class ReviewLoading extends PostReviewState {}

class ReviewLoaded extends PostReviewState {
  final Query$FetchReviewByUserId$Review review;

  const ReviewLoaded(this.review);

  @override
  List<Object?> get props => [review];
}

class ReviewSaved extends PostReviewState {}

class PostReviewSubmitFailure extends PostReviewState {
  final String error;
  const PostReviewSubmitFailure({required this.error});

  @override
  List<Object?> get props => [error];
}

class PostReviewFetchFailure extends PostReviewState {
  final String error;
  const PostReviewFetchFailure({required this.error});

  @override
  List<Object?> get props => [error];
}