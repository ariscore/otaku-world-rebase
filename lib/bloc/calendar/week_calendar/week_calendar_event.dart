part of 'week_calendar_bloc.dart';

abstract class WeekCalendarEvent {
  const WeekCalendarEvent();
}

class InitializeCalendar extends WeekCalendarEvent {}

class ResetCalendar extends WeekCalendarEvent {}

class RefreshCalendar extends WeekCalendarEvent {}
