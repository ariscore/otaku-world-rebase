import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:equatable/equatable.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:otaku_world/graphql/__generated/graphql/fragments.graphql.dart';
import 'package:otaku_world/graphql/__generated/graphql/schema.graphql.dart';
import 'package:otaku_world/graphql/__generated/graphql/social/activities.graphql.dart';
import 'package:otaku_world/graphql/__generated/graphql/social/activity_subscription.graphql.dart';
import 'package:otaku_world/graphql/__generated/graphql/social/delete_activity.graphql.dart';

import '../../../constants/string_constants.dart';
import '../../../core/model/custom_error.dart';
import '../../../utils/graphql_error_handler.dart';

part 'global_activities_event.dart';
part 'global_activities_state.dart';

class GlobalActivitiesBloc
    extends Bloc<GlobalActivitiesEvent, GlobalActivitiesState> {
  GlobalActivitiesBloc() : super(GlobalActivitiesInitial()) {
    on<LoadGlobalActivities>(_onLoadGlobalActivities, transformer: droppable());
    on<SelectGlobalActivityType>(_onSelectGlobalActivityType);
    on<ResetGlobalActivities>(_onResetGlobalActivities);
    on<RefreshGlobalActivities>(_onRefreshGlobalActivities);
    on<LoadMoreGlobalActivities>(_onLoadMoreGlobalActivities,
        transformer: droppable());
    on<UpdateGlobalActivities>(_onUpdateGlobalActivities);
    on<UpdateGlobalLoading>(_onUpdateGlobalLoading);
  }

  int globalPage = 1;
  bool hasNextPageGlobal = true;
  final List<dynamic> globalList = [];
  List<Enum$ActivityType> types = Enum$ActivityType.values;
  bool showProgress = false;

  void _onResetGlobalActivities(
    ResetGlobalActivities event,
    Emitter<GlobalActivitiesState> emit,
  ) {
    globalPage = 1;
    hasNextPageGlobal = true;
    globalList.clear();
    types = Enum$ActivityType.values;
    emit(GlobalActivitiesInitial());
  }

  void _onRefreshGlobalActivities(
    RefreshGlobalActivities event,
    Emitter<GlobalActivitiesState> emit,
  ) {
    globalPage = 1;
    hasNextPageGlobal = true;
    globalList.clear();
    add(LoadGlobalActivities(event.client));
  }

  Future<void> _onLoadGlobalActivities(
    LoadGlobalActivities event,
    Emitter<GlobalActivitiesState> emit,
  ) async {
    if (globalPage == 1) emit(GlobalActivitiesLoading());

    log('Fetching global activities for types: $types',
        name: 'GlobalActivitiesBloc');

    final globalResponse = await _loadData(event.client, globalPage);

    if (globalResponse.hasException) {
      final exception = globalResponse.exception!;
      emit(
        GlobalActivitiesError(
          (GraphQLErrorHandler.handleException(exception)),
        ),
      );
    } else {
      _processData(response: globalResponse);
      emit(
        GlobalActivitiesLoaded(
          globalActivities: List.from(globalList),
          hasNextPageGlobal: hasNextPageGlobal,
        ),
      );
    }
  }

  Future<void> _onLoadMoreGlobalActivities(
    LoadMoreGlobalActivities event,
    Emitter<GlobalActivitiesState> emit,
  ) async {
    if (!hasNextPageGlobal) return;

    log('Loading more global activities', name: 'GlobalActivitiesBloc');
    final response = await _loadData(event.client, globalPage);

    if (response.hasException) {
      final exception = response.exception!;
      emit(
        GlobalActivitiesError(
          (GraphQLErrorHandler.handleException(exception)),
        ),
      );
    } else {
      _processData(response: response);
      emit(
        GlobalActivitiesLoaded(
          globalActivities: List.from(globalList),
          hasNextPageGlobal: hasNextPageGlobal,
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
          isFollowing: false, // Global activities are non-following
          page: page,
        ),
      ),
    );
  }

  void _processData({
    required QueryResult<Query$GetActivities> response,
  }) {
    final data = response.parsedData!;
    hasNextPageGlobal = data.Page!.pageInfo!.hasNextPage!;
    log('Has next global page: $hasNextPageGlobal');
    globalPage++;
    globalList.addAll(data.Page!.activities!);
  }

  void _onSelectGlobalActivityType(
    SelectGlobalActivityType event,
    Emitter<GlobalActivitiesState> emit,
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
    add(RefreshGlobalActivities(event.client));
  }

  void _onUpdateGlobalActivities(
    UpdateGlobalActivities event,
    Emitter<GlobalActivitiesState> emit,
  ) {
    emit(GlobalActivitiesLoading());
    emit(GlobalActivitiesLoaded(
      globalActivities: event.globalActivities,
      hasNextPageGlobal: event.hasNextPageGlobal,
    ));
  }

  void _onUpdateGlobalLoading(
    UpdateGlobalLoading event,
    Emitter<GlobalActivitiesState> emit,
  ) {
    emit((state as GlobalActivitiesLoaded).copyWith(
      showProgress: event.showProgress,
    ));
  }

  void toggleLike({required int activityId}) {
    log('Toggling like for global activity id: $activityId');
    int index = globalList.indexWhere((e) => e.id == activityId);

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
      add(UpdateGlobalActivities(
        globalActivities: globalList,
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
      add(const UpdateGlobalLoading(true));
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
        add(const UpdateGlobalLoading(false));
        if (response.exception!.linkException != null) {
          return 'Please check your internet connection!';
        } else {
          return 'Something went wrong!';
        }
      } else {
        globalList.removeWhere((e) => e.id == activityId);
        showProgress = false;
        add(const UpdateGlobalLoading(false));
        add(UpdateGlobalActivities(
          globalActivities: globalList,
          hasNextPageGlobal: hasNextPageGlobal,
        ));
        return null;
      }
    }
  }

  void updateReplyCount({required int activityId, required bool increase}) {
    int index = globalList.indexWhere((e) => e.id == activityId);

    final inc = increase ? 1 : -1;
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

    add(UpdateGlobalActivities(
      globalActivities: globalList,
      hasNextPageGlobal: hasNextPageGlobal,
    ));
  }

  void addTextActivity({required Fragment$TextActivity activity}) {
    if (types.contains(Enum$ActivityType.TEXT)) {
      log('Adding text activity to global');
      globalList.insert(0, activity);
      add(UpdateGlobalActivities(
        globalActivities: globalList,
        hasNextPageGlobal: hasNextPageGlobal,
      ));
    }
  }

  void editActivity(dynamic activity, {required Enum$ActivityType type}) {
    if (types.contains(type)) {
      log('Editing global activity');
      int index = globalList.indexWhere((e) => e.id == activity.id);

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

      add(UpdateGlobalActivities(
        globalActivities: globalList,
        hasNextPageGlobal: hasNextPageGlobal,
      ));
    }
  }

  @override
  void onTransition(
      Transition<GlobalActivitiesEvent, GlobalActivitiesState> transition) {
    log(transition.toString(), name: 'GlobalActivitiesBloc');
    super.onTransition(transition);
  }
}
