part of 'global_activities_bloc.dart';

sealed class GlobalActivitiesEvent {
  const GlobalActivitiesEvent();
}

class LoadGlobalActivities extends GlobalActivitiesEvent {
  const LoadGlobalActivities(this.client);

  final GraphQLClient client;
}

class LoadMoreGlobalActivities extends GlobalActivitiesEvent {
  const LoadMoreGlobalActivities(this.client);

  final GraphQLClient client;
}

class SelectGlobalActivityType extends GlobalActivitiesEvent {
  const SelectGlobalActivityType({required this.client, required this.type});

  final GraphQLClient client;
  final String type;
}

class UpdateGlobalActivities extends GlobalActivitiesEvent {
  const UpdateGlobalActivities({
    required this.globalActivities,
    required this.hasNextPageGlobal,
  });

  final List<dynamic> globalActivities;
  final bool hasNextPageGlobal;
}

class UpdateGlobalLoading extends GlobalActivitiesEvent {
  const UpdateGlobalLoading(this.showProgress);

  final bool showProgress;
}

class ResetGlobalActivities extends GlobalActivitiesEvent {}

class RefreshGlobalActivities extends GlobalActivitiesEvent {
  const RefreshGlobalActivities(this.client);

  final GraphQLClient client;
}