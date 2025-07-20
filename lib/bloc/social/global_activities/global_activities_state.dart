part of 'global_activities_bloc.dart';

sealed class GlobalActivitiesState extends Equatable {
  const GlobalActivitiesState();

  @override
  List<Object> get props => [];
}

final class GlobalActivitiesInitial extends GlobalActivitiesState {}

final class GlobalActivitiesLoading extends GlobalActivitiesState {}

final class GlobalActivitiesLoaded extends GlobalActivitiesState {
  const GlobalActivitiesLoaded({
    required this.globalActivities,
    required this.hasNextPageGlobal,
    this.showProgress = false,
  });

  final List<dynamic> globalActivities;
  final bool hasNextPageGlobal;
  final bool showProgress;

  @override
  String toString() {
    return 'GlobalActivitiesLoaded{ '
        'global: $globalActivities, '
        'hasNextPageGlobal: $hasNextPageGlobal, '
        'showProgress: $showProgress }';
  }

  GlobalActivitiesLoaded copyWith({bool? showProgress}) {
    return GlobalActivitiesLoaded(
      globalActivities: globalActivities,
      hasNextPageGlobal: hasNextPageGlobal,
      showProgress: showProgress ?? this.showProgress,
    );
  }

  @override
  List<Object> get props => [
        globalActivities,
        hasNextPageGlobal,
        showProgress,
      ];
}

final class GlobalActivitiesError extends GlobalActivitiesState {
  const GlobalActivitiesError(this.error);

  final CustomError error;

  @override
  String toString() {
    return 'GlobalActivitiesError{ message: $error }';
  }
}
