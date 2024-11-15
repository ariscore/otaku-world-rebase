import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:otaku_world/bloc/paginated_data/paginated_data_bloc.dart';
import 'package:otaku_world/graphql/__generated/graphql/schema.graphql.dart';
import 'package:otaku_world/graphql/__generated/graphql/user/user_notifications.graphql.dart';

class UserNotificationsBloc
    extends PaginatedDataBloc<Query$UserNotifications, dynamic> {
  bool resetNotificationCount = true;
  List<Enum$NotificationType> types = [];

  @override
  Future<QueryResult<Query$UserNotifications>> loadData(GraphQLClient client) {
    return client.query$UserNotifications(
      Options$Query$UserNotifications(
        fetchPolicy: FetchPolicy.networkOnly,
        variables: Variables$Query$UserNotifications(
          page: page,
          type_in: types.isEmpty ? null : types,
          resetNotificationCount: resetNotificationCount,
        ),
      ),
    );
  }

  @override
  void processData(QueryResult<Query$UserNotifications> response) {
    final data = response.parsedData!;
    hasNextPage = data.Page!.pageInfo!.hasNextPage!;
    page++;
    list.addAll(data.Page!.notifications!);
  }

  void setNotificationType({
    required GraphQLClient client,
    required String type,
  }) {
    switch (type) {
      case 'All':
        types = [];
        break;
      case 'Airing':
        types = [Enum$NotificationType.AIRING];
        break;
      case 'Activity':
        types = [
          Enum$NotificationType.ACTIVITY_LIKE,
          Enum$NotificationType.ACTIVITY_MENTION,
          Enum$NotificationType.ACTIVITY_MESSAGE,
          Enum$NotificationType.ACTIVITY_REPLY,
          Enum$NotificationType.ACTIVITY_REPLY_LIKE,
          Enum$NotificationType.ACTIVITY_REPLY_SUBSCRIBED,
        ];
        break;
      case 'Follows':
        types = [Enum$NotificationType.FOLLOWING];
        break;
      case 'Forum':
        types = [
          Enum$NotificationType.THREAD_COMMENT_LIKE,
          Enum$NotificationType.THREAD_COMMENT_MENTION,
          Enum$NotificationType.THREAD_COMMENT_REPLY,
          Enum$NotificationType.THREAD_LIKE,
          Enum$NotificationType.THREAD_SUBSCRIBED,
        ];
        break;
      case 'Media':
        types = [
          Enum$NotificationType.MEDIA_DATA_CHANGE,
          Enum$NotificationType.MEDIA_DELETION,
          Enum$NotificationType.MEDIA_MERGE,
          Enum$NotificationType.RELATED_MEDIA_ADDITION,
        ];
        break;
      default:
        types = [];
    }

    add(ResetData());
    add(LoadData(client));
  }
}
