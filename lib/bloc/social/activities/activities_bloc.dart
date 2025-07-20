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

part 'activities_event.dart';
part 'activities_state.dart';

class ActivitiesBloc extends Bloc<ActivitiesEvent, ActivitiesState> {
  ActivitiesBloc() : super(ActivitiesInitial()) {
    on<LoadActivities>(_onLoadActivities, transformer: droppable());
    on<SelectActivityType>(_onSelectActivityType);
    on<ResetActivities>(_onResetActivities);
    on<RefreshActivities>(_onRefreshActivities);
    on<LoadMoreActivities>(_onLoadMoreActivities, transformer: droppable());
    on<UpdateActivities>(_onUpdateActivities);
    on<UpdateLoading>(_onUpdateLoading);
  }

  int followingPage = 1, globalPage = 1;
  bool hasNextPageFollowing = true, hasNextPageGlobal = true;
  final List<dynamic> followingList = [], globalList = [];
  List<Enum$ActivityType> types = Enum$ActivityType.values;
  bool isFollowing = true;

  // bool isTogglingSubscription = false;
  // bool isDeletingActivity = false;
  bool showProgress = false;

  void _onResetActivities(
    ResetActivities event,
    Emitter<ActivitiesState> emit,
  ) {
    followingPage = 1;
    globalPage = 1;
    hasNextPageFollowing = true;
    hasNextPageGlobal = true;
    followingList.clear();
    globalList.clear();
    types = Enum$ActivityType.values;
    emit(ActivitiesInitial());
  }

  void _onRefreshActivities(
    RefreshActivities event,
    Emitter<ActivitiesState> emit,
  ) {
    followingPage = 1;
    globalPage = 1;
    hasNextPageFollowing = true;
    hasNextPageGlobal = true;
    followingList.clear();
    globalList.clear();
    add(LoadActivities(event.client));
  }

  Future<void> _onLoadActivities(
    LoadActivities event,
    Emitter<ActivitiesState> emit,
  ) async {
    if (followingPage == 1 || globalPage == 1) emit(ActivitiesLoading());

    log('Fetching for types: $types', name: 'ActivitiesBloc');
    final followingResponse = await _loadData(
      event.client,
      true,
      followingPage,
    );
    await Future.delayed(const Duration(milliseconds: 500));
    final globalResponse = await _loadData(
      event.client,
      false,
      globalPage,
    );

    if (followingResponse.hasException || globalResponse.hasException) {
      final exception =
          followingResponse.exception ?? globalResponse.exception!;

      debugPrint(
        'Error fetching activities: ${exception.toString()}',
      );
      if (exception.linkException != null) {
        emit(
          const ActivitiesError('Please check your internet connection!'),
        );
      } else {
        emit(const ActivitiesError('Something went wrong!'));
      }
    } else {
      _processData(response: followingResponse, isFollowing: true);
      _processData(response: globalResponse, isFollowing: false);
      emit(
        ActivitiesLoaded(
          followingActivities: List.from(followingList),
          globalActivities: List.from(globalList),
          hasNextPageFollowing: hasNextPageFollowing,
          hasNextPageGlobal: hasNextPageGlobal,
        ),
      );
    }
  }

  Future<void> _onLoadMoreActivities(
    LoadMoreActivities event,
    Emitter<ActivitiesState> emit,
  ) async {
    if ((!hasNextPageFollowing && event.isFollowing) ||
        (!hasNextPageGlobal && !event.isFollowing)) {
      return;
    }

    log('Loading more activities', name: 'ActivitiesBloc');
    final response = await _loadData(
      event.client,
      event.isFollowing,
      event.isFollowing ? followingPage : globalPage,
    );

    if (response.hasException) {
      if (response.exception!.linkException != null) {
        emit(
          const ActivitiesError('Please check your internet connection!'),
        );
      } else {
        emit(const ActivitiesError('Something went wrong!'));
      }
    } else {
      _processData(response: response, isFollowing: event.isFollowing);
      emit(
        ActivitiesLoaded(
          followingActivities: List.from(followingList),
          globalActivities: List.from(globalList),
          hasNextPageFollowing: hasNextPageFollowing,
          hasNextPageGlobal: hasNextPageGlobal,
        ),
      );
    }
  }

