import 'dart:developer';

import 'package:equatable/equatable.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:otaku_world/constants/string_constants.dart';
import 'package:otaku_world/features/app_events_management/utils/analytics_logger.dart';
import 'package:otaku_world/graphql/__generated/graphql/schema.graphql.dart';
import 'package:otaku_world/graphql/__generated/graphql/user/update_user.graphql.dart';

import '../../core/model/custom_error.dart';
import '../../graphql/__generated/graphql/fragments.graphql.dart';
import '../../repositories/user_repository.dart';
import '../../utils/graphql_error_handler.dart';

part 'viewer_event.dart';
part 'viewer_state.dart';

class ViewerBloc extends HydratedBloc<ViewerEvent, ViewerState> {
  ViewerBloc() : super(ViewerInitial()) {
    on<LoadViewer>(_onLoadViewer);
    on<UpdateUser>(_onUpdateUser);
  }

  final UserRepository _userRepository = UserRepository();

  Future<void> _onLoadViewer(
    LoadViewer event,
    Emitter<ViewerState> emit,
  ) async {
    emit(ViewerLoading());
    try {
      final user = await _userRepository.fetchAndCacheUserData(event.client);

      log('Loaded user data: ${user.toJson()}');

      AnalyticsLogger.setUser(
        userId: user.id.toString(),
        username: user.name,
      );
      emit(ViewerLoaded(user: user));
    } on OperationException catch (e) {
      final user = _userRepository.lastCachedUser;

      if (user == null) {
        emit(
          ViewerError(
            error: (GraphQLErrorHandler.handleException(e)),
          ),
        );
      } else {
        emit(ViewerLoaded(user: user));
      }
    } on Exception {
      final user = _userRepository.lastCachedUser;

      if (user == null) {
        emit(ViewerError(
          error: CustomError.unexpectedError(),
        ));
      } else {
        emit(ViewerLoaded(user: user));
      }
    }
  }

  @override
  ViewerState? fromJson(Map<String, dynamic> json) {
    log('Hydrated user data: $json');
    final user = json['user'] as Map<String, dynamic>?;
    if (user != null) {
      return ViewerLoaded(user: Fragment$Settings.fromJson(json));
    } else {
      return null;
    }
  }

  @override
  Map<String, dynamic>? toJson(ViewerState state) {
    if (state is ViewerLoaded) {
      return state.user.toJson();
    }
    return null;
  }

  Future<void> _onUpdateUser(
    UpdateUser event,
    Emitter<ViewerState> emit,
  ) async {
    final options = event.user.options;
    final mediaListOptions = event.user.mediaListOptions;
    log('List options: ${event.user.mediaListOptions?.animeList}');
    log('Options: ${options?.activityMergeTime}');
    emit((state as ViewerLoaded).copyWith(showProcess: true));

    final response = await event.client.mutate$UpdateUser(
      Options$Mutation$UpdateUser(
        variables: Variables$Mutation$UpdateUser(
          animeListOptions: mediaListOptions?.animeList != null
              ? Input$MediaListOptionsInput(
                  splitCompletedSectionByFormat: mediaListOptions
                      ?.animeList?.splitCompletedSectionByFormat,
                  advancedScoringEnabled:
                      mediaListOptions?.animeList?.advancedScoringEnabled,
                  advancedScoring: mediaListOptions?.animeList?.advancedScoring,
                  customLists: mediaListOptions?.animeList?.customLists,
                  sectionOrder: mediaListOptions?.animeList?.sectionOrder,
                )
              : null,
          mangaListOptions: mediaListOptions?.mangaList != null
              ? Input$MediaListOptionsInput(
                  splitCompletedSectionByFormat: mediaListOptions
                      ?.mangaList?.splitCompletedSectionByFormat,
                  advancedScoringEnabled:
                      mediaListOptions?.animeList?.advancedScoringEnabled,
                  advancedScoring: mediaListOptions?.animeList?.advancedScoring,
                  customLists: mediaListOptions?.mangaList?.customLists,
                  sectionOrder: mediaListOptions?.mangaList?.sectionOrder,
                )
              : null,
          titleLanguage: options?.titleLanguage,
          staffNameLanguage: options?.staffNameLanguage,
          activityMergeTime: options?.activityMergeTime,
          airingNotifications: options?.airingNotifications,
          displayAdultContent: options?.displayAdultContent,
          notificationOptions: options?.notificationOptions?.map(
            (e) {
              if (e == null) {
                return null;
              } else {
                return Input$NotificationOptionInput(
                  type: e.type,
                  enabled: e.enabled,
                );
              }
            },
          ).toList(),
          scoreFormat: mediaListOptions?.scoreFormat,
          rowOrder: mediaListOptions?.rowOrder,
          disabledListActivity: options?.disabledListActivity
              ?.map(
                (e) => Input$ListActivityOptionInput(
                  type: e?.type,
                  disabled: e?.disabled,
                ),
              )
              .toList(),
        ),
      ),
    );

    if (response.hasException) {
      if (response.exception!.linkException != null) {
        emit(
          (state as ViewerLoaded).copyWith(
            showProcess: false,
            showError: true,
            error: StringConstants.noInternetError,
          ),
        );
      } else {
        emit(
          (state as ViewerLoaded).copyWith(
            showProcess: false,
            showError: true,
            error: StringConstants.somethingWentWrongError,
          ),
        );
      }
    } else {
      _userRepository.updateUserData(response.parsedData!.UpdateUser!);
      emit(ViewerLoaded(user: response.parsedData!.UpdateUser!));
    }

    log('Response: ${response.parsedData?.UpdateUser?.options?.titleLanguage}');
  }

  @override
  void onTransition(Transition<ViewerEvent, ViewerState> transition) {
    log(transition.toString(), name: 'Viewer');
    super.onTransition(transition);
  }

  Fragment$Settings getUser() {
    return (state as ViewerLoaded).user;
  }

  Fragment$Settings? getNullableUser() {
    return (state is ViewerLoaded) ? (state as ViewerLoaded).user : null;
  }
}
