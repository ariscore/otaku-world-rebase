part of 'reply_activity_cubit.dart';

sealed class ReplyActivityState {}

final class ReplyActivityInitial extends ReplyActivityState {}

final class ReplyingActivity extends ReplyActivityState {}

final class RepliedActivity extends ReplyActivityState {
  RepliedActivity({required this.activityReply});

  final Fragment$ActivityReply activityReply;
}

final class ReplyError extends ReplyActivityState {
  ReplyError(this.message);

  final String message;
}
