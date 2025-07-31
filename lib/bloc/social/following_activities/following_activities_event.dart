part of 'following_activities_bloc.dart';

sealed class FollowingActivitiesEvent {
  const FollowingActivitiesEvent();
}

class LoadFollowingActivities extends FollowingActivitiesEvent {
  const LoadFollowingActivities(this.client);

  final GraphQLClient client;
}

class LoadMoreFollowingActivities extends FollowingActivitiesEvent {
  const LoadMoreFollowingActivities({required this.client});

  final GraphQLClient client;
}

class SelectFollowingActivityType extends FollowingActivitiesEvent {
  const SelectFollowingActivityType({required this.client, required this.type});

  final GraphQLClient client;
  final String type;
}

class UpdateFollowingActivities extends FollowingActivitiesEvent {
  const UpdateFollowingActivities({
    required this.activities,
    required this.hasNextPage,
  });

  final List<dynamic> activities;
  final bool hasNextPage;
}

class UpdateFollowingLoading extends FollowingActivitiesEvent {
  const UpdateFollowingLoading(this.showProgress);

  final bool showProgress;
}

class ResetFollowingActivities extends FollowingActivitiesEvent {}

class RefreshFollowingActivities extends FollowingActivitiesEvent {
  const RefreshFollowingActivities(this.client);

  final GraphQLClient client;
}