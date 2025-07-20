part of 'post_activity_cubit.dart';

sealed class PostActivityState {}

final class PostActivityInitial extends PostActivityState {}

final class PostingActivity extends PostActivityState {}

final class PostedActivity extends PostActivityState {
  PostedActivity({required this.activity});

  final Fragment$TextActivity activity;
}

final class PostActivityError extends PostActivityState {
  PostActivityError(this.error);

  final CustomError error;
}
