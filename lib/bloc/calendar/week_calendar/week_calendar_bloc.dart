import 'dart:developer' as dev;

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../core/model/custom_error.dart';
import 'day/day_bloc.dart';

part 'week_calendar_event.dart';
part 'week_calendar_state.dart';

class WeekCalendarBloc extends Bloc<WeekCalendarEvent, WeekCalendarState> {
  WeekCalendarBloc() : super(WeekCalendarInitial()) {
    on<InitializeCalendar>(_onInitializeCalendar);
    on<ResetCalendar>(_onResetCalendar);
    on<RefreshCalendar>(_onRefreshCalendar);
  }

  final List<DayBloc> dayBlocs = [];

  void _onInitializeCalendar(
    InitializeCalendar event,
    Emitter<WeekCalendarState> emit,
  ) {
    final dates = getWeekDaysList();
    for (DateTime date in dates) {
      dayBlocs.add(DayBloc(date));
    }
    emit(WeekCalendarInitialized(dayBlocs));
  }

  void _onResetCalendar(
    ResetCalendar event,
    Emitter<WeekCalendarState> emit,
  ) {
    dayBlocs.clear();
    emit(WeekCalendarInitial());
  }

  void _onRefreshCalendar(
      RefreshCalendar event,
      Emitter<WeekCalendarState> emit,
      ) {
    dayBlocs.clear();
    add(InitializeCalendar());
  }

  List<DateTime> getWeekDaysList() {
    DateTime now = DateTime.now().copyWith(hour: 0, minute: 0, second: 0);

    List<DateTime> dates = [
      for (var i = 0; i < 7; i++) now.add(Duration(days: i))
    ];

    return dates;
  }

  @override
  void onTransition(Transition<WeekCalendarEvent, WeekCalendarState> transition) {
    dev.log(transition.toString(), name: 'WeekCalendarBloc');
    super.onTransition(transition);
  }
}
