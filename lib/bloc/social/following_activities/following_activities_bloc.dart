import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:otaku_world/graphql/__generated/graphql/fragments.graphql.dart';
import 'package:otaku_world/graphql/__generated/graphql/schema.graphql.dart';
import 'package:otaku_world/graphql/__generated/graphql/social/activities.graphql.dart';
import 'package:otaku_world/graphql/__generated/graphql/social/activity_subscription.graphql.dart';
import 'package:otaku_world/graphql/__generated/graphql/social/delete_activity.graphql.dart';

import '../../../constants/string_constants.dart';

part 'following_activities_event.dart';
part 'following_activities_state.dart';

class FollowingActivitiesBloc extends Bloc<FollowingActivitiesEvent, FollowingActivitiesState> {
  FollowingActivitiesBloc() : super(FollowingActivitiesInitial()) {
    on<LoadFollowingActivities>(_onLoadActivities, transformer: droppable());
    on<SelectFollowingActivityType>(_onSelectActivityType);
    on<ResetFollowingActivities>(_onResetActivities);
    on<RefreshFollowingActivities>(_onRefreshActivities);
    on<LoadMoreFollowingActivities>(_onLoadMoreActivities, transformer: droppable());
    on<UpdateFollowingActivities>(_onUpdateActivities);
    on<UpdateFollowingLoading>(_onUpdateLoading);
  }

  int page = 1;
  bool hasNextPage = true;
  final List<dynamic> activitiesList = [];
  List<Enum$ActivityType> types = Enum$ActivityType.values;
  bool showProgress = false;

  void _onResetActivities(
      ResetFollowingActivities event,
      Emitter<FollowingActivitiesState> emit,
      ) {
    page = 1;
    hasNextPage = true;
    activitiesList.clear();
    types = Enum$ActivityType.values;
    emit(FollowingActivitiesInitial());
  }

  void _onRefreshActivities(
      RefreshFollowingActivities event,
      Emitter<FollowingActivitiesState> emit,
      ) {
    page = 1;
    hasNextPage = true;
    activitiesList.clear();
    add(LoadFollowingActivities(event.client));
  }

  Future<void> _onLoadActivities(
      LoadFollowingActivities event,
      Emitter<FollowingActivitiesState> emit,
      ) async {
    if (page == 1) emit(FollowingActivitiesLoading());

    log('Fetching following activities for types: $types', name: 'FollowingActivitiesBloc');
    final response = await _loadData(event.client, page);

    if (response.hasException) {
      final exception = response.exception!;
      debugPrint('Error fetching following activities: ${exception.toString()}');

      if (exception.linkException != null) {
        emit(FollowingActivitiesError(exception.toString()));
      } else {
        emit(const FollowingActivitiesError('Something went wrong!'));
      }
    } else {
      _processData(response: response);
      emit(
        FollowingActivitiesLoaded(
          activities: List.from(activitiesList),
          hasNextPage: hasNextPage,
        ),
      );
    }
  }

  Future<void> _onLoadMoreActivities(
      LoadMoreFollowingActivities event,
      Emitter<FollowingActivitiesState> emit,
      ) async {
    if (!hasNextPage) return;

    log('Loading more following activities', name: 'FollowingActivitiesBloc');
    final response = await _loadData(event.client, page);

    if (response.hasException) {
      if (response.exception!.linkException != null) {
        emit(const FollowingActivitiesError('Please check your internet connection!'));
      } else {
        emit(const FollowingActivitiesError('Something went wrong!'));
      }
    } else {
      _processData(response: response);
      emit(
        FollowingActivitiesLoaded(
          activities: List.from(activitiesList),
          hasNextPage: hasNextPage,
        ),
      );
    }
  }

  Future<QueryResult<Query$GetActivities>> _loadData(
      GraphQLClient client,
      int page,
      ) async {
    return await client.query$GetActivities(
      Options$Query$GetActivities(
        cacheRereadPolicy: CacheRereadPolicy.ignoreAll,
        fetchPolicy: FetchPolicy.networkOnly,
        variables: Variables$Query$GetActivities(
          type_in: types.where((e) => e != Enum$ActivityType.$unknown).toList(),
          isFollowing: true,
          page: page,
        ),
      ),
    );
  }

  void _processData({
    required QueryResult<Query$GetActivities> response,
  }) {
    final data = response.parsedData!;
    hasNextPage = data.Page!.pageInfo!.hasNextPage!;
    log('Has next following page: $hasNextPage');
    page++;
    activitiesList.addAll(data.Page!.activities!);
  }

  void _onSelectActivityType(
      SelectFollowingActivityType event,
      Emitter<FollowingActivitiesState> emit,
      ) {
    switch (event.type) {
      case 'All':
        types = Enum$ActivityType.values;
      case 'Text':
        types = [Enum$ActivityType.TEXT];
      case 'Message':
        types = [Enum$ActivityType.MESSAGE];
      case 'List Progress':
        types = [Enum$ActivityType.ANIME_LIST, Enum$ActivityType.MANGA_LIST];
      default:
        types = Enum$ActivityType.values;
    }
    add(RefreshFollowingActivities(event.client));
  }

