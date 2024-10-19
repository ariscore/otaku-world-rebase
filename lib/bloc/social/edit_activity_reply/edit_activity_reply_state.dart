part of 'edit_activity_reply_cubit.dart';

sealed class EditActivityReplyState {}

final class EditActivityReplyInitial extends EditActivityReplyState {}

final class EditingActivityReply extends EditActivityReplyState {}

final class EditedActivityReply extends EditActivityReplyState {
  EditedActivityReply({required this.activityReply});

  final Fragment$ActivityReply activityReply;
}

final class EditActivityReplyError extends EditActivityReplyState {
  EditActivityReplyError(this.message);

  final String message;
}
