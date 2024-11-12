part of 'follow_cubit.dart';

sealed class FollowState {}

final class FollowInitial extends FollowState {}

final class ProcessingFollow extends FollowState {}

final class ToggleComplete extends FollowState {
  ToggleComplete({required this.isFollowing});

  final bool isFollowing;
}

final class UserFollowError extends FollowState {
  UserFollowError(this.message);

  final String message;
}