  Future<QueryResult<Query$GetActivities>> _loadData(
    GraphQLClient client,
    bool isFollowing,
    int page,
  ) async {
    return await client.query$GetActivities(
      Options$Query$GetActivities(
        cacheRereadPolicy: CacheRereadPolicy.ignoreAll,
        fetchPolicy: FetchPolicy.networkOnly,
        variables: Variables$Query$GetActivities(
          type_in: types.where((e) => e != Enum$ActivityType.$unknown).toList(),
          isFollowing: isFollowing,
          page: page,
        ),
      ),
    );
  }

  void _processData({
    required QueryResult<Query$GetActivities> response,
    required bool isFollowing,
  }) {
    final data = response.parsedData!;
    if (isFollowing) {
      hasNextPageFollowing = data.Page!.pageInfo!.hasNextPage!;
      log('Has next following page: $hasNextPageFollowing');
      followingPage++;
      followingList.addAll(data.Page!.activities!);
    } else {
      hasNextPageGlobal = data.Page!.pageInfo!.hasNextPage!;
      log('Has next global page: $hasNextPageFollowing');
      globalPage++;
      globalList.addAll(data.Page!.activities!);
    }
  }

  void _onSelectActivityType(
    SelectActivityType event,
    Emitter<ActivitiesState> emit,
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
    add(RefreshActivities(event.client));
  }

  void _onUpdateActivities(
    UpdateActivities event,
    Emitter<ActivitiesState> emit,
  ) {
    emit(ActivitiesLoading());
    emit(ActivitiesLoaded(
      followingActivities: event.followingActivities,
      globalActivities: event.globalActivities,
      hasNextPageFollowing: event.hasNextPageFollowing,
      hasNextPageGlobal: event.hasNextPageGlobal,
    ));
  }

  void _onUpdateLoading(UpdateLoading event, Emitter<ActivitiesState> emit) {
    emit((state as ActivitiesLoaded).copyWith(
      showProgress: event.showProgress,
    ));
  }

