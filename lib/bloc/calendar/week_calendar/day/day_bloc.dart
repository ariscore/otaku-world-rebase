import 'dart:async';
import 'dart:developer' as dev;

import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:equatable/equatable.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:otaku_world/graphql/__generated/graphql/calendar/calendar.graphql.dart';

import '../../../../core/model/custom_error.dart';
import '../../../../graphql/__generated/graphql/fragments.graphql.dart';
import '../../../../utils/formatting_utils.dart';
import '../../../../utils/graphql_error_handler.dart';

part 'day_event.dart';
part 'day_state.dart';

class DayBloc extends Bloc<DayEvent, DayState> {
  DayBloc(this.day) : super(DayInitial()) {
    on<ResetDay>(
      _onResetDay,
      transformer: droppable(),
    );
    on<SetDay>(
      _onSetDay,
      transformer: droppable(),
    );
    on<RefreshDay>(
      _onRefreshDay,
      transformer: droppable(),
    );
    on<LoadDay>(
      _onLoadDay,
      transformer: droppable(),
    );
  }

  DateTime day;
  var page = 1;
  var hasNextPage = true;
  final List<Fragment$CalendarAiringSchedule?> list = [];

  void _onResetDay(ResetDay event, Emitter<DayState> emit) {
    page = 1;
    hasNextPage = true;
    list.clear();
    emit(DayInitial());
  }

  void _onSetDay(SetDay event, Emitter<DayState> emit) {
    day = event.day;
    add(ResetDay());
    add(LoadDay(event.client));
  }

  void _onRefreshDay(RefreshDay event, Emitter<DayState> emit) {
    page = 1;
    hasNextPage = true;
    list.clear();
    add(LoadDay(event.client));
  }

  Future<void> _onLoadDay(LoadDay event, Emitter<DayState> emit) async {
    if (page == 1) emit(EpisodesLoading());
    final start = FormattingUtils.getUnixTimeStampFromDate(
      DateTime(day.year, day.month, day.day),
    );
    final end = FormattingUtils.getUnixTimeStampFromDate(
      DateTime(day.year, day.month, day.day, 23, 59, 59),
    );

    final response = await event.client.query$GetCalendarDay(
      Options$Query$GetCalendarDay(
        fetchPolicy: FetchPolicy.networkOnly,
        cacheRereadPolicy: CacheRereadPolicy.ignoreAll,
        variables: Variables$Query$GetCalendarDay(
          page: page,
          airingAt_greater: start,
          airingAt_lesser: end,
        ),
      ),
    );

    if (response.hasException) {
      final exception = response.exception!;
      emit(DayError((GraphQLErrorHandler.handleException(exception))));
    } else {
      final data = response.parsedData!;
      hasNextPage = data.Page!.pageInfo!.hasNextPage!;
      dev.log(
        'Page: $page',
        name: 'DayBloc${day.weekday - DateTime.now().weekday}',
      );
      page++;
      list.addAll(data.Page!.airingSchedules!);
      dev.log(
        'Episodes list size: ${list.length}',
        name: 'DayBloc${day.weekday - DateTime.now().weekday}',
      );

      emit(EpisodesLoaded(
        episodes: List.from(list),
        hasNextPage: hasNextPage,
      ));
    }
  }

  @override
  void onTransition(Transition<DayEvent, DayState> transition) {
    dev.log(transition.toString(), name: 'DayBloc');
    super.onTransition(transition);
  }
}
