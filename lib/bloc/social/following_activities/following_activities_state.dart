part of 'following_activities_bloc.dart';

sealed class FollowingActivitiesState extends Equatable {
  const FollowingActivitiesState();

  @override
  List<Object> get props => [];
}

final class FollowingActivitiesInitial extends FollowingActivitiesState {}

final class FollowingActivitiesLoading extends FollowingActivitiesState {}

final class FollowingActivitiesLoaded extends FollowingActivitiesState {
  const FollowingActivitiesLoaded({
    required this.activities,
    required this.hasNextPage,
    this.showProgress = false,
  });

  final List<dynamic> activities;
  final bool hasNextPage;
  final bool showProgress;

  @override
  String toString() {
    return 'FollowingActivitiesLoaded{ activities: $activities, '
        'hasNextPage: $hasNextPage, '
        'showProgress: $showProgress }';
  }

  FollowingActivitiesLoaded copyWith({bool? showProgress}) {
    return FollowingActivitiesLoaded(
      activities: activities,
      hasNextPage: hasNextPage,
      showProgress: showProgress ?? this.showProgress,
    );
  }

  @override
  List<Object> get props => [
        activities,
        hasNextPage,
        showProgress,
      ];
}

final class FollowingActivitiesError extends FollowingActivitiesState {
  const FollowingActivitiesError(this.error);

  final CustomError error;

  @override
  String toString() {
    return 'FollowingActivitiesError{ message: $error }';
  }
}
