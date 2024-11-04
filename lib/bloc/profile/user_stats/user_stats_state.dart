part of 'user_stats_bloc.dart';

sealed class UserStatsState extends Equatable {
  const UserStatsState();

  @override
  List<Object> get props => [];
}

final class UserStatsInitial extends UserStatsState {}

final class UserStatsLoading extends UserStatsState {}

final class UserStatsLoaded extends UserStatsState {
  const UserStatsLoaded({required this.animeStats, required this.mangaStats});

  final Fragment$UserStatistics animeStats, mangaStats;
}

final class UserStatsError extends UserStatsState {
  const UserStatsError(this.message);

  final String message;
}
