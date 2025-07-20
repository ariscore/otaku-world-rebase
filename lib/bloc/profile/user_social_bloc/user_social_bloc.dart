import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:equatable/equatable.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:otaku_world/constants/string_constants.dart';
import 'package:otaku_world/graphql/__generated/graphql/fragments.graphql.dart';
import 'package:otaku_world/graphql/__generated/graphql/user/followers.graphql.dart';
import 'package:otaku_world/graphql/__generated/graphql/user/following.graphql.dart';
import 'package:otaku_world/graphql/__generated/graphql/user/toggle_follow.graphql.dart';

import '../../../core/model/custom_error.dart';
import '../../../utils/graphql_error_handler.dart';

part 'user_social_event.dart';
part 'user_social_state.dart';

class UserSocialBloc extends Bloc<UserSocialEvent, UserSocialState> {
  UserSocialBloc({
    required this.userId,
    required this.isMyProfile,
  }) : super(UserSocialInitial()) {
    on<ResetData>(_onResetData);
    on<LoadSocialData>(_onLoadSocialData);
    on<LoadMoreData>(_onLoadMoreData, transformer: droppable());
    on<ChangeType>(_onChangeType);
    on<FollowUser>(_onFollowUser);
    on<UnfollowUser>(_onUnfollowUser);
  }

  final int userId;
  final bool isMyProfile;
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
        fetchPolicy: FetchPolicy.networkOnly,
        cacheRereadPolicy: CacheRereadPolicy.ignoreAll,
        variables: Variables$Query$Following(
          userId: userId,
          page: followingPage,
        ),
      ),
    );

    final followerResponse = await event.client.query$Followers(
      Options$Query$Followers(
        fetchPolicy: FetchPolicy.networkOnly,
        cacheRereadPolicy: CacheRereadPolicy.ignoreAll,
        variables: Variables$Query$Followers(
          userId: userId,
          page: followersPage,
        ),
      ),
    );

    if (followingResponse.hasException || followerResponse.hasException) {
      final exception =
          followingResponse.exception ?? followerResponse.exception!;

      emit(
        UserSocialError(
          (GraphQLErrorHandler.handleException(exception)),
        ),
      );
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

  void _onLoadMoreData(
    LoadMoreData event,
    Emitter<UserSocialState> emit,
  ) async {
    if ((!hasNextPageFollowing && event.isFollowing) ||
        (!hasNextPageFollowers && !event.isFollowing)) {
      return;
    }
    final loadedState = state as UserSocialLoaded;

    if (event.isFollowing) {
      final response = await event.client.query$Following(
        Options$Query$Following(
          variables: Variables$Query$Following(
            page: followingPage,
            userId: userId,
          ),
        ),
      );
      log('Response: $response', name: 'UserSocialBloc');

      if (response.hasException) {
        if (response.exception!.linkException != null) {
          emit(
            loadedState.copyWith(
              error: StringConstants.noInternetError,
            ),
          );
        } else {
          emit(
            loadedState.copyWith(
              error: StringConstants.somethingWentWrongError,
            ),
          );
        }
      } else {
        final data = response.parsedData!.Page;
        hasNextPageFollowing = data?.pageInfo?.hasNextPage ?? false;
        followingList.addAll(data?.following ?? []);
        followingPage++;
        // emit(loadedState.copyWith(followings: List.from(followingList)));
        // emit(UserSocialLoading());
        emit(
          UserSocialLoaded(
            followings: List.from(followingList),
            followers: loadedState.followers,
            hasNextPageFollowing: hasNextPageFollowing,
            hasNextPageFollowers: hasNextPageFollowers,
            isFollowing: isFollowing,
          ),
        );
      }
    } else {}
  }

  void _onChangeType(ChangeType event, Emitter<UserSocialState> emit) {
    isFollowing = event.isFollowing;
    emit((state as UserSocialLoaded).copyWith(isFollowing: isFollowing));
  }

  void _onFollowUser(FollowUser event, Emitter<UserSocialState> emit) async {
    await _handleToggleFollow(
      client: event.client,
      userId: event.userId,
      isFollow: true,
      emit: emit,
    );
  }

  void _onUnfollowUser(
    UnfollowUser event,
    Emitter<UserSocialState> emit,
  ) async {
    await _handleToggleFollow(
      client: event.client,
      userId: event.userId,
      isFollow: false,
      emit: emit,
    );
  }

  Future<void> _handleToggleFollow({
    required GraphQLClient client,
    required int userId,
    required bool isFollow,
    required Emitter<UserSocialState> emit,
  }) async {
    final loadedState = state as UserSocialLoaded;
    emit(loadedState.copyWith(showProgress: true));

    final response = await client.mutate$ToggleFollow(
      Options$Mutation$ToggleFollow(
        variables: Variables$Mutation$ToggleFollow(
          userId: userId,
        ),
      ),
    );
    log('Response: $response');

    if (response.hasException) {
      if (response.exception!.linkException != null) {
        emit(loadedState.copyWith(
          error: StringConstants.noInternetError,
          showProgress: false,
        ));
      } else {
        emit(loadedState.copyWith(
          error: StringConstants.somethingWentWrongError,
          showProgress: false,
        ));
      }
    } else {
      final user = response.parsedData!.ToggleFollow;
      int index = followersList.indexWhere((e) => e?.id == userId);

      if (index != -1) {
        followersList[index] = user;
      }

      if (isMyProfile) {
        if (isFollow && (user?.isFollower ?? false)) {
          followingList.add(user);
        } else if (!(user?.isFollowing ?? false)) {
          followingList.removeWhere((e) => e?.id == user?.id);
        }
      } else {
        index = followingList.indexWhere((e) => e?.id == userId);
        if (index != -1) {
          followingList[index] = user;
        }
      }

      emit(
        loadedState.copyWith(
          followers: followersList,
          followings: followingList,
          showProgress: false,
        ),
      );
    }
  }

  @override
  void onTransition(Transition<UserSocialEvent, UserSocialState> transition) {
    log(transition.toString(), name: 'UserSocialBloc');
    super.onTransition(transition);
  }
}
