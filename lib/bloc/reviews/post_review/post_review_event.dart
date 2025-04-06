part of 'post_review_bloc.dart';


abstract class PostReviewEvent extends Equatable {
  const PostReviewEvent();
}

class FetchReview extends PostReviewEvent {
  final int userId;
  final int mediaId;

  const FetchReview(this.userId, this.mediaId);

  @override
  List<Object> get props => [userId, mediaId];
}

class SubmitReview extends PostReviewEvent {
  final int? reviewId; // null if creating new
  final int mediaId;
  final String body;
  final String summary;
  final int score;
  final bool isPrivate;

  const SubmitReview({
    this.reviewId,
    required this.mediaId,
    required this.body,
    required this.summary,
    required this.score,
    this.isPrivate = false,
  });

  @override
  List<Object?> get props => [reviewId, mediaId, body, summary, score, isPrivate];
}
