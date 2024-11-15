part of 'edit_message_activity_cubit.dart';

sealed class EditMessageActivityState {}

final class EditMessageActivityInitial extends EditMessageActivityState {}

final class EditingActivity extends EditMessageActivityState {}

final class EditedActivity extends EditMessageActivityState {
  EditedActivity({required this.activity});

  final Fragment$MessageActivity activity;
}

final class EditActivityError extends EditMessageActivityState {
  EditActivityError(this.message);

  final String message;
}
