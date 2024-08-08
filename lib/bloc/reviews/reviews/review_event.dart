part of '../reviews/review_bloc.dart';

abstract class ReviewEvent extends Equatable {
  const ReviewEvent();

  @override
  List<Object?> get props => [];
}

class LoadReviews extends ReviewEvent{
  const LoadReviews(this.client);
  final GraphQLClient client;
}
