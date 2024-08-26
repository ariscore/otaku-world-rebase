part of 'activities_bloc.dart';

sealed class ActivitiesEvent {
  const ActivitiesEvent();
}

class LoadActivities extends ActivitiesEvent {
  const LoadActivities(this.client);

  final GraphQLClient client;
}

class LoadMoreActivities extends ActivitiesEvent {
  const LoadMoreActivities({required this.client, required this.isFollowing});

  final GraphQLClient client;
  final bool isFollowing;
}

class SelectActivityType extends ActivitiesEvent {
  const SelectActivityType({required this.client, required this.type});

  final GraphQLClient client;
  final String type;
}

// class SelectActivityScope extends ActivitiesEvent {
//   const SelectActivityScope({required this.client, required this.isFollowing});
//
//   final GraphQLClient client;
//   final bool isFollowing;
// }

class ResetActivities extends ActivitiesEvent {}

class RefreshActivities extends ActivitiesEvent {
  const RefreshActivities(this.client);

  final GraphQLClient client;
}
