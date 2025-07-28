part of 'analytics_bloc.dart';

abstract class AnalyticsEvent {}

class SetUser extends AnalyticsEvent {
  final String userId;
  final String? username;

  SetUser({required this.userId, this.username});
}

class ClearUser extends AnalyticsEvent {}

class LogAnalyticsEvent extends AnalyticsEvent {
  final String name;
  final Map<String, Object>? params;

  LogAnalyticsEvent(this.name, {this.params});
}
