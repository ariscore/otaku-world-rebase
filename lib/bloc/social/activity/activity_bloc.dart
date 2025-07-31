import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:otaku_world/constants/string_constants.dart';
import 'package:otaku_world/graphql/__generated/graphql/fragments.graphql.dart';
import 'package:otaku_world/graphql/__generated/graphql/social/activity_subscription.graphql.dart';
import 'package:otaku_world/graphql/__generated/graphql/social/delete_activity.graphql.dart';
import 'package:otaku_world/graphql/__generated/graphql/social/get_activity.graphql.dart';

import '../../../core/model/custom_error.dart';
import '../../../utils/graphql_error_handler.dart';

part 'activity_event.dart';
part 'activity_state.dart';

class ActivityBloc extends Bloc<ActivityEvent, ActivityState> {
  ActivityBloc({required this.id}) : super(ActivityInitial()) {
    on<LoadActivity>(_onLoadActivity);
    on<ToggleLike>(_onToggleLike);
    on<UpdateReplyCount>(_onUpdateReplyCount);
    on<UpdateLoading>(_onUpdateLoading);
  }

  final int id;
  bool showProgress = false;

  void _onLoadActivity(LoadActivity event, Emitter<ActivityState> emit) async {
    emit(ActivityLoading());
    final response = await event.client.query$GetActivity(
      Options$Query$GetActivity(
        fetchPolicy: FetchPolicy.networkOnly,
        variables: Variables$Query$GetActivity(
          id: id,
        ),
      ),
    );

    if (response.hasException) {
      final exception = response.exception!;
      emit(
        ActivityError(
          (GraphQLErrorHandler.handleException(exception)),
        ),
      );
    } else {
      final data = response.parsedData?.Activity;
      if (data == null) {
        emit(ActivityError(CustomError.unexpectedError()));
      } else {
        emit(ActivityLoaded(activity: data));
      }
    }
  }

  void _onToggleLike(ToggleLike event, Emitter<ActivityState> emit) async {
    log('Toggling like', name: 'ActivityBloc');
    dynamic activity = (state as ActivityLoaded).activity;

    if (activity is Fragment$TextActivity && activity.isLiked != null) {
      if (activity.isLiked!) {
        activity = activity.copyWith(
          isLiked: false,
          likeCount: activity.likeCount - 1,
        );
      } else {
        activity = activity.copyWith(
          isLiked: true,
          likeCount: activity.likeCount + 1,
        );
      }
    } else if (activity is Fragment$MessageActivity &&
        activity.isLiked != null) {
      if (activity.isLiked!) {
        activity = activity.copyWith(
          isLiked: false,
          likeCount: activity.likeCount - 1,
        );
      } else {
        activity = activity.copyWith(
          isLiked: true,
          likeCount: activity.likeCount + 1,
        );
      }
    } else if (activity is Fragment$ListActivity && activity.isLiked != null) {
      if (activity.isLiked!) {
        activity = activity.copyWith(
          isLiked: false,
          likeCount: activity.likeCount - 1,
        );
      } else {
        activity = activity.copyWith(
          isLiked: true,
          likeCount: activity.likeCount + 1,
        );
      }
    }

    await Future.delayed(const Duration(milliseconds: 1000), () {
      emit(ActivityLoaded(activity: activity));
    });
  }

  void _onUpdateReplyCount(
      UpdateReplyCount event, Emitter<ActivityState> emit) {
    dynamic activity = (state as ActivityLoaded).activity;

    final inc = event.increase ? 1 : -1;
    if (activity is Fragment$TextActivity) {
      activity = activity.copyWith(
        replyCount: activity.replyCount + inc,
      );
    } else if (activity is Fragment$ListActivity) {
      activity = activity.copyWith(
        replyCount: activity.replyCount + inc,
      );
    } else if (activity is Fragment$MessageActivity) {
      activity = activity.copyWith(
        replyCount: activity.replyCount + inc,
      );
    }

    emit(ActivityLoaded(activity: activity));
  }

  Future<String?> toggleActivitySubscription(
    GraphQLClient client, {
    required int activityId,
    required bool subscribe,
  }) async {
    if (showProgress) {
      return ActivityConstants.alreadyInProgress;
    } else {
      showProgress = true;
      log('Activity subscription: ${!subscribe}');
      final response = await client.mutate$ActivitySubscription(
        Options$Mutation$ActivitySubscription(
          variables: Variables$Mutation$ActivitySubscription(
            activityId: activityId,
            subscribe: !subscribe,
          ),
        ),
      );
      log('Response: $response');

      showProgress = false;
      if (response.hasException) {
        if (response.exception!.linkException != null) {
          return StringConstants.noInternetError;
        } else {
          return StringConstants.somethingWentWrongError;
        }
      } else {
        return null;
      }
    }
  }

  Future<String?> deleteActivity(
    GraphQLClient client, {
    required int activityId,
  }) async {
    if (showProgress) {
      return ActivityConstants.alreadyInProgress;
    } else {
      showProgress = true;
      add(const UpdateLoading(true));
      final response = await client.mutate$DeleteActivity(
        Options$Mutation$DeleteActivity(
          variables: Variables$Mutation$DeleteActivity(
            activityId: activityId,
          ),
        ),
      );

      log('Response: $response');

      if (response.hasException) {
        showProgress = false;
        add(const UpdateLoading(false));
        if (response.exception!.linkException != null) {
          return 'Please check your internet connection!';
        } else {
          return 'Something went wrong!';
        }
      } else {
        showProgress = false;
        add(const UpdateLoading(false));
        return null;
      }
    }
  }

  void _onUpdateLoading(UpdateLoading event, Emitter<ActivityState> emit) {
    emit((state as ActivityLoaded).copyWith(showProgress: event.showProgress));
  }

  @override
  void onTransition(Transition<ActivityEvent, ActivityState> transition) {
    log(transition.toString(), name: 'ActivityBloc');
    super.onTransition(transition);
  }
}
