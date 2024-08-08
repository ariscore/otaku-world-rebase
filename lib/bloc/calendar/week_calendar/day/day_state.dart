part of 'day_bloc.dart';

abstract class DayState extends Equatable {
  const DayState();

  @override
  List<Object> get props => [];
}

class DayInitial extends DayState {}

class EpisodesLoading extends DayState {}

class EpisodesLoaded extends DayState {
  const EpisodesLoaded({required this.episodes, required this.hasNextPage});

  final List<Fragment$CalendarAiringSchedule?> episodes;
  final bool hasNextPage;

  @override
  List<Object> get props => [episodes, hasNextPage];
}

class DayError extends DayState {
  const DayError(this.message);

  final String message;
}
