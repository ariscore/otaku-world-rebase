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
    this.error,
  });

  final List<Fragment$User?> followings, followers;
  final bool hasNextPageFollowing, hasNextPageFollowers;
  final bool showProgress;
  final bool isFollowing;

  final String? error;

  @override
  String toString() {
    return 'UserSocialLoaded { following: $followings, '
        'followers: $followers, '
        'hasNextPageFollowing: $hasNextPageFollowing, '
        'hasNextPageFollowers: $hasNextPageFollowers }';
  }

  UserSocialLoaded copyWith({
    List<Fragment$User?>? followers,
    List<Fragment$User?>? followings,
    bool? showProgress,
    bool? isFollowing,
    String? error,
  }) {
    log('Copy with followings: ${followings?.length} | ${this.followings.length}');
    final st = UserSocialLoaded(
      followings: followings ?? this.followings,
      followers: followers ?? this.followers,
      hasNextPageFollowing: hasNextPageFollowing,
      hasNextPageFollowers: hasNextPageFollowers,
      showProgress: showProgress ?? this.showProgress,
      isFollowing: isFollowing ?? this.isFollowing,
      error: error,
    );
    log('New state length: ${st.followings.length}');
    log('Are equal: ${st.followings.length == this.followings.length}', name: 'UserSocialBloc');
    return st;
  }

  @override
  List<Object> get props => [
        followings,
        followers,
        hasNextPageFollowing,
        hasNextPageFollowers,
        showProgress,
        isFollowing,
      ];
}

final class UserSocialError extends UserSocialState {
  const UserSocialError(this.error);

  final CustomError error;

  @override
  String toString() {
    return 'UserSocialError { message: $error }';
  }
}
