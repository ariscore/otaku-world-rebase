part of 'activity_bloc.dart';

sealed class ActivityEvent {
  const ActivityEvent();
}

class LoadActivity extends ActivityEvent {
  const LoadActivity(this.client);

  final GraphQLClient client;
}

class ToggleLike extends ActivityEvent {}

class UpdateReplyCount extends ActivityEvent {
  const UpdateReplyCount({required this.increase});

  final bool increase;
}

class UpdateLoading extends ActivityEvent {
  const UpdateLoading(this.showProgress);

  final bool showProgress;
}
