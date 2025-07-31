import 'package:bloc/bloc.dart';

import '../../features/app_events_management/services/analytic_service.dart';

part 'analytics_event.dart';
part 'analytics_state.dart';

class AnalyticsBloc extends Bloc<AnalyticsEvent, AnalyticsState> {
  final AnalyticsService _service;

  AnalyticsBloc(this._service) : super(const AnalyticsState()) {
    on<SetUser>((event, emit) async {
      await _service.setUser(userId: event.userId, username: event.username);
    });

    on<ClearUser>((event, emit) async {
      await _service.clearUser();
    });

    on<LogAnalyticsEvent>((event, emit) async {
      await _service.logEvent(
        event.name,
        params: event.params,
      );
    });
  }
}
