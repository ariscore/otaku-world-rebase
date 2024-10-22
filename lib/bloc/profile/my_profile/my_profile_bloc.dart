import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:otaku_world/constants/string_constants.dart';
import 'package:otaku_world/graphql/__generated/graphql/fragments.graphql.dart';
import 'package:otaku_world/graphql/__generated/graphql/user/following_followers.graphql.dart';
import 'package:otaku_world/graphql/__generated/graphql/user/viewer_info.graphql.dart';

part 'my_profile_event.dart';

part 'my_profile_state.dart';

class MyProfileBloc extends Bloc<MyProfileEvent, MyProfileState> {
  MyProfileBloc() : super(MyProfileInitial()) {
    on<LoadProfile>(_onLoadProfile);
  }

  Future<void> _onLoadProfile(
    LoadProfile event,
    Emitter<MyProfileState> emit,
  ) async {
    emit(MyProfileLoading());
    final viewerResponse = await event.client.query$ViewerInfo(
      Options$Query$ViewerInfo(
        cacheRereadPolicy: CacheRereadPolicy.ignoreAll,
        fetchPolicy: FetchPolicy.networkOnly,
      ),
    );
    log('Response: $viewerResponse');

    if (viewerResponse.hasException) {
      final exception = viewerResponse.exception!;
      if (exception.linkException != null) {
        emit(const MyProfileError(StringConstants.noInternetError));
      } else {
        emit(const MyProfileError(StringConstants.somethingWentWrongError));
      }
    } else {
      final data = viewerResponse.parsedData?.Viewer;
      if (data == null) {
        emit(const MyProfileError(StringConstants.somethingWentWrongError));
      } else {
        final socialCountResponse =
            await event.client.query$FollowingAndFollowersCount(
          Options$Query$FollowingAndFollowersCount(
            cacheRereadPolicy: CacheRereadPolicy.ignoreAll,
            variables: Variables$Query$FollowingAndFollowersCount(
              userId: data.id,
            ),
          ),
        );
        log('Social count response: $socialCountResponse');

        if (socialCountResponse.hasException ||
            socialCountResponse.parsedData == null) {
          emit(const MyProfileError(StringConstants.somethingWentWrongError));
        } else {
          emit(MyProfileLoaded(
            user: data,
            followerCount:
                socialCountResponse.parsedData!.followers?.pageInfo?.total ?? 0,
            followingCount:
                socialCountResponse.parsedData!.following?.pageInfo?.total ?? 0,
          ));
        }
      }
    }
  }
}
