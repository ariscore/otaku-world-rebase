// GENERATED FILE
// DO NOT MODIFY
// ignore_for_file: type=lint
import '../fragments.graphql.dart';
import '../schema.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$UserNotifications {
  factory Variables$Query$UserNotifications({
    int? page,
    List<Enum$NotificationType?>? type_in,
    bool? resetNotificationCount,
  }) =>
      Variables$Query$UserNotifications._({
        if (page != null) r'page': page,
        if (type_in != null) r'type_in': type_in,
        if (resetNotificationCount != null)
          r'resetNotificationCount': resetNotificationCount,
      });

  Variables$Query$UserNotifications._(this._$data);

  factory Variables$Query$UserNotifications.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('page')) {
      final l$page = data['page'];
      result$data['page'] = (l$page as int?);
    }
    if (data.containsKey('type_in')) {
      final l$type_in = data['type_in'];
      result$data['type_in'] = (l$type_in as List<dynamic>?)
          ?.map((e) =>
              e == null ? null : fromJson$Enum$NotificationType((e as String)))
          .toList();
    }
    if (data.containsKey('resetNotificationCount')) {
      final l$resetNotificationCount = data['resetNotificationCount'];
      result$data['resetNotificationCount'] =
          (l$resetNotificationCount as bool?);
    }
    return Variables$Query$UserNotifications._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get page => (_$data['page'] as int?);

  List<Enum$NotificationType?>? get type_in =>
      (_$data['type_in'] as List<Enum$NotificationType?>?);

  bool? get resetNotificationCount =>
      (_$data['resetNotificationCount'] as bool?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('page')) {
      final l$page = page;
      result$data['page'] = l$page;
    }
    if (_$data.containsKey('type_in')) {
      final l$type_in = type_in;
      result$data['type_in'] = l$type_in
          ?.map((e) => e == null ? null : toJson$Enum$NotificationType(e))
          .toList();
    }
    if (_$data.containsKey('resetNotificationCount')) {
      final l$resetNotificationCount = resetNotificationCount;
      result$data['resetNotificationCount'] = l$resetNotificationCount;
    }
    return result$data;
  }

  CopyWith$Variables$Query$UserNotifications<Variables$Query$UserNotifications>
      get copyWith => CopyWith$Variables$Query$UserNotifications(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$UserNotifications ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$page = page;
    final lOther$page = other.page;
    if (_$data.containsKey('page') != other._$data.containsKey('page')) {
      return false;
    }
    if (l$page != lOther$page) {
      return false;
    }
    final l$type_in = type_in;
    final lOther$type_in = other.type_in;
    if (_$data.containsKey('type_in') != other._$data.containsKey('type_in')) {
      return false;
    }
    if (l$type_in != null && lOther$type_in != null) {
      if (l$type_in.length != lOther$type_in.length) {
        return false;
      }
      for (int i = 0; i < l$type_in.length; i++) {
        final l$type_in$entry = l$type_in[i];
        final lOther$type_in$entry = lOther$type_in[i];
        if (l$type_in$entry != lOther$type_in$entry) {
          return false;
        }
      }
    } else if (l$type_in != lOther$type_in) {
      return false;
    }
    final l$resetNotificationCount = resetNotificationCount;
    final lOther$resetNotificationCount = other.resetNotificationCount;
    if (_$data.containsKey('resetNotificationCount') !=
        other._$data.containsKey('resetNotificationCount')) {
      return false;
    }
    if (l$resetNotificationCount != lOther$resetNotificationCount) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$page = page;
    final l$type_in = type_in;
    final l$resetNotificationCount = resetNotificationCount;
    return Object.hashAll([
      _$data.containsKey('page') ? l$page : const {},
      _$data.containsKey('type_in')
          ? l$type_in == null
              ? null
              : Object.hashAll(l$type_in.map((v) => v))
          : const {},
      _$data.containsKey('resetNotificationCount')
          ? l$resetNotificationCount
          : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$UserNotifications<TRes> {
  factory CopyWith$Variables$Query$UserNotifications(
    Variables$Query$UserNotifications instance,
    TRes Function(Variables$Query$UserNotifications) then,
  ) = _CopyWithImpl$Variables$Query$UserNotifications;

  factory CopyWith$Variables$Query$UserNotifications.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$UserNotifications;

  TRes call({
    int? page,
    List<Enum$NotificationType?>? type_in,
    bool? resetNotificationCount,
  });
}

class _CopyWithImpl$Variables$Query$UserNotifications<TRes>
    implements CopyWith$Variables$Query$UserNotifications<TRes> {
  _CopyWithImpl$Variables$Query$UserNotifications(
    this._instance,
    this._then,
  );

  final Variables$Query$UserNotifications _instance;

  final TRes Function(Variables$Query$UserNotifications) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? page = _undefined,
    Object? type_in = _undefined,
    Object? resetNotificationCount = _undefined,
  }) =>
      _then(Variables$Query$UserNotifications._({
        ..._instance._$data,
        if (page != _undefined) 'page': (page as int?),
        if (type_in != _undefined)
          'type_in': (type_in as List<Enum$NotificationType?>?),
        if (resetNotificationCount != _undefined)
          'resetNotificationCount': (resetNotificationCount as bool?),
      }));
}

class _CopyWithStubImpl$Variables$Query$UserNotifications<TRes>
    implements CopyWith$Variables$Query$UserNotifications<TRes> {
  _CopyWithStubImpl$Variables$Query$UserNotifications(this._res);

  TRes _res;

  call({
    int? page,
    List<Enum$NotificationType?>? type_in,
    bool? resetNotificationCount,
  }) =>
      _res;
}

class Query$UserNotifications {
  Query$UserNotifications({
    this.Page,
    this.$__typename = 'Query',
  });

  factory Query$UserNotifications.fromJson(Map<String, dynamic> json) {
    final l$Page = json['Page'];
    final l$$__typename = json['__typename'];
    return Query$UserNotifications(
      Page: l$Page == null
          ? null
          : Query$UserNotifications$Page.fromJson(
              (l$Page as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$UserNotifications$Page? Page;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$Page = Page;
    _resultData['Page'] = l$Page?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$Page = Page;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$Page,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$UserNotifications || runtimeType != other.runtimeType) {
      return false;
    }
    final l$Page = Page;
    final lOther$Page = other.Page;
    if (l$Page != lOther$Page) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$UserNotifications on Query$UserNotifications {
  CopyWith$Query$UserNotifications<Query$UserNotifications> get copyWith =>
      CopyWith$Query$UserNotifications(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$UserNotifications<TRes> {
  factory CopyWith$Query$UserNotifications(
    Query$UserNotifications instance,
    TRes Function(Query$UserNotifications) then,
  ) = _CopyWithImpl$Query$UserNotifications;

  factory CopyWith$Query$UserNotifications.stub(TRes res) =
      _CopyWithStubImpl$Query$UserNotifications;

  TRes call({
    Query$UserNotifications$Page? Page,
    String? $__typename,
  });
  CopyWith$Query$UserNotifications$Page<TRes> get Page;
}

class _CopyWithImpl$Query$UserNotifications<TRes>
    implements CopyWith$Query$UserNotifications<TRes> {
  _CopyWithImpl$Query$UserNotifications(
    this._instance,
    this._then,
  );

  final Query$UserNotifications _instance;

  final TRes Function(Query$UserNotifications) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? Page = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$UserNotifications(
        Page: Page == _undefined
            ? _instance.Page
            : (Page as Query$UserNotifications$Page?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$UserNotifications$Page<TRes> get Page {
    final local$Page = _instance.Page;
    return local$Page == null
        ? CopyWith$Query$UserNotifications$Page.stub(_then(_instance))
        : CopyWith$Query$UserNotifications$Page(
            local$Page, (e) => call(Page: e));
  }
}

class _CopyWithStubImpl$Query$UserNotifications<TRes>
    implements CopyWith$Query$UserNotifications<TRes> {
  _CopyWithStubImpl$Query$UserNotifications(this._res);

  TRes _res;

  call({
    Query$UserNotifications$Page? Page,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$UserNotifications$Page<TRes> get Page =>
      CopyWith$Query$UserNotifications$Page.stub(_res);
}

const documentNodeQueryUserNotifications = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'UserNotifications'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'page')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'type_in')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'NotificationType'),
            isNonNull: false,
          ),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'resetNotificationCount')),
        type: NamedTypeNode(
          name: NameNode(value: 'Boolean'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'Page'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'page'),
            value: VariableNode(name: NameNode(value: 'page')),
          ),
          ArgumentNode(
            name: NameNode(value: 'perPage'),
            value: IntValueNode(value: '30'),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'pageInfo'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'hasNextPage'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'notifications'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'type_in'),
                value: VariableNode(name: NameNode(value: 'type_in')),
              ),
              ArgumentNode(
                name: NameNode(value: 'resetNotificationCount'),
                value: VariableNode(
                    name: NameNode(value: 'resetNotificationCount')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                name: NameNode(value: 'ActivityLikeNotification'),
                directives: [],
              ),
              FragmentSpreadNode(
                name: NameNode(value: 'ActivityMessageNotification'),
                directives: [],
              ),
              FragmentSpreadNode(
                name: NameNode(value: 'ActivityReplySubscribedNotification'),
                directives: [],
              ),
              FragmentSpreadNode(
                name: NameNode(value: 'ActivityReplyNotification'),
                directives: [],
              ),
              FragmentSpreadNode(
                name: NameNode(value: 'ActivityReplyLikeNotification'),
                directives: [],
              ),
              FragmentSpreadNode(
                name: NameNode(value: 'ActivityMentionNotification'),
                directives: [],
              ),
              FragmentSpreadNode(
                name: NameNode(value: 'AiringNotification'),
                directives: [],
              ),
              FragmentSpreadNode(
                name: NameNode(value: 'FollowingNotification'),
                directives: [],
              ),
              FragmentSpreadNode(
                name: NameNode(value: 'ThreadCommentSubscribedNotification'),
                directives: [],
              ),
              FragmentSpreadNode(
                name: NameNode(value: 'ThreadLikeNotification'),
                directives: [],
              ),
              FragmentSpreadNode(
                name: NameNode(value: 'ThreadCommentReplyNotification'),
                directives: [],
              ),
              FragmentSpreadNode(
                name: NameNode(value: 'ThreadCommentMentionNotification'),
                directives: [],
              ),
              FragmentSpreadNode(
                name: NameNode(value: 'ThreadCommentLikeNotification'),
                directives: [],
              ),
              FragmentSpreadNode(
                name: NameNode(value: 'MediaDataChangeNotification'),
                directives: [],
              ),
              FragmentSpreadNode(
                name: NameNode(value: 'MediaMergeNotification'),
                directives: [],
              ),
              FragmentSpreadNode(
                name: NameNode(value: 'MediaDeletionNotification'),
                directives: [],
              ),
              FragmentSpreadNode(
                name: NameNode(value: 'RelatedMediaAdditionNotification'),
                directives: [],
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
  fragmentDefinitionActivityLikeNotification,
  fragmentDefinitionActivityMessageNotification,
  fragmentDefinitionActivityReplySubscribedNotification,
  fragmentDefinitionActivityReplyNotification,
  fragmentDefinitionActivityReplyLikeNotification,
  fragmentDefinitionActivityMentionNotification,
  fragmentDefinitionAiringNotification,
  fragmentDefinitionFollowingNotification,
  fragmentDefinitionThreadCommentSubscribedNotification,
  fragmentDefinitionThreadLikeNotification,
  fragmentDefinitionThreadCommentReplyNotification,
  fragmentDefinitionThreadCommentMentionNotification,
  fragmentDefinitionThreadCommentLikeNotification,
  fragmentDefinitionMediaDataChangeNotification,
  fragmentDefinitionMediaMergeNotification,
  fragmentDefinitionMediaDeletionNotification,
  fragmentDefinitionRelatedMediaAdditionNotification,
]);
Query$UserNotifications _parserFn$Query$UserNotifications(
        Map<String, dynamic> data) =>
    Query$UserNotifications.fromJson(data);
typedef OnQueryComplete$Query$UserNotifications = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$UserNotifications?,
);

class Options$Query$UserNotifications
    extends graphql.QueryOptions<Query$UserNotifications> {
  Options$Query$UserNotifications({
    String? operationName,
    Variables$Query$UserNotifications? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$UserNotifications? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$UserNotifications? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
          variables: variables?.toJson() ?? {},
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          pollInterval: pollInterval,
          context: context,
          onComplete: onComplete == null
              ? null
              : (data) => onComplete(
                    data,
                    data == null
                        ? null
                        : _parserFn$Query$UserNotifications(data),
                  ),
          onError: onError,
          document: documentNodeQueryUserNotifications,
          parserFn: _parserFn$Query$UserNotifications,
        );

  final OnQueryComplete$Query$UserNotifications? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$UserNotifications
    extends graphql.WatchQueryOptions<Query$UserNotifications> {
  WatchOptions$Query$UserNotifications({
    String? operationName,
    Variables$Query$UserNotifications? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$UserNotifications? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables?.toJson() ?? {},
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeQueryUserNotifications,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$UserNotifications,
        );
}

class FetchMoreOptions$Query$UserNotifications
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$UserNotifications({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$UserNotifications? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryUserNotifications,
        );
}

extension ClientExtension$Query$UserNotifications on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$UserNotifications>> query$UserNotifications(
          [Options$Query$UserNotifications? options]) async =>
      await this.query(options ?? Options$Query$UserNotifications());
  graphql.ObservableQuery<Query$UserNotifications> watchQuery$UserNotifications(
          [WatchOptions$Query$UserNotifications? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$UserNotifications());
  void writeQuery$UserNotifications({
    required Query$UserNotifications data,
    Variables$Query$UserNotifications? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryUserNotifications),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$UserNotifications? readQuery$UserNotifications({
    Variables$Query$UserNotifications? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation:
            graphql.Operation(document: documentNodeQueryUserNotifications),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$UserNotifications.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$UserNotifications>
    useQuery$UserNotifications([Options$Query$UserNotifications? options]) =>
        graphql_flutter.useQuery(options ?? Options$Query$UserNotifications());
graphql.ObservableQuery<Query$UserNotifications>
    useWatchQuery$UserNotifications(
            [WatchOptions$Query$UserNotifications? options]) =>
        graphql_flutter
            .useWatchQuery(options ?? WatchOptions$Query$UserNotifications());

class Query$UserNotifications$Widget
    extends graphql_flutter.Query<Query$UserNotifications> {
  Query$UserNotifications$Widget({
    widgets.Key? key,
    Options$Query$UserNotifications? options,
    required graphql_flutter.QueryBuilder<Query$UserNotifications> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$UserNotifications(),
          builder: builder,
        );
}

class Query$UserNotifications$Page {
  Query$UserNotifications$Page({
    this.pageInfo,
    this.notifications,
    this.$__typename = 'Page',
  });

  factory Query$UserNotifications$Page.fromJson(Map<String, dynamic> json) {
    final l$pageInfo = json['pageInfo'];
    final l$notifications = json['notifications'];
    final l$$__typename = json['__typename'];
    return Query$UserNotifications$Page(
      pageInfo: l$pageInfo == null
          ? null
          : Query$UserNotifications$Page$pageInfo.fromJson(
              (l$pageInfo as Map<String, dynamic>)),
      notifications: (l$notifications as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$UserNotifications$Page$notifications.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$UserNotifications$Page$pageInfo? pageInfo;

  final List<Query$UserNotifications$Page$notifications?>? notifications;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$pageInfo = pageInfo;
    _resultData['pageInfo'] = l$pageInfo?.toJson();
    final l$notifications = notifications;
    _resultData['notifications'] =
        l$notifications?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$pageInfo = pageInfo;
    final l$notifications = notifications;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$pageInfo,
      l$notifications == null
          ? null
          : Object.hashAll(l$notifications.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$UserNotifications$Page ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$pageInfo = pageInfo;
    final lOther$pageInfo = other.pageInfo;
    if (l$pageInfo != lOther$pageInfo) {
      return false;
    }
    final l$notifications = notifications;
    final lOther$notifications = other.notifications;
    if (l$notifications != null && lOther$notifications != null) {
      if (l$notifications.length != lOther$notifications.length) {
        return false;
      }
      for (int i = 0; i < l$notifications.length; i++) {
        final l$notifications$entry = l$notifications[i];
        final lOther$notifications$entry = lOther$notifications[i];
        if (l$notifications$entry != lOther$notifications$entry) {
          return false;
        }
      }
    } else if (l$notifications != lOther$notifications) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$UserNotifications$Page
    on Query$UserNotifications$Page {
  CopyWith$Query$UserNotifications$Page<Query$UserNotifications$Page>
      get copyWith => CopyWith$Query$UserNotifications$Page(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$UserNotifications$Page<TRes> {
  factory CopyWith$Query$UserNotifications$Page(
    Query$UserNotifications$Page instance,
    TRes Function(Query$UserNotifications$Page) then,
  ) = _CopyWithImpl$Query$UserNotifications$Page;

  factory CopyWith$Query$UserNotifications$Page.stub(TRes res) =
      _CopyWithStubImpl$Query$UserNotifications$Page;

  TRes call({
    Query$UserNotifications$Page$pageInfo? pageInfo,
    List<Query$UserNotifications$Page$notifications?>? notifications,
    String? $__typename,
  });
  CopyWith$Query$UserNotifications$Page$pageInfo<TRes> get pageInfo;
  TRes notifications(
      Iterable<Query$UserNotifications$Page$notifications?>? Function(
              Iterable<
                  CopyWith$Query$UserNotifications$Page$notifications<
                      Query$UserNotifications$Page$notifications>?>?)
          _fn);
}

class _CopyWithImpl$Query$UserNotifications$Page<TRes>
    implements CopyWith$Query$UserNotifications$Page<TRes> {
  _CopyWithImpl$Query$UserNotifications$Page(
    this._instance,
    this._then,
  );

  final Query$UserNotifications$Page _instance;

  final TRes Function(Query$UserNotifications$Page) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pageInfo = _undefined,
    Object? notifications = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$UserNotifications$Page(
        pageInfo: pageInfo == _undefined
            ? _instance.pageInfo
            : (pageInfo as Query$UserNotifications$Page$pageInfo?),
        notifications: notifications == _undefined
            ? _instance.notifications
            : (notifications
                as List<Query$UserNotifications$Page$notifications?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$UserNotifications$Page$pageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return local$pageInfo == null
        ? CopyWith$Query$UserNotifications$Page$pageInfo.stub(_then(_instance))
        : CopyWith$Query$UserNotifications$Page$pageInfo(
            local$pageInfo, (e) => call(pageInfo: e));
  }

  TRes notifications(
          Iterable<Query$UserNotifications$Page$notifications?>? Function(
                  Iterable<
                      CopyWith$Query$UserNotifications$Page$notifications<
                          Query$UserNotifications$Page$notifications>?>?)
              _fn) =>
      call(
          notifications: _fn(_instance.notifications?.map((e) => e == null
              ? null
              : CopyWith$Query$UserNotifications$Page$notifications(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$UserNotifications$Page<TRes>
    implements CopyWith$Query$UserNotifications$Page<TRes> {
  _CopyWithStubImpl$Query$UserNotifications$Page(this._res);

  TRes _res;

  call({
    Query$UserNotifications$Page$pageInfo? pageInfo,
    List<Query$UserNotifications$Page$notifications?>? notifications,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$UserNotifications$Page$pageInfo<TRes> get pageInfo =>
      CopyWith$Query$UserNotifications$Page$pageInfo.stub(_res);

  notifications(_fn) => _res;
}

class Query$UserNotifications$Page$pageInfo {
  Query$UserNotifications$Page$pageInfo({
    this.hasNextPage,
    this.$__typename = 'PageInfo',
  });

  factory Query$UserNotifications$Page$pageInfo.fromJson(
      Map<String, dynamic> json) {
    final l$hasNextPage = json['hasNextPage'];
    final l$$__typename = json['__typename'];
    return Query$UserNotifications$Page$pageInfo(
      hasNextPage: (l$hasNextPage as bool?),
      $__typename: (l$$__typename as String),
    );
  }

  final bool? hasNextPage;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$hasNextPage = hasNextPage;
    _resultData['hasNextPage'] = l$hasNextPage;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$hasNextPage = hasNextPage;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$hasNextPage,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$UserNotifications$Page$pageInfo ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$hasNextPage = hasNextPage;
    final lOther$hasNextPage = other.hasNextPage;
    if (l$hasNextPage != lOther$hasNextPage) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$UserNotifications$Page$pageInfo
    on Query$UserNotifications$Page$pageInfo {
  CopyWith$Query$UserNotifications$Page$pageInfo<
          Query$UserNotifications$Page$pageInfo>
      get copyWith => CopyWith$Query$UserNotifications$Page$pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$UserNotifications$Page$pageInfo<TRes> {
  factory CopyWith$Query$UserNotifications$Page$pageInfo(
    Query$UserNotifications$Page$pageInfo instance,
    TRes Function(Query$UserNotifications$Page$pageInfo) then,
  ) = _CopyWithImpl$Query$UserNotifications$Page$pageInfo;

  factory CopyWith$Query$UserNotifications$Page$pageInfo.stub(TRes res) =
      _CopyWithStubImpl$Query$UserNotifications$Page$pageInfo;

  TRes call({
    bool? hasNextPage,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$UserNotifications$Page$pageInfo<TRes>
    implements CopyWith$Query$UserNotifications$Page$pageInfo<TRes> {
  _CopyWithImpl$Query$UserNotifications$Page$pageInfo(
    this._instance,
    this._then,
  );

  final Query$UserNotifications$Page$pageInfo _instance;

  final TRes Function(Query$UserNotifications$Page$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasNextPage = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$UserNotifications$Page$pageInfo(
        hasNextPage: hasNextPage == _undefined
            ? _instance.hasNextPage
            : (hasNextPage as bool?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$UserNotifications$Page$pageInfo<TRes>
    implements CopyWith$Query$UserNotifications$Page$pageInfo<TRes> {
  _CopyWithStubImpl$Query$UserNotifications$Page$pageInfo(this._res);

  TRes _res;

  call({
    bool? hasNextPage,
    String? $__typename,
  }) =>
      _res;
}

class Query$UserNotifications$Page$notifications {
  Query$UserNotifications$Page$notifications({required this.$__typename});

  factory Query$UserNotifications$Page$notifications.fromJson(
      Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "ActivityLikeNotification":
        return Query$UserNotifications$Page$notifications$$ActivityLikeNotification
            .fromJson(json);

      case "ActivityMentionNotification":
        return Query$UserNotifications$Page$notifications$$ActivityMentionNotification
            .fromJson(json);

      case "ActivityMessageNotification":
        return Query$UserNotifications$Page$notifications$$ActivityMessageNotification
            .fromJson(json);

      case "ActivityReplyLikeNotification":
        return Query$UserNotifications$Page$notifications$$ActivityReplyLikeNotification
            .fromJson(json);

      case "ActivityReplyNotification":
        return Query$UserNotifications$Page$notifications$$ActivityReplyNotification
            .fromJson(json);

      case "ActivityReplySubscribedNotification":
        return Query$UserNotifications$Page$notifications$$ActivityReplySubscribedNotification
            .fromJson(json);

      case "AiringNotification":
        return Query$UserNotifications$Page$notifications$$AiringNotification
            .fromJson(json);

      case "FollowingNotification":
        return Query$UserNotifications$Page$notifications$$FollowingNotification
            .fromJson(json);

      case "MediaDataChangeNotification":
        return Query$UserNotifications$Page$notifications$$MediaDataChangeNotification
            .fromJson(json);

      case "MediaDeletionNotification":
        return Query$UserNotifications$Page$notifications$$MediaDeletionNotification
            .fromJson(json);

      case "MediaMergeNotification":
        return Query$UserNotifications$Page$notifications$$MediaMergeNotification
            .fromJson(json);

      case "RelatedMediaAdditionNotification":
        return Query$UserNotifications$Page$notifications$$RelatedMediaAdditionNotification
            .fromJson(json);

      case "ThreadCommentLikeNotification":
        return Query$UserNotifications$Page$notifications$$ThreadCommentLikeNotification
            .fromJson(json);

      case "ThreadCommentMentionNotification":
        return Query$UserNotifications$Page$notifications$$ThreadCommentMentionNotification
            .fromJson(json);

      case "ThreadCommentReplyNotification":
        return Query$UserNotifications$Page$notifications$$ThreadCommentReplyNotification
            .fromJson(json);

      case "ThreadCommentSubscribedNotification":
        return Query$UserNotifications$Page$notifications$$ThreadCommentSubscribedNotification
            .fromJson(json);

      case "ThreadLikeNotification":
        return Query$UserNotifications$Page$notifications$$ThreadLikeNotification
            .fromJson(json);

      default:
        final l$$__typename = json['__typename'];
        return Query$UserNotifications$Page$notifications(
            $__typename: (l$$__typename as String));
    }
  }

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    return Object.hashAll([l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$UserNotifications$Page$notifications ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$UserNotifications$Page$notifications
    on Query$UserNotifications$Page$notifications {
  CopyWith$Query$UserNotifications$Page$notifications<
          Query$UserNotifications$Page$notifications>
      get copyWith => CopyWith$Query$UserNotifications$Page$notifications(
            this,
            (i) => i,
          );
  _T when<_T>({
    required _T Function(
            Query$UserNotifications$Page$notifications$$ActivityLikeNotification)
        activityLikeNotification,
    required _T Function(
            Query$UserNotifications$Page$notifications$$ActivityMentionNotification)
        activityMentionNotification,
    required _T Function(
            Query$UserNotifications$Page$notifications$$ActivityMessageNotification)
        activityMessageNotification,
    required _T Function(
            Query$UserNotifications$Page$notifications$$ActivityReplyLikeNotification)
        activityReplyLikeNotification,
    required _T Function(
            Query$UserNotifications$Page$notifications$$ActivityReplyNotification)
        activityReplyNotification,
    required _T Function(
            Query$UserNotifications$Page$notifications$$ActivityReplySubscribedNotification)
        activityReplySubscribedNotification,
    required _T Function(
            Query$UserNotifications$Page$notifications$$AiringNotification)
        airingNotification,
    required _T Function(
            Query$UserNotifications$Page$notifications$$FollowingNotification)
        followingNotification,
    required _T Function(
            Query$UserNotifications$Page$notifications$$MediaDataChangeNotification)
        mediaDataChangeNotification,
    required _T Function(
            Query$UserNotifications$Page$notifications$$MediaDeletionNotification)
        mediaDeletionNotification,
    required _T Function(
            Query$UserNotifications$Page$notifications$$MediaMergeNotification)
        mediaMergeNotification,
    required _T Function(
            Query$UserNotifications$Page$notifications$$RelatedMediaAdditionNotification)
        relatedMediaAdditionNotification,
    required _T Function(
            Query$UserNotifications$Page$notifications$$ThreadCommentLikeNotification)
        threadCommentLikeNotification,
    required _T Function(
            Query$UserNotifications$Page$notifications$$ThreadCommentMentionNotification)
        threadCommentMentionNotification,
    required _T Function(
            Query$UserNotifications$Page$notifications$$ThreadCommentReplyNotification)
        threadCommentReplyNotification,
    required _T Function(
            Query$UserNotifications$Page$notifications$$ThreadCommentSubscribedNotification)
        threadCommentSubscribedNotification,
    required _T Function(
            Query$UserNotifications$Page$notifications$$ThreadLikeNotification)
        threadLikeNotification,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "ActivityLikeNotification":
        return activityLikeNotification(this
            as Query$UserNotifications$Page$notifications$$ActivityLikeNotification);

      case "ActivityMentionNotification":
        return activityMentionNotification(this
            as Query$UserNotifications$Page$notifications$$ActivityMentionNotification);

      case "ActivityMessageNotification":
        return activityMessageNotification(this
            as Query$UserNotifications$Page$notifications$$ActivityMessageNotification);

      case "ActivityReplyLikeNotification":
        return activityReplyLikeNotification(this
            as Query$UserNotifications$Page$notifications$$ActivityReplyLikeNotification);

      case "ActivityReplyNotification":
        return activityReplyNotification(this
            as Query$UserNotifications$Page$notifications$$ActivityReplyNotification);

      case "ActivityReplySubscribedNotification":
        return activityReplySubscribedNotification(this
            as Query$UserNotifications$Page$notifications$$ActivityReplySubscribedNotification);

      case "AiringNotification":
        return airingNotification(this
            as Query$UserNotifications$Page$notifications$$AiringNotification);

      case "FollowingNotification":
        return followingNotification(this
            as Query$UserNotifications$Page$notifications$$FollowingNotification);

      case "MediaDataChangeNotification":
        return mediaDataChangeNotification(this
            as Query$UserNotifications$Page$notifications$$MediaDataChangeNotification);

      case "MediaDeletionNotification":
        return mediaDeletionNotification(this
            as Query$UserNotifications$Page$notifications$$MediaDeletionNotification);

      case "MediaMergeNotification":
        return mediaMergeNotification(this
            as Query$UserNotifications$Page$notifications$$MediaMergeNotification);

      case "RelatedMediaAdditionNotification":
        return relatedMediaAdditionNotification(this
            as Query$UserNotifications$Page$notifications$$RelatedMediaAdditionNotification);

      case "ThreadCommentLikeNotification":
        return threadCommentLikeNotification(this
            as Query$UserNotifications$Page$notifications$$ThreadCommentLikeNotification);

      case "ThreadCommentMentionNotification":
        return threadCommentMentionNotification(this
            as Query$UserNotifications$Page$notifications$$ThreadCommentMentionNotification);

      case "ThreadCommentReplyNotification":
        return threadCommentReplyNotification(this
            as Query$UserNotifications$Page$notifications$$ThreadCommentReplyNotification);

      case "ThreadCommentSubscribedNotification":
        return threadCommentSubscribedNotification(this
            as Query$UserNotifications$Page$notifications$$ThreadCommentSubscribedNotification);

      case "ThreadLikeNotification":
        return threadLikeNotification(this
            as Query$UserNotifications$Page$notifications$$ThreadLikeNotification);

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(
            Query$UserNotifications$Page$notifications$$ActivityLikeNotification)?
        activityLikeNotification,
    _T Function(
            Query$UserNotifications$Page$notifications$$ActivityMentionNotification)?
        activityMentionNotification,
    _T Function(
            Query$UserNotifications$Page$notifications$$ActivityMessageNotification)?
        activityMessageNotification,
    _T Function(
            Query$UserNotifications$Page$notifications$$ActivityReplyLikeNotification)?
        activityReplyLikeNotification,
    _T Function(
            Query$UserNotifications$Page$notifications$$ActivityReplyNotification)?
        activityReplyNotification,
    _T Function(
            Query$UserNotifications$Page$notifications$$ActivityReplySubscribedNotification)?
        activityReplySubscribedNotification,
    _T Function(Query$UserNotifications$Page$notifications$$AiringNotification)?
        airingNotification,
    _T Function(
            Query$UserNotifications$Page$notifications$$FollowingNotification)?
        followingNotification,
    _T Function(
            Query$UserNotifications$Page$notifications$$MediaDataChangeNotification)?
        mediaDataChangeNotification,
    _T Function(
            Query$UserNotifications$Page$notifications$$MediaDeletionNotification)?
        mediaDeletionNotification,
    _T Function(
            Query$UserNotifications$Page$notifications$$MediaMergeNotification)?
        mediaMergeNotification,
    _T Function(
            Query$UserNotifications$Page$notifications$$RelatedMediaAdditionNotification)?
        relatedMediaAdditionNotification,
    _T Function(
            Query$UserNotifications$Page$notifications$$ThreadCommentLikeNotification)?
        threadCommentLikeNotification,
    _T Function(
            Query$UserNotifications$Page$notifications$$ThreadCommentMentionNotification)?
        threadCommentMentionNotification,
    _T Function(
            Query$UserNotifications$Page$notifications$$ThreadCommentReplyNotification)?
        threadCommentReplyNotification,
    _T Function(
            Query$UserNotifications$Page$notifications$$ThreadCommentSubscribedNotification)?
        threadCommentSubscribedNotification,
    _T Function(
            Query$UserNotifications$Page$notifications$$ThreadLikeNotification)?
        threadLikeNotification,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "ActivityLikeNotification":
        if (activityLikeNotification != null) {
          return activityLikeNotification(this
              as Query$UserNotifications$Page$notifications$$ActivityLikeNotification);
        } else {
          return orElse();
        }

      case "ActivityMentionNotification":
        if (activityMentionNotification != null) {
          return activityMentionNotification(this
              as Query$UserNotifications$Page$notifications$$ActivityMentionNotification);
        } else {
          return orElse();
        }

      case "ActivityMessageNotification":
        if (activityMessageNotification != null) {
          return activityMessageNotification(this
              as Query$UserNotifications$Page$notifications$$ActivityMessageNotification);
        } else {
          return orElse();
        }

      case "ActivityReplyLikeNotification":
        if (activityReplyLikeNotification != null) {
          return activityReplyLikeNotification(this
              as Query$UserNotifications$Page$notifications$$ActivityReplyLikeNotification);
        } else {
          return orElse();
        }

      case "ActivityReplyNotification":
        if (activityReplyNotification != null) {
          return activityReplyNotification(this
              as Query$UserNotifications$Page$notifications$$ActivityReplyNotification);
        } else {
          return orElse();
        }

      case "ActivityReplySubscribedNotification":
        if (activityReplySubscribedNotification != null) {
          return activityReplySubscribedNotification(this
              as Query$UserNotifications$Page$notifications$$ActivityReplySubscribedNotification);
        } else {
          return orElse();
        }

      case "AiringNotification":
        if (airingNotification != null) {
          return airingNotification(this
              as Query$UserNotifications$Page$notifications$$AiringNotification);
        } else {
          return orElse();
        }

      case "FollowingNotification":
        if (followingNotification != null) {
          return followingNotification(this
              as Query$UserNotifications$Page$notifications$$FollowingNotification);
        } else {
          return orElse();
        }

      case "MediaDataChangeNotification":
        if (mediaDataChangeNotification != null) {
          return mediaDataChangeNotification(this
              as Query$UserNotifications$Page$notifications$$MediaDataChangeNotification);
        } else {
          return orElse();
        }

      case "MediaDeletionNotification":
        if (mediaDeletionNotification != null) {
          return mediaDeletionNotification(this
              as Query$UserNotifications$Page$notifications$$MediaDeletionNotification);
        } else {
          return orElse();
        }

      case "MediaMergeNotification":
        if (mediaMergeNotification != null) {
          return mediaMergeNotification(this
              as Query$UserNotifications$Page$notifications$$MediaMergeNotification);
        } else {
          return orElse();
        }

      case "RelatedMediaAdditionNotification":
        if (relatedMediaAdditionNotification != null) {
          return relatedMediaAdditionNotification(this
              as Query$UserNotifications$Page$notifications$$RelatedMediaAdditionNotification);
        } else {
          return orElse();
        }

      case "ThreadCommentLikeNotification":
        if (threadCommentLikeNotification != null) {
          return threadCommentLikeNotification(this
              as Query$UserNotifications$Page$notifications$$ThreadCommentLikeNotification);
        } else {
          return orElse();
        }

      case "ThreadCommentMentionNotification":
        if (threadCommentMentionNotification != null) {
          return threadCommentMentionNotification(this
              as Query$UserNotifications$Page$notifications$$ThreadCommentMentionNotification);
        } else {
          return orElse();
        }

      case "ThreadCommentReplyNotification":
        if (threadCommentReplyNotification != null) {
          return threadCommentReplyNotification(this
              as Query$UserNotifications$Page$notifications$$ThreadCommentReplyNotification);
        } else {
          return orElse();
        }

      case "ThreadCommentSubscribedNotification":
        if (threadCommentSubscribedNotification != null) {
          return threadCommentSubscribedNotification(this
              as Query$UserNotifications$Page$notifications$$ThreadCommentSubscribedNotification);
        } else {
          return orElse();
        }

      case "ThreadLikeNotification":
        if (threadLikeNotification != null) {
          return threadLikeNotification(this
              as Query$UserNotifications$Page$notifications$$ThreadLikeNotification);
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWith$Query$UserNotifications$Page$notifications<TRes> {
  factory CopyWith$Query$UserNotifications$Page$notifications(
    Query$UserNotifications$Page$notifications instance,
    TRes Function(Query$UserNotifications$Page$notifications) then,
  ) = _CopyWithImpl$Query$UserNotifications$Page$notifications;

  factory CopyWith$Query$UserNotifications$Page$notifications.stub(TRes res) =
      _CopyWithStubImpl$Query$UserNotifications$Page$notifications;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Query$UserNotifications$Page$notifications<TRes>
    implements CopyWith$Query$UserNotifications$Page$notifications<TRes> {
  _CopyWithImpl$Query$UserNotifications$Page$notifications(
    this._instance,
    this._then,
  );

  final Query$UserNotifications$Page$notifications _instance;

  final TRes Function(Query$UserNotifications$Page$notifications) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) =>
      _then(Query$UserNotifications$Page$notifications(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$UserNotifications$Page$notifications<TRes>
    implements CopyWith$Query$UserNotifications$Page$notifications<TRes> {
  _CopyWithStubImpl$Query$UserNotifications$Page$notifications(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Query$UserNotifications$Page$notifications$$ActivityLikeNotification
    implements
        Fragment$ActivityLikeNotification,
        Query$UserNotifications$Page$notifications {
  Query$UserNotifications$Page$notifications$$ActivityLikeNotification({
    required this.id,
    required this.activityId,
    this.user,
    this.context,
    this.createdAt,
    this.$__typename = 'ActivityLikeNotification',
  });

  factory Query$UserNotifications$Page$notifications$$ActivityLikeNotification.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$activityId = json['activityId'];
    final l$user = json['user'];
    final l$context = json['context'];
    final l$createdAt = json['createdAt'];
    final l$$__typename = json['__typename'];
    return Query$UserNotifications$Page$notifications$$ActivityLikeNotification(
      id: (l$id as int),
      activityId: (l$activityId as int),
      user: l$user == null
          ? null
          : Query$UserNotifications$Page$notifications$$ActivityLikeNotification$user
              .fromJson((l$user as Map<String, dynamic>)),
      context: (l$context as String?),
      createdAt: (l$createdAt as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final int activityId;

  final Query$UserNotifications$Page$notifications$$ActivityLikeNotification$user?
      user;

  final String? context;

  final int? createdAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$activityId = activityId;
    _resultData['activityId'] = l$activityId;
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$context = context;
    _resultData['context'] = l$context;
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$activityId = activityId;
    final l$user = user;
    final l$context = context;
    final l$createdAt = createdAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$activityId,
      l$user,
      l$context,
      l$createdAt,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$UserNotifications$Page$notifications$$ActivityLikeNotification ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$activityId = activityId;
    final lOther$activityId = other.activityId;
    if (l$activityId != lOther$activityId) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
      return false;
    }
    final l$context = context;
    final lOther$context = other.context;
    if (l$context != lOther$context) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$UserNotifications$Page$notifications$$ActivityLikeNotification
    on Query$UserNotifications$Page$notifications$$ActivityLikeNotification {
  CopyWith$Query$UserNotifications$Page$notifications$$ActivityLikeNotification<
          Query$UserNotifications$Page$notifications$$ActivityLikeNotification>
      get copyWith =>
          CopyWith$Query$UserNotifications$Page$notifications$$ActivityLikeNotification(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$UserNotifications$Page$notifications$$ActivityLikeNotification<
    TRes> {
  factory CopyWith$Query$UserNotifications$Page$notifications$$ActivityLikeNotification(
    Query$UserNotifications$Page$notifications$$ActivityLikeNotification
        instance,
    TRes Function(
            Query$UserNotifications$Page$notifications$$ActivityLikeNotification)
        then,
  ) = _CopyWithImpl$Query$UserNotifications$Page$notifications$$ActivityLikeNotification;

  factory CopyWith$Query$UserNotifications$Page$notifications$$ActivityLikeNotification.stub(
          TRes res) =
      _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$ActivityLikeNotification;

  TRes call({
    int? id,
    int? activityId,
    Query$UserNotifications$Page$notifications$$ActivityLikeNotification$user?
        user,
    String? context,
    int? createdAt,
    String? $__typename,
  });
  CopyWith$Query$UserNotifications$Page$notifications$$ActivityLikeNotification$user<
      TRes> get user;
}

class _CopyWithImpl$Query$UserNotifications$Page$notifications$$ActivityLikeNotification<
        TRes>
    implements
        CopyWith$Query$UserNotifications$Page$notifications$$ActivityLikeNotification<
            TRes> {
  _CopyWithImpl$Query$UserNotifications$Page$notifications$$ActivityLikeNotification(
    this._instance,
    this._then,
  );

  final Query$UserNotifications$Page$notifications$$ActivityLikeNotification
      _instance;

  final TRes Function(
          Query$UserNotifications$Page$notifications$$ActivityLikeNotification)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? activityId = _undefined,
    Object? user = _undefined,
    Object? context = _undefined,
    Object? createdAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$UserNotifications$Page$notifications$$ActivityLikeNotification(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        activityId: activityId == _undefined || activityId == null
            ? _instance.activityId
            : (activityId as int),
        user: user == _undefined
            ? _instance.user
            : (user
                as Query$UserNotifications$Page$notifications$$ActivityLikeNotification$user?),
        context:
            context == _undefined ? _instance.context : (context as String?),
        createdAt:
            createdAt == _undefined ? _instance.createdAt : (createdAt as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$UserNotifications$Page$notifications$$ActivityLikeNotification$user<
      TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith$Query$UserNotifications$Page$notifications$$ActivityLikeNotification$user
            .stub(_then(_instance))
        : CopyWith$Query$UserNotifications$Page$notifications$$ActivityLikeNotification$user(
            local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$ActivityLikeNotification<
        TRes>
    implements
        CopyWith$Query$UserNotifications$Page$notifications$$ActivityLikeNotification<
            TRes> {
  _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$ActivityLikeNotification(
      this._res);

  TRes _res;

  call({
    int? id,
    int? activityId,
    Query$UserNotifications$Page$notifications$$ActivityLikeNotification$user?
        user,
    String? context,
    int? createdAt,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$UserNotifications$Page$notifications$$ActivityLikeNotification$user<
          TRes>
      get user =>
          CopyWith$Query$UserNotifications$Page$notifications$$ActivityLikeNotification$user
              .stub(_res);
}

class Query$UserNotifications$Page$notifications$$ActivityLikeNotification$user
    implements Fragment$ActivityLikeNotification$user {
  Query$UserNotifications$Page$notifications$$ActivityLikeNotification$user({
    required this.id,
    required this.name,
    this.avatar,
    this.$__typename = 'User',
  });

  factory Query$UserNotifications$Page$notifications$$ActivityLikeNotification$user.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$avatar = json['avatar'];
    final l$$__typename = json['__typename'];
    return Query$UserNotifications$Page$notifications$$ActivityLikeNotification$user(
      id: (l$id as int),
      name: (l$name as String),
      avatar: l$avatar == null
          ? null
          : Query$UserNotifications$Page$notifications$$ActivityLikeNotification$user$avatar
              .fromJson((l$avatar as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String name;

  final Query$UserNotifications$Page$notifications$$ActivityLikeNotification$user$avatar?
      avatar;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$avatar = avatar;
    _resultData['avatar'] = l$avatar?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$avatar = avatar;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$avatar,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$UserNotifications$Page$notifications$$ActivityLikeNotification$user ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$avatar = avatar;
    final lOther$avatar = other.avatar;
    if (l$avatar != lOther$avatar) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$UserNotifications$Page$notifications$$ActivityLikeNotification$user
    on Query$UserNotifications$Page$notifications$$ActivityLikeNotification$user {
  CopyWith$Query$UserNotifications$Page$notifications$$ActivityLikeNotification$user<
          Query$UserNotifications$Page$notifications$$ActivityLikeNotification$user>
      get copyWith =>
          CopyWith$Query$UserNotifications$Page$notifications$$ActivityLikeNotification$user(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$UserNotifications$Page$notifications$$ActivityLikeNotification$user<
    TRes> {
  factory CopyWith$Query$UserNotifications$Page$notifications$$ActivityLikeNotification$user(
    Query$UserNotifications$Page$notifications$$ActivityLikeNotification$user
        instance,
    TRes Function(
            Query$UserNotifications$Page$notifications$$ActivityLikeNotification$user)
        then,
  ) = _CopyWithImpl$Query$UserNotifications$Page$notifications$$ActivityLikeNotification$user;

  factory CopyWith$Query$UserNotifications$Page$notifications$$ActivityLikeNotification$user.stub(
          TRes res) =
      _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$ActivityLikeNotification$user;

  TRes call({
    int? id,
    String? name,
    Query$UserNotifications$Page$notifications$$ActivityLikeNotification$user$avatar?
        avatar,
    String? $__typename,
  });
  CopyWith$Query$UserNotifications$Page$notifications$$ActivityLikeNotification$user$avatar<
      TRes> get avatar;
}

class _CopyWithImpl$Query$UserNotifications$Page$notifications$$ActivityLikeNotification$user<
        TRes>
    implements
        CopyWith$Query$UserNotifications$Page$notifications$$ActivityLikeNotification$user<
            TRes> {
  _CopyWithImpl$Query$UserNotifications$Page$notifications$$ActivityLikeNotification$user(
    this._instance,
    this._then,
  );

  final Query$UserNotifications$Page$notifications$$ActivityLikeNotification$user
      _instance;

  final TRes Function(
          Query$UserNotifications$Page$notifications$$ActivityLikeNotification$user)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? avatar = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$UserNotifications$Page$notifications$$ActivityLikeNotification$user(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        avatar: avatar == _undefined
            ? _instance.avatar
            : (avatar
                as Query$UserNotifications$Page$notifications$$ActivityLikeNotification$user$avatar?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$UserNotifications$Page$notifications$$ActivityLikeNotification$user$avatar<
      TRes> get avatar {
    final local$avatar = _instance.avatar;
    return local$avatar == null
        ? CopyWith$Query$UserNotifications$Page$notifications$$ActivityLikeNotification$user$avatar
            .stub(_then(_instance))
        : CopyWith$Query$UserNotifications$Page$notifications$$ActivityLikeNotification$user$avatar(
            local$avatar, (e) => call(avatar: e));
  }
}

class _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$ActivityLikeNotification$user<
        TRes>
    implements
        CopyWith$Query$UserNotifications$Page$notifications$$ActivityLikeNotification$user<
            TRes> {
  _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$ActivityLikeNotification$user(
      this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    Query$UserNotifications$Page$notifications$$ActivityLikeNotification$user$avatar?
        avatar,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$UserNotifications$Page$notifications$$ActivityLikeNotification$user$avatar<
          TRes>
      get avatar =>
          CopyWith$Query$UserNotifications$Page$notifications$$ActivityLikeNotification$user$avatar
              .stub(_res);
}

class Query$UserNotifications$Page$notifications$$ActivityLikeNotification$user$avatar
    implements Fragment$ActivityLikeNotification$user$avatar {
  Query$UserNotifications$Page$notifications$$ActivityLikeNotification$user$avatar({
    this.medium,
    this.$__typename = 'UserAvatar',
  });

  factory Query$UserNotifications$Page$notifications$$ActivityLikeNotification$user$avatar.fromJson(
      Map<String, dynamic> json) {
    final l$medium = json['medium'];
    final l$$__typename = json['__typename'];
    return Query$UserNotifications$Page$notifications$$ActivityLikeNotification$user$avatar(
      medium: (l$medium as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? medium;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$medium = medium;
    _resultData['medium'] = l$medium;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$medium = medium;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$medium,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$UserNotifications$Page$notifications$$ActivityLikeNotification$user$avatar ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$medium = medium;
    final lOther$medium = other.medium;
    if (l$medium != lOther$medium) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$UserNotifications$Page$notifications$$ActivityLikeNotification$user$avatar
    on Query$UserNotifications$Page$notifications$$ActivityLikeNotification$user$avatar {
  CopyWith$Query$UserNotifications$Page$notifications$$ActivityLikeNotification$user$avatar<
          Query$UserNotifications$Page$notifications$$ActivityLikeNotification$user$avatar>
      get copyWith =>
          CopyWith$Query$UserNotifications$Page$notifications$$ActivityLikeNotification$user$avatar(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$UserNotifications$Page$notifications$$ActivityLikeNotification$user$avatar<
    TRes> {
  factory CopyWith$Query$UserNotifications$Page$notifications$$ActivityLikeNotification$user$avatar(
    Query$UserNotifications$Page$notifications$$ActivityLikeNotification$user$avatar
        instance,
    TRes Function(
            Query$UserNotifications$Page$notifications$$ActivityLikeNotification$user$avatar)
        then,
  ) = _CopyWithImpl$Query$UserNotifications$Page$notifications$$ActivityLikeNotification$user$avatar;

  factory CopyWith$Query$UserNotifications$Page$notifications$$ActivityLikeNotification$user$avatar.stub(
          TRes res) =
      _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$ActivityLikeNotification$user$avatar;

  TRes call({
    String? medium,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$UserNotifications$Page$notifications$$ActivityLikeNotification$user$avatar<
        TRes>
    implements
        CopyWith$Query$UserNotifications$Page$notifications$$ActivityLikeNotification$user$avatar<
            TRes> {
  _CopyWithImpl$Query$UserNotifications$Page$notifications$$ActivityLikeNotification$user$avatar(
    this._instance,
    this._then,
  );

  final Query$UserNotifications$Page$notifications$$ActivityLikeNotification$user$avatar
      _instance;

  final TRes Function(
          Query$UserNotifications$Page$notifications$$ActivityLikeNotification$user$avatar)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? medium = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$UserNotifications$Page$notifications$$ActivityLikeNotification$user$avatar(
        medium: medium == _undefined ? _instance.medium : (medium as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$ActivityLikeNotification$user$avatar<
        TRes>
    implements
        CopyWith$Query$UserNotifications$Page$notifications$$ActivityLikeNotification$user$avatar<
            TRes> {
  _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$ActivityLikeNotification$user$avatar(
      this._res);

  TRes _res;

  call({
    String? medium,
    String? $__typename,
  }) =>
      _res;
}

class Query$UserNotifications$Page$notifications$$ActivityMentionNotification
    implements
        Fragment$ActivityMentionNotification,
        Query$UserNotifications$Page$notifications {
  Query$UserNotifications$Page$notifications$$ActivityMentionNotification({
    required this.id,
    required this.activityId,
    this.user,
    this.context,
    this.createdAt,
    this.$__typename = 'ActivityMentionNotification',
  });

  factory Query$UserNotifications$Page$notifications$$ActivityMentionNotification.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$activityId = json['activityId'];
    final l$user = json['user'];
    final l$context = json['context'];
    final l$createdAt = json['createdAt'];
    final l$$__typename = json['__typename'];
    return Query$UserNotifications$Page$notifications$$ActivityMentionNotification(
      id: (l$id as int),
      activityId: (l$activityId as int),
      user: l$user == null
          ? null
          : Query$UserNotifications$Page$notifications$$ActivityMentionNotification$user
              .fromJson((l$user as Map<String, dynamic>)),
      context: (l$context as String?),
      createdAt: (l$createdAt as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final int activityId;

  final Query$UserNotifications$Page$notifications$$ActivityMentionNotification$user?
      user;

  final String? context;

  final int? createdAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$activityId = activityId;
    _resultData['activityId'] = l$activityId;
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$context = context;
    _resultData['context'] = l$context;
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$activityId = activityId;
    final l$user = user;
    final l$context = context;
    final l$createdAt = createdAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$activityId,
      l$user,
      l$context,
      l$createdAt,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$UserNotifications$Page$notifications$$ActivityMentionNotification ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$activityId = activityId;
    final lOther$activityId = other.activityId;
    if (l$activityId != lOther$activityId) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
      return false;
    }
    final l$context = context;
    final lOther$context = other.context;
    if (l$context != lOther$context) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$UserNotifications$Page$notifications$$ActivityMentionNotification
    on Query$UserNotifications$Page$notifications$$ActivityMentionNotification {
  CopyWith$Query$UserNotifications$Page$notifications$$ActivityMentionNotification<
          Query$UserNotifications$Page$notifications$$ActivityMentionNotification>
      get copyWith =>
          CopyWith$Query$UserNotifications$Page$notifications$$ActivityMentionNotification(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$UserNotifications$Page$notifications$$ActivityMentionNotification<
    TRes> {
  factory CopyWith$Query$UserNotifications$Page$notifications$$ActivityMentionNotification(
    Query$UserNotifications$Page$notifications$$ActivityMentionNotification
        instance,
    TRes Function(
            Query$UserNotifications$Page$notifications$$ActivityMentionNotification)
        then,
  ) = _CopyWithImpl$Query$UserNotifications$Page$notifications$$ActivityMentionNotification;

  factory CopyWith$Query$UserNotifications$Page$notifications$$ActivityMentionNotification.stub(
          TRes res) =
      _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$ActivityMentionNotification;

  TRes call({
    int? id,
    int? activityId,
    Query$UserNotifications$Page$notifications$$ActivityMentionNotification$user?
        user,
    String? context,
    int? createdAt,
    String? $__typename,
  });
  CopyWith$Query$UserNotifications$Page$notifications$$ActivityMentionNotification$user<
      TRes> get user;
}

class _CopyWithImpl$Query$UserNotifications$Page$notifications$$ActivityMentionNotification<
        TRes>
    implements
        CopyWith$Query$UserNotifications$Page$notifications$$ActivityMentionNotification<
            TRes> {
  _CopyWithImpl$Query$UserNotifications$Page$notifications$$ActivityMentionNotification(
    this._instance,
    this._then,
  );

  final Query$UserNotifications$Page$notifications$$ActivityMentionNotification
      _instance;

  final TRes Function(
          Query$UserNotifications$Page$notifications$$ActivityMentionNotification)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? activityId = _undefined,
    Object? user = _undefined,
    Object? context = _undefined,
    Object? createdAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$UserNotifications$Page$notifications$$ActivityMentionNotification(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        activityId: activityId == _undefined || activityId == null
            ? _instance.activityId
            : (activityId as int),
        user: user == _undefined
            ? _instance.user
            : (user
                as Query$UserNotifications$Page$notifications$$ActivityMentionNotification$user?),
        context:
            context == _undefined ? _instance.context : (context as String?),
        createdAt:
            createdAt == _undefined ? _instance.createdAt : (createdAt as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$UserNotifications$Page$notifications$$ActivityMentionNotification$user<
      TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith$Query$UserNotifications$Page$notifications$$ActivityMentionNotification$user
            .stub(_then(_instance))
        : CopyWith$Query$UserNotifications$Page$notifications$$ActivityMentionNotification$user(
            local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$ActivityMentionNotification<
        TRes>
    implements
        CopyWith$Query$UserNotifications$Page$notifications$$ActivityMentionNotification<
            TRes> {
  _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$ActivityMentionNotification(
      this._res);

  TRes _res;

  call({
    int? id,
    int? activityId,
    Query$UserNotifications$Page$notifications$$ActivityMentionNotification$user?
        user,
    String? context,
    int? createdAt,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$UserNotifications$Page$notifications$$ActivityMentionNotification$user<
          TRes>
      get user =>
          CopyWith$Query$UserNotifications$Page$notifications$$ActivityMentionNotification$user
              .stub(_res);
}

class Query$UserNotifications$Page$notifications$$ActivityMentionNotification$user
    implements Fragment$ActivityMentionNotification$user {
  Query$UserNotifications$Page$notifications$$ActivityMentionNotification$user({
    required this.id,
    required this.name,
    this.avatar,
    this.$__typename = 'User',
  });

  factory Query$UserNotifications$Page$notifications$$ActivityMentionNotification$user.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$avatar = json['avatar'];
    final l$$__typename = json['__typename'];
    return Query$UserNotifications$Page$notifications$$ActivityMentionNotification$user(
      id: (l$id as int),
      name: (l$name as String),
      avatar: l$avatar == null
          ? null
          : Query$UserNotifications$Page$notifications$$ActivityMentionNotification$user$avatar
              .fromJson((l$avatar as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String name;

  final Query$UserNotifications$Page$notifications$$ActivityMentionNotification$user$avatar?
      avatar;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$avatar = avatar;
    _resultData['avatar'] = l$avatar?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$avatar = avatar;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$avatar,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$UserNotifications$Page$notifications$$ActivityMentionNotification$user ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$avatar = avatar;
    final lOther$avatar = other.avatar;
    if (l$avatar != lOther$avatar) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$UserNotifications$Page$notifications$$ActivityMentionNotification$user
    on Query$UserNotifications$Page$notifications$$ActivityMentionNotification$user {
  CopyWith$Query$UserNotifications$Page$notifications$$ActivityMentionNotification$user<
          Query$UserNotifications$Page$notifications$$ActivityMentionNotification$user>
      get copyWith =>
          CopyWith$Query$UserNotifications$Page$notifications$$ActivityMentionNotification$user(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$UserNotifications$Page$notifications$$ActivityMentionNotification$user<
    TRes> {
  factory CopyWith$Query$UserNotifications$Page$notifications$$ActivityMentionNotification$user(
    Query$UserNotifications$Page$notifications$$ActivityMentionNotification$user
        instance,
    TRes Function(
            Query$UserNotifications$Page$notifications$$ActivityMentionNotification$user)
        then,
  ) = _CopyWithImpl$Query$UserNotifications$Page$notifications$$ActivityMentionNotification$user;

  factory CopyWith$Query$UserNotifications$Page$notifications$$ActivityMentionNotification$user.stub(
          TRes res) =
      _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$ActivityMentionNotification$user;

  TRes call({
    int? id,
    String? name,
    Query$UserNotifications$Page$notifications$$ActivityMentionNotification$user$avatar?
        avatar,
    String? $__typename,
  });
  CopyWith$Query$UserNotifications$Page$notifications$$ActivityMentionNotification$user$avatar<
      TRes> get avatar;
}

class _CopyWithImpl$Query$UserNotifications$Page$notifications$$ActivityMentionNotification$user<
        TRes>
    implements
        CopyWith$Query$UserNotifications$Page$notifications$$ActivityMentionNotification$user<
            TRes> {
  _CopyWithImpl$Query$UserNotifications$Page$notifications$$ActivityMentionNotification$user(
    this._instance,
    this._then,
  );

  final Query$UserNotifications$Page$notifications$$ActivityMentionNotification$user
      _instance;

  final TRes Function(
          Query$UserNotifications$Page$notifications$$ActivityMentionNotification$user)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? avatar = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$UserNotifications$Page$notifications$$ActivityMentionNotification$user(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        avatar: avatar == _undefined
            ? _instance.avatar
            : (avatar
                as Query$UserNotifications$Page$notifications$$ActivityMentionNotification$user$avatar?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$UserNotifications$Page$notifications$$ActivityMentionNotification$user$avatar<
      TRes> get avatar {
    final local$avatar = _instance.avatar;
    return local$avatar == null
        ? CopyWith$Query$UserNotifications$Page$notifications$$ActivityMentionNotification$user$avatar
            .stub(_then(_instance))
        : CopyWith$Query$UserNotifications$Page$notifications$$ActivityMentionNotification$user$avatar(
            local$avatar, (e) => call(avatar: e));
  }
}

class _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$ActivityMentionNotification$user<
        TRes>
    implements
        CopyWith$Query$UserNotifications$Page$notifications$$ActivityMentionNotification$user<
            TRes> {
  _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$ActivityMentionNotification$user(
      this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    Query$UserNotifications$Page$notifications$$ActivityMentionNotification$user$avatar?
        avatar,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$UserNotifications$Page$notifications$$ActivityMentionNotification$user$avatar<
          TRes>
      get avatar =>
          CopyWith$Query$UserNotifications$Page$notifications$$ActivityMentionNotification$user$avatar
              .stub(_res);
}

class Query$UserNotifications$Page$notifications$$ActivityMentionNotification$user$avatar
    implements Fragment$ActivityMentionNotification$user$avatar {
  Query$UserNotifications$Page$notifications$$ActivityMentionNotification$user$avatar({
    this.medium,
    this.$__typename = 'UserAvatar',
  });

  factory Query$UserNotifications$Page$notifications$$ActivityMentionNotification$user$avatar.fromJson(
      Map<String, dynamic> json) {
    final l$medium = json['medium'];
    final l$$__typename = json['__typename'];
    return Query$UserNotifications$Page$notifications$$ActivityMentionNotification$user$avatar(
      medium: (l$medium as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? medium;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$medium = medium;
    _resultData['medium'] = l$medium;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$medium = medium;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$medium,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$UserNotifications$Page$notifications$$ActivityMentionNotification$user$avatar ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$medium = medium;
    final lOther$medium = other.medium;
    if (l$medium != lOther$medium) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$UserNotifications$Page$notifications$$ActivityMentionNotification$user$avatar
    on Query$UserNotifications$Page$notifications$$ActivityMentionNotification$user$avatar {
  CopyWith$Query$UserNotifications$Page$notifications$$ActivityMentionNotification$user$avatar<
          Query$UserNotifications$Page$notifications$$ActivityMentionNotification$user$avatar>
      get copyWith =>
          CopyWith$Query$UserNotifications$Page$notifications$$ActivityMentionNotification$user$avatar(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$UserNotifications$Page$notifications$$ActivityMentionNotification$user$avatar<
    TRes> {
  factory CopyWith$Query$UserNotifications$Page$notifications$$ActivityMentionNotification$user$avatar(
    Query$UserNotifications$Page$notifications$$ActivityMentionNotification$user$avatar
        instance,
    TRes Function(
            Query$UserNotifications$Page$notifications$$ActivityMentionNotification$user$avatar)
        then,
  ) = _CopyWithImpl$Query$UserNotifications$Page$notifications$$ActivityMentionNotification$user$avatar;

  factory CopyWith$Query$UserNotifications$Page$notifications$$ActivityMentionNotification$user$avatar.stub(
          TRes res) =
      _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$ActivityMentionNotification$user$avatar;

  TRes call({
    String? medium,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$UserNotifications$Page$notifications$$ActivityMentionNotification$user$avatar<
        TRes>
    implements
        CopyWith$Query$UserNotifications$Page$notifications$$ActivityMentionNotification$user$avatar<
            TRes> {
  _CopyWithImpl$Query$UserNotifications$Page$notifications$$ActivityMentionNotification$user$avatar(
    this._instance,
    this._then,
  );

  final Query$UserNotifications$Page$notifications$$ActivityMentionNotification$user$avatar
      _instance;

  final TRes Function(
          Query$UserNotifications$Page$notifications$$ActivityMentionNotification$user$avatar)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? medium = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$UserNotifications$Page$notifications$$ActivityMentionNotification$user$avatar(
        medium: medium == _undefined ? _instance.medium : (medium as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$ActivityMentionNotification$user$avatar<
        TRes>
    implements
        CopyWith$Query$UserNotifications$Page$notifications$$ActivityMentionNotification$user$avatar<
            TRes> {
  _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$ActivityMentionNotification$user$avatar(
      this._res);

  TRes _res;

  call({
    String? medium,
    String? $__typename,
  }) =>
      _res;
}

class Query$UserNotifications$Page$notifications$$ActivityMessageNotification
    implements
        Fragment$ActivityMessageNotification,
        Query$UserNotifications$Page$notifications {
  Query$UserNotifications$Page$notifications$$ActivityMessageNotification({
    required this.id,
    required this.activityId,
    this.user,
    this.context,
    this.createdAt,
    this.$__typename = 'ActivityMessageNotification',
  });

  factory Query$UserNotifications$Page$notifications$$ActivityMessageNotification.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$activityId = json['activityId'];
    final l$user = json['user'];
    final l$context = json['context'];
    final l$createdAt = json['createdAt'];
    final l$$__typename = json['__typename'];
    return Query$UserNotifications$Page$notifications$$ActivityMessageNotification(
      id: (l$id as int),
      activityId: (l$activityId as int),
      user: l$user == null
          ? null
          : Query$UserNotifications$Page$notifications$$ActivityMessageNotification$user
              .fromJson((l$user as Map<String, dynamic>)),
      context: (l$context as String?),
      createdAt: (l$createdAt as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final int activityId;

  final Query$UserNotifications$Page$notifications$$ActivityMessageNotification$user?
      user;

  final String? context;

  final int? createdAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$activityId = activityId;
    _resultData['activityId'] = l$activityId;
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$context = context;
    _resultData['context'] = l$context;
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$activityId = activityId;
    final l$user = user;
    final l$context = context;
    final l$createdAt = createdAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$activityId,
      l$user,
      l$context,
      l$createdAt,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$UserNotifications$Page$notifications$$ActivityMessageNotification ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$activityId = activityId;
    final lOther$activityId = other.activityId;
    if (l$activityId != lOther$activityId) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
      return false;
    }
    final l$context = context;
    final lOther$context = other.context;
    if (l$context != lOther$context) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$UserNotifications$Page$notifications$$ActivityMessageNotification
    on Query$UserNotifications$Page$notifications$$ActivityMessageNotification {
  CopyWith$Query$UserNotifications$Page$notifications$$ActivityMessageNotification<
          Query$UserNotifications$Page$notifications$$ActivityMessageNotification>
      get copyWith =>
          CopyWith$Query$UserNotifications$Page$notifications$$ActivityMessageNotification(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$UserNotifications$Page$notifications$$ActivityMessageNotification<
    TRes> {
  factory CopyWith$Query$UserNotifications$Page$notifications$$ActivityMessageNotification(
    Query$UserNotifications$Page$notifications$$ActivityMessageNotification
        instance,
    TRes Function(
            Query$UserNotifications$Page$notifications$$ActivityMessageNotification)
        then,
  ) = _CopyWithImpl$Query$UserNotifications$Page$notifications$$ActivityMessageNotification;

  factory CopyWith$Query$UserNotifications$Page$notifications$$ActivityMessageNotification.stub(
          TRes res) =
      _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$ActivityMessageNotification;

  TRes call({
    int? id,
    int? activityId,
    Query$UserNotifications$Page$notifications$$ActivityMessageNotification$user?
        user,
    String? context,
    int? createdAt,
    String? $__typename,
  });
  CopyWith$Query$UserNotifications$Page$notifications$$ActivityMessageNotification$user<
      TRes> get user;
}

class _CopyWithImpl$Query$UserNotifications$Page$notifications$$ActivityMessageNotification<
        TRes>
    implements
        CopyWith$Query$UserNotifications$Page$notifications$$ActivityMessageNotification<
            TRes> {
  _CopyWithImpl$Query$UserNotifications$Page$notifications$$ActivityMessageNotification(
    this._instance,
    this._then,
  );

  final Query$UserNotifications$Page$notifications$$ActivityMessageNotification
      _instance;

  final TRes Function(
          Query$UserNotifications$Page$notifications$$ActivityMessageNotification)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? activityId = _undefined,
    Object? user = _undefined,
    Object? context = _undefined,
    Object? createdAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$UserNotifications$Page$notifications$$ActivityMessageNotification(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        activityId: activityId == _undefined || activityId == null
            ? _instance.activityId
            : (activityId as int),
        user: user == _undefined
            ? _instance.user
            : (user
                as Query$UserNotifications$Page$notifications$$ActivityMessageNotification$user?),
        context:
            context == _undefined ? _instance.context : (context as String?),
        createdAt:
            createdAt == _undefined ? _instance.createdAt : (createdAt as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$UserNotifications$Page$notifications$$ActivityMessageNotification$user<
      TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith$Query$UserNotifications$Page$notifications$$ActivityMessageNotification$user
            .stub(_then(_instance))
        : CopyWith$Query$UserNotifications$Page$notifications$$ActivityMessageNotification$user(
            local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$ActivityMessageNotification<
        TRes>
    implements
        CopyWith$Query$UserNotifications$Page$notifications$$ActivityMessageNotification<
            TRes> {
  _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$ActivityMessageNotification(
      this._res);

  TRes _res;

  call({
    int? id,
    int? activityId,
    Query$UserNotifications$Page$notifications$$ActivityMessageNotification$user?
        user,
    String? context,
    int? createdAt,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$UserNotifications$Page$notifications$$ActivityMessageNotification$user<
          TRes>
      get user =>
          CopyWith$Query$UserNotifications$Page$notifications$$ActivityMessageNotification$user
              .stub(_res);
}

class Query$UserNotifications$Page$notifications$$ActivityMessageNotification$user
    implements Fragment$ActivityMessageNotification$user {
  Query$UserNotifications$Page$notifications$$ActivityMessageNotification$user({
    required this.id,
    required this.name,
    this.avatar,
    this.$__typename = 'User',
  });

  factory Query$UserNotifications$Page$notifications$$ActivityMessageNotification$user.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$avatar = json['avatar'];
    final l$$__typename = json['__typename'];
    return Query$UserNotifications$Page$notifications$$ActivityMessageNotification$user(
      id: (l$id as int),
      name: (l$name as String),
      avatar: l$avatar == null
          ? null
          : Query$UserNotifications$Page$notifications$$ActivityMessageNotification$user$avatar
              .fromJson((l$avatar as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String name;

  final Query$UserNotifications$Page$notifications$$ActivityMessageNotification$user$avatar?
      avatar;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$avatar = avatar;
    _resultData['avatar'] = l$avatar?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$avatar = avatar;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$avatar,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$UserNotifications$Page$notifications$$ActivityMessageNotification$user ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$avatar = avatar;
    final lOther$avatar = other.avatar;
    if (l$avatar != lOther$avatar) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$UserNotifications$Page$notifications$$ActivityMessageNotification$user
    on Query$UserNotifications$Page$notifications$$ActivityMessageNotification$user {
  CopyWith$Query$UserNotifications$Page$notifications$$ActivityMessageNotification$user<
          Query$UserNotifications$Page$notifications$$ActivityMessageNotification$user>
      get copyWith =>
          CopyWith$Query$UserNotifications$Page$notifications$$ActivityMessageNotification$user(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$UserNotifications$Page$notifications$$ActivityMessageNotification$user<
    TRes> {
  factory CopyWith$Query$UserNotifications$Page$notifications$$ActivityMessageNotification$user(
    Query$UserNotifications$Page$notifications$$ActivityMessageNotification$user
        instance,
    TRes Function(
            Query$UserNotifications$Page$notifications$$ActivityMessageNotification$user)
        then,
  ) = _CopyWithImpl$Query$UserNotifications$Page$notifications$$ActivityMessageNotification$user;

  factory CopyWith$Query$UserNotifications$Page$notifications$$ActivityMessageNotification$user.stub(
          TRes res) =
      _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$ActivityMessageNotification$user;

  TRes call({
    int? id,
    String? name,
    Query$UserNotifications$Page$notifications$$ActivityMessageNotification$user$avatar?
        avatar,
    String? $__typename,
  });
  CopyWith$Query$UserNotifications$Page$notifications$$ActivityMessageNotification$user$avatar<
      TRes> get avatar;
}

class _CopyWithImpl$Query$UserNotifications$Page$notifications$$ActivityMessageNotification$user<
        TRes>
    implements
        CopyWith$Query$UserNotifications$Page$notifications$$ActivityMessageNotification$user<
            TRes> {
  _CopyWithImpl$Query$UserNotifications$Page$notifications$$ActivityMessageNotification$user(
    this._instance,
    this._then,
  );

  final Query$UserNotifications$Page$notifications$$ActivityMessageNotification$user
      _instance;

  final TRes Function(
          Query$UserNotifications$Page$notifications$$ActivityMessageNotification$user)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? avatar = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$UserNotifications$Page$notifications$$ActivityMessageNotification$user(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        avatar: avatar == _undefined
            ? _instance.avatar
            : (avatar
                as Query$UserNotifications$Page$notifications$$ActivityMessageNotification$user$avatar?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$UserNotifications$Page$notifications$$ActivityMessageNotification$user$avatar<
      TRes> get avatar {
    final local$avatar = _instance.avatar;
    return local$avatar == null
        ? CopyWith$Query$UserNotifications$Page$notifications$$ActivityMessageNotification$user$avatar
            .stub(_then(_instance))
        : CopyWith$Query$UserNotifications$Page$notifications$$ActivityMessageNotification$user$avatar(
            local$avatar, (e) => call(avatar: e));
  }
}

class _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$ActivityMessageNotification$user<
        TRes>
    implements
        CopyWith$Query$UserNotifications$Page$notifications$$ActivityMessageNotification$user<
            TRes> {
  _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$ActivityMessageNotification$user(
      this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    Query$UserNotifications$Page$notifications$$ActivityMessageNotification$user$avatar?
        avatar,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$UserNotifications$Page$notifications$$ActivityMessageNotification$user$avatar<
          TRes>
      get avatar =>
          CopyWith$Query$UserNotifications$Page$notifications$$ActivityMessageNotification$user$avatar
              .stub(_res);
}

class Query$UserNotifications$Page$notifications$$ActivityMessageNotification$user$avatar
    implements Fragment$ActivityMessageNotification$user$avatar {
  Query$UserNotifications$Page$notifications$$ActivityMessageNotification$user$avatar({
    this.medium,
    this.$__typename = 'UserAvatar',
  });

  factory Query$UserNotifications$Page$notifications$$ActivityMessageNotification$user$avatar.fromJson(
      Map<String, dynamic> json) {
    final l$medium = json['medium'];
    final l$$__typename = json['__typename'];
    return Query$UserNotifications$Page$notifications$$ActivityMessageNotification$user$avatar(
      medium: (l$medium as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? medium;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$medium = medium;
    _resultData['medium'] = l$medium;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$medium = medium;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$medium,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$UserNotifications$Page$notifications$$ActivityMessageNotification$user$avatar ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$medium = medium;
    final lOther$medium = other.medium;
    if (l$medium != lOther$medium) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$UserNotifications$Page$notifications$$ActivityMessageNotification$user$avatar
    on Query$UserNotifications$Page$notifications$$ActivityMessageNotification$user$avatar {
  CopyWith$Query$UserNotifications$Page$notifications$$ActivityMessageNotification$user$avatar<
          Query$UserNotifications$Page$notifications$$ActivityMessageNotification$user$avatar>
      get copyWith =>
          CopyWith$Query$UserNotifications$Page$notifications$$ActivityMessageNotification$user$avatar(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$UserNotifications$Page$notifications$$ActivityMessageNotification$user$avatar<
    TRes> {
  factory CopyWith$Query$UserNotifications$Page$notifications$$ActivityMessageNotification$user$avatar(
    Query$UserNotifications$Page$notifications$$ActivityMessageNotification$user$avatar
        instance,
    TRes Function(
            Query$UserNotifications$Page$notifications$$ActivityMessageNotification$user$avatar)
        then,
  ) = _CopyWithImpl$Query$UserNotifications$Page$notifications$$ActivityMessageNotification$user$avatar;

  factory CopyWith$Query$UserNotifications$Page$notifications$$ActivityMessageNotification$user$avatar.stub(
          TRes res) =
      _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$ActivityMessageNotification$user$avatar;

  TRes call({
    String? medium,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$UserNotifications$Page$notifications$$ActivityMessageNotification$user$avatar<
        TRes>
    implements
        CopyWith$Query$UserNotifications$Page$notifications$$ActivityMessageNotification$user$avatar<
            TRes> {
  _CopyWithImpl$Query$UserNotifications$Page$notifications$$ActivityMessageNotification$user$avatar(
    this._instance,
    this._then,
  );

  final Query$UserNotifications$Page$notifications$$ActivityMessageNotification$user$avatar
      _instance;

  final TRes Function(
          Query$UserNotifications$Page$notifications$$ActivityMessageNotification$user$avatar)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? medium = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$UserNotifications$Page$notifications$$ActivityMessageNotification$user$avatar(
        medium: medium == _undefined ? _instance.medium : (medium as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$ActivityMessageNotification$user$avatar<
        TRes>
    implements
        CopyWith$Query$UserNotifications$Page$notifications$$ActivityMessageNotification$user$avatar<
            TRes> {
  _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$ActivityMessageNotification$user$avatar(
      this._res);

  TRes _res;

  call({
    String? medium,
    String? $__typename,
  }) =>
      _res;
}

class Query$UserNotifications$Page$notifications$$ActivityReplyLikeNotification
    implements
        Fragment$ActivityReplyLikeNotification,
        Query$UserNotifications$Page$notifications {
  Query$UserNotifications$Page$notifications$$ActivityReplyLikeNotification({
    required this.id,
    required this.activityId,
    this.user,
    this.context,
    this.createdAt,
    this.$__typename = 'ActivityReplyLikeNotification',
  });

  factory Query$UserNotifications$Page$notifications$$ActivityReplyLikeNotification.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$activityId = json['activityId'];
    final l$user = json['user'];
    final l$context = json['context'];
    final l$createdAt = json['createdAt'];
    final l$$__typename = json['__typename'];
    return Query$UserNotifications$Page$notifications$$ActivityReplyLikeNotification(
      id: (l$id as int),
      activityId: (l$activityId as int),
      user: l$user == null
          ? null
          : Query$UserNotifications$Page$notifications$$ActivityReplyLikeNotification$user
              .fromJson((l$user as Map<String, dynamic>)),
      context: (l$context as String?),
      createdAt: (l$createdAt as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final int activityId;

  final Query$UserNotifications$Page$notifications$$ActivityReplyLikeNotification$user?
      user;

  final String? context;

  final int? createdAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$activityId = activityId;
    _resultData['activityId'] = l$activityId;
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$context = context;
    _resultData['context'] = l$context;
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$activityId = activityId;
    final l$user = user;
    final l$context = context;
    final l$createdAt = createdAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$activityId,
      l$user,
      l$context,
      l$createdAt,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$UserNotifications$Page$notifications$$ActivityReplyLikeNotification ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$activityId = activityId;
    final lOther$activityId = other.activityId;
    if (l$activityId != lOther$activityId) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
      return false;
    }
    final l$context = context;
    final lOther$context = other.context;
    if (l$context != lOther$context) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$UserNotifications$Page$notifications$$ActivityReplyLikeNotification
    on Query$UserNotifications$Page$notifications$$ActivityReplyLikeNotification {
  CopyWith$Query$UserNotifications$Page$notifications$$ActivityReplyLikeNotification<
          Query$UserNotifications$Page$notifications$$ActivityReplyLikeNotification>
      get copyWith =>
          CopyWith$Query$UserNotifications$Page$notifications$$ActivityReplyLikeNotification(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$UserNotifications$Page$notifications$$ActivityReplyLikeNotification<
    TRes> {
  factory CopyWith$Query$UserNotifications$Page$notifications$$ActivityReplyLikeNotification(
    Query$UserNotifications$Page$notifications$$ActivityReplyLikeNotification
        instance,
    TRes Function(
            Query$UserNotifications$Page$notifications$$ActivityReplyLikeNotification)
        then,
  ) = _CopyWithImpl$Query$UserNotifications$Page$notifications$$ActivityReplyLikeNotification;

  factory CopyWith$Query$UserNotifications$Page$notifications$$ActivityReplyLikeNotification.stub(
          TRes res) =
      _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$ActivityReplyLikeNotification;

  TRes call({
    int? id,
    int? activityId,
    Query$UserNotifications$Page$notifications$$ActivityReplyLikeNotification$user?
        user,
    String? context,
    int? createdAt,
    String? $__typename,
  });
  CopyWith$Query$UserNotifications$Page$notifications$$ActivityReplyLikeNotification$user<
      TRes> get user;
}

class _CopyWithImpl$Query$UserNotifications$Page$notifications$$ActivityReplyLikeNotification<
        TRes>
    implements
        CopyWith$Query$UserNotifications$Page$notifications$$ActivityReplyLikeNotification<
            TRes> {
  _CopyWithImpl$Query$UserNotifications$Page$notifications$$ActivityReplyLikeNotification(
    this._instance,
    this._then,
  );

  final Query$UserNotifications$Page$notifications$$ActivityReplyLikeNotification
      _instance;

  final TRes Function(
          Query$UserNotifications$Page$notifications$$ActivityReplyLikeNotification)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? activityId = _undefined,
    Object? user = _undefined,
    Object? context = _undefined,
    Object? createdAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$UserNotifications$Page$notifications$$ActivityReplyLikeNotification(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        activityId: activityId == _undefined || activityId == null
            ? _instance.activityId
            : (activityId as int),
        user: user == _undefined
            ? _instance.user
            : (user
                as Query$UserNotifications$Page$notifications$$ActivityReplyLikeNotification$user?),
        context:
            context == _undefined ? _instance.context : (context as String?),
        createdAt:
            createdAt == _undefined ? _instance.createdAt : (createdAt as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$UserNotifications$Page$notifications$$ActivityReplyLikeNotification$user<
      TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith$Query$UserNotifications$Page$notifications$$ActivityReplyLikeNotification$user
            .stub(_then(_instance))
        : CopyWith$Query$UserNotifications$Page$notifications$$ActivityReplyLikeNotification$user(
            local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$ActivityReplyLikeNotification<
        TRes>
    implements
        CopyWith$Query$UserNotifications$Page$notifications$$ActivityReplyLikeNotification<
            TRes> {
  _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$ActivityReplyLikeNotification(
      this._res);

  TRes _res;

  call({
    int? id,
    int? activityId,
    Query$UserNotifications$Page$notifications$$ActivityReplyLikeNotification$user?
        user,
    String? context,
    int? createdAt,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$UserNotifications$Page$notifications$$ActivityReplyLikeNotification$user<
          TRes>
      get user =>
          CopyWith$Query$UserNotifications$Page$notifications$$ActivityReplyLikeNotification$user
              .stub(_res);
}

class Query$UserNotifications$Page$notifications$$ActivityReplyLikeNotification$user
    implements Fragment$ActivityReplyLikeNotification$user {
  Query$UserNotifications$Page$notifications$$ActivityReplyLikeNotification$user({
    required this.id,
    required this.name,
    this.avatar,
    this.$__typename = 'User',
  });

  factory Query$UserNotifications$Page$notifications$$ActivityReplyLikeNotification$user.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$avatar = json['avatar'];
    final l$$__typename = json['__typename'];
    return Query$UserNotifications$Page$notifications$$ActivityReplyLikeNotification$user(
      id: (l$id as int),
      name: (l$name as String),
      avatar: l$avatar == null
          ? null
          : Query$UserNotifications$Page$notifications$$ActivityReplyLikeNotification$user$avatar
              .fromJson((l$avatar as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String name;

  final Query$UserNotifications$Page$notifications$$ActivityReplyLikeNotification$user$avatar?
      avatar;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$avatar = avatar;
    _resultData['avatar'] = l$avatar?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$avatar = avatar;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$avatar,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$UserNotifications$Page$notifications$$ActivityReplyLikeNotification$user ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$avatar = avatar;
    final lOther$avatar = other.avatar;
    if (l$avatar != lOther$avatar) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$UserNotifications$Page$notifications$$ActivityReplyLikeNotification$user
    on Query$UserNotifications$Page$notifications$$ActivityReplyLikeNotification$user {
  CopyWith$Query$UserNotifications$Page$notifications$$ActivityReplyLikeNotification$user<
          Query$UserNotifications$Page$notifications$$ActivityReplyLikeNotification$user>
      get copyWith =>
          CopyWith$Query$UserNotifications$Page$notifications$$ActivityReplyLikeNotification$user(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$UserNotifications$Page$notifications$$ActivityReplyLikeNotification$user<
    TRes> {
  factory CopyWith$Query$UserNotifications$Page$notifications$$ActivityReplyLikeNotification$user(
    Query$UserNotifications$Page$notifications$$ActivityReplyLikeNotification$user
        instance,
    TRes Function(
            Query$UserNotifications$Page$notifications$$ActivityReplyLikeNotification$user)
        then,
  ) = _CopyWithImpl$Query$UserNotifications$Page$notifications$$ActivityReplyLikeNotification$user;

  factory CopyWith$Query$UserNotifications$Page$notifications$$ActivityReplyLikeNotification$user.stub(
          TRes res) =
      _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$ActivityReplyLikeNotification$user;

  TRes call({
    int? id,
    String? name,
    Query$UserNotifications$Page$notifications$$ActivityReplyLikeNotification$user$avatar?
        avatar,
    String? $__typename,
  });
  CopyWith$Query$UserNotifications$Page$notifications$$ActivityReplyLikeNotification$user$avatar<
      TRes> get avatar;
}

class _CopyWithImpl$Query$UserNotifications$Page$notifications$$ActivityReplyLikeNotification$user<
        TRes>
    implements
        CopyWith$Query$UserNotifications$Page$notifications$$ActivityReplyLikeNotification$user<
            TRes> {
  _CopyWithImpl$Query$UserNotifications$Page$notifications$$ActivityReplyLikeNotification$user(
    this._instance,
    this._then,
  );

  final Query$UserNotifications$Page$notifications$$ActivityReplyLikeNotification$user
      _instance;

  final TRes Function(
          Query$UserNotifications$Page$notifications$$ActivityReplyLikeNotification$user)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? avatar = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$UserNotifications$Page$notifications$$ActivityReplyLikeNotification$user(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        avatar: avatar == _undefined
            ? _instance.avatar
            : (avatar
                as Query$UserNotifications$Page$notifications$$ActivityReplyLikeNotification$user$avatar?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$UserNotifications$Page$notifications$$ActivityReplyLikeNotification$user$avatar<
      TRes> get avatar {
    final local$avatar = _instance.avatar;
    return local$avatar == null
        ? CopyWith$Query$UserNotifications$Page$notifications$$ActivityReplyLikeNotification$user$avatar
            .stub(_then(_instance))
        : CopyWith$Query$UserNotifications$Page$notifications$$ActivityReplyLikeNotification$user$avatar(
            local$avatar, (e) => call(avatar: e));
  }
}

class _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$ActivityReplyLikeNotification$user<
        TRes>
    implements
        CopyWith$Query$UserNotifications$Page$notifications$$ActivityReplyLikeNotification$user<
            TRes> {
  _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$ActivityReplyLikeNotification$user(
      this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    Query$UserNotifications$Page$notifications$$ActivityReplyLikeNotification$user$avatar?
        avatar,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$UserNotifications$Page$notifications$$ActivityReplyLikeNotification$user$avatar<
          TRes>
      get avatar =>
          CopyWith$Query$UserNotifications$Page$notifications$$ActivityReplyLikeNotification$user$avatar
              .stub(_res);
}

class Query$UserNotifications$Page$notifications$$ActivityReplyLikeNotification$user$avatar
    implements Fragment$ActivityReplyLikeNotification$user$avatar {
  Query$UserNotifications$Page$notifications$$ActivityReplyLikeNotification$user$avatar({
    this.medium,
    this.$__typename = 'UserAvatar',
  });

  factory Query$UserNotifications$Page$notifications$$ActivityReplyLikeNotification$user$avatar.fromJson(
      Map<String, dynamic> json) {
    final l$medium = json['medium'];
    final l$$__typename = json['__typename'];
    return Query$UserNotifications$Page$notifications$$ActivityReplyLikeNotification$user$avatar(
      medium: (l$medium as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? medium;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$medium = medium;
    _resultData['medium'] = l$medium;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$medium = medium;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$medium,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$UserNotifications$Page$notifications$$ActivityReplyLikeNotification$user$avatar ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$medium = medium;
    final lOther$medium = other.medium;
    if (l$medium != lOther$medium) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$UserNotifications$Page$notifications$$ActivityReplyLikeNotification$user$avatar
    on Query$UserNotifications$Page$notifications$$ActivityReplyLikeNotification$user$avatar {
  CopyWith$Query$UserNotifications$Page$notifications$$ActivityReplyLikeNotification$user$avatar<
          Query$UserNotifications$Page$notifications$$ActivityReplyLikeNotification$user$avatar>
      get copyWith =>
          CopyWith$Query$UserNotifications$Page$notifications$$ActivityReplyLikeNotification$user$avatar(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$UserNotifications$Page$notifications$$ActivityReplyLikeNotification$user$avatar<
    TRes> {
  factory CopyWith$Query$UserNotifications$Page$notifications$$ActivityReplyLikeNotification$user$avatar(
    Query$UserNotifications$Page$notifications$$ActivityReplyLikeNotification$user$avatar
        instance,
    TRes Function(
            Query$UserNotifications$Page$notifications$$ActivityReplyLikeNotification$user$avatar)
        then,
  ) = _CopyWithImpl$Query$UserNotifications$Page$notifications$$ActivityReplyLikeNotification$user$avatar;

  factory CopyWith$Query$UserNotifications$Page$notifications$$ActivityReplyLikeNotification$user$avatar.stub(
          TRes res) =
      _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$ActivityReplyLikeNotification$user$avatar;

  TRes call({
    String? medium,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$UserNotifications$Page$notifications$$ActivityReplyLikeNotification$user$avatar<
        TRes>
    implements
        CopyWith$Query$UserNotifications$Page$notifications$$ActivityReplyLikeNotification$user$avatar<
            TRes> {
  _CopyWithImpl$Query$UserNotifications$Page$notifications$$ActivityReplyLikeNotification$user$avatar(
    this._instance,
    this._then,
  );

  final Query$UserNotifications$Page$notifications$$ActivityReplyLikeNotification$user$avatar
      _instance;

  final TRes Function(
          Query$UserNotifications$Page$notifications$$ActivityReplyLikeNotification$user$avatar)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? medium = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$UserNotifications$Page$notifications$$ActivityReplyLikeNotification$user$avatar(
        medium: medium == _undefined ? _instance.medium : (medium as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$ActivityReplyLikeNotification$user$avatar<
        TRes>
    implements
        CopyWith$Query$UserNotifications$Page$notifications$$ActivityReplyLikeNotification$user$avatar<
            TRes> {
  _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$ActivityReplyLikeNotification$user$avatar(
      this._res);

  TRes _res;

  call({
    String? medium,
    String? $__typename,
  }) =>
      _res;
}

class Query$UserNotifications$Page$notifications$$ActivityReplyNotification
    implements
        Fragment$ActivityReplyNotification,
        Query$UserNotifications$Page$notifications {
  Query$UserNotifications$Page$notifications$$ActivityReplyNotification({
    required this.id,
    required this.activityId,
    this.user,
    this.context,
    this.createdAt,
    this.$__typename = 'ActivityReplyNotification',
  });

  factory Query$UserNotifications$Page$notifications$$ActivityReplyNotification.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$activityId = json['activityId'];
    final l$user = json['user'];
    final l$context = json['context'];
    final l$createdAt = json['createdAt'];
    final l$$__typename = json['__typename'];
    return Query$UserNotifications$Page$notifications$$ActivityReplyNotification(
      id: (l$id as int),
      activityId: (l$activityId as int),
      user: l$user == null
          ? null
          : Query$UserNotifications$Page$notifications$$ActivityReplyNotification$user
              .fromJson((l$user as Map<String, dynamic>)),
      context: (l$context as String?),
      createdAt: (l$createdAt as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final int activityId;

  final Query$UserNotifications$Page$notifications$$ActivityReplyNotification$user?
      user;

  final String? context;

  final int? createdAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$activityId = activityId;
    _resultData['activityId'] = l$activityId;
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$context = context;
    _resultData['context'] = l$context;
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$activityId = activityId;
    final l$user = user;
    final l$context = context;
    final l$createdAt = createdAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$activityId,
      l$user,
      l$context,
      l$createdAt,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$UserNotifications$Page$notifications$$ActivityReplyNotification ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$activityId = activityId;
    final lOther$activityId = other.activityId;
    if (l$activityId != lOther$activityId) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
      return false;
    }
    final l$context = context;
    final lOther$context = other.context;
    if (l$context != lOther$context) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$UserNotifications$Page$notifications$$ActivityReplyNotification
    on Query$UserNotifications$Page$notifications$$ActivityReplyNotification {
  CopyWith$Query$UserNotifications$Page$notifications$$ActivityReplyNotification<
          Query$UserNotifications$Page$notifications$$ActivityReplyNotification>
      get copyWith =>
          CopyWith$Query$UserNotifications$Page$notifications$$ActivityReplyNotification(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$UserNotifications$Page$notifications$$ActivityReplyNotification<
    TRes> {
  factory CopyWith$Query$UserNotifications$Page$notifications$$ActivityReplyNotification(
    Query$UserNotifications$Page$notifications$$ActivityReplyNotification
        instance,
    TRes Function(
            Query$UserNotifications$Page$notifications$$ActivityReplyNotification)
        then,
  ) = _CopyWithImpl$Query$UserNotifications$Page$notifications$$ActivityReplyNotification;

  factory CopyWith$Query$UserNotifications$Page$notifications$$ActivityReplyNotification.stub(
          TRes res) =
      _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$ActivityReplyNotification;

  TRes call({
    int? id,
    int? activityId,
    Query$UserNotifications$Page$notifications$$ActivityReplyNotification$user?
        user,
    String? context,
    int? createdAt,
    String? $__typename,
  });
  CopyWith$Query$UserNotifications$Page$notifications$$ActivityReplyNotification$user<
      TRes> get user;
}

class _CopyWithImpl$Query$UserNotifications$Page$notifications$$ActivityReplyNotification<
        TRes>
    implements
        CopyWith$Query$UserNotifications$Page$notifications$$ActivityReplyNotification<
            TRes> {
  _CopyWithImpl$Query$UserNotifications$Page$notifications$$ActivityReplyNotification(
    this._instance,
    this._then,
  );

  final Query$UserNotifications$Page$notifications$$ActivityReplyNotification
      _instance;

  final TRes Function(
          Query$UserNotifications$Page$notifications$$ActivityReplyNotification)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? activityId = _undefined,
    Object? user = _undefined,
    Object? context = _undefined,
    Object? createdAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$UserNotifications$Page$notifications$$ActivityReplyNotification(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        activityId: activityId == _undefined || activityId == null
            ? _instance.activityId
            : (activityId as int),
        user: user == _undefined
            ? _instance.user
            : (user
                as Query$UserNotifications$Page$notifications$$ActivityReplyNotification$user?),
        context:
            context == _undefined ? _instance.context : (context as String?),
        createdAt:
            createdAt == _undefined ? _instance.createdAt : (createdAt as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$UserNotifications$Page$notifications$$ActivityReplyNotification$user<
      TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith$Query$UserNotifications$Page$notifications$$ActivityReplyNotification$user
            .stub(_then(_instance))
        : CopyWith$Query$UserNotifications$Page$notifications$$ActivityReplyNotification$user(
            local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$ActivityReplyNotification<
        TRes>
    implements
        CopyWith$Query$UserNotifications$Page$notifications$$ActivityReplyNotification<
            TRes> {
  _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$ActivityReplyNotification(
      this._res);

  TRes _res;

  call({
    int? id,
    int? activityId,
    Query$UserNotifications$Page$notifications$$ActivityReplyNotification$user?
        user,
    String? context,
    int? createdAt,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$UserNotifications$Page$notifications$$ActivityReplyNotification$user<
          TRes>
      get user =>
          CopyWith$Query$UserNotifications$Page$notifications$$ActivityReplyNotification$user
              .stub(_res);
}

class Query$UserNotifications$Page$notifications$$ActivityReplyNotification$user
    implements Fragment$ActivityReplyNotification$user {
  Query$UserNotifications$Page$notifications$$ActivityReplyNotification$user({
    required this.id,
    required this.name,
    this.avatar,
    this.$__typename = 'User',
  });

  factory Query$UserNotifications$Page$notifications$$ActivityReplyNotification$user.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$avatar = json['avatar'];
    final l$$__typename = json['__typename'];
    return Query$UserNotifications$Page$notifications$$ActivityReplyNotification$user(
      id: (l$id as int),
      name: (l$name as String),
      avatar: l$avatar == null
          ? null
          : Query$UserNotifications$Page$notifications$$ActivityReplyNotification$user$avatar
              .fromJson((l$avatar as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String name;

  final Query$UserNotifications$Page$notifications$$ActivityReplyNotification$user$avatar?
      avatar;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$avatar = avatar;
    _resultData['avatar'] = l$avatar?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$avatar = avatar;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$avatar,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$UserNotifications$Page$notifications$$ActivityReplyNotification$user ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$avatar = avatar;
    final lOther$avatar = other.avatar;
    if (l$avatar != lOther$avatar) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$UserNotifications$Page$notifications$$ActivityReplyNotification$user
    on Query$UserNotifications$Page$notifications$$ActivityReplyNotification$user {
  CopyWith$Query$UserNotifications$Page$notifications$$ActivityReplyNotification$user<
          Query$UserNotifications$Page$notifications$$ActivityReplyNotification$user>
      get copyWith =>
          CopyWith$Query$UserNotifications$Page$notifications$$ActivityReplyNotification$user(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$UserNotifications$Page$notifications$$ActivityReplyNotification$user<
    TRes> {
  factory CopyWith$Query$UserNotifications$Page$notifications$$ActivityReplyNotification$user(
    Query$UserNotifications$Page$notifications$$ActivityReplyNotification$user
        instance,
    TRes Function(
            Query$UserNotifications$Page$notifications$$ActivityReplyNotification$user)
        then,
  ) = _CopyWithImpl$Query$UserNotifications$Page$notifications$$ActivityReplyNotification$user;

  factory CopyWith$Query$UserNotifications$Page$notifications$$ActivityReplyNotification$user.stub(
          TRes res) =
      _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$ActivityReplyNotification$user;

  TRes call({
    int? id,
    String? name,
    Query$UserNotifications$Page$notifications$$ActivityReplyNotification$user$avatar?
        avatar,
    String? $__typename,
  });
  CopyWith$Query$UserNotifications$Page$notifications$$ActivityReplyNotification$user$avatar<
      TRes> get avatar;
}

class _CopyWithImpl$Query$UserNotifications$Page$notifications$$ActivityReplyNotification$user<
        TRes>
    implements
        CopyWith$Query$UserNotifications$Page$notifications$$ActivityReplyNotification$user<
            TRes> {
  _CopyWithImpl$Query$UserNotifications$Page$notifications$$ActivityReplyNotification$user(
    this._instance,
    this._then,
  );

  final Query$UserNotifications$Page$notifications$$ActivityReplyNotification$user
      _instance;

  final TRes Function(
          Query$UserNotifications$Page$notifications$$ActivityReplyNotification$user)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? avatar = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$UserNotifications$Page$notifications$$ActivityReplyNotification$user(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        avatar: avatar == _undefined
            ? _instance.avatar
            : (avatar
                as Query$UserNotifications$Page$notifications$$ActivityReplyNotification$user$avatar?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$UserNotifications$Page$notifications$$ActivityReplyNotification$user$avatar<
      TRes> get avatar {
    final local$avatar = _instance.avatar;
    return local$avatar == null
        ? CopyWith$Query$UserNotifications$Page$notifications$$ActivityReplyNotification$user$avatar
            .stub(_then(_instance))
        : CopyWith$Query$UserNotifications$Page$notifications$$ActivityReplyNotification$user$avatar(
            local$avatar, (e) => call(avatar: e));
  }
}

class _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$ActivityReplyNotification$user<
        TRes>
    implements
        CopyWith$Query$UserNotifications$Page$notifications$$ActivityReplyNotification$user<
            TRes> {
  _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$ActivityReplyNotification$user(
      this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    Query$UserNotifications$Page$notifications$$ActivityReplyNotification$user$avatar?
        avatar,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$UserNotifications$Page$notifications$$ActivityReplyNotification$user$avatar<
          TRes>
      get avatar =>
          CopyWith$Query$UserNotifications$Page$notifications$$ActivityReplyNotification$user$avatar
              .stub(_res);
}

class Query$UserNotifications$Page$notifications$$ActivityReplyNotification$user$avatar
    implements Fragment$ActivityReplyNotification$user$avatar {
  Query$UserNotifications$Page$notifications$$ActivityReplyNotification$user$avatar({
    this.medium,
    this.$__typename = 'UserAvatar',
  });

  factory Query$UserNotifications$Page$notifications$$ActivityReplyNotification$user$avatar.fromJson(
      Map<String, dynamic> json) {
    final l$medium = json['medium'];
    final l$$__typename = json['__typename'];
    return Query$UserNotifications$Page$notifications$$ActivityReplyNotification$user$avatar(
      medium: (l$medium as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? medium;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$medium = medium;
    _resultData['medium'] = l$medium;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$medium = medium;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$medium,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$UserNotifications$Page$notifications$$ActivityReplyNotification$user$avatar ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$medium = medium;
    final lOther$medium = other.medium;
    if (l$medium != lOther$medium) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$UserNotifications$Page$notifications$$ActivityReplyNotification$user$avatar
    on Query$UserNotifications$Page$notifications$$ActivityReplyNotification$user$avatar {
  CopyWith$Query$UserNotifications$Page$notifications$$ActivityReplyNotification$user$avatar<
          Query$UserNotifications$Page$notifications$$ActivityReplyNotification$user$avatar>
      get copyWith =>
          CopyWith$Query$UserNotifications$Page$notifications$$ActivityReplyNotification$user$avatar(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$UserNotifications$Page$notifications$$ActivityReplyNotification$user$avatar<
    TRes> {
  factory CopyWith$Query$UserNotifications$Page$notifications$$ActivityReplyNotification$user$avatar(
    Query$UserNotifications$Page$notifications$$ActivityReplyNotification$user$avatar
        instance,
    TRes Function(
            Query$UserNotifications$Page$notifications$$ActivityReplyNotification$user$avatar)
        then,
  ) = _CopyWithImpl$Query$UserNotifications$Page$notifications$$ActivityReplyNotification$user$avatar;

  factory CopyWith$Query$UserNotifications$Page$notifications$$ActivityReplyNotification$user$avatar.stub(
          TRes res) =
      _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$ActivityReplyNotification$user$avatar;

  TRes call({
    String? medium,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$UserNotifications$Page$notifications$$ActivityReplyNotification$user$avatar<
        TRes>
    implements
        CopyWith$Query$UserNotifications$Page$notifications$$ActivityReplyNotification$user$avatar<
            TRes> {
  _CopyWithImpl$Query$UserNotifications$Page$notifications$$ActivityReplyNotification$user$avatar(
    this._instance,
    this._then,
  );

  final Query$UserNotifications$Page$notifications$$ActivityReplyNotification$user$avatar
      _instance;

  final TRes Function(
          Query$UserNotifications$Page$notifications$$ActivityReplyNotification$user$avatar)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? medium = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$UserNotifications$Page$notifications$$ActivityReplyNotification$user$avatar(
        medium: medium == _undefined ? _instance.medium : (medium as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$ActivityReplyNotification$user$avatar<
        TRes>
    implements
        CopyWith$Query$UserNotifications$Page$notifications$$ActivityReplyNotification$user$avatar<
            TRes> {
  _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$ActivityReplyNotification$user$avatar(
      this._res);

  TRes _res;

  call({
    String? medium,
    String? $__typename,
  }) =>
      _res;
}

class Query$UserNotifications$Page$notifications$$ActivityReplySubscribedNotification
    implements
        Fragment$ActivityReplySubscribedNotification,
        Query$UserNotifications$Page$notifications {
  Query$UserNotifications$Page$notifications$$ActivityReplySubscribedNotification({
    required this.id,
    required this.activityId,
    this.user,
    this.context,
    this.createdAt,
    this.$__typename = 'ActivityReplySubscribedNotification',
  });

  factory Query$UserNotifications$Page$notifications$$ActivityReplySubscribedNotification.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$activityId = json['activityId'];
    final l$user = json['user'];
    final l$context = json['context'];
    final l$createdAt = json['createdAt'];
    final l$$__typename = json['__typename'];
    return Query$UserNotifications$Page$notifications$$ActivityReplySubscribedNotification(
      id: (l$id as int),
      activityId: (l$activityId as int),
      user: l$user == null
          ? null
          : Query$UserNotifications$Page$notifications$$ActivityReplySubscribedNotification$user
              .fromJson((l$user as Map<String, dynamic>)),
      context: (l$context as String?),
      createdAt: (l$createdAt as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final int activityId;

  final Query$UserNotifications$Page$notifications$$ActivityReplySubscribedNotification$user?
      user;

  final String? context;

  final int? createdAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$activityId = activityId;
    _resultData['activityId'] = l$activityId;
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$context = context;
    _resultData['context'] = l$context;
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$activityId = activityId;
    final l$user = user;
    final l$context = context;
    final l$createdAt = createdAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$activityId,
      l$user,
      l$context,
      l$createdAt,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$UserNotifications$Page$notifications$$ActivityReplySubscribedNotification ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$activityId = activityId;
    final lOther$activityId = other.activityId;
    if (l$activityId != lOther$activityId) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
      return false;
    }
    final l$context = context;
    final lOther$context = other.context;
    if (l$context != lOther$context) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$UserNotifications$Page$notifications$$ActivityReplySubscribedNotification
    on Query$UserNotifications$Page$notifications$$ActivityReplySubscribedNotification {
  CopyWith$Query$UserNotifications$Page$notifications$$ActivityReplySubscribedNotification<
          Query$UserNotifications$Page$notifications$$ActivityReplySubscribedNotification>
      get copyWith =>
          CopyWith$Query$UserNotifications$Page$notifications$$ActivityReplySubscribedNotification(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$UserNotifications$Page$notifications$$ActivityReplySubscribedNotification<
    TRes> {
  factory CopyWith$Query$UserNotifications$Page$notifications$$ActivityReplySubscribedNotification(
    Query$UserNotifications$Page$notifications$$ActivityReplySubscribedNotification
        instance,
    TRes Function(
            Query$UserNotifications$Page$notifications$$ActivityReplySubscribedNotification)
        then,
  ) = _CopyWithImpl$Query$UserNotifications$Page$notifications$$ActivityReplySubscribedNotification;

  factory CopyWith$Query$UserNotifications$Page$notifications$$ActivityReplySubscribedNotification.stub(
          TRes res) =
      _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$ActivityReplySubscribedNotification;

  TRes call({
    int? id,
    int? activityId,
    Query$UserNotifications$Page$notifications$$ActivityReplySubscribedNotification$user?
        user,
    String? context,
    int? createdAt,
    String? $__typename,
  });
  CopyWith$Query$UserNotifications$Page$notifications$$ActivityReplySubscribedNotification$user<
      TRes> get user;
}

class _CopyWithImpl$Query$UserNotifications$Page$notifications$$ActivityReplySubscribedNotification<
        TRes>
    implements
        CopyWith$Query$UserNotifications$Page$notifications$$ActivityReplySubscribedNotification<
            TRes> {
  _CopyWithImpl$Query$UserNotifications$Page$notifications$$ActivityReplySubscribedNotification(
    this._instance,
    this._then,
  );

  final Query$UserNotifications$Page$notifications$$ActivityReplySubscribedNotification
      _instance;

  final TRes Function(
          Query$UserNotifications$Page$notifications$$ActivityReplySubscribedNotification)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? activityId = _undefined,
    Object? user = _undefined,
    Object? context = _undefined,
    Object? createdAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$UserNotifications$Page$notifications$$ActivityReplySubscribedNotification(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        activityId: activityId == _undefined || activityId == null
            ? _instance.activityId
            : (activityId as int),
        user: user == _undefined
            ? _instance.user
            : (user
                as Query$UserNotifications$Page$notifications$$ActivityReplySubscribedNotification$user?),
        context:
            context == _undefined ? _instance.context : (context as String?),
        createdAt:
            createdAt == _undefined ? _instance.createdAt : (createdAt as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$UserNotifications$Page$notifications$$ActivityReplySubscribedNotification$user<
      TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith$Query$UserNotifications$Page$notifications$$ActivityReplySubscribedNotification$user
            .stub(_then(_instance))
        : CopyWith$Query$UserNotifications$Page$notifications$$ActivityReplySubscribedNotification$user(
            local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$ActivityReplySubscribedNotification<
        TRes>
    implements
        CopyWith$Query$UserNotifications$Page$notifications$$ActivityReplySubscribedNotification<
            TRes> {
  _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$ActivityReplySubscribedNotification(
      this._res);

  TRes _res;

  call({
    int? id,
    int? activityId,
    Query$UserNotifications$Page$notifications$$ActivityReplySubscribedNotification$user?
        user,
    String? context,
    int? createdAt,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$UserNotifications$Page$notifications$$ActivityReplySubscribedNotification$user<
          TRes>
      get user =>
          CopyWith$Query$UserNotifications$Page$notifications$$ActivityReplySubscribedNotification$user
              .stub(_res);
}

class Query$UserNotifications$Page$notifications$$ActivityReplySubscribedNotification$user
    implements Fragment$ActivityReplySubscribedNotification$user {
  Query$UserNotifications$Page$notifications$$ActivityReplySubscribedNotification$user({
    required this.id,
    required this.name,
    this.avatar,
    this.$__typename = 'User',
  });

  factory Query$UserNotifications$Page$notifications$$ActivityReplySubscribedNotification$user.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$avatar = json['avatar'];
    final l$$__typename = json['__typename'];
    return Query$UserNotifications$Page$notifications$$ActivityReplySubscribedNotification$user(
      id: (l$id as int),
      name: (l$name as String),
      avatar: l$avatar == null
          ? null
          : Query$UserNotifications$Page$notifications$$ActivityReplySubscribedNotification$user$avatar
              .fromJson((l$avatar as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String name;

  final Query$UserNotifications$Page$notifications$$ActivityReplySubscribedNotification$user$avatar?
      avatar;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$avatar = avatar;
    _resultData['avatar'] = l$avatar?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$avatar = avatar;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$avatar,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$UserNotifications$Page$notifications$$ActivityReplySubscribedNotification$user ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$avatar = avatar;
    final lOther$avatar = other.avatar;
    if (l$avatar != lOther$avatar) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$UserNotifications$Page$notifications$$ActivityReplySubscribedNotification$user
    on Query$UserNotifications$Page$notifications$$ActivityReplySubscribedNotification$user {
  CopyWith$Query$UserNotifications$Page$notifications$$ActivityReplySubscribedNotification$user<
          Query$UserNotifications$Page$notifications$$ActivityReplySubscribedNotification$user>
      get copyWith =>
          CopyWith$Query$UserNotifications$Page$notifications$$ActivityReplySubscribedNotification$user(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$UserNotifications$Page$notifications$$ActivityReplySubscribedNotification$user<
    TRes> {
  factory CopyWith$Query$UserNotifications$Page$notifications$$ActivityReplySubscribedNotification$user(
    Query$UserNotifications$Page$notifications$$ActivityReplySubscribedNotification$user
        instance,
    TRes Function(
            Query$UserNotifications$Page$notifications$$ActivityReplySubscribedNotification$user)
        then,
  ) = _CopyWithImpl$Query$UserNotifications$Page$notifications$$ActivityReplySubscribedNotification$user;

  factory CopyWith$Query$UserNotifications$Page$notifications$$ActivityReplySubscribedNotification$user.stub(
          TRes res) =
      _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$ActivityReplySubscribedNotification$user;

  TRes call({
    int? id,
    String? name,
    Query$UserNotifications$Page$notifications$$ActivityReplySubscribedNotification$user$avatar?
        avatar,
    String? $__typename,
  });
  CopyWith$Query$UserNotifications$Page$notifications$$ActivityReplySubscribedNotification$user$avatar<
      TRes> get avatar;
}

class _CopyWithImpl$Query$UserNotifications$Page$notifications$$ActivityReplySubscribedNotification$user<
        TRes>
    implements
        CopyWith$Query$UserNotifications$Page$notifications$$ActivityReplySubscribedNotification$user<
            TRes> {
  _CopyWithImpl$Query$UserNotifications$Page$notifications$$ActivityReplySubscribedNotification$user(
    this._instance,
    this._then,
  );

  final Query$UserNotifications$Page$notifications$$ActivityReplySubscribedNotification$user
      _instance;

  final TRes Function(
          Query$UserNotifications$Page$notifications$$ActivityReplySubscribedNotification$user)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? avatar = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$UserNotifications$Page$notifications$$ActivityReplySubscribedNotification$user(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        avatar: avatar == _undefined
            ? _instance.avatar
            : (avatar
                as Query$UserNotifications$Page$notifications$$ActivityReplySubscribedNotification$user$avatar?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$UserNotifications$Page$notifications$$ActivityReplySubscribedNotification$user$avatar<
      TRes> get avatar {
    final local$avatar = _instance.avatar;
    return local$avatar == null
        ? CopyWith$Query$UserNotifications$Page$notifications$$ActivityReplySubscribedNotification$user$avatar
            .stub(_then(_instance))
        : CopyWith$Query$UserNotifications$Page$notifications$$ActivityReplySubscribedNotification$user$avatar(
            local$avatar, (e) => call(avatar: e));
  }
}

class _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$ActivityReplySubscribedNotification$user<
        TRes>
    implements
        CopyWith$Query$UserNotifications$Page$notifications$$ActivityReplySubscribedNotification$user<
            TRes> {
  _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$ActivityReplySubscribedNotification$user(
      this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    Query$UserNotifications$Page$notifications$$ActivityReplySubscribedNotification$user$avatar?
        avatar,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$UserNotifications$Page$notifications$$ActivityReplySubscribedNotification$user$avatar<
          TRes>
      get avatar =>
          CopyWith$Query$UserNotifications$Page$notifications$$ActivityReplySubscribedNotification$user$avatar
              .stub(_res);
}

class Query$UserNotifications$Page$notifications$$ActivityReplySubscribedNotification$user$avatar
    implements Fragment$ActivityReplySubscribedNotification$user$avatar {
  Query$UserNotifications$Page$notifications$$ActivityReplySubscribedNotification$user$avatar({
    this.medium,
    this.$__typename = 'UserAvatar',
  });

  factory Query$UserNotifications$Page$notifications$$ActivityReplySubscribedNotification$user$avatar.fromJson(
      Map<String, dynamic> json) {
    final l$medium = json['medium'];
    final l$$__typename = json['__typename'];
    return Query$UserNotifications$Page$notifications$$ActivityReplySubscribedNotification$user$avatar(
      medium: (l$medium as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? medium;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$medium = medium;
    _resultData['medium'] = l$medium;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$medium = medium;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$medium,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$UserNotifications$Page$notifications$$ActivityReplySubscribedNotification$user$avatar ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$medium = medium;
    final lOther$medium = other.medium;
    if (l$medium != lOther$medium) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$UserNotifications$Page$notifications$$ActivityReplySubscribedNotification$user$avatar
    on Query$UserNotifications$Page$notifications$$ActivityReplySubscribedNotification$user$avatar {
  CopyWith$Query$UserNotifications$Page$notifications$$ActivityReplySubscribedNotification$user$avatar<
          Query$UserNotifications$Page$notifications$$ActivityReplySubscribedNotification$user$avatar>
      get copyWith =>
          CopyWith$Query$UserNotifications$Page$notifications$$ActivityReplySubscribedNotification$user$avatar(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$UserNotifications$Page$notifications$$ActivityReplySubscribedNotification$user$avatar<
    TRes> {
  factory CopyWith$Query$UserNotifications$Page$notifications$$ActivityReplySubscribedNotification$user$avatar(
    Query$UserNotifications$Page$notifications$$ActivityReplySubscribedNotification$user$avatar
        instance,
    TRes Function(
            Query$UserNotifications$Page$notifications$$ActivityReplySubscribedNotification$user$avatar)
        then,
  ) = _CopyWithImpl$Query$UserNotifications$Page$notifications$$ActivityReplySubscribedNotification$user$avatar;

  factory CopyWith$Query$UserNotifications$Page$notifications$$ActivityReplySubscribedNotification$user$avatar.stub(
          TRes res) =
      _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$ActivityReplySubscribedNotification$user$avatar;

  TRes call({
    String? medium,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$UserNotifications$Page$notifications$$ActivityReplySubscribedNotification$user$avatar<
        TRes>
    implements
        CopyWith$Query$UserNotifications$Page$notifications$$ActivityReplySubscribedNotification$user$avatar<
            TRes> {
  _CopyWithImpl$Query$UserNotifications$Page$notifications$$ActivityReplySubscribedNotification$user$avatar(
    this._instance,
    this._then,
  );

  final Query$UserNotifications$Page$notifications$$ActivityReplySubscribedNotification$user$avatar
      _instance;

  final TRes Function(
          Query$UserNotifications$Page$notifications$$ActivityReplySubscribedNotification$user$avatar)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? medium = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$UserNotifications$Page$notifications$$ActivityReplySubscribedNotification$user$avatar(
        medium: medium == _undefined ? _instance.medium : (medium as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$ActivityReplySubscribedNotification$user$avatar<
        TRes>
    implements
        CopyWith$Query$UserNotifications$Page$notifications$$ActivityReplySubscribedNotification$user$avatar<
            TRes> {
  _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$ActivityReplySubscribedNotification$user$avatar(
      this._res);

  TRes _res;

  call({
    String? medium,
    String? $__typename,
  }) =>
      _res;
}

class Query$UserNotifications$Page$notifications$$AiringNotification
    implements
        Fragment$AiringNotification,
        Query$UserNotifications$Page$notifications {
  Query$UserNotifications$Page$notifications$$AiringNotification({
    required this.id,
    this.media,
    this.contexts,
    this.createdAt,
    required this.episode,
    this.$__typename = 'AiringNotification',
  });

  factory Query$UserNotifications$Page$notifications$$AiringNotification.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$media = json['media'];
    final l$contexts = json['contexts'];
    final l$createdAt = json['createdAt'];
    final l$episode = json['episode'];
    final l$$__typename = json['__typename'];
    return Query$UserNotifications$Page$notifications$$AiringNotification(
      id: (l$id as int),
      media: l$media == null
          ? null
          : Query$UserNotifications$Page$notifications$$AiringNotification$media
              .fromJson((l$media as Map<String, dynamic>)),
      contexts:
          (l$contexts as List<dynamic>?)?.map((e) => (e as String?)).toList(),
      createdAt: (l$createdAt as int?),
      episode: (l$episode as int),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final Query$UserNotifications$Page$notifications$$AiringNotification$media?
      media;

  final List<String?>? contexts;

  final int? createdAt;

  final int episode;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$media = media;
    _resultData['media'] = l$media?.toJson();
    final l$contexts = contexts;
    _resultData['contexts'] = l$contexts?.map((e) => e).toList();
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt;
    final l$episode = episode;
    _resultData['episode'] = l$episode;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$media = media;
    final l$contexts = contexts;
    final l$createdAt = createdAt;
    final l$episode = episode;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$media,
      l$contexts == null ? null : Object.hashAll(l$contexts.map((v) => v)),
      l$createdAt,
      l$episode,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$UserNotifications$Page$notifications$$AiringNotification ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$media = media;
    final lOther$media = other.media;
    if (l$media != lOther$media) {
      return false;
    }
    final l$contexts = contexts;
    final lOther$contexts = other.contexts;
    if (l$contexts != null && lOther$contexts != null) {
      if (l$contexts.length != lOther$contexts.length) {
        return false;
      }
      for (int i = 0; i < l$contexts.length; i++) {
        final l$contexts$entry = l$contexts[i];
        final lOther$contexts$entry = lOther$contexts[i];
        if (l$contexts$entry != lOther$contexts$entry) {
          return false;
        }
      }
    } else if (l$contexts != lOther$contexts) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$episode = episode;
    final lOther$episode = other.episode;
    if (l$episode != lOther$episode) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$UserNotifications$Page$notifications$$AiringNotification
    on Query$UserNotifications$Page$notifications$$AiringNotification {
  CopyWith$Query$UserNotifications$Page$notifications$$AiringNotification<
          Query$UserNotifications$Page$notifications$$AiringNotification>
      get copyWith =>
          CopyWith$Query$UserNotifications$Page$notifications$$AiringNotification(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$UserNotifications$Page$notifications$$AiringNotification<
    TRes> {
  factory CopyWith$Query$UserNotifications$Page$notifications$$AiringNotification(
    Query$UserNotifications$Page$notifications$$AiringNotification instance,
    TRes Function(
            Query$UserNotifications$Page$notifications$$AiringNotification)
        then,
  ) = _CopyWithImpl$Query$UserNotifications$Page$notifications$$AiringNotification;

  factory CopyWith$Query$UserNotifications$Page$notifications$$AiringNotification.stub(
          TRes res) =
      _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$AiringNotification;

  TRes call({
    int? id,
    Query$UserNotifications$Page$notifications$$AiringNotification$media? media,
    List<String?>? contexts,
    int? createdAt,
    int? episode,
    String? $__typename,
  });
  CopyWith$Query$UserNotifications$Page$notifications$$AiringNotification$media<
      TRes> get media;
}

class _CopyWithImpl$Query$UserNotifications$Page$notifications$$AiringNotification<
        TRes>
    implements
        CopyWith$Query$UserNotifications$Page$notifications$$AiringNotification<
            TRes> {
  _CopyWithImpl$Query$UserNotifications$Page$notifications$$AiringNotification(
    this._instance,
    this._then,
  );

  final Query$UserNotifications$Page$notifications$$AiringNotification
      _instance;

  final TRes Function(
      Query$UserNotifications$Page$notifications$$AiringNotification) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? media = _undefined,
    Object? contexts = _undefined,
    Object? createdAt = _undefined,
    Object? episode = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$UserNotifications$Page$notifications$$AiringNotification(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        media: media == _undefined
            ? _instance.media
            : (media
                as Query$UserNotifications$Page$notifications$$AiringNotification$media?),
        contexts: contexts == _undefined
            ? _instance.contexts
            : (contexts as List<String?>?),
        createdAt:
            createdAt == _undefined ? _instance.createdAt : (createdAt as int?),
        episode: episode == _undefined || episode == null
            ? _instance.episode
            : (episode as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$UserNotifications$Page$notifications$$AiringNotification$media<
      TRes> get media {
    final local$media = _instance.media;
    return local$media == null
        ? CopyWith$Query$UserNotifications$Page$notifications$$AiringNotification$media
            .stub(_then(_instance))
        : CopyWith$Query$UserNotifications$Page$notifications$$AiringNotification$media(
            local$media, (e) => call(media: e));
  }
}

class _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$AiringNotification<
        TRes>
    implements
        CopyWith$Query$UserNotifications$Page$notifications$$AiringNotification<
            TRes> {
  _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$AiringNotification(
      this._res);

  TRes _res;

  call({
    int? id,
    Query$UserNotifications$Page$notifications$$AiringNotification$media? media,
    List<String?>? contexts,
    int? createdAt,
    int? episode,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$UserNotifications$Page$notifications$$AiringNotification$media<
          TRes>
      get media =>
          CopyWith$Query$UserNotifications$Page$notifications$$AiringNotification$media
              .stub(_res);
}

class Query$UserNotifications$Page$notifications$$AiringNotification$media
    implements Fragment$AiringNotification$media {
  Query$UserNotifications$Page$notifications$$AiringNotification$media({
    required this.id,
    this.coverImage,
    this.title,
    this.$__typename = 'Media',
  });

  factory Query$UserNotifications$Page$notifications$$AiringNotification$media.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$coverImage = json['coverImage'];
    final l$title = json['title'];
    final l$$__typename = json['__typename'];
    return Query$UserNotifications$Page$notifications$$AiringNotification$media(
      id: (l$id as int),
      coverImage: l$coverImage == null
          ? null
          : Query$UserNotifications$Page$notifications$$AiringNotification$media$coverImage
              .fromJson((l$coverImage as Map<String, dynamic>)),
      title: l$title == null
          ? null
          : Query$UserNotifications$Page$notifications$$AiringNotification$media$title
              .fromJson((l$title as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final Query$UserNotifications$Page$notifications$$AiringNotification$media$coverImage?
      coverImage;

  final Query$UserNotifications$Page$notifications$$AiringNotification$media$title?
      title;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$coverImage = coverImage;
    _resultData['coverImage'] = l$coverImage?.toJson();
    final l$title = title;
    _resultData['title'] = l$title?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$coverImage = coverImage;
    final l$title = title;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$coverImage,
      l$title,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$UserNotifications$Page$notifications$$AiringNotification$media ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$coverImage = coverImage;
    final lOther$coverImage = other.coverImage;
    if (l$coverImage != lOther$coverImage) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$UserNotifications$Page$notifications$$AiringNotification$media
    on Query$UserNotifications$Page$notifications$$AiringNotification$media {
  CopyWith$Query$UserNotifications$Page$notifications$$AiringNotification$media<
          Query$UserNotifications$Page$notifications$$AiringNotification$media>
      get copyWith =>
          CopyWith$Query$UserNotifications$Page$notifications$$AiringNotification$media(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$UserNotifications$Page$notifications$$AiringNotification$media<
    TRes> {
  factory CopyWith$Query$UserNotifications$Page$notifications$$AiringNotification$media(
    Query$UserNotifications$Page$notifications$$AiringNotification$media
        instance,
    TRes Function(
            Query$UserNotifications$Page$notifications$$AiringNotification$media)
        then,
  ) = _CopyWithImpl$Query$UserNotifications$Page$notifications$$AiringNotification$media;

  factory CopyWith$Query$UserNotifications$Page$notifications$$AiringNotification$media.stub(
          TRes res) =
      _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$AiringNotification$media;

  TRes call({
    int? id,
    Query$UserNotifications$Page$notifications$$AiringNotification$media$coverImage?
        coverImage,
    Query$UserNotifications$Page$notifications$$AiringNotification$media$title?
        title,
    String? $__typename,
  });
  CopyWith$Query$UserNotifications$Page$notifications$$AiringNotification$media$coverImage<
      TRes> get coverImage;
  CopyWith$Query$UserNotifications$Page$notifications$$AiringNotification$media$title<
      TRes> get title;
}

class _CopyWithImpl$Query$UserNotifications$Page$notifications$$AiringNotification$media<
        TRes>
    implements
        CopyWith$Query$UserNotifications$Page$notifications$$AiringNotification$media<
            TRes> {
  _CopyWithImpl$Query$UserNotifications$Page$notifications$$AiringNotification$media(
    this._instance,
    this._then,
  );

  final Query$UserNotifications$Page$notifications$$AiringNotification$media
      _instance;

  final TRes Function(
          Query$UserNotifications$Page$notifications$$AiringNotification$media)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? coverImage = _undefined,
    Object? title = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$UserNotifications$Page$notifications$$AiringNotification$media(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        coverImage: coverImage == _undefined
            ? _instance.coverImage
            : (coverImage
                as Query$UserNotifications$Page$notifications$$AiringNotification$media$coverImage?),
        title: title == _undefined
            ? _instance.title
            : (title
                as Query$UserNotifications$Page$notifications$$AiringNotification$media$title?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$UserNotifications$Page$notifications$$AiringNotification$media$coverImage<
      TRes> get coverImage {
    final local$coverImage = _instance.coverImage;
    return local$coverImage == null
        ? CopyWith$Query$UserNotifications$Page$notifications$$AiringNotification$media$coverImage
            .stub(_then(_instance))
        : CopyWith$Query$UserNotifications$Page$notifications$$AiringNotification$media$coverImage(
            local$coverImage, (e) => call(coverImage: e));
  }

  CopyWith$Query$UserNotifications$Page$notifications$$AiringNotification$media$title<
      TRes> get title {
    final local$title = _instance.title;
    return local$title == null
        ? CopyWith$Query$UserNotifications$Page$notifications$$AiringNotification$media$title
            .stub(_then(_instance))
        : CopyWith$Query$UserNotifications$Page$notifications$$AiringNotification$media$title(
            local$title, (e) => call(title: e));
  }
}

class _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$AiringNotification$media<
        TRes>
    implements
        CopyWith$Query$UserNotifications$Page$notifications$$AiringNotification$media<
            TRes> {
  _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$AiringNotification$media(
      this._res);

  TRes _res;

  call({
    int? id,
    Query$UserNotifications$Page$notifications$$AiringNotification$media$coverImage?
        coverImage,
    Query$UserNotifications$Page$notifications$$AiringNotification$media$title?
        title,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$UserNotifications$Page$notifications$$AiringNotification$media$coverImage<
          TRes>
      get coverImage =>
          CopyWith$Query$UserNotifications$Page$notifications$$AiringNotification$media$coverImage
              .stub(_res);

  CopyWith$Query$UserNotifications$Page$notifications$$AiringNotification$media$title<
          TRes>
      get title =>
          CopyWith$Query$UserNotifications$Page$notifications$$AiringNotification$media$title
              .stub(_res);
}

class Query$UserNotifications$Page$notifications$$AiringNotification$media$coverImage
    implements Fragment$AiringNotification$media$coverImage {
  Query$UserNotifications$Page$notifications$$AiringNotification$media$coverImage({
    this.medium,
    this.$__typename = 'MediaCoverImage',
  });

  factory Query$UserNotifications$Page$notifications$$AiringNotification$media$coverImage.fromJson(
      Map<String, dynamic> json) {
    final l$medium = json['medium'];
    final l$$__typename = json['__typename'];
    return Query$UserNotifications$Page$notifications$$AiringNotification$media$coverImage(
      medium: (l$medium as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? medium;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$medium = medium;
    _resultData['medium'] = l$medium;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$medium = medium;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$medium,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$UserNotifications$Page$notifications$$AiringNotification$media$coverImage ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$medium = medium;
    final lOther$medium = other.medium;
    if (l$medium != lOther$medium) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$UserNotifications$Page$notifications$$AiringNotification$media$coverImage
    on Query$UserNotifications$Page$notifications$$AiringNotification$media$coverImage {
  CopyWith$Query$UserNotifications$Page$notifications$$AiringNotification$media$coverImage<
          Query$UserNotifications$Page$notifications$$AiringNotification$media$coverImage>
      get copyWith =>
          CopyWith$Query$UserNotifications$Page$notifications$$AiringNotification$media$coverImage(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$UserNotifications$Page$notifications$$AiringNotification$media$coverImage<
    TRes> {
  factory CopyWith$Query$UserNotifications$Page$notifications$$AiringNotification$media$coverImage(
    Query$UserNotifications$Page$notifications$$AiringNotification$media$coverImage
        instance,
    TRes Function(
            Query$UserNotifications$Page$notifications$$AiringNotification$media$coverImage)
        then,
  ) = _CopyWithImpl$Query$UserNotifications$Page$notifications$$AiringNotification$media$coverImage;

  factory CopyWith$Query$UserNotifications$Page$notifications$$AiringNotification$media$coverImage.stub(
          TRes res) =
      _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$AiringNotification$media$coverImage;

  TRes call({
    String? medium,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$UserNotifications$Page$notifications$$AiringNotification$media$coverImage<
        TRes>
    implements
        CopyWith$Query$UserNotifications$Page$notifications$$AiringNotification$media$coverImage<
            TRes> {
  _CopyWithImpl$Query$UserNotifications$Page$notifications$$AiringNotification$media$coverImage(
    this._instance,
    this._then,
  );

  final Query$UserNotifications$Page$notifications$$AiringNotification$media$coverImage
      _instance;

  final TRes Function(
          Query$UserNotifications$Page$notifications$$AiringNotification$media$coverImage)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? medium = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$UserNotifications$Page$notifications$$AiringNotification$media$coverImage(
        medium: medium == _undefined ? _instance.medium : (medium as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$AiringNotification$media$coverImage<
        TRes>
    implements
        CopyWith$Query$UserNotifications$Page$notifications$$AiringNotification$media$coverImage<
            TRes> {
  _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$AiringNotification$media$coverImage(
      this._res);

  TRes _res;

  call({
    String? medium,
    String? $__typename,
  }) =>
      _res;
}

class Query$UserNotifications$Page$notifications$$AiringNotification$media$title
    implements Fragment$AiringNotification$media$title {
  Query$UserNotifications$Page$notifications$$AiringNotification$media$title({
    this.userPreferred,
    this.$__typename = 'MediaTitle',
  });

  factory Query$UserNotifications$Page$notifications$$AiringNotification$media$title.fromJson(
      Map<String, dynamic> json) {
    final l$userPreferred = json['userPreferred'];
    final l$$__typename = json['__typename'];
    return Query$UserNotifications$Page$notifications$$AiringNotification$media$title(
      userPreferred: (l$userPreferred as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? userPreferred;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$userPreferred = userPreferred;
    _resultData['userPreferred'] = l$userPreferred;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$userPreferred = userPreferred;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$userPreferred,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$UserNotifications$Page$notifications$$AiringNotification$media$title ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$userPreferred = userPreferred;
    final lOther$userPreferred = other.userPreferred;
    if (l$userPreferred != lOther$userPreferred) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$UserNotifications$Page$notifications$$AiringNotification$media$title
    on Query$UserNotifications$Page$notifications$$AiringNotification$media$title {
  CopyWith$Query$UserNotifications$Page$notifications$$AiringNotification$media$title<
          Query$UserNotifications$Page$notifications$$AiringNotification$media$title>
      get copyWith =>
          CopyWith$Query$UserNotifications$Page$notifications$$AiringNotification$media$title(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$UserNotifications$Page$notifications$$AiringNotification$media$title<
    TRes> {
  factory CopyWith$Query$UserNotifications$Page$notifications$$AiringNotification$media$title(
    Query$UserNotifications$Page$notifications$$AiringNotification$media$title
        instance,
    TRes Function(
            Query$UserNotifications$Page$notifications$$AiringNotification$media$title)
        then,
  ) = _CopyWithImpl$Query$UserNotifications$Page$notifications$$AiringNotification$media$title;

  factory CopyWith$Query$UserNotifications$Page$notifications$$AiringNotification$media$title.stub(
          TRes res) =
      _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$AiringNotification$media$title;

  TRes call({
    String? userPreferred,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$UserNotifications$Page$notifications$$AiringNotification$media$title<
        TRes>
    implements
        CopyWith$Query$UserNotifications$Page$notifications$$AiringNotification$media$title<
            TRes> {
  _CopyWithImpl$Query$UserNotifications$Page$notifications$$AiringNotification$media$title(
    this._instance,
    this._then,
  );

  final Query$UserNotifications$Page$notifications$$AiringNotification$media$title
      _instance;

  final TRes Function(
          Query$UserNotifications$Page$notifications$$AiringNotification$media$title)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userPreferred = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$UserNotifications$Page$notifications$$AiringNotification$media$title(
        userPreferred: userPreferred == _undefined
            ? _instance.userPreferred
            : (userPreferred as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$AiringNotification$media$title<
        TRes>
    implements
        CopyWith$Query$UserNotifications$Page$notifications$$AiringNotification$media$title<
            TRes> {
  _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$AiringNotification$media$title(
      this._res);

  TRes _res;

  call({
    String? userPreferred,
    String? $__typename,
  }) =>
      _res;
}

class Query$UserNotifications$Page$notifications$$FollowingNotification
    implements
        Fragment$FollowingNotification,
        Query$UserNotifications$Page$notifications {
  Query$UserNotifications$Page$notifications$$FollowingNotification({
    required this.id,
    this.user,
    this.context,
    this.createdAt,
    this.$__typename = 'FollowingNotification',
  });

  factory Query$UserNotifications$Page$notifications$$FollowingNotification.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$user = json['user'];
    final l$context = json['context'];
    final l$createdAt = json['createdAt'];
    final l$$__typename = json['__typename'];
    return Query$UserNotifications$Page$notifications$$FollowingNotification(
      id: (l$id as int),
      user: l$user == null
          ? null
          : Query$UserNotifications$Page$notifications$$FollowingNotification$user
              .fromJson((l$user as Map<String, dynamic>)),
      context: (l$context as String?),
      createdAt: (l$createdAt as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final Query$UserNotifications$Page$notifications$$FollowingNotification$user?
      user;

  final String? context;

  final int? createdAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$context = context;
    _resultData['context'] = l$context;
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$user = user;
    final l$context = context;
    final l$createdAt = createdAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$user,
      l$context,
      l$createdAt,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$UserNotifications$Page$notifications$$FollowingNotification ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
      return false;
    }
    final l$context = context;
    final lOther$context = other.context;
    if (l$context != lOther$context) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$UserNotifications$Page$notifications$$FollowingNotification
    on Query$UserNotifications$Page$notifications$$FollowingNotification {
  CopyWith$Query$UserNotifications$Page$notifications$$FollowingNotification<
          Query$UserNotifications$Page$notifications$$FollowingNotification>
      get copyWith =>
          CopyWith$Query$UserNotifications$Page$notifications$$FollowingNotification(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$UserNotifications$Page$notifications$$FollowingNotification<
    TRes> {
  factory CopyWith$Query$UserNotifications$Page$notifications$$FollowingNotification(
    Query$UserNotifications$Page$notifications$$FollowingNotification instance,
    TRes Function(
            Query$UserNotifications$Page$notifications$$FollowingNotification)
        then,
  ) = _CopyWithImpl$Query$UserNotifications$Page$notifications$$FollowingNotification;

  factory CopyWith$Query$UserNotifications$Page$notifications$$FollowingNotification.stub(
          TRes res) =
      _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$FollowingNotification;

  TRes call({
    int? id,
    Query$UserNotifications$Page$notifications$$FollowingNotification$user?
        user,
    String? context,
    int? createdAt,
    String? $__typename,
  });
  CopyWith$Query$UserNotifications$Page$notifications$$FollowingNotification$user<
      TRes> get user;
}

class _CopyWithImpl$Query$UserNotifications$Page$notifications$$FollowingNotification<
        TRes>
    implements
        CopyWith$Query$UserNotifications$Page$notifications$$FollowingNotification<
            TRes> {
  _CopyWithImpl$Query$UserNotifications$Page$notifications$$FollowingNotification(
    this._instance,
    this._then,
  );

  final Query$UserNotifications$Page$notifications$$FollowingNotification
      _instance;

  final TRes Function(
      Query$UserNotifications$Page$notifications$$FollowingNotification) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? user = _undefined,
    Object? context = _undefined,
    Object? createdAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$UserNotifications$Page$notifications$$FollowingNotification(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        user: user == _undefined
            ? _instance.user
            : (user
                as Query$UserNotifications$Page$notifications$$FollowingNotification$user?),
        context:
            context == _undefined ? _instance.context : (context as String?),
        createdAt:
            createdAt == _undefined ? _instance.createdAt : (createdAt as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$UserNotifications$Page$notifications$$FollowingNotification$user<
      TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith$Query$UserNotifications$Page$notifications$$FollowingNotification$user
            .stub(_then(_instance))
        : CopyWith$Query$UserNotifications$Page$notifications$$FollowingNotification$user(
            local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$FollowingNotification<
        TRes>
    implements
        CopyWith$Query$UserNotifications$Page$notifications$$FollowingNotification<
            TRes> {
  _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$FollowingNotification(
      this._res);

  TRes _res;

  call({
    int? id,
    Query$UserNotifications$Page$notifications$$FollowingNotification$user?
        user,
    String? context,
    int? createdAt,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$UserNotifications$Page$notifications$$FollowingNotification$user<
          TRes>
      get user =>
          CopyWith$Query$UserNotifications$Page$notifications$$FollowingNotification$user
              .stub(_res);
}

class Query$UserNotifications$Page$notifications$$FollowingNotification$user
    implements Fragment$FollowingNotification$user {
  Query$UserNotifications$Page$notifications$$FollowingNotification$user({
    required this.id,
    required this.name,
    this.avatar,
    this.$__typename = 'User',
  });

  factory Query$UserNotifications$Page$notifications$$FollowingNotification$user.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$avatar = json['avatar'];
    final l$$__typename = json['__typename'];
    return Query$UserNotifications$Page$notifications$$FollowingNotification$user(
      id: (l$id as int),
      name: (l$name as String),
      avatar: l$avatar == null
          ? null
          : Query$UserNotifications$Page$notifications$$FollowingNotification$user$avatar
              .fromJson((l$avatar as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String name;

  final Query$UserNotifications$Page$notifications$$FollowingNotification$user$avatar?
      avatar;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$avatar = avatar;
    _resultData['avatar'] = l$avatar?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$avatar = avatar;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$avatar,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$UserNotifications$Page$notifications$$FollowingNotification$user ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$avatar = avatar;
    final lOther$avatar = other.avatar;
    if (l$avatar != lOther$avatar) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$UserNotifications$Page$notifications$$FollowingNotification$user
    on Query$UserNotifications$Page$notifications$$FollowingNotification$user {
  CopyWith$Query$UserNotifications$Page$notifications$$FollowingNotification$user<
          Query$UserNotifications$Page$notifications$$FollowingNotification$user>
      get copyWith =>
          CopyWith$Query$UserNotifications$Page$notifications$$FollowingNotification$user(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$UserNotifications$Page$notifications$$FollowingNotification$user<
    TRes> {
  factory CopyWith$Query$UserNotifications$Page$notifications$$FollowingNotification$user(
    Query$UserNotifications$Page$notifications$$FollowingNotification$user
        instance,
    TRes Function(
            Query$UserNotifications$Page$notifications$$FollowingNotification$user)
        then,
  ) = _CopyWithImpl$Query$UserNotifications$Page$notifications$$FollowingNotification$user;

  factory CopyWith$Query$UserNotifications$Page$notifications$$FollowingNotification$user.stub(
          TRes res) =
      _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$FollowingNotification$user;

  TRes call({
    int? id,
    String? name,
    Query$UserNotifications$Page$notifications$$FollowingNotification$user$avatar?
        avatar,
    String? $__typename,
  });
  CopyWith$Query$UserNotifications$Page$notifications$$FollowingNotification$user$avatar<
      TRes> get avatar;
}

class _CopyWithImpl$Query$UserNotifications$Page$notifications$$FollowingNotification$user<
        TRes>
    implements
        CopyWith$Query$UserNotifications$Page$notifications$$FollowingNotification$user<
            TRes> {
  _CopyWithImpl$Query$UserNotifications$Page$notifications$$FollowingNotification$user(
    this._instance,
    this._then,
  );

  final Query$UserNotifications$Page$notifications$$FollowingNotification$user
      _instance;

  final TRes Function(
          Query$UserNotifications$Page$notifications$$FollowingNotification$user)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? avatar = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$UserNotifications$Page$notifications$$FollowingNotification$user(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        avatar: avatar == _undefined
            ? _instance.avatar
            : (avatar
                as Query$UserNotifications$Page$notifications$$FollowingNotification$user$avatar?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$UserNotifications$Page$notifications$$FollowingNotification$user$avatar<
      TRes> get avatar {
    final local$avatar = _instance.avatar;
    return local$avatar == null
        ? CopyWith$Query$UserNotifications$Page$notifications$$FollowingNotification$user$avatar
            .stub(_then(_instance))
        : CopyWith$Query$UserNotifications$Page$notifications$$FollowingNotification$user$avatar(
            local$avatar, (e) => call(avatar: e));
  }
}

class _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$FollowingNotification$user<
        TRes>
    implements
        CopyWith$Query$UserNotifications$Page$notifications$$FollowingNotification$user<
            TRes> {
  _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$FollowingNotification$user(
      this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    Query$UserNotifications$Page$notifications$$FollowingNotification$user$avatar?
        avatar,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$UserNotifications$Page$notifications$$FollowingNotification$user$avatar<
          TRes>
      get avatar =>
          CopyWith$Query$UserNotifications$Page$notifications$$FollowingNotification$user$avatar
              .stub(_res);
}

class Query$UserNotifications$Page$notifications$$FollowingNotification$user$avatar
    implements Fragment$FollowingNotification$user$avatar {
  Query$UserNotifications$Page$notifications$$FollowingNotification$user$avatar({
    this.medium,
    this.$__typename = 'UserAvatar',
  });

  factory Query$UserNotifications$Page$notifications$$FollowingNotification$user$avatar.fromJson(
      Map<String, dynamic> json) {
    final l$medium = json['medium'];
    final l$$__typename = json['__typename'];
    return Query$UserNotifications$Page$notifications$$FollowingNotification$user$avatar(
      medium: (l$medium as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? medium;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$medium = medium;
    _resultData['medium'] = l$medium;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$medium = medium;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$medium,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$UserNotifications$Page$notifications$$FollowingNotification$user$avatar ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$medium = medium;
    final lOther$medium = other.medium;
    if (l$medium != lOther$medium) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$UserNotifications$Page$notifications$$FollowingNotification$user$avatar
    on Query$UserNotifications$Page$notifications$$FollowingNotification$user$avatar {
  CopyWith$Query$UserNotifications$Page$notifications$$FollowingNotification$user$avatar<
          Query$UserNotifications$Page$notifications$$FollowingNotification$user$avatar>
      get copyWith =>
          CopyWith$Query$UserNotifications$Page$notifications$$FollowingNotification$user$avatar(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$UserNotifications$Page$notifications$$FollowingNotification$user$avatar<
    TRes> {
  factory CopyWith$Query$UserNotifications$Page$notifications$$FollowingNotification$user$avatar(
    Query$UserNotifications$Page$notifications$$FollowingNotification$user$avatar
        instance,
    TRes Function(
            Query$UserNotifications$Page$notifications$$FollowingNotification$user$avatar)
        then,
  ) = _CopyWithImpl$Query$UserNotifications$Page$notifications$$FollowingNotification$user$avatar;

  factory CopyWith$Query$UserNotifications$Page$notifications$$FollowingNotification$user$avatar.stub(
          TRes res) =
      _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$FollowingNotification$user$avatar;

  TRes call({
    String? medium,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$UserNotifications$Page$notifications$$FollowingNotification$user$avatar<
        TRes>
    implements
        CopyWith$Query$UserNotifications$Page$notifications$$FollowingNotification$user$avatar<
            TRes> {
  _CopyWithImpl$Query$UserNotifications$Page$notifications$$FollowingNotification$user$avatar(
    this._instance,
    this._then,
  );

  final Query$UserNotifications$Page$notifications$$FollowingNotification$user$avatar
      _instance;

  final TRes Function(
          Query$UserNotifications$Page$notifications$$FollowingNotification$user$avatar)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? medium = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$UserNotifications$Page$notifications$$FollowingNotification$user$avatar(
        medium: medium == _undefined ? _instance.medium : (medium as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$FollowingNotification$user$avatar<
        TRes>
    implements
        CopyWith$Query$UserNotifications$Page$notifications$$FollowingNotification$user$avatar<
            TRes> {
  _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$FollowingNotification$user$avatar(
      this._res);

  TRes _res;

  call({
    String? medium,
    String? $__typename,
  }) =>
      _res;
}

class Query$UserNotifications$Page$notifications$$MediaDataChangeNotification
    implements
        Fragment$MediaDataChangeNotification,
        Query$UserNotifications$Page$notifications {
  Query$UserNotifications$Page$notifications$$MediaDataChangeNotification({
    required this.id,
    this.media,
    this.context,
    this.reason,
    this.createdAt,
    this.$__typename = 'MediaDataChangeNotification',
  });

  factory Query$UserNotifications$Page$notifications$$MediaDataChangeNotification.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$media = json['media'];
    final l$context = json['context'];
    final l$reason = json['reason'];
    final l$createdAt = json['createdAt'];
    final l$$__typename = json['__typename'];
    return Query$UserNotifications$Page$notifications$$MediaDataChangeNotification(
      id: (l$id as int),
      media: l$media == null
          ? null
          : Query$UserNotifications$Page$notifications$$MediaDataChangeNotification$media
              .fromJson((l$media as Map<String, dynamic>)),
      context: (l$context as String?),
      reason: (l$reason as String?),
      createdAt: (l$createdAt as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final Query$UserNotifications$Page$notifications$$MediaDataChangeNotification$media?
      media;

  final String? context;

  final String? reason;

  final int? createdAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$media = media;
    _resultData['media'] = l$media?.toJson();
    final l$context = context;
    _resultData['context'] = l$context;
    final l$reason = reason;
    _resultData['reason'] = l$reason;
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$media = media;
    final l$context = context;
    final l$reason = reason;
    final l$createdAt = createdAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$media,
      l$context,
      l$reason,
      l$createdAt,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$UserNotifications$Page$notifications$$MediaDataChangeNotification ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$media = media;
    final lOther$media = other.media;
    if (l$media != lOther$media) {
      return false;
    }
    final l$context = context;
    final lOther$context = other.context;
    if (l$context != lOther$context) {
      return false;
    }
    final l$reason = reason;
    final lOther$reason = other.reason;
    if (l$reason != lOther$reason) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$UserNotifications$Page$notifications$$MediaDataChangeNotification
    on Query$UserNotifications$Page$notifications$$MediaDataChangeNotification {
  CopyWith$Query$UserNotifications$Page$notifications$$MediaDataChangeNotification<
          Query$UserNotifications$Page$notifications$$MediaDataChangeNotification>
      get copyWith =>
          CopyWith$Query$UserNotifications$Page$notifications$$MediaDataChangeNotification(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$UserNotifications$Page$notifications$$MediaDataChangeNotification<
    TRes> {
  factory CopyWith$Query$UserNotifications$Page$notifications$$MediaDataChangeNotification(
    Query$UserNotifications$Page$notifications$$MediaDataChangeNotification
        instance,
    TRes Function(
            Query$UserNotifications$Page$notifications$$MediaDataChangeNotification)
        then,
  ) = _CopyWithImpl$Query$UserNotifications$Page$notifications$$MediaDataChangeNotification;

  factory CopyWith$Query$UserNotifications$Page$notifications$$MediaDataChangeNotification.stub(
          TRes res) =
      _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$MediaDataChangeNotification;

  TRes call({
    int? id,
    Query$UserNotifications$Page$notifications$$MediaDataChangeNotification$media?
        media,
    String? context,
    String? reason,
    int? createdAt,
    String? $__typename,
  });
  CopyWith$Query$UserNotifications$Page$notifications$$MediaDataChangeNotification$media<
      TRes> get media;
}

class _CopyWithImpl$Query$UserNotifications$Page$notifications$$MediaDataChangeNotification<
        TRes>
    implements
        CopyWith$Query$UserNotifications$Page$notifications$$MediaDataChangeNotification<
            TRes> {
  _CopyWithImpl$Query$UserNotifications$Page$notifications$$MediaDataChangeNotification(
    this._instance,
    this._then,
  );

  final Query$UserNotifications$Page$notifications$$MediaDataChangeNotification
      _instance;

  final TRes Function(
          Query$UserNotifications$Page$notifications$$MediaDataChangeNotification)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? media = _undefined,
    Object? context = _undefined,
    Object? reason = _undefined,
    Object? createdAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$UserNotifications$Page$notifications$$MediaDataChangeNotification(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        media: media == _undefined
            ? _instance.media
            : (media
                as Query$UserNotifications$Page$notifications$$MediaDataChangeNotification$media?),
        context:
            context == _undefined ? _instance.context : (context as String?),
        reason: reason == _undefined ? _instance.reason : (reason as String?),
        createdAt:
            createdAt == _undefined ? _instance.createdAt : (createdAt as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$UserNotifications$Page$notifications$$MediaDataChangeNotification$media<
      TRes> get media {
    final local$media = _instance.media;
    return local$media == null
        ? CopyWith$Query$UserNotifications$Page$notifications$$MediaDataChangeNotification$media
            .stub(_then(_instance))
        : CopyWith$Query$UserNotifications$Page$notifications$$MediaDataChangeNotification$media(
            local$media, (e) => call(media: e));
  }
}

class _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$MediaDataChangeNotification<
        TRes>
    implements
        CopyWith$Query$UserNotifications$Page$notifications$$MediaDataChangeNotification<
            TRes> {
  _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$MediaDataChangeNotification(
      this._res);

  TRes _res;

  call({
    int? id,
    Query$UserNotifications$Page$notifications$$MediaDataChangeNotification$media?
        media,
    String? context,
    String? reason,
    int? createdAt,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$UserNotifications$Page$notifications$$MediaDataChangeNotification$media<
          TRes>
      get media =>
          CopyWith$Query$UserNotifications$Page$notifications$$MediaDataChangeNotification$media
              .stub(_res);
}

class Query$UserNotifications$Page$notifications$$MediaDataChangeNotification$media
    implements Fragment$MediaDataChangeNotification$media {
  Query$UserNotifications$Page$notifications$$MediaDataChangeNotification$media({
    required this.id,
    this.title,
    this.coverImage,
    this.$__typename = 'Media',
  });

  factory Query$UserNotifications$Page$notifications$$MediaDataChangeNotification$media.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$coverImage = json['coverImage'];
    final l$$__typename = json['__typename'];
    return Query$UserNotifications$Page$notifications$$MediaDataChangeNotification$media(
      id: (l$id as int),
      title: l$title == null
          ? null
          : Query$UserNotifications$Page$notifications$$MediaDataChangeNotification$media$title
              .fromJson((l$title as Map<String, dynamic>)),
      coverImage: l$coverImage == null
          ? null
          : Query$UserNotifications$Page$notifications$$MediaDataChangeNotification$media$coverImage
              .fromJson((l$coverImage as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final Query$UserNotifications$Page$notifications$$MediaDataChangeNotification$media$title?
      title;

  final Query$UserNotifications$Page$notifications$$MediaDataChangeNotification$media$coverImage?
      coverImage;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$title = title;
    _resultData['title'] = l$title?.toJson();
    final l$coverImage = coverImage;
    _resultData['coverImage'] = l$coverImage?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$title = title;
    final l$coverImage = coverImage;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$title,
      l$coverImage,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$UserNotifications$Page$notifications$$MediaDataChangeNotification$media ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
      return false;
    }
    final l$coverImage = coverImage;
    final lOther$coverImage = other.coverImage;
    if (l$coverImage != lOther$coverImage) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$UserNotifications$Page$notifications$$MediaDataChangeNotification$media
    on Query$UserNotifications$Page$notifications$$MediaDataChangeNotification$media {
  CopyWith$Query$UserNotifications$Page$notifications$$MediaDataChangeNotification$media<
          Query$UserNotifications$Page$notifications$$MediaDataChangeNotification$media>
      get copyWith =>
          CopyWith$Query$UserNotifications$Page$notifications$$MediaDataChangeNotification$media(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$UserNotifications$Page$notifications$$MediaDataChangeNotification$media<
    TRes> {
  factory CopyWith$Query$UserNotifications$Page$notifications$$MediaDataChangeNotification$media(
    Query$UserNotifications$Page$notifications$$MediaDataChangeNotification$media
        instance,
    TRes Function(
            Query$UserNotifications$Page$notifications$$MediaDataChangeNotification$media)
        then,
  ) = _CopyWithImpl$Query$UserNotifications$Page$notifications$$MediaDataChangeNotification$media;

  factory CopyWith$Query$UserNotifications$Page$notifications$$MediaDataChangeNotification$media.stub(
          TRes res) =
      _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$MediaDataChangeNotification$media;

  TRes call({
    int? id,
    Query$UserNotifications$Page$notifications$$MediaDataChangeNotification$media$title?
        title,
    Query$UserNotifications$Page$notifications$$MediaDataChangeNotification$media$coverImage?
        coverImage,
    String? $__typename,
  });
  CopyWith$Query$UserNotifications$Page$notifications$$MediaDataChangeNotification$media$title<
      TRes> get title;
  CopyWith$Query$UserNotifications$Page$notifications$$MediaDataChangeNotification$media$coverImage<
      TRes> get coverImage;
}

class _CopyWithImpl$Query$UserNotifications$Page$notifications$$MediaDataChangeNotification$media<
        TRes>
    implements
        CopyWith$Query$UserNotifications$Page$notifications$$MediaDataChangeNotification$media<
            TRes> {
  _CopyWithImpl$Query$UserNotifications$Page$notifications$$MediaDataChangeNotification$media(
    this._instance,
    this._then,
  );

  final Query$UserNotifications$Page$notifications$$MediaDataChangeNotification$media
      _instance;

  final TRes Function(
          Query$UserNotifications$Page$notifications$$MediaDataChangeNotification$media)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? coverImage = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$UserNotifications$Page$notifications$$MediaDataChangeNotification$media(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        title: title == _undefined
            ? _instance.title
            : (title
                as Query$UserNotifications$Page$notifications$$MediaDataChangeNotification$media$title?),
        coverImage: coverImage == _undefined
            ? _instance.coverImage
            : (coverImage
                as Query$UserNotifications$Page$notifications$$MediaDataChangeNotification$media$coverImage?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$UserNotifications$Page$notifications$$MediaDataChangeNotification$media$title<
      TRes> get title {
    final local$title = _instance.title;
    return local$title == null
        ? CopyWith$Query$UserNotifications$Page$notifications$$MediaDataChangeNotification$media$title
            .stub(_then(_instance))
        : CopyWith$Query$UserNotifications$Page$notifications$$MediaDataChangeNotification$media$title(
            local$title, (e) => call(title: e));
  }

  CopyWith$Query$UserNotifications$Page$notifications$$MediaDataChangeNotification$media$coverImage<
      TRes> get coverImage {
    final local$coverImage = _instance.coverImage;
    return local$coverImage == null
        ? CopyWith$Query$UserNotifications$Page$notifications$$MediaDataChangeNotification$media$coverImage
            .stub(_then(_instance))
        : CopyWith$Query$UserNotifications$Page$notifications$$MediaDataChangeNotification$media$coverImage(
            local$coverImage, (e) => call(coverImage: e));
  }
}

class _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$MediaDataChangeNotification$media<
        TRes>
    implements
        CopyWith$Query$UserNotifications$Page$notifications$$MediaDataChangeNotification$media<
            TRes> {
  _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$MediaDataChangeNotification$media(
      this._res);

  TRes _res;

  call({
    int? id,
    Query$UserNotifications$Page$notifications$$MediaDataChangeNotification$media$title?
        title,
    Query$UserNotifications$Page$notifications$$MediaDataChangeNotification$media$coverImage?
        coverImage,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$UserNotifications$Page$notifications$$MediaDataChangeNotification$media$title<
          TRes>
      get title =>
          CopyWith$Query$UserNotifications$Page$notifications$$MediaDataChangeNotification$media$title
              .stub(_res);

  CopyWith$Query$UserNotifications$Page$notifications$$MediaDataChangeNotification$media$coverImage<
          TRes>
      get coverImage =>
          CopyWith$Query$UserNotifications$Page$notifications$$MediaDataChangeNotification$media$coverImage
              .stub(_res);
}

class Query$UserNotifications$Page$notifications$$MediaDataChangeNotification$media$title
    implements Fragment$MediaDataChangeNotification$media$title {
  Query$UserNotifications$Page$notifications$$MediaDataChangeNotification$media$title({
    this.userPreferred,
    this.$__typename = 'MediaTitle',
  });

  factory Query$UserNotifications$Page$notifications$$MediaDataChangeNotification$media$title.fromJson(
      Map<String, dynamic> json) {
    final l$userPreferred = json['userPreferred'];
    final l$$__typename = json['__typename'];
    return Query$UserNotifications$Page$notifications$$MediaDataChangeNotification$media$title(
      userPreferred: (l$userPreferred as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? userPreferred;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$userPreferred = userPreferred;
    _resultData['userPreferred'] = l$userPreferred;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$userPreferred = userPreferred;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$userPreferred,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$UserNotifications$Page$notifications$$MediaDataChangeNotification$media$title ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$userPreferred = userPreferred;
    final lOther$userPreferred = other.userPreferred;
    if (l$userPreferred != lOther$userPreferred) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$UserNotifications$Page$notifications$$MediaDataChangeNotification$media$title
    on Query$UserNotifications$Page$notifications$$MediaDataChangeNotification$media$title {
  CopyWith$Query$UserNotifications$Page$notifications$$MediaDataChangeNotification$media$title<
          Query$UserNotifications$Page$notifications$$MediaDataChangeNotification$media$title>
      get copyWith =>
          CopyWith$Query$UserNotifications$Page$notifications$$MediaDataChangeNotification$media$title(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$UserNotifications$Page$notifications$$MediaDataChangeNotification$media$title<
    TRes> {
  factory CopyWith$Query$UserNotifications$Page$notifications$$MediaDataChangeNotification$media$title(
    Query$UserNotifications$Page$notifications$$MediaDataChangeNotification$media$title
        instance,
    TRes Function(
            Query$UserNotifications$Page$notifications$$MediaDataChangeNotification$media$title)
        then,
  ) = _CopyWithImpl$Query$UserNotifications$Page$notifications$$MediaDataChangeNotification$media$title;

  factory CopyWith$Query$UserNotifications$Page$notifications$$MediaDataChangeNotification$media$title.stub(
          TRes res) =
      _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$MediaDataChangeNotification$media$title;

  TRes call({
    String? userPreferred,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$UserNotifications$Page$notifications$$MediaDataChangeNotification$media$title<
        TRes>
    implements
        CopyWith$Query$UserNotifications$Page$notifications$$MediaDataChangeNotification$media$title<
            TRes> {
  _CopyWithImpl$Query$UserNotifications$Page$notifications$$MediaDataChangeNotification$media$title(
    this._instance,
    this._then,
  );

  final Query$UserNotifications$Page$notifications$$MediaDataChangeNotification$media$title
      _instance;

  final TRes Function(
          Query$UserNotifications$Page$notifications$$MediaDataChangeNotification$media$title)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userPreferred = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$UserNotifications$Page$notifications$$MediaDataChangeNotification$media$title(
        userPreferred: userPreferred == _undefined
            ? _instance.userPreferred
            : (userPreferred as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$MediaDataChangeNotification$media$title<
        TRes>
    implements
        CopyWith$Query$UserNotifications$Page$notifications$$MediaDataChangeNotification$media$title<
            TRes> {
  _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$MediaDataChangeNotification$media$title(
      this._res);

  TRes _res;

  call({
    String? userPreferred,
    String? $__typename,
  }) =>
      _res;
}

class Query$UserNotifications$Page$notifications$$MediaDataChangeNotification$media$coverImage
    implements Fragment$MediaDataChangeNotification$media$coverImage {
  Query$UserNotifications$Page$notifications$$MediaDataChangeNotification$media$coverImage({
    this.medium,
    this.$__typename = 'MediaCoverImage',
  });

  factory Query$UserNotifications$Page$notifications$$MediaDataChangeNotification$media$coverImage.fromJson(
      Map<String, dynamic> json) {
    final l$medium = json['medium'];
    final l$$__typename = json['__typename'];
    return Query$UserNotifications$Page$notifications$$MediaDataChangeNotification$media$coverImage(
      medium: (l$medium as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? medium;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$medium = medium;
    _resultData['medium'] = l$medium;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$medium = medium;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$medium,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$UserNotifications$Page$notifications$$MediaDataChangeNotification$media$coverImage ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$medium = medium;
    final lOther$medium = other.medium;
    if (l$medium != lOther$medium) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$UserNotifications$Page$notifications$$MediaDataChangeNotification$media$coverImage
    on Query$UserNotifications$Page$notifications$$MediaDataChangeNotification$media$coverImage {
  CopyWith$Query$UserNotifications$Page$notifications$$MediaDataChangeNotification$media$coverImage<
          Query$UserNotifications$Page$notifications$$MediaDataChangeNotification$media$coverImage>
      get copyWith =>
          CopyWith$Query$UserNotifications$Page$notifications$$MediaDataChangeNotification$media$coverImage(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$UserNotifications$Page$notifications$$MediaDataChangeNotification$media$coverImage<
    TRes> {
  factory CopyWith$Query$UserNotifications$Page$notifications$$MediaDataChangeNotification$media$coverImage(
    Query$UserNotifications$Page$notifications$$MediaDataChangeNotification$media$coverImage
        instance,
    TRes Function(
            Query$UserNotifications$Page$notifications$$MediaDataChangeNotification$media$coverImage)
        then,
  ) = _CopyWithImpl$Query$UserNotifications$Page$notifications$$MediaDataChangeNotification$media$coverImage;

  factory CopyWith$Query$UserNotifications$Page$notifications$$MediaDataChangeNotification$media$coverImage.stub(
          TRes res) =
      _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$MediaDataChangeNotification$media$coverImage;

  TRes call({
    String? medium,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$UserNotifications$Page$notifications$$MediaDataChangeNotification$media$coverImage<
        TRes>
    implements
        CopyWith$Query$UserNotifications$Page$notifications$$MediaDataChangeNotification$media$coverImage<
            TRes> {
  _CopyWithImpl$Query$UserNotifications$Page$notifications$$MediaDataChangeNotification$media$coverImage(
    this._instance,
    this._then,
  );

  final Query$UserNotifications$Page$notifications$$MediaDataChangeNotification$media$coverImage
      _instance;

  final TRes Function(
          Query$UserNotifications$Page$notifications$$MediaDataChangeNotification$media$coverImage)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? medium = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$UserNotifications$Page$notifications$$MediaDataChangeNotification$media$coverImage(
        medium: medium == _undefined ? _instance.medium : (medium as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$MediaDataChangeNotification$media$coverImage<
        TRes>
    implements
        CopyWith$Query$UserNotifications$Page$notifications$$MediaDataChangeNotification$media$coverImage<
            TRes> {
  _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$MediaDataChangeNotification$media$coverImage(
      this._res);

  TRes _res;

  call({
    String? medium,
    String? $__typename,
  }) =>
      _res;
}

class Query$UserNotifications$Page$notifications$$MediaDeletionNotification
    implements
        Fragment$MediaDeletionNotification,
        Query$UserNotifications$Page$notifications {
  Query$UserNotifications$Page$notifications$$MediaDeletionNotification({
    required this.id,
    this.deletedMediaTitle,
    this.reason,
    this.context,
    this.createdAt,
    this.$__typename = 'MediaDeletionNotification',
  });

  factory Query$UserNotifications$Page$notifications$$MediaDeletionNotification.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$deletedMediaTitle = json['deletedMediaTitle'];
    final l$reason = json['reason'];
    final l$context = json['context'];
    final l$createdAt = json['createdAt'];
    final l$$__typename = json['__typename'];
    return Query$UserNotifications$Page$notifications$$MediaDeletionNotification(
      id: (l$id as int),
      deletedMediaTitle: (l$deletedMediaTitle as String?),
      reason: (l$reason as String?),
      context: (l$context as String?),
      createdAt: (l$createdAt as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String? deletedMediaTitle;

  final String? reason;

  final String? context;

  final int? createdAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$deletedMediaTitle = deletedMediaTitle;
    _resultData['deletedMediaTitle'] = l$deletedMediaTitle;
    final l$reason = reason;
    _resultData['reason'] = l$reason;
    final l$context = context;
    _resultData['context'] = l$context;
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$deletedMediaTitle = deletedMediaTitle;
    final l$reason = reason;
    final l$context = context;
    final l$createdAt = createdAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$deletedMediaTitle,
      l$reason,
      l$context,
      l$createdAt,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$UserNotifications$Page$notifications$$MediaDeletionNotification ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$deletedMediaTitle = deletedMediaTitle;
    final lOther$deletedMediaTitle = other.deletedMediaTitle;
    if (l$deletedMediaTitle != lOther$deletedMediaTitle) {
      return false;
    }
    final l$reason = reason;
    final lOther$reason = other.reason;
    if (l$reason != lOther$reason) {
      return false;
    }
    final l$context = context;
    final lOther$context = other.context;
    if (l$context != lOther$context) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$UserNotifications$Page$notifications$$MediaDeletionNotification
    on Query$UserNotifications$Page$notifications$$MediaDeletionNotification {
  CopyWith$Query$UserNotifications$Page$notifications$$MediaDeletionNotification<
          Query$UserNotifications$Page$notifications$$MediaDeletionNotification>
      get copyWith =>
          CopyWith$Query$UserNotifications$Page$notifications$$MediaDeletionNotification(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$UserNotifications$Page$notifications$$MediaDeletionNotification<
    TRes> {
  factory CopyWith$Query$UserNotifications$Page$notifications$$MediaDeletionNotification(
    Query$UserNotifications$Page$notifications$$MediaDeletionNotification
        instance,
    TRes Function(
            Query$UserNotifications$Page$notifications$$MediaDeletionNotification)
        then,
  ) = _CopyWithImpl$Query$UserNotifications$Page$notifications$$MediaDeletionNotification;

  factory CopyWith$Query$UserNotifications$Page$notifications$$MediaDeletionNotification.stub(
          TRes res) =
      _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$MediaDeletionNotification;

  TRes call({
    int? id,
    String? deletedMediaTitle,
    String? reason,
    String? context,
    int? createdAt,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$UserNotifications$Page$notifications$$MediaDeletionNotification<
        TRes>
    implements
        CopyWith$Query$UserNotifications$Page$notifications$$MediaDeletionNotification<
            TRes> {
  _CopyWithImpl$Query$UserNotifications$Page$notifications$$MediaDeletionNotification(
    this._instance,
    this._then,
  );

  final Query$UserNotifications$Page$notifications$$MediaDeletionNotification
      _instance;

  final TRes Function(
          Query$UserNotifications$Page$notifications$$MediaDeletionNotification)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? deletedMediaTitle = _undefined,
    Object? reason = _undefined,
    Object? context = _undefined,
    Object? createdAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$UserNotifications$Page$notifications$$MediaDeletionNotification(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        deletedMediaTitle: deletedMediaTitle == _undefined
            ? _instance.deletedMediaTitle
            : (deletedMediaTitle as String?),
        reason: reason == _undefined ? _instance.reason : (reason as String?),
        context:
            context == _undefined ? _instance.context : (context as String?),
        createdAt:
            createdAt == _undefined ? _instance.createdAt : (createdAt as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$MediaDeletionNotification<
        TRes>
    implements
        CopyWith$Query$UserNotifications$Page$notifications$$MediaDeletionNotification<
            TRes> {
  _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$MediaDeletionNotification(
      this._res);

  TRes _res;

  call({
    int? id,
    String? deletedMediaTitle,
    String? reason,
    String? context,
    int? createdAt,
    String? $__typename,
  }) =>
      _res;
}

class Query$UserNotifications$Page$notifications$$MediaMergeNotification
    implements
        Fragment$MediaMergeNotification,
        Query$UserNotifications$Page$notifications {
  Query$UserNotifications$Page$notifications$$MediaMergeNotification({
    required this.id,
    this.media,
    this.deletedMediaTitles,
    this.context,
    this.createdAt,
    this.reason,
    this.$__typename = 'MediaMergeNotification',
  });

  factory Query$UserNotifications$Page$notifications$$MediaMergeNotification.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$media = json['media'];
    final l$deletedMediaTitles = json['deletedMediaTitles'];
    final l$context = json['context'];
    final l$createdAt = json['createdAt'];
    final l$reason = json['reason'];
    final l$$__typename = json['__typename'];
    return Query$UserNotifications$Page$notifications$$MediaMergeNotification(
      id: (l$id as int),
      media: l$media == null
          ? null
          : Query$UserNotifications$Page$notifications$$MediaMergeNotification$media
              .fromJson((l$media as Map<String, dynamic>)),
      deletedMediaTitles: (l$deletedMediaTitles as List<dynamic>?)
          ?.map((e) => (e as String?))
          .toList(),
      context: (l$context as String?),
      createdAt: (l$createdAt as int?),
      reason: (l$reason as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final Query$UserNotifications$Page$notifications$$MediaMergeNotification$media?
      media;

  final List<String?>? deletedMediaTitles;

  final String? context;

  final int? createdAt;

  final String? reason;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$media = media;
    _resultData['media'] = l$media?.toJson();
    final l$deletedMediaTitles = deletedMediaTitles;
    _resultData['deletedMediaTitles'] =
        l$deletedMediaTitles?.map((e) => e).toList();
    final l$context = context;
    _resultData['context'] = l$context;
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt;
    final l$reason = reason;
    _resultData['reason'] = l$reason;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$media = media;
    final l$deletedMediaTitles = deletedMediaTitles;
    final l$context = context;
    final l$createdAt = createdAt;
    final l$reason = reason;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$media,
      l$deletedMediaTitles == null
          ? null
          : Object.hashAll(l$deletedMediaTitles.map((v) => v)),
      l$context,
      l$createdAt,
      l$reason,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$UserNotifications$Page$notifications$$MediaMergeNotification ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$media = media;
    final lOther$media = other.media;
    if (l$media != lOther$media) {
      return false;
    }
    final l$deletedMediaTitles = deletedMediaTitles;
    final lOther$deletedMediaTitles = other.deletedMediaTitles;
    if (l$deletedMediaTitles != null && lOther$deletedMediaTitles != null) {
      if (l$deletedMediaTitles.length != lOther$deletedMediaTitles.length) {
        return false;
      }
      for (int i = 0; i < l$deletedMediaTitles.length; i++) {
        final l$deletedMediaTitles$entry = l$deletedMediaTitles[i];
        final lOther$deletedMediaTitles$entry = lOther$deletedMediaTitles[i];
        if (l$deletedMediaTitles$entry != lOther$deletedMediaTitles$entry) {
          return false;
        }
      }
    } else if (l$deletedMediaTitles != lOther$deletedMediaTitles) {
      return false;
    }
    final l$context = context;
    final lOther$context = other.context;
    if (l$context != lOther$context) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$reason = reason;
    final lOther$reason = other.reason;
    if (l$reason != lOther$reason) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$UserNotifications$Page$notifications$$MediaMergeNotification
    on Query$UserNotifications$Page$notifications$$MediaMergeNotification {
  CopyWith$Query$UserNotifications$Page$notifications$$MediaMergeNotification<
          Query$UserNotifications$Page$notifications$$MediaMergeNotification>
      get copyWith =>
          CopyWith$Query$UserNotifications$Page$notifications$$MediaMergeNotification(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$UserNotifications$Page$notifications$$MediaMergeNotification<
    TRes> {
  factory CopyWith$Query$UserNotifications$Page$notifications$$MediaMergeNotification(
    Query$UserNotifications$Page$notifications$$MediaMergeNotification instance,
    TRes Function(
            Query$UserNotifications$Page$notifications$$MediaMergeNotification)
        then,
  ) = _CopyWithImpl$Query$UserNotifications$Page$notifications$$MediaMergeNotification;

  factory CopyWith$Query$UserNotifications$Page$notifications$$MediaMergeNotification.stub(
          TRes res) =
      _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$MediaMergeNotification;

  TRes call({
    int? id,
    Query$UserNotifications$Page$notifications$$MediaMergeNotification$media?
        media,
    List<String?>? deletedMediaTitles,
    String? context,
    int? createdAt,
    String? reason,
    String? $__typename,
  });
  CopyWith$Query$UserNotifications$Page$notifications$$MediaMergeNotification$media<
      TRes> get media;
}

class _CopyWithImpl$Query$UserNotifications$Page$notifications$$MediaMergeNotification<
        TRes>
    implements
        CopyWith$Query$UserNotifications$Page$notifications$$MediaMergeNotification<
            TRes> {
  _CopyWithImpl$Query$UserNotifications$Page$notifications$$MediaMergeNotification(
    this._instance,
    this._then,
  );

  final Query$UserNotifications$Page$notifications$$MediaMergeNotification
      _instance;

  final TRes Function(
      Query$UserNotifications$Page$notifications$$MediaMergeNotification) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? media = _undefined,
    Object? deletedMediaTitles = _undefined,
    Object? context = _undefined,
    Object? createdAt = _undefined,
    Object? reason = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$UserNotifications$Page$notifications$$MediaMergeNotification(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        media: media == _undefined
            ? _instance.media
            : (media
                as Query$UserNotifications$Page$notifications$$MediaMergeNotification$media?),
        deletedMediaTitles: deletedMediaTitles == _undefined
            ? _instance.deletedMediaTitles
            : (deletedMediaTitles as List<String?>?),
        context:
            context == _undefined ? _instance.context : (context as String?),
        createdAt:
            createdAt == _undefined ? _instance.createdAt : (createdAt as int?),
        reason: reason == _undefined ? _instance.reason : (reason as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$UserNotifications$Page$notifications$$MediaMergeNotification$media<
      TRes> get media {
    final local$media = _instance.media;
    return local$media == null
        ? CopyWith$Query$UserNotifications$Page$notifications$$MediaMergeNotification$media
            .stub(_then(_instance))
        : CopyWith$Query$UserNotifications$Page$notifications$$MediaMergeNotification$media(
            local$media, (e) => call(media: e));
  }
}

class _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$MediaMergeNotification<
        TRes>
    implements
        CopyWith$Query$UserNotifications$Page$notifications$$MediaMergeNotification<
            TRes> {
  _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$MediaMergeNotification(
      this._res);

  TRes _res;

  call({
    int? id,
    Query$UserNotifications$Page$notifications$$MediaMergeNotification$media?
        media,
    List<String?>? deletedMediaTitles,
    String? context,
    int? createdAt,
    String? reason,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$UserNotifications$Page$notifications$$MediaMergeNotification$media<
          TRes>
      get media =>
          CopyWith$Query$UserNotifications$Page$notifications$$MediaMergeNotification$media
              .stub(_res);
}

class Query$UserNotifications$Page$notifications$$MediaMergeNotification$media
    implements Fragment$MediaMergeNotification$media {
  Query$UserNotifications$Page$notifications$$MediaMergeNotification$media({
    required this.id,
    this.title,
    this.coverImage,
    this.$__typename = 'Media',
  });

  factory Query$UserNotifications$Page$notifications$$MediaMergeNotification$media.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$coverImage = json['coverImage'];
    final l$$__typename = json['__typename'];
    return Query$UserNotifications$Page$notifications$$MediaMergeNotification$media(
      id: (l$id as int),
      title: l$title == null
          ? null
          : Query$UserNotifications$Page$notifications$$MediaMergeNotification$media$title
              .fromJson((l$title as Map<String, dynamic>)),
      coverImage: l$coverImage == null
          ? null
          : Query$UserNotifications$Page$notifications$$MediaMergeNotification$media$coverImage
              .fromJson((l$coverImage as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final Query$UserNotifications$Page$notifications$$MediaMergeNotification$media$title?
      title;

  final Query$UserNotifications$Page$notifications$$MediaMergeNotification$media$coverImage?
      coverImage;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$title = title;
    _resultData['title'] = l$title?.toJson();
    final l$coverImage = coverImage;
    _resultData['coverImage'] = l$coverImage?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$title = title;
    final l$coverImage = coverImage;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$title,
      l$coverImage,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$UserNotifications$Page$notifications$$MediaMergeNotification$media ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
      return false;
    }
    final l$coverImage = coverImage;
    final lOther$coverImage = other.coverImage;
    if (l$coverImage != lOther$coverImage) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$UserNotifications$Page$notifications$$MediaMergeNotification$media
    on Query$UserNotifications$Page$notifications$$MediaMergeNotification$media {
  CopyWith$Query$UserNotifications$Page$notifications$$MediaMergeNotification$media<
          Query$UserNotifications$Page$notifications$$MediaMergeNotification$media>
      get copyWith =>
          CopyWith$Query$UserNotifications$Page$notifications$$MediaMergeNotification$media(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$UserNotifications$Page$notifications$$MediaMergeNotification$media<
    TRes> {
  factory CopyWith$Query$UserNotifications$Page$notifications$$MediaMergeNotification$media(
    Query$UserNotifications$Page$notifications$$MediaMergeNotification$media
        instance,
    TRes Function(
            Query$UserNotifications$Page$notifications$$MediaMergeNotification$media)
        then,
  ) = _CopyWithImpl$Query$UserNotifications$Page$notifications$$MediaMergeNotification$media;

  factory CopyWith$Query$UserNotifications$Page$notifications$$MediaMergeNotification$media.stub(
          TRes res) =
      _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$MediaMergeNotification$media;

  TRes call({
    int? id,
    Query$UserNotifications$Page$notifications$$MediaMergeNotification$media$title?
        title,
    Query$UserNotifications$Page$notifications$$MediaMergeNotification$media$coverImage?
        coverImage,
    String? $__typename,
  });
  CopyWith$Query$UserNotifications$Page$notifications$$MediaMergeNotification$media$title<
      TRes> get title;
  CopyWith$Query$UserNotifications$Page$notifications$$MediaMergeNotification$media$coverImage<
      TRes> get coverImage;
}

class _CopyWithImpl$Query$UserNotifications$Page$notifications$$MediaMergeNotification$media<
        TRes>
    implements
        CopyWith$Query$UserNotifications$Page$notifications$$MediaMergeNotification$media<
            TRes> {
  _CopyWithImpl$Query$UserNotifications$Page$notifications$$MediaMergeNotification$media(
    this._instance,
    this._then,
  );

  final Query$UserNotifications$Page$notifications$$MediaMergeNotification$media
      _instance;

  final TRes Function(
          Query$UserNotifications$Page$notifications$$MediaMergeNotification$media)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? coverImage = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$UserNotifications$Page$notifications$$MediaMergeNotification$media(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        title: title == _undefined
            ? _instance.title
            : (title
                as Query$UserNotifications$Page$notifications$$MediaMergeNotification$media$title?),
        coverImage: coverImage == _undefined
            ? _instance.coverImage
            : (coverImage
                as Query$UserNotifications$Page$notifications$$MediaMergeNotification$media$coverImage?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$UserNotifications$Page$notifications$$MediaMergeNotification$media$title<
      TRes> get title {
    final local$title = _instance.title;
    return local$title == null
        ? CopyWith$Query$UserNotifications$Page$notifications$$MediaMergeNotification$media$title
            .stub(_then(_instance))
        : CopyWith$Query$UserNotifications$Page$notifications$$MediaMergeNotification$media$title(
            local$title, (e) => call(title: e));
  }

  CopyWith$Query$UserNotifications$Page$notifications$$MediaMergeNotification$media$coverImage<
      TRes> get coverImage {
    final local$coverImage = _instance.coverImage;
    return local$coverImage == null
        ? CopyWith$Query$UserNotifications$Page$notifications$$MediaMergeNotification$media$coverImage
            .stub(_then(_instance))
        : CopyWith$Query$UserNotifications$Page$notifications$$MediaMergeNotification$media$coverImage(
            local$coverImage, (e) => call(coverImage: e));
  }
}

class _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$MediaMergeNotification$media<
        TRes>
    implements
        CopyWith$Query$UserNotifications$Page$notifications$$MediaMergeNotification$media<
            TRes> {
  _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$MediaMergeNotification$media(
      this._res);

  TRes _res;

  call({
    int? id,
    Query$UserNotifications$Page$notifications$$MediaMergeNotification$media$title?
        title,
    Query$UserNotifications$Page$notifications$$MediaMergeNotification$media$coverImage?
        coverImage,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$UserNotifications$Page$notifications$$MediaMergeNotification$media$title<
          TRes>
      get title =>
          CopyWith$Query$UserNotifications$Page$notifications$$MediaMergeNotification$media$title
              .stub(_res);

  CopyWith$Query$UserNotifications$Page$notifications$$MediaMergeNotification$media$coverImage<
          TRes>
      get coverImage =>
          CopyWith$Query$UserNotifications$Page$notifications$$MediaMergeNotification$media$coverImage
              .stub(_res);
}

class Query$UserNotifications$Page$notifications$$MediaMergeNotification$media$title
    implements Fragment$MediaMergeNotification$media$title {
  Query$UserNotifications$Page$notifications$$MediaMergeNotification$media$title({
    this.userPreferred,
    this.$__typename = 'MediaTitle',
  });

  factory Query$UserNotifications$Page$notifications$$MediaMergeNotification$media$title.fromJson(
      Map<String, dynamic> json) {
    final l$userPreferred = json['userPreferred'];
    final l$$__typename = json['__typename'];
    return Query$UserNotifications$Page$notifications$$MediaMergeNotification$media$title(
      userPreferred: (l$userPreferred as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? userPreferred;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$userPreferred = userPreferred;
    _resultData['userPreferred'] = l$userPreferred;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$userPreferred = userPreferred;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$userPreferred,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$UserNotifications$Page$notifications$$MediaMergeNotification$media$title ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$userPreferred = userPreferred;
    final lOther$userPreferred = other.userPreferred;
    if (l$userPreferred != lOther$userPreferred) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$UserNotifications$Page$notifications$$MediaMergeNotification$media$title
    on Query$UserNotifications$Page$notifications$$MediaMergeNotification$media$title {
  CopyWith$Query$UserNotifications$Page$notifications$$MediaMergeNotification$media$title<
          Query$UserNotifications$Page$notifications$$MediaMergeNotification$media$title>
      get copyWith =>
          CopyWith$Query$UserNotifications$Page$notifications$$MediaMergeNotification$media$title(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$UserNotifications$Page$notifications$$MediaMergeNotification$media$title<
    TRes> {
  factory CopyWith$Query$UserNotifications$Page$notifications$$MediaMergeNotification$media$title(
    Query$UserNotifications$Page$notifications$$MediaMergeNotification$media$title
        instance,
    TRes Function(
            Query$UserNotifications$Page$notifications$$MediaMergeNotification$media$title)
        then,
  ) = _CopyWithImpl$Query$UserNotifications$Page$notifications$$MediaMergeNotification$media$title;

  factory CopyWith$Query$UserNotifications$Page$notifications$$MediaMergeNotification$media$title.stub(
          TRes res) =
      _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$MediaMergeNotification$media$title;

  TRes call({
    String? userPreferred,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$UserNotifications$Page$notifications$$MediaMergeNotification$media$title<
        TRes>
    implements
        CopyWith$Query$UserNotifications$Page$notifications$$MediaMergeNotification$media$title<
            TRes> {
  _CopyWithImpl$Query$UserNotifications$Page$notifications$$MediaMergeNotification$media$title(
    this._instance,
    this._then,
  );

  final Query$UserNotifications$Page$notifications$$MediaMergeNotification$media$title
      _instance;

  final TRes Function(
          Query$UserNotifications$Page$notifications$$MediaMergeNotification$media$title)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userPreferred = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$UserNotifications$Page$notifications$$MediaMergeNotification$media$title(
        userPreferred: userPreferred == _undefined
            ? _instance.userPreferred
            : (userPreferred as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$MediaMergeNotification$media$title<
        TRes>
    implements
        CopyWith$Query$UserNotifications$Page$notifications$$MediaMergeNotification$media$title<
            TRes> {
  _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$MediaMergeNotification$media$title(
      this._res);

  TRes _res;

  call({
    String? userPreferred,
    String? $__typename,
  }) =>
      _res;
}

class Query$UserNotifications$Page$notifications$$MediaMergeNotification$media$coverImage
    implements Fragment$MediaMergeNotification$media$coverImage {
  Query$UserNotifications$Page$notifications$$MediaMergeNotification$media$coverImage({
    this.medium,
    this.$__typename = 'MediaCoverImage',
  });

  factory Query$UserNotifications$Page$notifications$$MediaMergeNotification$media$coverImage.fromJson(
      Map<String, dynamic> json) {
    final l$medium = json['medium'];
    final l$$__typename = json['__typename'];
    return Query$UserNotifications$Page$notifications$$MediaMergeNotification$media$coverImage(
      medium: (l$medium as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? medium;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$medium = medium;
    _resultData['medium'] = l$medium;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$medium = medium;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$medium,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$UserNotifications$Page$notifications$$MediaMergeNotification$media$coverImage ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$medium = medium;
    final lOther$medium = other.medium;
    if (l$medium != lOther$medium) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$UserNotifications$Page$notifications$$MediaMergeNotification$media$coverImage
    on Query$UserNotifications$Page$notifications$$MediaMergeNotification$media$coverImage {
  CopyWith$Query$UserNotifications$Page$notifications$$MediaMergeNotification$media$coverImage<
          Query$UserNotifications$Page$notifications$$MediaMergeNotification$media$coverImage>
      get copyWith =>
          CopyWith$Query$UserNotifications$Page$notifications$$MediaMergeNotification$media$coverImage(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$UserNotifications$Page$notifications$$MediaMergeNotification$media$coverImage<
    TRes> {
  factory CopyWith$Query$UserNotifications$Page$notifications$$MediaMergeNotification$media$coverImage(
    Query$UserNotifications$Page$notifications$$MediaMergeNotification$media$coverImage
        instance,
    TRes Function(
            Query$UserNotifications$Page$notifications$$MediaMergeNotification$media$coverImage)
        then,
  ) = _CopyWithImpl$Query$UserNotifications$Page$notifications$$MediaMergeNotification$media$coverImage;

  factory CopyWith$Query$UserNotifications$Page$notifications$$MediaMergeNotification$media$coverImage.stub(
          TRes res) =
      _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$MediaMergeNotification$media$coverImage;

  TRes call({
    String? medium,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$UserNotifications$Page$notifications$$MediaMergeNotification$media$coverImage<
        TRes>
    implements
        CopyWith$Query$UserNotifications$Page$notifications$$MediaMergeNotification$media$coverImage<
            TRes> {
  _CopyWithImpl$Query$UserNotifications$Page$notifications$$MediaMergeNotification$media$coverImage(
    this._instance,
    this._then,
  );

  final Query$UserNotifications$Page$notifications$$MediaMergeNotification$media$coverImage
      _instance;

  final TRes Function(
          Query$UserNotifications$Page$notifications$$MediaMergeNotification$media$coverImage)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? medium = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$UserNotifications$Page$notifications$$MediaMergeNotification$media$coverImage(
        medium: medium == _undefined ? _instance.medium : (medium as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$MediaMergeNotification$media$coverImage<
        TRes>
    implements
        CopyWith$Query$UserNotifications$Page$notifications$$MediaMergeNotification$media$coverImage<
            TRes> {
  _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$MediaMergeNotification$media$coverImage(
      this._res);

  TRes _res;

  call({
    String? medium,
    String? $__typename,
  }) =>
      _res;
}

class Query$UserNotifications$Page$notifications$$RelatedMediaAdditionNotification
    implements
        Fragment$RelatedMediaAdditionNotification,
        Query$UserNotifications$Page$notifications {
  Query$UserNotifications$Page$notifications$$RelatedMediaAdditionNotification({
    required this.id,
    this.media,
    this.context,
    this.createdAt,
    this.$__typename = 'RelatedMediaAdditionNotification',
  });

  factory Query$UserNotifications$Page$notifications$$RelatedMediaAdditionNotification.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$media = json['media'];
    final l$context = json['context'];
    final l$createdAt = json['createdAt'];
    final l$$__typename = json['__typename'];
    return Query$UserNotifications$Page$notifications$$RelatedMediaAdditionNotification(
      id: (l$id as int),
      media: l$media == null
          ? null
          : Query$UserNotifications$Page$notifications$$RelatedMediaAdditionNotification$media
              .fromJson((l$media as Map<String, dynamic>)),
      context: (l$context as String?),
      createdAt: (l$createdAt as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final Query$UserNotifications$Page$notifications$$RelatedMediaAdditionNotification$media?
      media;

  final String? context;

  final int? createdAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$media = media;
    _resultData['media'] = l$media?.toJson();
    final l$context = context;
    _resultData['context'] = l$context;
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$media = media;
    final l$context = context;
    final l$createdAt = createdAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$media,
      l$context,
      l$createdAt,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$UserNotifications$Page$notifications$$RelatedMediaAdditionNotification ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$media = media;
    final lOther$media = other.media;
    if (l$media != lOther$media) {
      return false;
    }
    final l$context = context;
    final lOther$context = other.context;
    if (l$context != lOther$context) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$UserNotifications$Page$notifications$$RelatedMediaAdditionNotification
    on Query$UserNotifications$Page$notifications$$RelatedMediaAdditionNotification {
  CopyWith$Query$UserNotifications$Page$notifications$$RelatedMediaAdditionNotification<
          Query$UserNotifications$Page$notifications$$RelatedMediaAdditionNotification>
      get copyWith =>
          CopyWith$Query$UserNotifications$Page$notifications$$RelatedMediaAdditionNotification(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$UserNotifications$Page$notifications$$RelatedMediaAdditionNotification<
    TRes> {
  factory CopyWith$Query$UserNotifications$Page$notifications$$RelatedMediaAdditionNotification(
    Query$UserNotifications$Page$notifications$$RelatedMediaAdditionNotification
        instance,
    TRes Function(
            Query$UserNotifications$Page$notifications$$RelatedMediaAdditionNotification)
        then,
  ) = _CopyWithImpl$Query$UserNotifications$Page$notifications$$RelatedMediaAdditionNotification;

  factory CopyWith$Query$UserNotifications$Page$notifications$$RelatedMediaAdditionNotification.stub(
          TRes res) =
      _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$RelatedMediaAdditionNotification;

  TRes call({
    int? id,
    Query$UserNotifications$Page$notifications$$RelatedMediaAdditionNotification$media?
        media,
    String? context,
    int? createdAt,
    String? $__typename,
  });
  CopyWith$Query$UserNotifications$Page$notifications$$RelatedMediaAdditionNotification$media<
      TRes> get media;
}

class _CopyWithImpl$Query$UserNotifications$Page$notifications$$RelatedMediaAdditionNotification<
        TRes>
    implements
        CopyWith$Query$UserNotifications$Page$notifications$$RelatedMediaAdditionNotification<
            TRes> {
  _CopyWithImpl$Query$UserNotifications$Page$notifications$$RelatedMediaAdditionNotification(
    this._instance,
    this._then,
  );

  final Query$UserNotifications$Page$notifications$$RelatedMediaAdditionNotification
      _instance;

  final TRes Function(
          Query$UserNotifications$Page$notifications$$RelatedMediaAdditionNotification)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? media = _undefined,
    Object? context = _undefined,
    Object? createdAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$UserNotifications$Page$notifications$$RelatedMediaAdditionNotification(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        media: media == _undefined
            ? _instance.media
            : (media
                as Query$UserNotifications$Page$notifications$$RelatedMediaAdditionNotification$media?),
        context:
            context == _undefined ? _instance.context : (context as String?),
        createdAt:
            createdAt == _undefined ? _instance.createdAt : (createdAt as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$UserNotifications$Page$notifications$$RelatedMediaAdditionNotification$media<
      TRes> get media {
    final local$media = _instance.media;
    return local$media == null
        ? CopyWith$Query$UserNotifications$Page$notifications$$RelatedMediaAdditionNotification$media
            .stub(_then(_instance))
        : CopyWith$Query$UserNotifications$Page$notifications$$RelatedMediaAdditionNotification$media(
            local$media, (e) => call(media: e));
  }
}

class _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$RelatedMediaAdditionNotification<
        TRes>
    implements
        CopyWith$Query$UserNotifications$Page$notifications$$RelatedMediaAdditionNotification<
            TRes> {
  _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$RelatedMediaAdditionNotification(
      this._res);

  TRes _res;

  call({
    int? id,
    Query$UserNotifications$Page$notifications$$RelatedMediaAdditionNotification$media?
        media,
    String? context,
    int? createdAt,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$UserNotifications$Page$notifications$$RelatedMediaAdditionNotification$media<
          TRes>
      get media =>
          CopyWith$Query$UserNotifications$Page$notifications$$RelatedMediaAdditionNotification$media
              .stub(_res);
}

class Query$UserNotifications$Page$notifications$$RelatedMediaAdditionNotification$media
    implements Fragment$RelatedMediaAdditionNotification$media {
  Query$UserNotifications$Page$notifications$$RelatedMediaAdditionNotification$media({
    required this.id,
    this.title,
    this.coverImage,
    this.$__typename = 'Media',
  });

  factory Query$UserNotifications$Page$notifications$$RelatedMediaAdditionNotification$media.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$coverImage = json['coverImage'];
    final l$$__typename = json['__typename'];
    return Query$UserNotifications$Page$notifications$$RelatedMediaAdditionNotification$media(
      id: (l$id as int),
      title: l$title == null
          ? null
          : Query$UserNotifications$Page$notifications$$RelatedMediaAdditionNotification$media$title
              .fromJson((l$title as Map<String, dynamic>)),
      coverImage: l$coverImage == null
          ? null
          : Query$UserNotifications$Page$notifications$$RelatedMediaAdditionNotification$media$coverImage
              .fromJson((l$coverImage as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final Query$UserNotifications$Page$notifications$$RelatedMediaAdditionNotification$media$title?
      title;

  final Query$UserNotifications$Page$notifications$$RelatedMediaAdditionNotification$media$coverImage?
      coverImage;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$title = title;
    _resultData['title'] = l$title?.toJson();
    final l$coverImage = coverImage;
    _resultData['coverImage'] = l$coverImage?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$title = title;
    final l$coverImage = coverImage;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$title,
      l$coverImage,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$UserNotifications$Page$notifications$$RelatedMediaAdditionNotification$media ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
      return false;
    }
    final l$coverImage = coverImage;
    final lOther$coverImage = other.coverImage;
    if (l$coverImage != lOther$coverImage) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$UserNotifications$Page$notifications$$RelatedMediaAdditionNotification$media
    on Query$UserNotifications$Page$notifications$$RelatedMediaAdditionNotification$media {
  CopyWith$Query$UserNotifications$Page$notifications$$RelatedMediaAdditionNotification$media<
          Query$UserNotifications$Page$notifications$$RelatedMediaAdditionNotification$media>
      get copyWith =>
          CopyWith$Query$UserNotifications$Page$notifications$$RelatedMediaAdditionNotification$media(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$UserNotifications$Page$notifications$$RelatedMediaAdditionNotification$media<
    TRes> {
  factory CopyWith$Query$UserNotifications$Page$notifications$$RelatedMediaAdditionNotification$media(
    Query$UserNotifications$Page$notifications$$RelatedMediaAdditionNotification$media
        instance,
    TRes Function(
            Query$UserNotifications$Page$notifications$$RelatedMediaAdditionNotification$media)
        then,
  ) = _CopyWithImpl$Query$UserNotifications$Page$notifications$$RelatedMediaAdditionNotification$media;

  factory CopyWith$Query$UserNotifications$Page$notifications$$RelatedMediaAdditionNotification$media.stub(
          TRes res) =
      _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$RelatedMediaAdditionNotification$media;

  TRes call({
    int? id,
    Query$UserNotifications$Page$notifications$$RelatedMediaAdditionNotification$media$title?
        title,
    Query$UserNotifications$Page$notifications$$RelatedMediaAdditionNotification$media$coverImage?
        coverImage,
    String? $__typename,
  });
  CopyWith$Query$UserNotifications$Page$notifications$$RelatedMediaAdditionNotification$media$title<
      TRes> get title;
  CopyWith$Query$UserNotifications$Page$notifications$$RelatedMediaAdditionNotification$media$coverImage<
      TRes> get coverImage;
}

class _CopyWithImpl$Query$UserNotifications$Page$notifications$$RelatedMediaAdditionNotification$media<
        TRes>
    implements
        CopyWith$Query$UserNotifications$Page$notifications$$RelatedMediaAdditionNotification$media<
            TRes> {
  _CopyWithImpl$Query$UserNotifications$Page$notifications$$RelatedMediaAdditionNotification$media(
    this._instance,
    this._then,
  );

  final Query$UserNotifications$Page$notifications$$RelatedMediaAdditionNotification$media
      _instance;

  final TRes Function(
          Query$UserNotifications$Page$notifications$$RelatedMediaAdditionNotification$media)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? coverImage = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$UserNotifications$Page$notifications$$RelatedMediaAdditionNotification$media(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        title: title == _undefined
            ? _instance.title
            : (title
                as Query$UserNotifications$Page$notifications$$RelatedMediaAdditionNotification$media$title?),
        coverImage: coverImage == _undefined
            ? _instance.coverImage
            : (coverImage
                as Query$UserNotifications$Page$notifications$$RelatedMediaAdditionNotification$media$coverImage?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$UserNotifications$Page$notifications$$RelatedMediaAdditionNotification$media$title<
      TRes> get title {
    final local$title = _instance.title;
    return local$title == null
        ? CopyWith$Query$UserNotifications$Page$notifications$$RelatedMediaAdditionNotification$media$title
            .stub(_then(_instance))
        : CopyWith$Query$UserNotifications$Page$notifications$$RelatedMediaAdditionNotification$media$title(
            local$title, (e) => call(title: e));
  }

  CopyWith$Query$UserNotifications$Page$notifications$$RelatedMediaAdditionNotification$media$coverImage<
      TRes> get coverImage {
    final local$coverImage = _instance.coverImage;
    return local$coverImage == null
        ? CopyWith$Query$UserNotifications$Page$notifications$$RelatedMediaAdditionNotification$media$coverImage
            .stub(_then(_instance))
        : CopyWith$Query$UserNotifications$Page$notifications$$RelatedMediaAdditionNotification$media$coverImage(
            local$coverImage, (e) => call(coverImage: e));
  }
}

class _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$RelatedMediaAdditionNotification$media<
        TRes>
    implements
        CopyWith$Query$UserNotifications$Page$notifications$$RelatedMediaAdditionNotification$media<
            TRes> {
  _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$RelatedMediaAdditionNotification$media(
      this._res);

  TRes _res;

  call({
    int? id,
    Query$UserNotifications$Page$notifications$$RelatedMediaAdditionNotification$media$title?
        title,
    Query$UserNotifications$Page$notifications$$RelatedMediaAdditionNotification$media$coverImage?
        coverImage,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$UserNotifications$Page$notifications$$RelatedMediaAdditionNotification$media$title<
          TRes>
      get title =>
          CopyWith$Query$UserNotifications$Page$notifications$$RelatedMediaAdditionNotification$media$title
              .stub(_res);

  CopyWith$Query$UserNotifications$Page$notifications$$RelatedMediaAdditionNotification$media$coverImage<
          TRes>
      get coverImage =>
          CopyWith$Query$UserNotifications$Page$notifications$$RelatedMediaAdditionNotification$media$coverImage
              .stub(_res);
}

class Query$UserNotifications$Page$notifications$$RelatedMediaAdditionNotification$media$title
    implements Fragment$RelatedMediaAdditionNotification$media$title {
  Query$UserNotifications$Page$notifications$$RelatedMediaAdditionNotification$media$title({
    this.userPreferred,
    this.$__typename = 'MediaTitle',
  });

  factory Query$UserNotifications$Page$notifications$$RelatedMediaAdditionNotification$media$title.fromJson(
      Map<String, dynamic> json) {
    final l$userPreferred = json['userPreferred'];
    final l$$__typename = json['__typename'];
    return Query$UserNotifications$Page$notifications$$RelatedMediaAdditionNotification$media$title(
      userPreferred: (l$userPreferred as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? userPreferred;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$userPreferred = userPreferred;
    _resultData['userPreferred'] = l$userPreferred;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$userPreferred = userPreferred;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$userPreferred,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$UserNotifications$Page$notifications$$RelatedMediaAdditionNotification$media$title ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$userPreferred = userPreferred;
    final lOther$userPreferred = other.userPreferred;
    if (l$userPreferred != lOther$userPreferred) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$UserNotifications$Page$notifications$$RelatedMediaAdditionNotification$media$title
    on Query$UserNotifications$Page$notifications$$RelatedMediaAdditionNotification$media$title {
  CopyWith$Query$UserNotifications$Page$notifications$$RelatedMediaAdditionNotification$media$title<
          Query$UserNotifications$Page$notifications$$RelatedMediaAdditionNotification$media$title>
      get copyWith =>
          CopyWith$Query$UserNotifications$Page$notifications$$RelatedMediaAdditionNotification$media$title(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$UserNotifications$Page$notifications$$RelatedMediaAdditionNotification$media$title<
    TRes> {
  factory CopyWith$Query$UserNotifications$Page$notifications$$RelatedMediaAdditionNotification$media$title(
    Query$UserNotifications$Page$notifications$$RelatedMediaAdditionNotification$media$title
        instance,
    TRes Function(
            Query$UserNotifications$Page$notifications$$RelatedMediaAdditionNotification$media$title)
        then,
  ) = _CopyWithImpl$Query$UserNotifications$Page$notifications$$RelatedMediaAdditionNotification$media$title;

  factory CopyWith$Query$UserNotifications$Page$notifications$$RelatedMediaAdditionNotification$media$title.stub(
          TRes res) =
      _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$RelatedMediaAdditionNotification$media$title;

  TRes call({
    String? userPreferred,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$UserNotifications$Page$notifications$$RelatedMediaAdditionNotification$media$title<
        TRes>
    implements
        CopyWith$Query$UserNotifications$Page$notifications$$RelatedMediaAdditionNotification$media$title<
            TRes> {
  _CopyWithImpl$Query$UserNotifications$Page$notifications$$RelatedMediaAdditionNotification$media$title(
    this._instance,
    this._then,
  );

  final Query$UserNotifications$Page$notifications$$RelatedMediaAdditionNotification$media$title
      _instance;

  final TRes Function(
          Query$UserNotifications$Page$notifications$$RelatedMediaAdditionNotification$media$title)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userPreferred = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$UserNotifications$Page$notifications$$RelatedMediaAdditionNotification$media$title(
        userPreferred: userPreferred == _undefined
            ? _instance.userPreferred
            : (userPreferred as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$RelatedMediaAdditionNotification$media$title<
        TRes>
    implements
        CopyWith$Query$UserNotifications$Page$notifications$$RelatedMediaAdditionNotification$media$title<
            TRes> {
  _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$RelatedMediaAdditionNotification$media$title(
      this._res);

  TRes _res;

  call({
    String? userPreferred,
    String? $__typename,
  }) =>
      _res;
}

class Query$UserNotifications$Page$notifications$$RelatedMediaAdditionNotification$media$coverImage
    implements Fragment$RelatedMediaAdditionNotification$media$coverImage {
  Query$UserNotifications$Page$notifications$$RelatedMediaAdditionNotification$media$coverImage({
    this.medium,
    this.$__typename = 'MediaCoverImage',
  });

  factory Query$UserNotifications$Page$notifications$$RelatedMediaAdditionNotification$media$coverImage.fromJson(
      Map<String, dynamic> json) {
    final l$medium = json['medium'];
    final l$$__typename = json['__typename'];
    return Query$UserNotifications$Page$notifications$$RelatedMediaAdditionNotification$media$coverImage(
      medium: (l$medium as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? medium;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$medium = medium;
    _resultData['medium'] = l$medium;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$medium = medium;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$medium,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$UserNotifications$Page$notifications$$RelatedMediaAdditionNotification$media$coverImage ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$medium = medium;
    final lOther$medium = other.medium;
    if (l$medium != lOther$medium) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$UserNotifications$Page$notifications$$RelatedMediaAdditionNotification$media$coverImage
    on Query$UserNotifications$Page$notifications$$RelatedMediaAdditionNotification$media$coverImage {
  CopyWith$Query$UserNotifications$Page$notifications$$RelatedMediaAdditionNotification$media$coverImage<
          Query$UserNotifications$Page$notifications$$RelatedMediaAdditionNotification$media$coverImage>
      get copyWith =>
          CopyWith$Query$UserNotifications$Page$notifications$$RelatedMediaAdditionNotification$media$coverImage(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$UserNotifications$Page$notifications$$RelatedMediaAdditionNotification$media$coverImage<
    TRes> {
  factory CopyWith$Query$UserNotifications$Page$notifications$$RelatedMediaAdditionNotification$media$coverImage(
    Query$UserNotifications$Page$notifications$$RelatedMediaAdditionNotification$media$coverImage
        instance,
    TRes Function(
            Query$UserNotifications$Page$notifications$$RelatedMediaAdditionNotification$media$coverImage)
        then,
  ) = _CopyWithImpl$Query$UserNotifications$Page$notifications$$RelatedMediaAdditionNotification$media$coverImage;

  factory CopyWith$Query$UserNotifications$Page$notifications$$RelatedMediaAdditionNotification$media$coverImage.stub(
          TRes res) =
      _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$RelatedMediaAdditionNotification$media$coverImage;

  TRes call({
    String? medium,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$UserNotifications$Page$notifications$$RelatedMediaAdditionNotification$media$coverImage<
        TRes>
    implements
        CopyWith$Query$UserNotifications$Page$notifications$$RelatedMediaAdditionNotification$media$coverImage<
            TRes> {
  _CopyWithImpl$Query$UserNotifications$Page$notifications$$RelatedMediaAdditionNotification$media$coverImage(
    this._instance,
    this._then,
  );

  final Query$UserNotifications$Page$notifications$$RelatedMediaAdditionNotification$media$coverImage
      _instance;

  final TRes Function(
          Query$UserNotifications$Page$notifications$$RelatedMediaAdditionNotification$media$coverImage)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? medium = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$UserNotifications$Page$notifications$$RelatedMediaAdditionNotification$media$coverImage(
        medium: medium == _undefined ? _instance.medium : (medium as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$RelatedMediaAdditionNotification$media$coverImage<
        TRes>
    implements
        CopyWith$Query$UserNotifications$Page$notifications$$RelatedMediaAdditionNotification$media$coverImage<
            TRes> {
  _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$RelatedMediaAdditionNotification$media$coverImage(
      this._res);

  TRes _res;

  call({
    String? medium,
    String? $__typename,
  }) =>
      _res;
}

class Query$UserNotifications$Page$notifications$$ThreadCommentLikeNotification
    implements
        Fragment$ThreadCommentLikeNotification,
        Query$UserNotifications$Page$notifications {
  Query$UserNotifications$Page$notifications$$ThreadCommentLikeNotification({
    required this.id,
    this.thread,
    this.user,
    this.context,
    this.createdAt,
    this.$__typename = 'ThreadCommentLikeNotification',
  });

  factory Query$UserNotifications$Page$notifications$$ThreadCommentLikeNotification.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$thread = json['thread'];
    final l$user = json['user'];
    final l$context = json['context'];
    final l$createdAt = json['createdAt'];
    final l$$__typename = json['__typename'];
    return Query$UserNotifications$Page$notifications$$ThreadCommentLikeNotification(
      id: (l$id as int),
      thread: l$thread == null
          ? null
          : Query$UserNotifications$Page$notifications$$ThreadCommentLikeNotification$thread
              .fromJson((l$thread as Map<String, dynamic>)),
      user: l$user == null
          ? null
          : Query$UserNotifications$Page$notifications$$ThreadCommentLikeNotification$user
              .fromJson((l$user as Map<String, dynamic>)),
      context: (l$context as String?),
      createdAt: (l$createdAt as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final Query$UserNotifications$Page$notifications$$ThreadCommentLikeNotification$thread?
      thread;

  final Query$UserNotifications$Page$notifications$$ThreadCommentLikeNotification$user?
      user;

  final String? context;

  final int? createdAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$thread = thread;
    _resultData['thread'] = l$thread?.toJson();
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$context = context;
    _resultData['context'] = l$context;
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$thread = thread;
    final l$user = user;
    final l$context = context;
    final l$createdAt = createdAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$thread,
      l$user,
      l$context,
      l$createdAt,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$UserNotifications$Page$notifications$$ThreadCommentLikeNotification ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$thread = thread;
    final lOther$thread = other.thread;
    if (l$thread != lOther$thread) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
      return false;
    }
    final l$context = context;
    final lOther$context = other.context;
    if (l$context != lOther$context) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$UserNotifications$Page$notifications$$ThreadCommentLikeNotification
    on Query$UserNotifications$Page$notifications$$ThreadCommentLikeNotification {
  CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentLikeNotification<
          Query$UserNotifications$Page$notifications$$ThreadCommentLikeNotification>
      get copyWith =>
          CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentLikeNotification(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentLikeNotification<
    TRes> {
  factory CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentLikeNotification(
    Query$UserNotifications$Page$notifications$$ThreadCommentLikeNotification
        instance,
    TRes Function(
            Query$UserNotifications$Page$notifications$$ThreadCommentLikeNotification)
        then,
  ) = _CopyWithImpl$Query$UserNotifications$Page$notifications$$ThreadCommentLikeNotification;

  factory CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentLikeNotification.stub(
          TRes res) =
      _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$ThreadCommentLikeNotification;

  TRes call({
    int? id,
    Query$UserNotifications$Page$notifications$$ThreadCommentLikeNotification$thread?
        thread,
    Query$UserNotifications$Page$notifications$$ThreadCommentLikeNotification$user?
        user,
    String? context,
    int? createdAt,
    String? $__typename,
  });
  CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentLikeNotification$thread<
      TRes> get thread;
  CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentLikeNotification$user<
      TRes> get user;
}

class _CopyWithImpl$Query$UserNotifications$Page$notifications$$ThreadCommentLikeNotification<
        TRes>
    implements
        CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentLikeNotification<
            TRes> {
  _CopyWithImpl$Query$UserNotifications$Page$notifications$$ThreadCommentLikeNotification(
    this._instance,
    this._then,
  );

  final Query$UserNotifications$Page$notifications$$ThreadCommentLikeNotification
      _instance;

  final TRes Function(
          Query$UserNotifications$Page$notifications$$ThreadCommentLikeNotification)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? thread = _undefined,
    Object? user = _undefined,
    Object? context = _undefined,
    Object? createdAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$UserNotifications$Page$notifications$$ThreadCommentLikeNotification(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        thread: thread == _undefined
            ? _instance.thread
            : (thread
                as Query$UserNotifications$Page$notifications$$ThreadCommentLikeNotification$thread?),
        user: user == _undefined
            ? _instance.user
            : (user
                as Query$UserNotifications$Page$notifications$$ThreadCommentLikeNotification$user?),
        context:
            context == _undefined ? _instance.context : (context as String?),
        createdAt:
            createdAt == _undefined ? _instance.createdAt : (createdAt as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentLikeNotification$thread<
      TRes> get thread {
    final local$thread = _instance.thread;
    return local$thread == null
        ? CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentLikeNotification$thread
            .stub(_then(_instance))
        : CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentLikeNotification$thread(
            local$thread, (e) => call(thread: e));
  }

  CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentLikeNotification$user<
      TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentLikeNotification$user
            .stub(_then(_instance))
        : CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentLikeNotification$user(
            local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$ThreadCommentLikeNotification<
        TRes>
    implements
        CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentLikeNotification<
            TRes> {
  _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$ThreadCommentLikeNotification(
      this._res);

  TRes _res;

  call({
    int? id,
    Query$UserNotifications$Page$notifications$$ThreadCommentLikeNotification$thread?
        thread,
    Query$UserNotifications$Page$notifications$$ThreadCommentLikeNotification$user?
        user,
    String? context,
    int? createdAt,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentLikeNotification$thread<
          TRes>
      get thread =>
          CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentLikeNotification$thread
              .stub(_res);

  CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentLikeNotification$user<
          TRes>
      get user =>
          CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentLikeNotification$user
              .stub(_res);
}

class Query$UserNotifications$Page$notifications$$ThreadCommentLikeNotification$thread
    implements Fragment$ThreadCommentLikeNotification$thread {
  Query$UserNotifications$Page$notifications$$ThreadCommentLikeNotification$thread({
    required this.id,
    this.$__typename = 'Thread',
  });

  factory Query$UserNotifications$Page$notifications$$ThreadCommentLikeNotification$thread.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$UserNotifications$Page$notifications$$ThreadCommentLikeNotification$thread(
      id: (l$id as int),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$UserNotifications$Page$notifications$$ThreadCommentLikeNotification$thread ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$UserNotifications$Page$notifications$$ThreadCommentLikeNotification$thread
    on Query$UserNotifications$Page$notifications$$ThreadCommentLikeNotification$thread {
  CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentLikeNotification$thread<
          Query$UserNotifications$Page$notifications$$ThreadCommentLikeNotification$thread>
      get copyWith =>
          CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentLikeNotification$thread(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentLikeNotification$thread<
    TRes> {
  factory CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentLikeNotification$thread(
    Query$UserNotifications$Page$notifications$$ThreadCommentLikeNotification$thread
        instance,
    TRes Function(
            Query$UserNotifications$Page$notifications$$ThreadCommentLikeNotification$thread)
        then,
  ) = _CopyWithImpl$Query$UserNotifications$Page$notifications$$ThreadCommentLikeNotification$thread;

  factory CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentLikeNotification$thread.stub(
          TRes res) =
      _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$ThreadCommentLikeNotification$thread;

  TRes call({
    int? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$UserNotifications$Page$notifications$$ThreadCommentLikeNotification$thread<
        TRes>
    implements
        CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentLikeNotification$thread<
            TRes> {
  _CopyWithImpl$Query$UserNotifications$Page$notifications$$ThreadCommentLikeNotification$thread(
    this._instance,
    this._then,
  );

  final Query$UserNotifications$Page$notifications$$ThreadCommentLikeNotification$thread
      _instance;

  final TRes Function(
          Query$UserNotifications$Page$notifications$$ThreadCommentLikeNotification$thread)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$UserNotifications$Page$notifications$$ThreadCommentLikeNotification$thread(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$ThreadCommentLikeNotification$thread<
        TRes>
    implements
        CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentLikeNotification$thread<
            TRes> {
  _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$ThreadCommentLikeNotification$thread(
      this._res);

  TRes _res;

  call({
    int? id,
    String? $__typename,
  }) =>
      _res;
}

class Query$UserNotifications$Page$notifications$$ThreadCommentLikeNotification$user
    implements Fragment$ThreadCommentLikeNotification$user {
  Query$UserNotifications$Page$notifications$$ThreadCommentLikeNotification$user({
    required this.id,
    required this.name,
    this.avatar,
    this.$__typename = 'User',
  });

  factory Query$UserNotifications$Page$notifications$$ThreadCommentLikeNotification$user.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$avatar = json['avatar'];
    final l$$__typename = json['__typename'];
    return Query$UserNotifications$Page$notifications$$ThreadCommentLikeNotification$user(
      id: (l$id as int),
      name: (l$name as String),
      avatar: l$avatar == null
          ? null
          : Query$UserNotifications$Page$notifications$$ThreadCommentLikeNotification$user$avatar
              .fromJson((l$avatar as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String name;

  final Query$UserNotifications$Page$notifications$$ThreadCommentLikeNotification$user$avatar?
      avatar;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$avatar = avatar;
    _resultData['avatar'] = l$avatar?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$avatar = avatar;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$avatar,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$UserNotifications$Page$notifications$$ThreadCommentLikeNotification$user ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$avatar = avatar;
    final lOther$avatar = other.avatar;
    if (l$avatar != lOther$avatar) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$UserNotifications$Page$notifications$$ThreadCommentLikeNotification$user
    on Query$UserNotifications$Page$notifications$$ThreadCommentLikeNotification$user {
  CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentLikeNotification$user<
          Query$UserNotifications$Page$notifications$$ThreadCommentLikeNotification$user>
      get copyWith =>
          CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentLikeNotification$user(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentLikeNotification$user<
    TRes> {
  factory CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentLikeNotification$user(
    Query$UserNotifications$Page$notifications$$ThreadCommentLikeNotification$user
        instance,
    TRes Function(
            Query$UserNotifications$Page$notifications$$ThreadCommentLikeNotification$user)
        then,
  ) = _CopyWithImpl$Query$UserNotifications$Page$notifications$$ThreadCommentLikeNotification$user;

  factory CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentLikeNotification$user.stub(
          TRes res) =
      _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$ThreadCommentLikeNotification$user;

  TRes call({
    int? id,
    String? name,
    Query$UserNotifications$Page$notifications$$ThreadCommentLikeNotification$user$avatar?
        avatar,
    String? $__typename,
  });
  CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentLikeNotification$user$avatar<
      TRes> get avatar;
}

class _CopyWithImpl$Query$UserNotifications$Page$notifications$$ThreadCommentLikeNotification$user<
        TRes>
    implements
        CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentLikeNotification$user<
            TRes> {
  _CopyWithImpl$Query$UserNotifications$Page$notifications$$ThreadCommentLikeNotification$user(
    this._instance,
    this._then,
  );

  final Query$UserNotifications$Page$notifications$$ThreadCommentLikeNotification$user
      _instance;

  final TRes Function(
          Query$UserNotifications$Page$notifications$$ThreadCommentLikeNotification$user)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? avatar = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$UserNotifications$Page$notifications$$ThreadCommentLikeNotification$user(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        avatar: avatar == _undefined
            ? _instance.avatar
            : (avatar
                as Query$UserNotifications$Page$notifications$$ThreadCommentLikeNotification$user$avatar?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentLikeNotification$user$avatar<
      TRes> get avatar {
    final local$avatar = _instance.avatar;
    return local$avatar == null
        ? CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentLikeNotification$user$avatar
            .stub(_then(_instance))
        : CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentLikeNotification$user$avatar(
            local$avatar, (e) => call(avatar: e));
  }
}

class _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$ThreadCommentLikeNotification$user<
        TRes>
    implements
        CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentLikeNotification$user<
            TRes> {
  _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$ThreadCommentLikeNotification$user(
      this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    Query$UserNotifications$Page$notifications$$ThreadCommentLikeNotification$user$avatar?
        avatar,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentLikeNotification$user$avatar<
          TRes>
      get avatar =>
          CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentLikeNotification$user$avatar
              .stub(_res);
}

class Query$UserNotifications$Page$notifications$$ThreadCommentLikeNotification$user$avatar
    implements Fragment$ThreadCommentLikeNotification$user$avatar {
  Query$UserNotifications$Page$notifications$$ThreadCommentLikeNotification$user$avatar({
    this.medium,
    this.$__typename = 'UserAvatar',
  });

  factory Query$UserNotifications$Page$notifications$$ThreadCommentLikeNotification$user$avatar.fromJson(
      Map<String, dynamic> json) {
    final l$medium = json['medium'];
    final l$$__typename = json['__typename'];
    return Query$UserNotifications$Page$notifications$$ThreadCommentLikeNotification$user$avatar(
      medium: (l$medium as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? medium;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$medium = medium;
    _resultData['medium'] = l$medium;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$medium = medium;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$medium,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$UserNotifications$Page$notifications$$ThreadCommentLikeNotification$user$avatar ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$medium = medium;
    final lOther$medium = other.medium;
    if (l$medium != lOther$medium) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$UserNotifications$Page$notifications$$ThreadCommentLikeNotification$user$avatar
    on Query$UserNotifications$Page$notifications$$ThreadCommentLikeNotification$user$avatar {
  CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentLikeNotification$user$avatar<
          Query$UserNotifications$Page$notifications$$ThreadCommentLikeNotification$user$avatar>
      get copyWith =>
          CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentLikeNotification$user$avatar(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentLikeNotification$user$avatar<
    TRes> {
  factory CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentLikeNotification$user$avatar(
    Query$UserNotifications$Page$notifications$$ThreadCommentLikeNotification$user$avatar
        instance,
    TRes Function(
            Query$UserNotifications$Page$notifications$$ThreadCommentLikeNotification$user$avatar)
        then,
  ) = _CopyWithImpl$Query$UserNotifications$Page$notifications$$ThreadCommentLikeNotification$user$avatar;

  factory CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentLikeNotification$user$avatar.stub(
          TRes res) =
      _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$ThreadCommentLikeNotification$user$avatar;

  TRes call({
    String? medium,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$UserNotifications$Page$notifications$$ThreadCommentLikeNotification$user$avatar<
        TRes>
    implements
        CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentLikeNotification$user$avatar<
            TRes> {
  _CopyWithImpl$Query$UserNotifications$Page$notifications$$ThreadCommentLikeNotification$user$avatar(
    this._instance,
    this._then,
  );

  final Query$UserNotifications$Page$notifications$$ThreadCommentLikeNotification$user$avatar
      _instance;

  final TRes Function(
          Query$UserNotifications$Page$notifications$$ThreadCommentLikeNotification$user$avatar)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? medium = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$UserNotifications$Page$notifications$$ThreadCommentLikeNotification$user$avatar(
        medium: medium == _undefined ? _instance.medium : (medium as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$ThreadCommentLikeNotification$user$avatar<
        TRes>
    implements
        CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentLikeNotification$user$avatar<
            TRes> {
  _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$ThreadCommentLikeNotification$user$avatar(
      this._res);

  TRes _res;

  call({
    String? medium,
    String? $__typename,
  }) =>
      _res;
}

class Query$UserNotifications$Page$notifications$$ThreadCommentMentionNotification
    implements
        Fragment$ThreadCommentMentionNotification,
        Query$UserNotifications$Page$notifications {
  Query$UserNotifications$Page$notifications$$ThreadCommentMentionNotification({
    required this.id,
    this.thread,
    this.user,
    this.context,
    this.createdAt,
    this.$__typename = 'ThreadCommentMentionNotification',
  });

  factory Query$UserNotifications$Page$notifications$$ThreadCommentMentionNotification.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$thread = json['thread'];
    final l$user = json['user'];
    final l$context = json['context'];
    final l$createdAt = json['createdAt'];
    final l$$__typename = json['__typename'];
    return Query$UserNotifications$Page$notifications$$ThreadCommentMentionNotification(
      id: (l$id as int),
      thread: l$thread == null
          ? null
          : Query$UserNotifications$Page$notifications$$ThreadCommentMentionNotification$thread
              .fromJson((l$thread as Map<String, dynamic>)),
      user: l$user == null
          ? null
          : Query$UserNotifications$Page$notifications$$ThreadCommentMentionNotification$user
              .fromJson((l$user as Map<String, dynamic>)),
      context: (l$context as String?),
      createdAt: (l$createdAt as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final Query$UserNotifications$Page$notifications$$ThreadCommentMentionNotification$thread?
      thread;

  final Query$UserNotifications$Page$notifications$$ThreadCommentMentionNotification$user?
      user;

  final String? context;

  final int? createdAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$thread = thread;
    _resultData['thread'] = l$thread?.toJson();
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$context = context;
    _resultData['context'] = l$context;
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$thread = thread;
    final l$user = user;
    final l$context = context;
    final l$createdAt = createdAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$thread,
      l$user,
      l$context,
      l$createdAt,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$UserNotifications$Page$notifications$$ThreadCommentMentionNotification ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$thread = thread;
    final lOther$thread = other.thread;
    if (l$thread != lOther$thread) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
      return false;
    }
    final l$context = context;
    final lOther$context = other.context;
    if (l$context != lOther$context) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$UserNotifications$Page$notifications$$ThreadCommentMentionNotification
    on Query$UserNotifications$Page$notifications$$ThreadCommentMentionNotification {
  CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentMentionNotification<
          Query$UserNotifications$Page$notifications$$ThreadCommentMentionNotification>
      get copyWith =>
          CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentMentionNotification(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentMentionNotification<
    TRes> {
  factory CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentMentionNotification(
    Query$UserNotifications$Page$notifications$$ThreadCommentMentionNotification
        instance,
    TRes Function(
            Query$UserNotifications$Page$notifications$$ThreadCommentMentionNotification)
        then,
  ) = _CopyWithImpl$Query$UserNotifications$Page$notifications$$ThreadCommentMentionNotification;

  factory CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentMentionNotification.stub(
          TRes res) =
      _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$ThreadCommentMentionNotification;

  TRes call({
    int? id,
    Query$UserNotifications$Page$notifications$$ThreadCommentMentionNotification$thread?
        thread,
    Query$UserNotifications$Page$notifications$$ThreadCommentMentionNotification$user?
        user,
    String? context,
    int? createdAt,
    String? $__typename,
  });
  CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentMentionNotification$thread<
      TRes> get thread;
  CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentMentionNotification$user<
      TRes> get user;
}

class _CopyWithImpl$Query$UserNotifications$Page$notifications$$ThreadCommentMentionNotification<
        TRes>
    implements
        CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentMentionNotification<
            TRes> {
  _CopyWithImpl$Query$UserNotifications$Page$notifications$$ThreadCommentMentionNotification(
    this._instance,
    this._then,
  );

  final Query$UserNotifications$Page$notifications$$ThreadCommentMentionNotification
      _instance;

  final TRes Function(
          Query$UserNotifications$Page$notifications$$ThreadCommentMentionNotification)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? thread = _undefined,
    Object? user = _undefined,
    Object? context = _undefined,
    Object? createdAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$UserNotifications$Page$notifications$$ThreadCommentMentionNotification(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        thread: thread == _undefined
            ? _instance.thread
            : (thread
                as Query$UserNotifications$Page$notifications$$ThreadCommentMentionNotification$thread?),
        user: user == _undefined
            ? _instance.user
            : (user
                as Query$UserNotifications$Page$notifications$$ThreadCommentMentionNotification$user?),
        context:
            context == _undefined ? _instance.context : (context as String?),
        createdAt:
            createdAt == _undefined ? _instance.createdAt : (createdAt as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentMentionNotification$thread<
      TRes> get thread {
    final local$thread = _instance.thread;
    return local$thread == null
        ? CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentMentionNotification$thread
            .stub(_then(_instance))
        : CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentMentionNotification$thread(
            local$thread, (e) => call(thread: e));
  }

  CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentMentionNotification$user<
      TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentMentionNotification$user
            .stub(_then(_instance))
        : CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentMentionNotification$user(
            local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$ThreadCommentMentionNotification<
        TRes>
    implements
        CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentMentionNotification<
            TRes> {
  _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$ThreadCommentMentionNotification(
      this._res);

  TRes _res;

  call({
    int? id,
    Query$UserNotifications$Page$notifications$$ThreadCommentMentionNotification$thread?
        thread,
    Query$UserNotifications$Page$notifications$$ThreadCommentMentionNotification$user?
        user,
    String? context,
    int? createdAt,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentMentionNotification$thread<
          TRes>
      get thread =>
          CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentMentionNotification$thread
              .stub(_res);

  CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentMentionNotification$user<
          TRes>
      get user =>
          CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentMentionNotification$user
              .stub(_res);
}

class Query$UserNotifications$Page$notifications$$ThreadCommentMentionNotification$thread
    implements Fragment$ThreadCommentMentionNotification$thread {
  Query$UserNotifications$Page$notifications$$ThreadCommentMentionNotification$thread({
    required this.id,
    this.$__typename = 'Thread',
  });

  factory Query$UserNotifications$Page$notifications$$ThreadCommentMentionNotification$thread.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$UserNotifications$Page$notifications$$ThreadCommentMentionNotification$thread(
      id: (l$id as int),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$UserNotifications$Page$notifications$$ThreadCommentMentionNotification$thread ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$UserNotifications$Page$notifications$$ThreadCommentMentionNotification$thread
    on Query$UserNotifications$Page$notifications$$ThreadCommentMentionNotification$thread {
  CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentMentionNotification$thread<
          Query$UserNotifications$Page$notifications$$ThreadCommentMentionNotification$thread>
      get copyWith =>
          CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentMentionNotification$thread(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentMentionNotification$thread<
    TRes> {
  factory CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentMentionNotification$thread(
    Query$UserNotifications$Page$notifications$$ThreadCommentMentionNotification$thread
        instance,
    TRes Function(
            Query$UserNotifications$Page$notifications$$ThreadCommentMentionNotification$thread)
        then,
  ) = _CopyWithImpl$Query$UserNotifications$Page$notifications$$ThreadCommentMentionNotification$thread;

  factory CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentMentionNotification$thread.stub(
          TRes res) =
      _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$ThreadCommentMentionNotification$thread;

  TRes call({
    int? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$UserNotifications$Page$notifications$$ThreadCommentMentionNotification$thread<
        TRes>
    implements
        CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentMentionNotification$thread<
            TRes> {
  _CopyWithImpl$Query$UserNotifications$Page$notifications$$ThreadCommentMentionNotification$thread(
    this._instance,
    this._then,
  );

  final Query$UserNotifications$Page$notifications$$ThreadCommentMentionNotification$thread
      _instance;

  final TRes Function(
          Query$UserNotifications$Page$notifications$$ThreadCommentMentionNotification$thread)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$UserNotifications$Page$notifications$$ThreadCommentMentionNotification$thread(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$ThreadCommentMentionNotification$thread<
        TRes>
    implements
        CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentMentionNotification$thread<
            TRes> {
  _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$ThreadCommentMentionNotification$thread(
      this._res);

  TRes _res;

  call({
    int? id,
    String? $__typename,
  }) =>
      _res;
}

class Query$UserNotifications$Page$notifications$$ThreadCommentMentionNotification$user
    implements Fragment$ThreadCommentMentionNotification$user {
  Query$UserNotifications$Page$notifications$$ThreadCommentMentionNotification$user({
    required this.id,
    required this.name,
    this.avatar,
    this.$__typename = 'User',
  });

  factory Query$UserNotifications$Page$notifications$$ThreadCommentMentionNotification$user.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$avatar = json['avatar'];
    final l$$__typename = json['__typename'];
    return Query$UserNotifications$Page$notifications$$ThreadCommentMentionNotification$user(
      id: (l$id as int),
      name: (l$name as String),
      avatar: l$avatar == null
          ? null
          : Query$UserNotifications$Page$notifications$$ThreadCommentMentionNotification$user$avatar
              .fromJson((l$avatar as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String name;

  final Query$UserNotifications$Page$notifications$$ThreadCommentMentionNotification$user$avatar?
      avatar;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$avatar = avatar;
    _resultData['avatar'] = l$avatar?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$avatar = avatar;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$avatar,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$UserNotifications$Page$notifications$$ThreadCommentMentionNotification$user ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$avatar = avatar;
    final lOther$avatar = other.avatar;
    if (l$avatar != lOther$avatar) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$UserNotifications$Page$notifications$$ThreadCommentMentionNotification$user
    on Query$UserNotifications$Page$notifications$$ThreadCommentMentionNotification$user {
  CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentMentionNotification$user<
          Query$UserNotifications$Page$notifications$$ThreadCommentMentionNotification$user>
      get copyWith =>
          CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentMentionNotification$user(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentMentionNotification$user<
    TRes> {
  factory CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentMentionNotification$user(
    Query$UserNotifications$Page$notifications$$ThreadCommentMentionNotification$user
        instance,
    TRes Function(
            Query$UserNotifications$Page$notifications$$ThreadCommentMentionNotification$user)
        then,
  ) = _CopyWithImpl$Query$UserNotifications$Page$notifications$$ThreadCommentMentionNotification$user;

  factory CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentMentionNotification$user.stub(
          TRes res) =
      _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$ThreadCommentMentionNotification$user;

  TRes call({
    int? id,
    String? name,
    Query$UserNotifications$Page$notifications$$ThreadCommentMentionNotification$user$avatar?
        avatar,
    String? $__typename,
  });
  CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentMentionNotification$user$avatar<
      TRes> get avatar;
}

class _CopyWithImpl$Query$UserNotifications$Page$notifications$$ThreadCommentMentionNotification$user<
        TRes>
    implements
        CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentMentionNotification$user<
            TRes> {
  _CopyWithImpl$Query$UserNotifications$Page$notifications$$ThreadCommentMentionNotification$user(
    this._instance,
    this._then,
  );

  final Query$UserNotifications$Page$notifications$$ThreadCommentMentionNotification$user
      _instance;

  final TRes Function(
          Query$UserNotifications$Page$notifications$$ThreadCommentMentionNotification$user)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? avatar = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$UserNotifications$Page$notifications$$ThreadCommentMentionNotification$user(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        avatar: avatar == _undefined
            ? _instance.avatar
            : (avatar
                as Query$UserNotifications$Page$notifications$$ThreadCommentMentionNotification$user$avatar?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentMentionNotification$user$avatar<
      TRes> get avatar {
    final local$avatar = _instance.avatar;
    return local$avatar == null
        ? CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentMentionNotification$user$avatar
            .stub(_then(_instance))
        : CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentMentionNotification$user$avatar(
            local$avatar, (e) => call(avatar: e));
  }
}

class _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$ThreadCommentMentionNotification$user<
        TRes>
    implements
        CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentMentionNotification$user<
            TRes> {
  _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$ThreadCommentMentionNotification$user(
      this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    Query$UserNotifications$Page$notifications$$ThreadCommentMentionNotification$user$avatar?
        avatar,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentMentionNotification$user$avatar<
          TRes>
      get avatar =>
          CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentMentionNotification$user$avatar
              .stub(_res);
}

class Query$UserNotifications$Page$notifications$$ThreadCommentMentionNotification$user$avatar
    implements Fragment$ThreadCommentMentionNotification$user$avatar {
  Query$UserNotifications$Page$notifications$$ThreadCommentMentionNotification$user$avatar({
    this.medium,
    this.$__typename = 'UserAvatar',
  });

  factory Query$UserNotifications$Page$notifications$$ThreadCommentMentionNotification$user$avatar.fromJson(
      Map<String, dynamic> json) {
    final l$medium = json['medium'];
    final l$$__typename = json['__typename'];
    return Query$UserNotifications$Page$notifications$$ThreadCommentMentionNotification$user$avatar(
      medium: (l$medium as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? medium;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$medium = medium;
    _resultData['medium'] = l$medium;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$medium = medium;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$medium,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$UserNotifications$Page$notifications$$ThreadCommentMentionNotification$user$avatar ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$medium = medium;
    final lOther$medium = other.medium;
    if (l$medium != lOther$medium) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$UserNotifications$Page$notifications$$ThreadCommentMentionNotification$user$avatar
    on Query$UserNotifications$Page$notifications$$ThreadCommentMentionNotification$user$avatar {
  CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentMentionNotification$user$avatar<
          Query$UserNotifications$Page$notifications$$ThreadCommentMentionNotification$user$avatar>
      get copyWith =>
          CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentMentionNotification$user$avatar(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentMentionNotification$user$avatar<
    TRes> {
  factory CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentMentionNotification$user$avatar(
    Query$UserNotifications$Page$notifications$$ThreadCommentMentionNotification$user$avatar
        instance,
    TRes Function(
            Query$UserNotifications$Page$notifications$$ThreadCommentMentionNotification$user$avatar)
        then,
  ) = _CopyWithImpl$Query$UserNotifications$Page$notifications$$ThreadCommentMentionNotification$user$avatar;

  factory CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentMentionNotification$user$avatar.stub(
          TRes res) =
      _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$ThreadCommentMentionNotification$user$avatar;

  TRes call({
    String? medium,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$UserNotifications$Page$notifications$$ThreadCommentMentionNotification$user$avatar<
        TRes>
    implements
        CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentMentionNotification$user$avatar<
            TRes> {
  _CopyWithImpl$Query$UserNotifications$Page$notifications$$ThreadCommentMentionNotification$user$avatar(
    this._instance,
    this._then,
  );

  final Query$UserNotifications$Page$notifications$$ThreadCommentMentionNotification$user$avatar
      _instance;

  final TRes Function(
          Query$UserNotifications$Page$notifications$$ThreadCommentMentionNotification$user$avatar)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? medium = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$UserNotifications$Page$notifications$$ThreadCommentMentionNotification$user$avatar(
        medium: medium == _undefined ? _instance.medium : (medium as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$ThreadCommentMentionNotification$user$avatar<
        TRes>
    implements
        CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentMentionNotification$user$avatar<
            TRes> {
  _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$ThreadCommentMentionNotification$user$avatar(
      this._res);

  TRes _res;

  call({
    String? medium,
    String? $__typename,
  }) =>
      _res;
}

class Query$UserNotifications$Page$notifications$$ThreadCommentReplyNotification
    implements
        Fragment$ThreadCommentReplyNotification,
        Query$UserNotifications$Page$notifications {
  Query$UserNotifications$Page$notifications$$ThreadCommentReplyNotification({
    required this.id,
    this.thread,
    this.user,
    this.context,
    this.createdAt,
    this.$__typename = 'ThreadCommentReplyNotification',
  });

  factory Query$UserNotifications$Page$notifications$$ThreadCommentReplyNotification.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$thread = json['thread'];
    final l$user = json['user'];
    final l$context = json['context'];
    final l$createdAt = json['createdAt'];
    final l$$__typename = json['__typename'];
    return Query$UserNotifications$Page$notifications$$ThreadCommentReplyNotification(
      id: (l$id as int),
      thread: l$thread == null
          ? null
          : Query$UserNotifications$Page$notifications$$ThreadCommentReplyNotification$thread
              .fromJson((l$thread as Map<String, dynamic>)),
      user: l$user == null
          ? null
          : Query$UserNotifications$Page$notifications$$ThreadCommentReplyNotification$user
              .fromJson((l$user as Map<String, dynamic>)),
      context: (l$context as String?),
      createdAt: (l$createdAt as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final Query$UserNotifications$Page$notifications$$ThreadCommentReplyNotification$thread?
      thread;

  final Query$UserNotifications$Page$notifications$$ThreadCommentReplyNotification$user?
      user;

  final String? context;

  final int? createdAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$thread = thread;
    _resultData['thread'] = l$thread?.toJson();
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$context = context;
    _resultData['context'] = l$context;
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$thread = thread;
    final l$user = user;
    final l$context = context;
    final l$createdAt = createdAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$thread,
      l$user,
      l$context,
      l$createdAt,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$UserNotifications$Page$notifications$$ThreadCommentReplyNotification ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$thread = thread;
    final lOther$thread = other.thread;
    if (l$thread != lOther$thread) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
      return false;
    }
    final l$context = context;
    final lOther$context = other.context;
    if (l$context != lOther$context) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$UserNotifications$Page$notifications$$ThreadCommentReplyNotification
    on Query$UserNotifications$Page$notifications$$ThreadCommentReplyNotification {
  CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentReplyNotification<
          Query$UserNotifications$Page$notifications$$ThreadCommentReplyNotification>
      get copyWith =>
          CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentReplyNotification(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentReplyNotification<
    TRes> {
  factory CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentReplyNotification(
    Query$UserNotifications$Page$notifications$$ThreadCommentReplyNotification
        instance,
    TRes Function(
            Query$UserNotifications$Page$notifications$$ThreadCommentReplyNotification)
        then,
  ) = _CopyWithImpl$Query$UserNotifications$Page$notifications$$ThreadCommentReplyNotification;

  factory CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentReplyNotification.stub(
          TRes res) =
      _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$ThreadCommentReplyNotification;

  TRes call({
    int? id,
    Query$UserNotifications$Page$notifications$$ThreadCommentReplyNotification$thread?
        thread,
    Query$UserNotifications$Page$notifications$$ThreadCommentReplyNotification$user?
        user,
    String? context,
    int? createdAt,
    String? $__typename,
  });
  CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentReplyNotification$thread<
      TRes> get thread;
  CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentReplyNotification$user<
      TRes> get user;
}

class _CopyWithImpl$Query$UserNotifications$Page$notifications$$ThreadCommentReplyNotification<
        TRes>
    implements
        CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentReplyNotification<
            TRes> {
  _CopyWithImpl$Query$UserNotifications$Page$notifications$$ThreadCommentReplyNotification(
    this._instance,
    this._then,
  );

  final Query$UserNotifications$Page$notifications$$ThreadCommentReplyNotification
      _instance;

  final TRes Function(
          Query$UserNotifications$Page$notifications$$ThreadCommentReplyNotification)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? thread = _undefined,
    Object? user = _undefined,
    Object? context = _undefined,
    Object? createdAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$UserNotifications$Page$notifications$$ThreadCommentReplyNotification(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        thread: thread == _undefined
            ? _instance.thread
            : (thread
                as Query$UserNotifications$Page$notifications$$ThreadCommentReplyNotification$thread?),
        user: user == _undefined
            ? _instance.user
            : (user
                as Query$UserNotifications$Page$notifications$$ThreadCommentReplyNotification$user?),
        context:
            context == _undefined ? _instance.context : (context as String?),
        createdAt:
            createdAt == _undefined ? _instance.createdAt : (createdAt as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentReplyNotification$thread<
      TRes> get thread {
    final local$thread = _instance.thread;
    return local$thread == null
        ? CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentReplyNotification$thread
            .stub(_then(_instance))
        : CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentReplyNotification$thread(
            local$thread, (e) => call(thread: e));
  }

  CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentReplyNotification$user<
      TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentReplyNotification$user
            .stub(_then(_instance))
        : CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentReplyNotification$user(
            local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$ThreadCommentReplyNotification<
        TRes>
    implements
        CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentReplyNotification<
            TRes> {
  _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$ThreadCommentReplyNotification(
      this._res);

  TRes _res;

  call({
    int? id,
    Query$UserNotifications$Page$notifications$$ThreadCommentReplyNotification$thread?
        thread,
    Query$UserNotifications$Page$notifications$$ThreadCommentReplyNotification$user?
        user,
    String? context,
    int? createdAt,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentReplyNotification$thread<
          TRes>
      get thread =>
          CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentReplyNotification$thread
              .stub(_res);

  CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentReplyNotification$user<
          TRes>
      get user =>
          CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentReplyNotification$user
              .stub(_res);
}

class Query$UserNotifications$Page$notifications$$ThreadCommentReplyNotification$thread
    implements Fragment$ThreadCommentReplyNotification$thread {
  Query$UserNotifications$Page$notifications$$ThreadCommentReplyNotification$thread({
    required this.id,
    this.$__typename = 'Thread',
  });

  factory Query$UserNotifications$Page$notifications$$ThreadCommentReplyNotification$thread.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$UserNotifications$Page$notifications$$ThreadCommentReplyNotification$thread(
      id: (l$id as int),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$UserNotifications$Page$notifications$$ThreadCommentReplyNotification$thread ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$UserNotifications$Page$notifications$$ThreadCommentReplyNotification$thread
    on Query$UserNotifications$Page$notifications$$ThreadCommentReplyNotification$thread {
  CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentReplyNotification$thread<
          Query$UserNotifications$Page$notifications$$ThreadCommentReplyNotification$thread>
      get copyWith =>
          CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentReplyNotification$thread(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentReplyNotification$thread<
    TRes> {
  factory CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentReplyNotification$thread(
    Query$UserNotifications$Page$notifications$$ThreadCommentReplyNotification$thread
        instance,
    TRes Function(
            Query$UserNotifications$Page$notifications$$ThreadCommentReplyNotification$thread)
        then,
  ) = _CopyWithImpl$Query$UserNotifications$Page$notifications$$ThreadCommentReplyNotification$thread;

  factory CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentReplyNotification$thread.stub(
          TRes res) =
      _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$ThreadCommentReplyNotification$thread;

  TRes call({
    int? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$UserNotifications$Page$notifications$$ThreadCommentReplyNotification$thread<
        TRes>
    implements
        CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentReplyNotification$thread<
            TRes> {
  _CopyWithImpl$Query$UserNotifications$Page$notifications$$ThreadCommentReplyNotification$thread(
    this._instance,
    this._then,
  );

  final Query$UserNotifications$Page$notifications$$ThreadCommentReplyNotification$thread
      _instance;

  final TRes Function(
          Query$UserNotifications$Page$notifications$$ThreadCommentReplyNotification$thread)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$UserNotifications$Page$notifications$$ThreadCommentReplyNotification$thread(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$ThreadCommentReplyNotification$thread<
        TRes>
    implements
        CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentReplyNotification$thread<
            TRes> {
  _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$ThreadCommentReplyNotification$thread(
      this._res);

  TRes _res;

  call({
    int? id,
    String? $__typename,
  }) =>
      _res;
}

class Query$UserNotifications$Page$notifications$$ThreadCommentReplyNotification$user
    implements Fragment$ThreadCommentReplyNotification$user {
  Query$UserNotifications$Page$notifications$$ThreadCommentReplyNotification$user({
    required this.id,
    required this.name,
    this.avatar,
    this.$__typename = 'User',
  });

  factory Query$UserNotifications$Page$notifications$$ThreadCommentReplyNotification$user.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$avatar = json['avatar'];
    final l$$__typename = json['__typename'];
    return Query$UserNotifications$Page$notifications$$ThreadCommentReplyNotification$user(
      id: (l$id as int),
      name: (l$name as String),
      avatar: l$avatar == null
          ? null
          : Query$UserNotifications$Page$notifications$$ThreadCommentReplyNotification$user$avatar
              .fromJson((l$avatar as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String name;

  final Query$UserNotifications$Page$notifications$$ThreadCommentReplyNotification$user$avatar?
      avatar;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$avatar = avatar;
    _resultData['avatar'] = l$avatar?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$avatar = avatar;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$avatar,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$UserNotifications$Page$notifications$$ThreadCommentReplyNotification$user ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$avatar = avatar;
    final lOther$avatar = other.avatar;
    if (l$avatar != lOther$avatar) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$UserNotifications$Page$notifications$$ThreadCommentReplyNotification$user
    on Query$UserNotifications$Page$notifications$$ThreadCommentReplyNotification$user {
  CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentReplyNotification$user<
          Query$UserNotifications$Page$notifications$$ThreadCommentReplyNotification$user>
      get copyWith =>
          CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentReplyNotification$user(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentReplyNotification$user<
    TRes> {
  factory CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentReplyNotification$user(
    Query$UserNotifications$Page$notifications$$ThreadCommentReplyNotification$user
        instance,
    TRes Function(
            Query$UserNotifications$Page$notifications$$ThreadCommentReplyNotification$user)
        then,
  ) = _CopyWithImpl$Query$UserNotifications$Page$notifications$$ThreadCommentReplyNotification$user;

  factory CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentReplyNotification$user.stub(
          TRes res) =
      _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$ThreadCommentReplyNotification$user;

  TRes call({
    int? id,
    String? name,
    Query$UserNotifications$Page$notifications$$ThreadCommentReplyNotification$user$avatar?
        avatar,
    String? $__typename,
  });
  CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentReplyNotification$user$avatar<
      TRes> get avatar;
}

class _CopyWithImpl$Query$UserNotifications$Page$notifications$$ThreadCommentReplyNotification$user<
        TRes>
    implements
        CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentReplyNotification$user<
            TRes> {
  _CopyWithImpl$Query$UserNotifications$Page$notifications$$ThreadCommentReplyNotification$user(
    this._instance,
    this._then,
  );

  final Query$UserNotifications$Page$notifications$$ThreadCommentReplyNotification$user
      _instance;

  final TRes Function(
          Query$UserNotifications$Page$notifications$$ThreadCommentReplyNotification$user)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? avatar = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$UserNotifications$Page$notifications$$ThreadCommentReplyNotification$user(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        avatar: avatar == _undefined
            ? _instance.avatar
            : (avatar
                as Query$UserNotifications$Page$notifications$$ThreadCommentReplyNotification$user$avatar?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentReplyNotification$user$avatar<
      TRes> get avatar {
    final local$avatar = _instance.avatar;
    return local$avatar == null
        ? CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentReplyNotification$user$avatar
            .stub(_then(_instance))
        : CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentReplyNotification$user$avatar(
            local$avatar, (e) => call(avatar: e));
  }
}

class _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$ThreadCommentReplyNotification$user<
        TRes>
    implements
        CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentReplyNotification$user<
            TRes> {
  _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$ThreadCommentReplyNotification$user(
      this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    Query$UserNotifications$Page$notifications$$ThreadCommentReplyNotification$user$avatar?
        avatar,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentReplyNotification$user$avatar<
          TRes>
      get avatar =>
          CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentReplyNotification$user$avatar
              .stub(_res);
}

class Query$UserNotifications$Page$notifications$$ThreadCommentReplyNotification$user$avatar
    implements Fragment$ThreadCommentReplyNotification$user$avatar {
  Query$UserNotifications$Page$notifications$$ThreadCommentReplyNotification$user$avatar({
    this.medium,
    this.$__typename = 'UserAvatar',
  });

  factory Query$UserNotifications$Page$notifications$$ThreadCommentReplyNotification$user$avatar.fromJson(
      Map<String, dynamic> json) {
    final l$medium = json['medium'];
    final l$$__typename = json['__typename'];
    return Query$UserNotifications$Page$notifications$$ThreadCommentReplyNotification$user$avatar(
      medium: (l$medium as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? medium;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$medium = medium;
    _resultData['medium'] = l$medium;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$medium = medium;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$medium,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$UserNotifications$Page$notifications$$ThreadCommentReplyNotification$user$avatar ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$medium = medium;
    final lOther$medium = other.medium;
    if (l$medium != lOther$medium) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$UserNotifications$Page$notifications$$ThreadCommentReplyNotification$user$avatar
    on Query$UserNotifications$Page$notifications$$ThreadCommentReplyNotification$user$avatar {
  CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentReplyNotification$user$avatar<
          Query$UserNotifications$Page$notifications$$ThreadCommentReplyNotification$user$avatar>
      get copyWith =>
          CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentReplyNotification$user$avatar(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentReplyNotification$user$avatar<
    TRes> {
  factory CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentReplyNotification$user$avatar(
    Query$UserNotifications$Page$notifications$$ThreadCommentReplyNotification$user$avatar
        instance,
    TRes Function(
            Query$UserNotifications$Page$notifications$$ThreadCommentReplyNotification$user$avatar)
        then,
  ) = _CopyWithImpl$Query$UserNotifications$Page$notifications$$ThreadCommentReplyNotification$user$avatar;

  factory CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentReplyNotification$user$avatar.stub(
          TRes res) =
      _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$ThreadCommentReplyNotification$user$avatar;

  TRes call({
    String? medium,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$UserNotifications$Page$notifications$$ThreadCommentReplyNotification$user$avatar<
        TRes>
    implements
        CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentReplyNotification$user$avatar<
            TRes> {
  _CopyWithImpl$Query$UserNotifications$Page$notifications$$ThreadCommentReplyNotification$user$avatar(
    this._instance,
    this._then,
  );

  final Query$UserNotifications$Page$notifications$$ThreadCommentReplyNotification$user$avatar
      _instance;

  final TRes Function(
          Query$UserNotifications$Page$notifications$$ThreadCommentReplyNotification$user$avatar)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? medium = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$UserNotifications$Page$notifications$$ThreadCommentReplyNotification$user$avatar(
        medium: medium == _undefined ? _instance.medium : (medium as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$ThreadCommentReplyNotification$user$avatar<
        TRes>
    implements
        CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentReplyNotification$user$avatar<
            TRes> {
  _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$ThreadCommentReplyNotification$user$avatar(
      this._res);

  TRes _res;

  call({
    String? medium,
    String? $__typename,
  }) =>
      _res;
}

class Query$UserNotifications$Page$notifications$$ThreadCommentSubscribedNotification
    implements
        Fragment$ThreadCommentSubscribedNotification,
        Query$UserNotifications$Page$notifications {
  Query$UserNotifications$Page$notifications$$ThreadCommentSubscribedNotification({
    required this.id,
    this.thread,
    this.user,
    this.context,
    this.createdAt,
    this.$__typename = 'ThreadCommentSubscribedNotification',
  });

  factory Query$UserNotifications$Page$notifications$$ThreadCommentSubscribedNotification.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$thread = json['thread'];
    final l$user = json['user'];
    final l$context = json['context'];
    final l$createdAt = json['createdAt'];
    final l$$__typename = json['__typename'];
    return Query$UserNotifications$Page$notifications$$ThreadCommentSubscribedNotification(
      id: (l$id as int),
      thread: l$thread == null
          ? null
          : Query$UserNotifications$Page$notifications$$ThreadCommentSubscribedNotification$thread
              .fromJson((l$thread as Map<String, dynamic>)),
      user: l$user == null
          ? null
          : Query$UserNotifications$Page$notifications$$ThreadCommentSubscribedNotification$user
              .fromJson((l$user as Map<String, dynamic>)),
      context: (l$context as String?),
      createdAt: (l$createdAt as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final Query$UserNotifications$Page$notifications$$ThreadCommentSubscribedNotification$thread?
      thread;

  final Query$UserNotifications$Page$notifications$$ThreadCommentSubscribedNotification$user?
      user;

  final String? context;

  final int? createdAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$thread = thread;
    _resultData['thread'] = l$thread?.toJson();
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$context = context;
    _resultData['context'] = l$context;
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$thread = thread;
    final l$user = user;
    final l$context = context;
    final l$createdAt = createdAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$thread,
      l$user,
      l$context,
      l$createdAt,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$UserNotifications$Page$notifications$$ThreadCommentSubscribedNotification ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$thread = thread;
    final lOther$thread = other.thread;
    if (l$thread != lOther$thread) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
      return false;
    }
    final l$context = context;
    final lOther$context = other.context;
    if (l$context != lOther$context) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$UserNotifications$Page$notifications$$ThreadCommentSubscribedNotification
    on Query$UserNotifications$Page$notifications$$ThreadCommentSubscribedNotification {
  CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentSubscribedNotification<
          Query$UserNotifications$Page$notifications$$ThreadCommentSubscribedNotification>
      get copyWith =>
          CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentSubscribedNotification(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentSubscribedNotification<
    TRes> {
  factory CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentSubscribedNotification(
    Query$UserNotifications$Page$notifications$$ThreadCommentSubscribedNotification
        instance,
    TRes Function(
            Query$UserNotifications$Page$notifications$$ThreadCommentSubscribedNotification)
        then,
  ) = _CopyWithImpl$Query$UserNotifications$Page$notifications$$ThreadCommentSubscribedNotification;

  factory CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentSubscribedNotification.stub(
          TRes res) =
      _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$ThreadCommentSubscribedNotification;

  TRes call({
    int? id,
    Query$UserNotifications$Page$notifications$$ThreadCommentSubscribedNotification$thread?
        thread,
    Query$UserNotifications$Page$notifications$$ThreadCommentSubscribedNotification$user?
        user,
    String? context,
    int? createdAt,
    String? $__typename,
  });
  CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentSubscribedNotification$thread<
      TRes> get thread;
  CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentSubscribedNotification$user<
      TRes> get user;
}

class _CopyWithImpl$Query$UserNotifications$Page$notifications$$ThreadCommentSubscribedNotification<
        TRes>
    implements
        CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentSubscribedNotification<
            TRes> {
  _CopyWithImpl$Query$UserNotifications$Page$notifications$$ThreadCommentSubscribedNotification(
    this._instance,
    this._then,
  );

  final Query$UserNotifications$Page$notifications$$ThreadCommentSubscribedNotification
      _instance;

  final TRes Function(
          Query$UserNotifications$Page$notifications$$ThreadCommentSubscribedNotification)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? thread = _undefined,
    Object? user = _undefined,
    Object? context = _undefined,
    Object? createdAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$UserNotifications$Page$notifications$$ThreadCommentSubscribedNotification(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        thread: thread == _undefined
            ? _instance.thread
            : (thread
                as Query$UserNotifications$Page$notifications$$ThreadCommentSubscribedNotification$thread?),
        user: user == _undefined
            ? _instance.user
            : (user
                as Query$UserNotifications$Page$notifications$$ThreadCommentSubscribedNotification$user?),
        context:
            context == _undefined ? _instance.context : (context as String?),
        createdAt:
            createdAt == _undefined ? _instance.createdAt : (createdAt as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentSubscribedNotification$thread<
      TRes> get thread {
    final local$thread = _instance.thread;
    return local$thread == null
        ? CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentSubscribedNotification$thread
            .stub(_then(_instance))
        : CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentSubscribedNotification$thread(
            local$thread, (e) => call(thread: e));
  }

  CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentSubscribedNotification$user<
      TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentSubscribedNotification$user
            .stub(_then(_instance))
        : CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentSubscribedNotification$user(
            local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$ThreadCommentSubscribedNotification<
        TRes>
    implements
        CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentSubscribedNotification<
            TRes> {
  _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$ThreadCommentSubscribedNotification(
      this._res);

  TRes _res;

  call({
    int? id,
    Query$UserNotifications$Page$notifications$$ThreadCommentSubscribedNotification$thread?
        thread,
    Query$UserNotifications$Page$notifications$$ThreadCommentSubscribedNotification$user?
        user,
    String? context,
    int? createdAt,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentSubscribedNotification$thread<
          TRes>
      get thread =>
          CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentSubscribedNotification$thread
              .stub(_res);

  CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentSubscribedNotification$user<
          TRes>
      get user =>
          CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentSubscribedNotification$user
              .stub(_res);
}

class Query$UserNotifications$Page$notifications$$ThreadCommentSubscribedNotification$thread
    implements Fragment$ThreadCommentSubscribedNotification$thread {
  Query$UserNotifications$Page$notifications$$ThreadCommentSubscribedNotification$thread({
    required this.id,
    this.$__typename = 'Thread',
  });

  factory Query$UserNotifications$Page$notifications$$ThreadCommentSubscribedNotification$thread.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$UserNotifications$Page$notifications$$ThreadCommentSubscribedNotification$thread(
      id: (l$id as int),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$UserNotifications$Page$notifications$$ThreadCommentSubscribedNotification$thread ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$UserNotifications$Page$notifications$$ThreadCommentSubscribedNotification$thread
    on Query$UserNotifications$Page$notifications$$ThreadCommentSubscribedNotification$thread {
  CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentSubscribedNotification$thread<
          Query$UserNotifications$Page$notifications$$ThreadCommentSubscribedNotification$thread>
      get copyWith =>
          CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentSubscribedNotification$thread(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentSubscribedNotification$thread<
    TRes> {
  factory CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentSubscribedNotification$thread(
    Query$UserNotifications$Page$notifications$$ThreadCommentSubscribedNotification$thread
        instance,
    TRes Function(
            Query$UserNotifications$Page$notifications$$ThreadCommentSubscribedNotification$thread)
        then,
  ) = _CopyWithImpl$Query$UserNotifications$Page$notifications$$ThreadCommentSubscribedNotification$thread;

  factory CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentSubscribedNotification$thread.stub(
          TRes res) =
      _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$ThreadCommentSubscribedNotification$thread;

  TRes call({
    int? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$UserNotifications$Page$notifications$$ThreadCommentSubscribedNotification$thread<
        TRes>
    implements
        CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentSubscribedNotification$thread<
            TRes> {
  _CopyWithImpl$Query$UserNotifications$Page$notifications$$ThreadCommentSubscribedNotification$thread(
    this._instance,
    this._then,
  );

  final Query$UserNotifications$Page$notifications$$ThreadCommentSubscribedNotification$thread
      _instance;

  final TRes Function(
          Query$UserNotifications$Page$notifications$$ThreadCommentSubscribedNotification$thread)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$UserNotifications$Page$notifications$$ThreadCommentSubscribedNotification$thread(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$ThreadCommentSubscribedNotification$thread<
        TRes>
    implements
        CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentSubscribedNotification$thread<
            TRes> {
  _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$ThreadCommentSubscribedNotification$thread(
      this._res);

  TRes _res;

  call({
    int? id,
    String? $__typename,
  }) =>
      _res;
}

class Query$UserNotifications$Page$notifications$$ThreadCommentSubscribedNotification$user
    implements Fragment$ThreadCommentSubscribedNotification$user {
  Query$UserNotifications$Page$notifications$$ThreadCommentSubscribedNotification$user({
    required this.id,
    required this.name,
    this.avatar,
    this.$__typename = 'User',
  });

  factory Query$UserNotifications$Page$notifications$$ThreadCommentSubscribedNotification$user.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$avatar = json['avatar'];
    final l$$__typename = json['__typename'];
    return Query$UserNotifications$Page$notifications$$ThreadCommentSubscribedNotification$user(
      id: (l$id as int),
      name: (l$name as String),
      avatar: l$avatar == null
          ? null
          : Query$UserNotifications$Page$notifications$$ThreadCommentSubscribedNotification$user$avatar
              .fromJson((l$avatar as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String name;

  final Query$UserNotifications$Page$notifications$$ThreadCommentSubscribedNotification$user$avatar?
      avatar;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$avatar = avatar;
    _resultData['avatar'] = l$avatar?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$avatar = avatar;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$avatar,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$UserNotifications$Page$notifications$$ThreadCommentSubscribedNotification$user ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$avatar = avatar;
    final lOther$avatar = other.avatar;
    if (l$avatar != lOther$avatar) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$UserNotifications$Page$notifications$$ThreadCommentSubscribedNotification$user
    on Query$UserNotifications$Page$notifications$$ThreadCommentSubscribedNotification$user {
  CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentSubscribedNotification$user<
          Query$UserNotifications$Page$notifications$$ThreadCommentSubscribedNotification$user>
      get copyWith =>
          CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentSubscribedNotification$user(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentSubscribedNotification$user<
    TRes> {
  factory CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentSubscribedNotification$user(
    Query$UserNotifications$Page$notifications$$ThreadCommentSubscribedNotification$user
        instance,
    TRes Function(
            Query$UserNotifications$Page$notifications$$ThreadCommentSubscribedNotification$user)
        then,
  ) = _CopyWithImpl$Query$UserNotifications$Page$notifications$$ThreadCommentSubscribedNotification$user;

  factory CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentSubscribedNotification$user.stub(
          TRes res) =
      _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$ThreadCommentSubscribedNotification$user;

  TRes call({
    int? id,
    String? name,
    Query$UserNotifications$Page$notifications$$ThreadCommentSubscribedNotification$user$avatar?
        avatar,
    String? $__typename,
  });
  CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentSubscribedNotification$user$avatar<
      TRes> get avatar;
}

class _CopyWithImpl$Query$UserNotifications$Page$notifications$$ThreadCommentSubscribedNotification$user<
        TRes>
    implements
        CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentSubscribedNotification$user<
            TRes> {
  _CopyWithImpl$Query$UserNotifications$Page$notifications$$ThreadCommentSubscribedNotification$user(
    this._instance,
    this._then,
  );

  final Query$UserNotifications$Page$notifications$$ThreadCommentSubscribedNotification$user
      _instance;

  final TRes Function(
          Query$UserNotifications$Page$notifications$$ThreadCommentSubscribedNotification$user)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? avatar = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$UserNotifications$Page$notifications$$ThreadCommentSubscribedNotification$user(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        avatar: avatar == _undefined
            ? _instance.avatar
            : (avatar
                as Query$UserNotifications$Page$notifications$$ThreadCommentSubscribedNotification$user$avatar?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentSubscribedNotification$user$avatar<
      TRes> get avatar {
    final local$avatar = _instance.avatar;
    return local$avatar == null
        ? CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentSubscribedNotification$user$avatar
            .stub(_then(_instance))
        : CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentSubscribedNotification$user$avatar(
            local$avatar, (e) => call(avatar: e));
  }
}

class _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$ThreadCommentSubscribedNotification$user<
        TRes>
    implements
        CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentSubscribedNotification$user<
            TRes> {
  _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$ThreadCommentSubscribedNotification$user(
      this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    Query$UserNotifications$Page$notifications$$ThreadCommentSubscribedNotification$user$avatar?
        avatar,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentSubscribedNotification$user$avatar<
          TRes>
      get avatar =>
          CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentSubscribedNotification$user$avatar
              .stub(_res);
}

class Query$UserNotifications$Page$notifications$$ThreadCommentSubscribedNotification$user$avatar
    implements Fragment$ThreadCommentSubscribedNotification$user$avatar {
  Query$UserNotifications$Page$notifications$$ThreadCommentSubscribedNotification$user$avatar({
    this.medium,
    this.$__typename = 'UserAvatar',
  });

  factory Query$UserNotifications$Page$notifications$$ThreadCommentSubscribedNotification$user$avatar.fromJson(
      Map<String, dynamic> json) {
    final l$medium = json['medium'];
    final l$$__typename = json['__typename'];
    return Query$UserNotifications$Page$notifications$$ThreadCommentSubscribedNotification$user$avatar(
      medium: (l$medium as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? medium;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$medium = medium;
    _resultData['medium'] = l$medium;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$medium = medium;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$medium,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$UserNotifications$Page$notifications$$ThreadCommentSubscribedNotification$user$avatar ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$medium = medium;
    final lOther$medium = other.medium;
    if (l$medium != lOther$medium) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$UserNotifications$Page$notifications$$ThreadCommentSubscribedNotification$user$avatar
    on Query$UserNotifications$Page$notifications$$ThreadCommentSubscribedNotification$user$avatar {
  CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentSubscribedNotification$user$avatar<
          Query$UserNotifications$Page$notifications$$ThreadCommentSubscribedNotification$user$avatar>
      get copyWith =>
          CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentSubscribedNotification$user$avatar(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentSubscribedNotification$user$avatar<
    TRes> {
  factory CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentSubscribedNotification$user$avatar(
    Query$UserNotifications$Page$notifications$$ThreadCommentSubscribedNotification$user$avatar
        instance,
    TRes Function(
            Query$UserNotifications$Page$notifications$$ThreadCommentSubscribedNotification$user$avatar)
        then,
  ) = _CopyWithImpl$Query$UserNotifications$Page$notifications$$ThreadCommentSubscribedNotification$user$avatar;

  factory CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentSubscribedNotification$user$avatar.stub(
          TRes res) =
      _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$ThreadCommentSubscribedNotification$user$avatar;

  TRes call({
    String? medium,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$UserNotifications$Page$notifications$$ThreadCommentSubscribedNotification$user$avatar<
        TRes>
    implements
        CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentSubscribedNotification$user$avatar<
            TRes> {
  _CopyWithImpl$Query$UserNotifications$Page$notifications$$ThreadCommentSubscribedNotification$user$avatar(
    this._instance,
    this._then,
  );

  final Query$UserNotifications$Page$notifications$$ThreadCommentSubscribedNotification$user$avatar
      _instance;

  final TRes Function(
          Query$UserNotifications$Page$notifications$$ThreadCommentSubscribedNotification$user$avatar)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? medium = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$UserNotifications$Page$notifications$$ThreadCommentSubscribedNotification$user$avatar(
        medium: medium == _undefined ? _instance.medium : (medium as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$ThreadCommentSubscribedNotification$user$avatar<
        TRes>
    implements
        CopyWith$Query$UserNotifications$Page$notifications$$ThreadCommentSubscribedNotification$user$avatar<
            TRes> {
  _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$ThreadCommentSubscribedNotification$user$avatar(
      this._res);

  TRes _res;

  call({
    String? medium,
    String? $__typename,
  }) =>
      _res;
}

class Query$UserNotifications$Page$notifications$$ThreadLikeNotification
    implements
        Fragment$ThreadLikeNotification,
        Query$UserNotifications$Page$notifications {
  Query$UserNotifications$Page$notifications$$ThreadLikeNotification({
    required this.id,
    this.thread,
    this.user,
    this.context,
    this.createdAt,
    this.$__typename = 'ThreadLikeNotification',
  });

  factory Query$UserNotifications$Page$notifications$$ThreadLikeNotification.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$thread = json['thread'];
    final l$user = json['user'];
    final l$context = json['context'];
    final l$createdAt = json['createdAt'];
    final l$$__typename = json['__typename'];
    return Query$UserNotifications$Page$notifications$$ThreadLikeNotification(
      id: (l$id as int),
      thread: l$thread == null
          ? null
          : Query$UserNotifications$Page$notifications$$ThreadLikeNotification$thread
              .fromJson((l$thread as Map<String, dynamic>)),
      user: l$user == null
          ? null
          : Query$UserNotifications$Page$notifications$$ThreadLikeNotification$user
              .fromJson((l$user as Map<String, dynamic>)),
      context: (l$context as String?),
      createdAt: (l$createdAt as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final Query$UserNotifications$Page$notifications$$ThreadLikeNotification$thread?
      thread;

  final Query$UserNotifications$Page$notifications$$ThreadLikeNotification$user?
      user;

  final String? context;

  final int? createdAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$thread = thread;
    _resultData['thread'] = l$thread?.toJson();
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$context = context;
    _resultData['context'] = l$context;
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$thread = thread;
    final l$user = user;
    final l$context = context;
    final l$createdAt = createdAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$thread,
      l$user,
      l$context,
      l$createdAt,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$UserNotifications$Page$notifications$$ThreadLikeNotification ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$thread = thread;
    final lOther$thread = other.thread;
    if (l$thread != lOther$thread) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
      return false;
    }
    final l$context = context;
    final lOther$context = other.context;
    if (l$context != lOther$context) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$UserNotifications$Page$notifications$$ThreadLikeNotification
    on Query$UserNotifications$Page$notifications$$ThreadLikeNotification {
  CopyWith$Query$UserNotifications$Page$notifications$$ThreadLikeNotification<
          Query$UserNotifications$Page$notifications$$ThreadLikeNotification>
      get copyWith =>
          CopyWith$Query$UserNotifications$Page$notifications$$ThreadLikeNotification(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$UserNotifications$Page$notifications$$ThreadLikeNotification<
    TRes> {
  factory CopyWith$Query$UserNotifications$Page$notifications$$ThreadLikeNotification(
    Query$UserNotifications$Page$notifications$$ThreadLikeNotification instance,
    TRes Function(
            Query$UserNotifications$Page$notifications$$ThreadLikeNotification)
        then,
  ) = _CopyWithImpl$Query$UserNotifications$Page$notifications$$ThreadLikeNotification;

  factory CopyWith$Query$UserNotifications$Page$notifications$$ThreadLikeNotification.stub(
          TRes res) =
      _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$ThreadLikeNotification;

  TRes call({
    int? id,
    Query$UserNotifications$Page$notifications$$ThreadLikeNotification$thread?
        thread,
    Query$UserNotifications$Page$notifications$$ThreadLikeNotification$user?
        user,
    String? context,
    int? createdAt,
    String? $__typename,
  });
  CopyWith$Query$UserNotifications$Page$notifications$$ThreadLikeNotification$thread<
      TRes> get thread;
  CopyWith$Query$UserNotifications$Page$notifications$$ThreadLikeNotification$user<
      TRes> get user;
}

class _CopyWithImpl$Query$UserNotifications$Page$notifications$$ThreadLikeNotification<
        TRes>
    implements
        CopyWith$Query$UserNotifications$Page$notifications$$ThreadLikeNotification<
            TRes> {
  _CopyWithImpl$Query$UserNotifications$Page$notifications$$ThreadLikeNotification(
    this._instance,
    this._then,
  );

  final Query$UserNotifications$Page$notifications$$ThreadLikeNotification
      _instance;

  final TRes Function(
      Query$UserNotifications$Page$notifications$$ThreadLikeNotification) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? thread = _undefined,
    Object? user = _undefined,
    Object? context = _undefined,
    Object? createdAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$UserNotifications$Page$notifications$$ThreadLikeNotification(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        thread: thread == _undefined
            ? _instance.thread
            : (thread
                as Query$UserNotifications$Page$notifications$$ThreadLikeNotification$thread?),
        user: user == _undefined
            ? _instance.user
            : (user
                as Query$UserNotifications$Page$notifications$$ThreadLikeNotification$user?),
        context:
            context == _undefined ? _instance.context : (context as String?),
        createdAt:
            createdAt == _undefined ? _instance.createdAt : (createdAt as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$UserNotifications$Page$notifications$$ThreadLikeNotification$thread<
      TRes> get thread {
    final local$thread = _instance.thread;
    return local$thread == null
        ? CopyWith$Query$UserNotifications$Page$notifications$$ThreadLikeNotification$thread
            .stub(_then(_instance))
        : CopyWith$Query$UserNotifications$Page$notifications$$ThreadLikeNotification$thread(
            local$thread, (e) => call(thread: e));
  }

  CopyWith$Query$UserNotifications$Page$notifications$$ThreadLikeNotification$user<
      TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith$Query$UserNotifications$Page$notifications$$ThreadLikeNotification$user
            .stub(_then(_instance))
        : CopyWith$Query$UserNotifications$Page$notifications$$ThreadLikeNotification$user(
            local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$ThreadLikeNotification<
        TRes>
    implements
        CopyWith$Query$UserNotifications$Page$notifications$$ThreadLikeNotification<
            TRes> {
  _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$ThreadLikeNotification(
      this._res);

  TRes _res;

  call({
    int? id,
    Query$UserNotifications$Page$notifications$$ThreadLikeNotification$thread?
        thread,
    Query$UserNotifications$Page$notifications$$ThreadLikeNotification$user?
        user,
    String? context,
    int? createdAt,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$UserNotifications$Page$notifications$$ThreadLikeNotification$thread<
          TRes>
      get thread =>
          CopyWith$Query$UserNotifications$Page$notifications$$ThreadLikeNotification$thread
              .stub(_res);

  CopyWith$Query$UserNotifications$Page$notifications$$ThreadLikeNotification$user<
          TRes>
      get user =>
          CopyWith$Query$UserNotifications$Page$notifications$$ThreadLikeNotification$user
              .stub(_res);
}

class Query$UserNotifications$Page$notifications$$ThreadLikeNotification$thread
    implements Fragment$ThreadLikeNotification$thread {
  Query$UserNotifications$Page$notifications$$ThreadLikeNotification$thread({
    required this.id,
    this.$__typename = 'Thread',
  });

  factory Query$UserNotifications$Page$notifications$$ThreadLikeNotification$thread.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$UserNotifications$Page$notifications$$ThreadLikeNotification$thread(
      id: (l$id as int),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$UserNotifications$Page$notifications$$ThreadLikeNotification$thread ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$UserNotifications$Page$notifications$$ThreadLikeNotification$thread
    on Query$UserNotifications$Page$notifications$$ThreadLikeNotification$thread {
  CopyWith$Query$UserNotifications$Page$notifications$$ThreadLikeNotification$thread<
          Query$UserNotifications$Page$notifications$$ThreadLikeNotification$thread>
      get copyWith =>
          CopyWith$Query$UserNotifications$Page$notifications$$ThreadLikeNotification$thread(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$UserNotifications$Page$notifications$$ThreadLikeNotification$thread<
    TRes> {
  factory CopyWith$Query$UserNotifications$Page$notifications$$ThreadLikeNotification$thread(
    Query$UserNotifications$Page$notifications$$ThreadLikeNotification$thread
        instance,
    TRes Function(
            Query$UserNotifications$Page$notifications$$ThreadLikeNotification$thread)
        then,
  ) = _CopyWithImpl$Query$UserNotifications$Page$notifications$$ThreadLikeNotification$thread;

  factory CopyWith$Query$UserNotifications$Page$notifications$$ThreadLikeNotification$thread.stub(
          TRes res) =
      _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$ThreadLikeNotification$thread;

  TRes call({
    int? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$UserNotifications$Page$notifications$$ThreadLikeNotification$thread<
        TRes>
    implements
        CopyWith$Query$UserNotifications$Page$notifications$$ThreadLikeNotification$thread<
            TRes> {
  _CopyWithImpl$Query$UserNotifications$Page$notifications$$ThreadLikeNotification$thread(
    this._instance,
    this._then,
  );

  final Query$UserNotifications$Page$notifications$$ThreadLikeNotification$thread
      _instance;

  final TRes Function(
          Query$UserNotifications$Page$notifications$$ThreadLikeNotification$thread)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$UserNotifications$Page$notifications$$ThreadLikeNotification$thread(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$ThreadLikeNotification$thread<
        TRes>
    implements
        CopyWith$Query$UserNotifications$Page$notifications$$ThreadLikeNotification$thread<
            TRes> {
  _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$ThreadLikeNotification$thread(
      this._res);

  TRes _res;

  call({
    int? id,
    String? $__typename,
  }) =>
      _res;
}

class Query$UserNotifications$Page$notifications$$ThreadLikeNotification$user
    implements Fragment$ThreadLikeNotification$user {
  Query$UserNotifications$Page$notifications$$ThreadLikeNotification$user({
    required this.id,
    required this.name,
    this.avatar,
    this.$__typename = 'User',
  });

  factory Query$UserNotifications$Page$notifications$$ThreadLikeNotification$user.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$avatar = json['avatar'];
    final l$$__typename = json['__typename'];
    return Query$UserNotifications$Page$notifications$$ThreadLikeNotification$user(
      id: (l$id as int),
      name: (l$name as String),
      avatar: l$avatar == null
          ? null
          : Query$UserNotifications$Page$notifications$$ThreadLikeNotification$user$avatar
              .fromJson((l$avatar as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String name;

  final Query$UserNotifications$Page$notifications$$ThreadLikeNotification$user$avatar?
      avatar;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$avatar = avatar;
    _resultData['avatar'] = l$avatar?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$avatar = avatar;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$avatar,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$UserNotifications$Page$notifications$$ThreadLikeNotification$user ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$avatar = avatar;
    final lOther$avatar = other.avatar;
    if (l$avatar != lOther$avatar) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$UserNotifications$Page$notifications$$ThreadLikeNotification$user
    on Query$UserNotifications$Page$notifications$$ThreadLikeNotification$user {
  CopyWith$Query$UserNotifications$Page$notifications$$ThreadLikeNotification$user<
          Query$UserNotifications$Page$notifications$$ThreadLikeNotification$user>
      get copyWith =>
          CopyWith$Query$UserNotifications$Page$notifications$$ThreadLikeNotification$user(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$UserNotifications$Page$notifications$$ThreadLikeNotification$user<
    TRes> {
  factory CopyWith$Query$UserNotifications$Page$notifications$$ThreadLikeNotification$user(
    Query$UserNotifications$Page$notifications$$ThreadLikeNotification$user
        instance,
    TRes Function(
            Query$UserNotifications$Page$notifications$$ThreadLikeNotification$user)
        then,
  ) = _CopyWithImpl$Query$UserNotifications$Page$notifications$$ThreadLikeNotification$user;

  factory CopyWith$Query$UserNotifications$Page$notifications$$ThreadLikeNotification$user.stub(
          TRes res) =
      _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$ThreadLikeNotification$user;

  TRes call({
    int? id,
    String? name,
    Query$UserNotifications$Page$notifications$$ThreadLikeNotification$user$avatar?
        avatar,
    String? $__typename,
  });
  CopyWith$Query$UserNotifications$Page$notifications$$ThreadLikeNotification$user$avatar<
      TRes> get avatar;
}

class _CopyWithImpl$Query$UserNotifications$Page$notifications$$ThreadLikeNotification$user<
        TRes>
    implements
        CopyWith$Query$UserNotifications$Page$notifications$$ThreadLikeNotification$user<
            TRes> {
  _CopyWithImpl$Query$UserNotifications$Page$notifications$$ThreadLikeNotification$user(
    this._instance,
    this._then,
  );

  final Query$UserNotifications$Page$notifications$$ThreadLikeNotification$user
      _instance;

  final TRes Function(
          Query$UserNotifications$Page$notifications$$ThreadLikeNotification$user)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? avatar = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$UserNotifications$Page$notifications$$ThreadLikeNotification$user(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        avatar: avatar == _undefined
            ? _instance.avatar
            : (avatar
                as Query$UserNotifications$Page$notifications$$ThreadLikeNotification$user$avatar?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$UserNotifications$Page$notifications$$ThreadLikeNotification$user$avatar<
      TRes> get avatar {
    final local$avatar = _instance.avatar;
    return local$avatar == null
        ? CopyWith$Query$UserNotifications$Page$notifications$$ThreadLikeNotification$user$avatar
            .stub(_then(_instance))
        : CopyWith$Query$UserNotifications$Page$notifications$$ThreadLikeNotification$user$avatar(
            local$avatar, (e) => call(avatar: e));
  }
}

class _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$ThreadLikeNotification$user<
        TRes>
    implements
        CopyWith$Query$UserNotifications$Page$notifications$$ThreadLikeNotification$user<
            TRes> {
  _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$ThreadLikeNotification$user(
      this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    Query$UserNotifications$Page$notifications$$ThreadLikeNotification$user$avatar?
        avatar,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$UserNotifications$Page$notifications$$ThreadLikeNotification$user$avatar<
          TRes>
      get avatar =>
          CopyWith$Query$UserNotifications$Page$notifications$$ThreadLikeNotification$user$avatar
              .stub(_res);
}

class Query$UserNotifications$Page$notifications$$ThreadLikeNotification$user$avatar
    implements Fragment$ThreadLikeNotification$user$avatar {
  Query$UserNotifications$Page$notifications$$ThreadLikeNotification$user$avatar({
    this.medium,
    this.$__typename = 'UserAvatar',
  });

  factory Query$UserNotifications$Page$notifications$$ThreadLikeNotification$user$avatar.fromJson(
      Map<String, dynamic> json) {
    final l$medium = json['medium'];
    final l$$__typename = json['__typename'];
    return Query$UserNotifications$Page$notifications$$ThreadLikeNotification$user$avatar(
      medium: (l$medium as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? medium;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$medium = medium;
    _resultData['medium'] = l$medium;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$medium = medium;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$medium,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$UserNotifications$Page$notifications$$ThreadLikeNotification$user$avatar ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$medium = medium;
    final lOther$medium = other.medium;
    if (l$medium != lOther$medium) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$UserNotifications$Page$notifications$$ThreadLikeNotification$user$avatar
    on Query$UserNotifications$Page$notifications$$ThreadLikeNotification$user$avatar {
  CopyWith$Query$UserNotifications$Page$notifications$$ThreadLikeNotification$user$avatar<
          Query$UserNotifications$Page$notifications$$ThreadLikeNotification$user$avatar>
      get copyWith =>
          CopyWith$Query$UserNotifications$Page$notifications$$ThreadLikeNotification$user$avatar(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$UserNotifications$Page$notifications$$ThreadLikeNotification$user$avatar<
    TRes> {
  factory CopyWith$Query$UserNotifications$Page$notifications$$ThreadLikeNotification$user$avatar(
    Query$UserNotifications$Page$notifications$$ThreadLikeNotification$user$avatar
        instance,
    TRes Function(
            Query$UserNotifications$Page$notifications$$ThreadLikeNotification$user$avatar)
        then,
  ) = _CopyWithImpl$Query$UserNotifications$Page$notifications$$ThreadLikeNotification$user$avatar;

  factory CopyWith$Query$UserNotifications$Page$notifications$$ThreadLikeNotification$user$avatar.stub(
          TRes res) =
      _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$ThreadLikeNotification$user$avatar;

  TRes call({
    String? medium,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$UserNotifications$Page$notifications$$ThreadLikeNotification$user$avatar<
        TRes>
    implements
        CopyWith$Query$UserNotifications$Page$notifications$$ThreadLikeNotification$user$avatar<
            TRes> {
  _CopyWithImpl$Query$UserNotifications$Page$notifications$$ThreadLikeNotification$user$avatar(
    this._instance,
    this._then,
  );

  final Query$UserNotifications$Page$notifications$$ThreadLikeNotification$user$avatar
      _instance;

  final TRes Function(
          Query$UserNotifications$Page$notifications$$ThreadLikeNotification$user$avatar)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? medium = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$UserNotifications$Page$notifications$$ThreadLikeNotification$user$avatar(
        medium: medium == _undefined ? _instance.medium : (medium as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$ThreadLikeNotification$user$avatar<
        TRes>
    implements
        CopyWith$Query$UserNotifications$Page$notifications$$ThreadLikeNotification$user$avatar<
            TRes> {
  _CopyWithStubImpl$Query$UserNotifications$Page$notifications$$ThreadLikeNotification$user$avatar(
      this._res);

  TRes _res;

  call({
    String? medium,
    String? $__typename,
  }) =>
      _res;
}
