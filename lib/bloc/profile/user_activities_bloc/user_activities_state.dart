part of 'user_activities_bloc.dart';

sealed class UserActivitiesState extends Equatable {
  const UserActivitiesState();
}

final class UserActivitiesInitial extends UserActivitiesState {
  @override
  List<Object> get props => [];
}
