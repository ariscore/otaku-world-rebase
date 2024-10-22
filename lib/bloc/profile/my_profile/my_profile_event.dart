part of 'my_profile_bloc.dart';

sealed class MyProfileEvent {
  const MyProfileEvent();
}

class LoadProfile extends MyProfileEvent {
  const LoadProfile(this.client);

  final GraphQLClient client;
}
