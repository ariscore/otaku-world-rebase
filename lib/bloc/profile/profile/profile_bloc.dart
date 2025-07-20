import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:otaku_world/graphql/__generated/graphql/user/following_followers.graphql.dart';
import 'package:otaku_world/graphql/__generated/graphql/user/user_info.graphql.dart';

import '../../../core/model/custom_error.dart';
import '../../../graphql/__generated/graphql/fragments.graphql.dart';
import '../../../utils/graphql_error_handler.dart';

part 'profile_event.dart';
part 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc({required this.userId}) : super(ProfileInitial()) {
    on<LoadProfile>(_onLoadProfile);
  }

  final int userId;

  Future<void> _onLoadProfile(
    LoadProfile event,
    Emitter<ProfileState> emit,
  ) async {
    emit(ProfileLoading());
    log('Fetching for user id: $userId');
    final userResponse = await event.client.query$UserInfo(
      Options$Query$UserInfo(
        cacheRereadPolicy: CacheRereadPolicy.ignoreAll,
        fetchPolicy: FetchPolicy.networkOnly,
        variables: Variables$Query$UserInfo(
          id: userId,
        ),
      ),
    );
    log('Response: $userResponse');

    if (userResponse.hasException) {
      final exception = userResponse.exception!;
      emit(
        ProfileError(
          (GraphQLErrorHandler.handleException(exception)),
        ),
      );
    } else {
      final data = userResponse.parsedData?.User;
      if (data == null) {
        emit(ProfileError(CustomError.unexpectedError()));
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
          emit(ProfileError(CustomError.unexpectedError()));
        } else {
          emit(
            ProfileLoaded(
              user: data,
              followerCount:
                  socialCountResponse.parsedData!.followers?.pageInfo?.total ??
                      0,
              followingCount:
                  socialCountResponse.parsedData!.following?.pageInfo?.total ??
                      0,
            ),
          );
        }
      }
    }
  }
}
