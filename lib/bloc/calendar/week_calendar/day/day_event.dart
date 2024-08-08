part of 'day_bloc.dart';

abstract class DayEvent {
  const DayEvent();
}

class ResetDay extends DayEvent {}

class SetDay extends DayEvent {
  const SetDay({required this.client, required this.day});

  final DateTime day;
  final GraphQLClient client;
}

class RefreshDay extends DayEvent {
  const RefreshDay(this.client);

  final GraphQLClient client;
}

class LoadDay extends DayEvent {
  const LoadDay(this.client);

  final GraphQLClient client;
}
