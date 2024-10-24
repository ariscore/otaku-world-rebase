import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:otaku_world/constants/string_constants.dart';
import 'package:otaku_world/graphql/__generated/graphql/fragments.graphql.dart';
import 'package:otaku_world/graphql/__generated/graphql/user/followers.graphql.dart';
import 'package:otaku_world/graphql/__generated/graphql/user/following.graphql.dart';

part 'user_social_event.dart';

part 'user_social_state.dart';

class UserSocialBloc extends Bloc<UserSocialEvent, UserSocialState> {
  UserSocialBloc({required this.userId}) : super(UserSocialInitial()) {
    on<ResetData>(_onResetData);
    on<LoadSocialData>(_onLoadSocialData);
    on<LoadMoreData>(_onLoadMoreData);
    on<ChangeType>(_onChangeType);
  }

  final int userId;
  int followingPage = 1, followersPage = 1;
  bool hasNextPageFollowing = true, hasNextPageFollowers = true;
  final List<Fragment$User?> followingList = [], followersList = [];
  bool isFollowing = true;
  bool showProgress = false;

  void _onResetData(ResetData event, Emitter<UserSocialState> emit) {
    followingPage = 1;
    followersPage = 1;
    hasNextPageFollowing = true;
    hasNextPageFollowers = true;
    followingList.clear();
    followersList.clear();
  }

  void _onLoadSocialData(
    LoadSocialData event,
    Emitter<UserSocialState> emit,
  ) async {
    if (followingPage == 1 || followersPage == 1) emit(UserSocialLoading());

    log('Fetching for following: $isFollowing', name: 'UserSocialBloc');
    final followingResponse = await event.client.query$Following(
      Options$Query$Following(
        variables: Variables$Query$Following(
          userId: userId,
          page: followingPage,
        ),
      ),
    );

    final followerResponse = await event.client.query$Followers(
      Options$Query$Followers(
        variables: Variables$Query$Followers(
          userId: userId,
          page: followersPage,
        ),
      ),
    );

    if (followingResponse.hasException || followerResponse.hasException) {
      final exception =
          followingResponse.exception ?? followerResponse.exception!;

      if (exception.linkException != null) {
        emit(
          const UserSocialError(StringConstants.noInternetError),
        );
      } else {
        emit(const UserSocialError(StringConstants.somethingWentWrongError));
      }
    } else {
      final followingData = followingResponse.parsedData!.Page!;
      hasNextPageFollowing = followingData.pageInfo?.hasNextPage ?? false;
      followingPage++;
      followingList.addAll(followingData.following ?? []);

      final followerData = followerResponse.parsedData!.Page!;
      hasNextPageFollowers = followerData.pageInfo?.hasNextPage ?? false;
      followersPage++;
      followersList.addAll(followerData.followers ?? []);

      emit(UserSocialLoaded(
        followings: followingList,
        followers: followersList,
        hasNextPageFollowing: hasNextPageFollowing,
        hasNextPageFollowers: hasNextPageFollowers,
        isFollowing: isFollowing,
      ));
    }
  }

  void _onLoadMoreData(LoadMoreData event, Emitter<UserSocialState> emit) {}

  void _onChangeType(ChangeType event, Emitter<UserSocialState> emit) {
    isFollowing = event.isFollowing;
  }
}