  void _onUpdateActivities(
      UpdateFollowingActivities event,
      Emitter<FollowingActivitiesState> emit,
      ) {
    emit(FollowingActivitiesLoading());
    emit(FollowingActivitiesLoaded(
      activities: event.activities,
      hasNextPage: event.hasNextPage,
    ));
  }

  void _onUpdateLoading(UpdateFollowingLoading event, Emitter<FollowingActivitiesState> emit) {
    emit((state as FollowingActivitiesLoaded).copyWith(
      showProgress: event.showProgress,
    ));
  }

  void toggleLike({required int activityId}) {
    log('Toggling like for id: $activityId');
    int index = activitiesList.indexWhere((e) => e.id == activityId);

    if (index != -1) {
      final activity = activitiesList[index];
      if (activity is Fragment$TextActivity && activity.isLiked != null) {
        if (activity.isLiked!) {
          activitiesList[index] = activity.copyWith(
            isLiked: false,
            likeCount: activity.likeCount - 1,
          );
        } else {
          activitiesList[index] = activity.copyWith(
            isLiked: true,
            likeCount: activity.likeCount + 1,
          );
        }
      } else if (activity is Fragment$MessageActivity && activity.isLiked != null) {
        if (activity.isLiked!) {
          activitiesList[index] = activity.copyWith(
            isLiked: false,
            likeCount: activity.likeCount - 1,
          );
        } else {
          activitiesList[index] = activity.copyWith(
            isLiked: true,
            likeCount: activity.likeCount + 1,
          );
        }
      } else if (activity is Fragment$ListActivity && activity.isLiked != null) {
        if (activity.isLiked!) {
          activitiesList[index] = activity.copyWith(
            isLiked: false,
            likeCount: activity.likeCount - 1,
          );
        } else {
          activitiesList[index] = activity.copyWith(
            isLiked: true,
            likeCount: activity.likeCount + 1,
          );
        }
      }
    }

    Future.delayed(const Duration(milliseconds: 1000), () {
      add(UpdateFollowingActivities(
        activities: activitiesList,
        hasNextPage: hasNextPage,
      ));
    });
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
          return 'Please check your internet connection!';
        } else {
          return 'Something went wrong!';
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
      add(const UpdateFollowingLoading(true));
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
        add(const UpdateFollowingLoading(false));
        if (response.exception!.linkException != null) {
          return 'Please check your internet connection!';
        } else {
          return 'Something went wrong!';
        }
      } else {
        activitiesList.removeWhere((e) => e.id == activityId);
        showProgress = false;
        add(const UpdateFollowingLoading(false));
        add(UpdateFollowingActivities(
          activities: activitiesList,
          hasNextPage: hasNextPage,
        ));
        return null;
      }
    }
  }

  void updateReplyCount({required int activityId, required bool increase}) {
    int index = activitiesList.indexWhere((e) => e.id == activityId);

    final inc = increase ? 1 : -1;
    if (index != -1) {
      final activity = activitiesList[index];
      if (activity is Fragment$TextActivity) {
        activitiesList[index] = activity.copyWith(
          replyCount: activity.replyCount + inc,
        );
      } else if (activity is Fragment$ListActivity) {
        activitiesList[index] = activity.copyWith(
          replyCount: activity.replyCount + inc,
        );
      } else if (activity is Fragment$MessageActivity) {
        activitiesList[index] = activity.copyWith(
          replyCount: activity.replyCount + inc,
        );
      }
    }

    add(UpdateFollowingActivities(
      activities: activitiesList,
      hasNextPage: hasNextPage,
    ));
  }

  void addTextActivity({required Fragment$TextActivity activity}) {
    if (types.contains(Enum$ActivityType.TEXT)) {
      log('Adding text activity to following');
      activitiesList.insert(0, activity);
      add(UpdateFollowingActivities(
        activities: activitiesList,
        hasNextPage: hasNextPage,
      ));
    }
  }

  void editActivity(dynamic activity, {required Enum$ActivityType type}) {
    if (types.contains(type)) {
      log('Editing following activity');
      int index = activitiesList.indexWhere((e) => e.id == activity.id);

      if (index != -1) {
        final oldActivity = activitiesList[index];
        if (oldActivity is Fragment$TextActivity) {
          activitiesList[index] = oldActivity.copyWith(text: activity.text);
        } else if (oldActivity is Fragment$MessageActivity) {
          activitiesList[index] = oldActivity.copyWith(
            message: activity.message,
          );
        }
      }

      add(UpdateFollowingActivities(
        activities: activitiesList,
        hasNextPage: hasNextPage,
      ));
    }
  }

  @override
  void onTransition(Transition<FollowingActivitiesEvent, FollowingActivitiesState> transition) {
    log(transition.toString(), name: 'FollowingActivitiesBloc');
    super.onTransition(transition);
  }
}