part of 'week_calendar_bloc.dart';

abstract class WeekCalendarState extends Equatable {
  const WeekCalendarState();

  @override
  List<Object> get props => [];
}

class WeekCalendarInitial extends WeekCalendarState {}

class WeekCalendarInitialized extends WeekCalendarState {
  const WeekCalendarInitialized(this.days);

  final List<DayBloc> days;
}

class WeekCalendarError extends WeekCalendarState {
  const WeekCalendarError(this.message);

  final String message;
}
