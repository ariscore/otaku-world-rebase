part of 'edit_text_activity_cubit.dart';

sealed class EditTextActivityState {}

final class EditTextActivityInitial extends EditTextActivityState {}

final class EditingActivity extends EditTextActivityState {}

final class EditedActivity extends EditTextActivityState {
  EditedActivity({required this.activity});

  final Fragment$TextActivity activity;
}

final class EditActivityError extends EditTextActivityState {
  EditActivityError(this.error);

  final CustomError error;
}