  void toggleLike({required int activityId}) {
    log('Toggling like for id: $activityId');
    int index = followingList.indexWhere((e) => e.id == activityId);

    if (index != -1) {
      final activity = followingList[index];
      if (activity is Fragment$TextActivity && activity.isLiked != null) {
        if (activity.isLiked!) {
          followingList[index] = activity.copyWith(
            isLiked: false,
            likeCount: activity.likeCount - 1,
          );
        } else {
          followingList[index] = activity.copyWith(
            isLiked: true,
            likeCount: activity.likeCount + 1,
          );
        }
      } else if (activity is Fragment$MessageActivity &&
          activity.isLiked != null) {
        if (activity.isLiked!) {
          followingList[index] = activity.copyWith(
            isLiked: false,
            likeCount: activity.likeCount - 1,
          );
        } else {
          followingList[index] = activity.copyWith(
            isLiked: true,
            likeCount: activity.likeCount + 1,
          );
        }
      } else if (activity is Fragment$ListActivity &&
          activity.isLiked != null) {
        if (activity.isLiked!) {
          followingList[index] = activity.copyWith(
            isLiked: false,
            likeCount: activity.likeCount - 1,
          );
        } else {
          followingList[index] = activity.copyWith(
            isLiked: true,
            likeCount: activity.likeCount + 1,
          );
        }
      }
    }

    index = globalList.indexWhere((e) => e.id == activityId);

    if (index != -1) {
      final activity = globalList[index];
      if (activity is Fragment$TextActivity && activity.isLiked != null) {
        if (activity.isLiked!) {
          globalList[index] = activity.copyWith(
            isLiked: false,
            likeCount: activity.likeCount - 1,
          );
        } else {
          globalList[index] = activity.copyWith(
            isLiked: true,
            likeCount: activity.likeCount + 1,
          );
        }
      } else if (activity is Fragment$MessageActivity &&
          activity.isLiked != null) {
        if (activity.isLiked!) {
          globalList[index] = activity.copyWith(
            isLiked: false,
            likeCount: activity.likeCount - 1,
          );
        } else {
          globalList[index] = activity.copyWith(
            isLiked: true,
            likeCount: activity.likeCount + 1,
          );
        }
      } else if (activity is Fragment$ListActivity &&
          activity.isLiked != null) {
        if (activity.isLiked!) {
          globalList[index] = activity.copyWith(
            isLiked: false,
            likeCount: activity.likeCount - 1,
          );
        } else {
          globalList[index] = activity.copyWith(
            isLiked: true,
            likeCount: activity.likeCount + 1,
          );
        }
      }
    }

    Future.delayed(const Duration(milliseconds: 1000), () {
      add(UpdateActivities(
        followingActivities: followingList,
        globalActivities: globalList,
        hasNextPageFollowing: hasNextPageFollowing,
        hasNextPageGlobal: hasNextPageGlobal,
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
        followingList.removeWhere((e) => e.id == activityId);
        globalList.removeWhere((e) => e.id == activityId);
        showProgress = false;
        add(const UpdateLoading(false));
        add(UpdateActivities(
          followingActivities: followingList,
          globalActivities: globalList,
          hasNextPageFollowing: hasNextPageFollowing,
          hasNextPageGlobal: hasNextPageGlobal,
        ));
        return null;
      }
    }
  }

  void updateReplyCount({required int activityId, required bool increase}) {
    int index = followingList.indexWhere(
      (e) => e.id == activityId,
    );

    final inc = increase ? 1 : -1;
    if (index != -1) {
      final activity = followingList[index];
      if (activity is Fragment$TextActivity) {
        followingList[index] = activity.copyWith(
          replyCount: activity.replyCount + inc,
        );
      } else if (activity is Fragment$ListActivity) {
        followingList[index] = activity.copyWith(
          replyCount: activity.replyCount + inc,
        );
      } else if (activity is Fragment$MessageActivity) {
        followingList[index] = activity.copyWith(
          replyCount: activity.replyCount + inc,
        );
      }
    }

    index = globalList.indexWhere(
      (e) => e.id == activityId,
    );
    if (index != -1) {
      final activity = globalList[index];
      if (activity is Query$GetActivities$Page$activities$$TextActivity) {
        globalList[index] = activity.copyWith(
          replyCount: activity.replyCount + inc,
        );
      } else if (activity
          is Query$GetActivities$Page$activities$$ListActivity) {
        globalList[index] = activity.copyWith(
          replyCount: activity.replyCount + inc,
        );
      } else if (activity
          is Query$GetActivities$Page$activities$$MessageActivity) {
        globalList[index] = activity.copyWith(
          replyCount: activity.replyCount + inc,
        );
      }
    }

    add(UpdateActivities(
      followingActivities: followingList,
      globalActivities: globalList,
      hasNextPageFollowing: hasNextPageFollowing,
      hasNextPageGlobal: hasNextPageGlobal,
    ));
  }

  void addTextActivity({required Fragment$TextActivity activity}) {
    if (types.contains(Enum$ActivityType.TEXT)) {
      log('Adding text activity');
      followingList.insert(0, activity);
      globalList.insert(0, activity);
      add(
        UpdateActivities(
          followingActivities: followingList,
          globalActivities: globalList,
          hasNextPageFollowing: hasNextPageFollowing,
          hasNextPageGlobal: hasNextPageGlobal,
        ),
      );
    }
  }

  void editActivity(dynamic activity, {required Enum$ActivityType type}) {
    if (types.contains(type)) {
      log('Editing activity');
      int index = followingList.indexWhere((e) => e.id == activity.id);

      if (index != -1) {
        final oldActivity = followingList[index];
        if (oldActivity is Fragment$TextActivity) {
          followingList[index] = oldActivity.copyWith(text: activity.text);
        } else if (oldActivity is Fragment$MessageActivity) {
          followingList[index] = oldActivity.copyWith(
            message: activity.message,
          );
        }
      }

      index = globalList.indexWhere((e) => e.id == activity.id);

      if (index != -1) {
        final oldActivity = globalList[index];
        if (oldActivity is Fragment$TextActivity) {
          globalList[index] = oldActivity.copyWith(text: activity.text);
        } else if (oldActivity is Fragment$MessageActivity) {
          globalList[index] = oldActivity.copyWith(
            message: activity.message,
          );
        }
      }

      add(UpdateActivities(
        followingActivities: followingList,
        globalActivities: globalList,
        hasNextPageFollowing: hasNextPageFollowing,
        hasNextPageGlobal: hasNextPageGlobal,
      ));
    }
  }

  @override
  void onTransition(Transition<ActivitiesEvent, ActivitiesState> transition) {
    log(transition.toString(), name: 'ActivitiesBloc');
    super.onTransition(transition);
  }
}
