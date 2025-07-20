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
    required this.unreadNotificationCount,
  });

  final Fragment$UserInfo user;
  final int followerCount, followingCount;
  final int unreadNotificationCount;

  MyProfileLoaded copyWith({int? unreadNotificationCount}) {
    return MyProfileLoaded(
      user: user,
      followerCount: followerCount,
      followingCount: followingCount,
      unreadNotificationCount:
          unreadNotificationCount ?? this.unreadNotificationCount,
    );
  }

  @override
  List<Object> get props => [unreadNotificationCount];
}

final class MyProfileError extends MyProfileState {
  const MyProfileError(this.error);

  final CustomError error;
}
