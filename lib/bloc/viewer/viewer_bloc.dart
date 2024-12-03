import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:otaku_world/constants/string_constants.dart';
import 'package:otaku_world/graphql/__generated/graphql/schema.graphql.dart';
import 'package:otaku_world/graphql/__generated/graphql/user/update_user.graphql.dart';
import 'package:otaku_world/graphql/__generated/graphql/user/viewer.graphql.dart';

import '../../graphql/__generated/graphql/fragments.graphql.dart';

part 'viewer_event.dart';

part 'viewer_state.dart';

class ViewerBloc extends Bloc<ViewerEvent, ViewerState> {
  ViewerBloc() : super(ViewerInitial()) {
    on<LoadViewer>(_onLoadViewer);
    on<UpdateUser>(_onUpdateUser);
  }

  bool showProcess = false;
  Query$Viewer$Viewer? user;

  Future<void> _onLoadViewer(
    LoadViewer event,
    Emitter<ViewerState> emit,
  ) async {
    final response = await event.client.query$Viewer();

    if (response.hasException) {
      final exception = response.exception!;

      if (response.exception!.linkException != null) {
        log(exception.toString());
        emit(
          const ViewerError('Please check your internet connection!'),
        );
      } else {
        emit(const ViewerError('Some Unexpected error occurred!'));
      }
    } else {
      final user = response.parsedData?.Viewer;
      if (user == null) {
        emit(const ViewerError('Some Unexpected error occurred!'));
      } else {
        emit(ViewerLoaded(user: user));
      }
    }
  }

  Future<void> _onUpdateUser(
    UpdateUser event,
    Emitter<ViewerState> emit,
  ) async {
    final options = event.user.options;
    log('List options: ${event.user.mediaListOptions?.animeList}');
    log('Options: ${options?.activityMergeTime}');
    emit((state as ViewerLoaded).copyWith(showProcess: true));

    final response = await event.client.mutate$UpdateUser(
      Options$Mutation$UpdateUser(
        variables: Variables$Mutation$UpdateUser(
          animeListOptions: event.user.mediaListOptions?.animeList != null
              ? Input$MediaListOptionsInput()
              : null,
          titleLanguage: options?.titleLanguage,
          staffNameLanguage: options?.staffNameLanguage,
          activityMergeTime: options?.activityMergeTime,
          airingNotifications: options?.airingNotifications,
          displayAdultContent: options?.displayAdultContent,
          notificationOptions: options?.notificationOptions
              ?.map(
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
      emit(ViewerLoaded(user: response.parsedData!.UpdateUser!));
    }

    log('Response: ${response.parsedData?.UpdateUser?.options?.titleLanguage}');
  }

  @override
  void onTransition(Transition<ViewerEvent, ViewerState> transition) {
    log(transition.toString(), name: 'Viewer');
    super.onTransition(transition);
  }
}
