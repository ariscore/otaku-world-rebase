part of 'profile_bloc.dart';

sealed class ProfileState extends Equatable {
  const ProfileState();

  @override
  List<Object> get props => [];
}

final class ProfileInitial extends ProfileState {}

final class ProfileLoading extends ProfileState {}

final class ProfileLoaded extends ProfileState {
  const ProfileLoaded({
    required this.user,
    required this.followerCount,
    required this.followingCount,
  });

  final Fragment$UserInfo user;
  final int followerCount, followingCount;
}

final class ProfileError extends ProfileState {
  const ProfileError(this.message);

  final String message;
}