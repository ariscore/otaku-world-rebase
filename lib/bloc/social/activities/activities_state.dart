part of 'activities_bloc.dart';

sealed class ActivitiesState extends Equatable {
  const ActivitiesState();

  @override
  List<Object> get props => [];
}

final class ActivitiesInitial extends ActivitiesState {}

final class ActivitiesLoading extends ActivitiesState {}

final class ActivitiesLoaded extends ActivitiesState {
  const ActivitiesLoaded({
    required this.followingActivities,
    required this.globalActivities,
    required this.hasNextPageFollowing,
    required this.hasNextPageGlobal,
    this.showProgress = false,
  });

  final List<dynamic> followingActivities, globalActivities;
  final bool hasNextPageFollowing, hasNextPageGlobal;
  final bool showProgress;

  @override
  String toString() {
    return 'ActivitiesLoaded{ following: $followingActivities, '
        'global: $globalActivities, '
        'hasNextPageFollowing: $hasNextPageFollowing, '
        'hasNextPageGlobal: $hasNextPageGlobal }';
  }

  ActivitiesLoaded copyWith({bool? showProgress}) {
    return ActivitiesLoaded(
      followingActivities: followingActivities,
      globalActivities: globalActivities,
      hasNextPageFollowing: hasNextPageFollowing,
      hasNextPageGlobal: hasNextPageGlobal,
      showProgress: showProgress ?? this.showProgress,
    );
  }

  @override
  List<Object> get props => [
        followingActivities,
        globalActivities,
        hasNextPageFollowing,
        hasNextPageGlobal,
        showProgress,
      ];
}

final class ActivitiesError extends ActivitiesState {
  const ActivitiesError(this.message);

  final String message;

  @override
  String toString() {
    return 'ActivitiesError{ message: $message }';
  }
}
