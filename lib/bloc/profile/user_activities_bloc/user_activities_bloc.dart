import 'dart:developer';

import 'package:equatable/equatable.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:otaku_world/bloc/paginated_data/paginated_data_bloc.dart';
import 'package:otaku_world/graphql/__generated/graphql/schema.graphql.dart';
import 'package:otaku_world/graphql/__generated/graphql/social/activity_subscription.graphql.dart';
import 'package:otaku_world/graphql/__generated/graphql/social/delete_activity.graphql.dart';
import 'package:otaku_world/graphql/__generated/graphql/user/user_activities.graphql.dart';

import '../../../constants/string_constants.dart';
import '../../../graphql/__generated/graphql/fragments.graphql.dart';

class UserActivitiesBloc
    extends PaginatedDataBloc<Query$UserActivities, dynamic> {
  UserActivitiesBloc({required this.userId});

  final int userId;
  Enum$ActivityType? type;
  bool showProgress = false;

  @override
  Future<QueryResult<Query$UserActivities>> loadData(GraphQLClient client) {
    return client.query$UserActivities(
      Options$Query$UserActivities(
        fetchPolicy: FetchPolicy.networkOnly,
        variables: Variables$Query$UserActivities(
          page: page,
          userId: userId,
          type: type,
        ),
      ),
    );
  }

  @override
  void processData(QueryResult<Query$UserActivities> response) {
    final data = response.parsedData!;
    hasNextPage = data.Page!.pageInfo!.hasNextPage!;
    page++;
    list.addAll(data.Page!.activities!);
  }

  void changeType(
      {required GraphQLClient client, required String activityType}) {
    if (activityType == 'List Progress') {
      type = Enum$ActivityType.MEDIA_LIST;
    } else if (activityType == 'Text') {
      type = Enum$ActivityType.TEXT;
    } else if (activityType == 'Message') {
      type = Enum$ActivityType.MESSAGE;
    } else {
      type = null;
    }

    add(ResetData());
    add(LoadData(client));
  }

  void toggleLike({required int activityId}) {
    log('Toggling like for id: $activityId');
    int index = list.indexWhere((e) => e.id == activityId);

    if (index != -1) {
      final activity = list[index];
      if (activity is Fragment$TextActivity && activity.isLiked != null) {
        if (activity.isLiked!) {
          list[index] = activity.copyWith(
            isLiked: false,
            likeCount: activity.likeCount - 1,
          );
        } else {
          list[index] = activity.copyWith(
            isLiked: true,
            likeCount: activity.likeCount + 1,
          );
        }
      } else if (activity is Fragment$MessageActivity &&
          activity.isLiked != null) {
        if (activity.isLiked!) {
          list[index] = activity.copyWith(
            isLiked: false,
            likeCount: activity.likeCount - 1,
          );
        } else {
          list[index] = activity.copyWith(
            isLiked: true,
            likeCount: activity.likeCount + 1,
          );
        }
      } else if (activity is Fragment$ListActivity &&
          activity.isLiked != null) {
        if (activity.isLiked!) {
          list[index] = activity.copyWith(
            isLiked: false,
            likeCount: activity.likeCount - 1,
          );
        } else {
          list[index] = activity.copyWith(
            isLiked: true,
            likeCount: activity.likeCount + 1,
          );
        }
      }
    }

    Future.delayed(const Duration(milliseconds: 1000), () {
      add(UpdateData(list: list));
    });
  }

  void updateReplyCount({required int activityId, required bool increase}) {
    int index = list.indexWhere((e) => e.id == activityId);

    final inc = increase ? 1 : -1;
    if (index != -1) {
      final activity = list[index];
      if (activity is Fragment$TextActivity) {
        list[index] = activity.copyWith(
          replyCount: activity.replyCount + inc,
        );
      } else if (activity is Fragment$ListActivity) {
        list[index] = activity.copyWith(
          replyCount: activity.replyCount + inc,
        );
      } else if (activity is Fragment$MessageActivity) {
        list[index] = activity.copyWith(
          replyCount: activity.replyCount + inc,
        );
      }
    }

    add(UpdateData(list: list));
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
        list.removeWhere((e) => e.id == activityId);
        showProgress = false;
        add(const UpdateLoading(false));
        add(UpdateData(list: list));
        return null;
      }
    }
  }

  void addTextActivity({required Fragment$TextActivity activity}) {
    if (type == Enum$ActivityType.TEXT || type == null) {
      log('Adding text activity');
      list.insert(0, activity);
      add(UpdateData(list: list));
    }
  }

  void editActivity(dynamic activity, {required Enum$ActivityType type}) {
    if (type == Enum$ActivityType.TEXT) {
      log('Editing activity');
      int index = list.indexWhere((e) => e.id == activity.id);

      if (index != -1) {
        final oldActivity = list[index];
        if (oldActivity is Fragment$TextActivity) {
          list[index] = oldActivity.copyWith(text: activity.text);
        } else if (oldActivity is Fragment$MessageActivity) {
          list[index] = oldActivity.copyWith(
            message: activity.message,
          );
        }
      }

      add(UpdateData(list: list));
    }
  }
}
