part of 'activity_bloc.dart';

sealed class ActivityState extends Equatable {
  const ActivityState();

  @override
  List<Object> get props => [];
}

final class ActivityInitial extends ActivityState {}

final class ActivityLoading extends ActivityState {}

final class ActivityLoaded extends ActivityState {
  const ActivityLoaded({required this.activity, this.showProgress = false});

  final dynamic activity;
  final bool showProgress;

  @override
  List<Object> get props => [activity, showProgress];

  ActivityLoaded copyWith({bool? showProgress}) {
    return ActivityLoaded(
      activity: activity,
      showProgress: showProgress ?? this.showProgress,
    );
  }
}

final class ActivityError extends ActivityState {
  const ActivityError(this.error);

  final CustomError error;
}
