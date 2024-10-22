part of 'my_profile_bloc.dart';

sealed class MyProfileState extends Equatable {
  const MyProfileState();

  @override
  List<Object> get props => [];
}

final class MyProfileInitial extends MyProfileState {}

final class MyProfileLoading extends MyProfileState {}

final class MyProfileLoaded extends MyProfileState {
  const MyProfileLoaded({
    required this.user,
    required this.followerCount,
    required this.followingCount,
  });

  final Fragment$UserInfo user;
  final int followerCount, followingCount;
}

final class MyProfileError extends MyProfileState {
  const MyProfileError(this.message);

  final String message;
}
