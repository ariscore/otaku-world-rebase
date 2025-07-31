import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:otaku_world/graphql/__generated/graphql/fragments.graphql.dart';
import 'package:otaku_world/graphql/__generated/graphql/user/following_followers.graphql.dart';
import 'package:otaku_world/graphql/__generated/graphql/user/viewer_info.graphql.dart';

import '../../../core/model/custom_error.dart';
import '../../../utils/graphql_error_handler.dart';

part 'my_profile_event.dart';
part 'my_profile_state.dart';

class MyProfileBloc extends Bloc<MyProfileEvent, MyProfileState> {
  MyProfileBloc() : super(MyProfileInitial()) {
    on<LoadProfile>(_onLoadProfile);
    on<ResetNotificationCount>(_onResetNotificationCount);
  }

  int _unReadNotificationCount = 0;

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
      emit(
        MyProfileError(
          (GraphQLErrorHandler.handleException(exception)),
        ),
      );
    } else {
      final data = viewerResponse.parsedData?.Viewer;
      if (data == null) {
        emit(MyProfileError(CustomError.unexpectedError()));
      } else {
        _unReadNotificationCount = data.unreadNotificationCount ?? 0;
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
          emit(MyProfileError(CustomError.unexpectedError()));
        } else {
          emit(
            MyProfileLoaded(
              user: data,
              unreadNotificationCount: _unReadNotificationCount,
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

  void _onResetNotificationCount(
    ResetNotificationCount event,
    Emitter<MyProfileState> emit,
  ) {
    _unReadNotificationCount = 0;
    final loadedState = state as MyProfileLoaded;
    emit(
      loadedState.copyWith(
        unreadNotificationCount: _unReadNotificationCount,
      ),
    );
  }

  @override
  void onTransition(Transition<MyProfileEvent, MyProfileState> transition) {
    log(transition.toString(), name: 'MyProfileBloc');
    super.onTransition(transition);
  }
}
