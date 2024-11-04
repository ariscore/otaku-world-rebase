part of 'user_stats_bloc.dart';

sealed class UserStatsEvent {
  const UserStatsEvent();
}

class LoadUserStats extends UserStatsEvent {
  const LoadUserStats(this.client);

  final GraphQLClient client;
}
