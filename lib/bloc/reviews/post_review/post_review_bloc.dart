import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

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
    // try {
    //   final review = await repository.getReview(event.userId, event.mediaId);
    //   if (review != null) {
    //     emit(ReviewLoaded(review));
    //   } else {
    //     emit(PostReviewInitial()); // No review yet
    //   }
    // } catch (e) {
    //   emit(ReviewError(e.toString()));
    // }
  }

  Future<void> _onSubmitReview(
    SubmitReview event,
    Emitter<PostReviewState> emit,
  ) async {
    emit(ReviewLoading());
    // try {
    //   await repository.saveReview(
    //     reviewId: event.reviewId,
    //     mediaId: event.mediaId,
    //     body: event.body,
    //     summary: event.summary,
    //     score: event.score,
    //     isPrivate: event.isPrivate,
    //   );
    //   emit(ReviewSaved());
    // } catch (e) {
    //   emit(ReviewError(e.toString()));
    // }
  }
}
