part of 'user_social_bloc.dart';

sealed class UserSocialState extends Equatable {
  const UserSocialState();

  @override
  List<Object> get props => [];
}

final class UserSocialInitial extends UserSocialState {}

final class UserSocialLoading extends UserSocialState {}

final class UserSocialLoaded extends UserSocialState {
  const UserSocialLoaded({
    required this.followings,
    required this.followers,
    required this.hasNextPageFollowing,
    required this.hasNextPageFollowers,
    this.showProgress = false,
    required this.isFollowing,
  });

  final List<Fragment$User?> followings, followers;
  final bool hasNextPageFollowing, hasNextPageFollowers;
  final bool showProgress;
  final bool isFollowing;

  @override
  String toString() {
    return 'UserSocialLoaded { following: $followings, '
        'followers: $followers, '
        'hasNextPageFollowing: $hasNextPageFollowing, '
        'hasNextPageFollowers: $hasNextPageFollowers }';
  }

  UserSocialLoaded copyWith({bool? showProgress, bool? isFollowing}) {
    return UserSocialLoaded(
      followings: followings,
      followers: followers,
      hasNextPageFollowing: hasNextPageFollowing,
      hasNextPageFollowers: hasNextPageFollowers,
      showProgress: showProgress ?? this.showProgress,
      isFollowing: isFollowing ?? this.isFollowing,
    );
  }

  @override
  List<Object> get props => [
        followings,
        followers,
        hasNextPageFollowing,
        hasNextPageFollowers,
        showProgress,
      ];
}

final class UserSocialError extends UserSocialState {
  const UserSocialError(this.message);

  final String message;

  @override
  String toString() {
    return 'UserSocialError { message: $message }';
  }
}
