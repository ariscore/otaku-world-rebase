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

class Variables$Query$GetActivity {
  factory Variables$Query$GetActivity({int? id}) =>
      Variables$Query$GetActivity._({
        if (id != null) r'id': id,
      });

  Variables$Query$GetActivity._(this._$data);

  factory Variables$Query$GetActivity.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as int?);
    }
    return Variables$Query$GetActivity._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get id => (_$data['id'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    return result$data;
  }

  CopyWith$Variables$Query$GetActivity<Variables$Query$GetActivity>
      get copyWith => CopyWith$Variables$Query$GetActivity(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GetActivity) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    return Object.hashAll([_$data.containsKey('id') ? l$id : const {}]);
  }
}

abstract class CopyWith$Variables$Query$GetActivity<TRes> {
  factory CopyWith$Variables$Query$GetActivity(
    Variables$Query$GetActivity instance,
    TRes Function(Variables$Query$GetActivity) then,
  ) = _CopyWithImpl$Variables$Query$GetActivity;

  factory CopyWith$Variables$Query$GetActivity.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetActivity;

  TRes call({int? id});
}

class _CopyWithImpl$Variables$Query$GetActivity<TRes>
    implements CopyWith$Variables$Query$GetActivity<TRes> {
  _CopyWithImpl$Variables$Query$GetActivity(
    this._instance,
    this._then,
  );

  final Variables$Query$GetActivity _instance;

  final TRes Function(Variables$Query$GetActivity) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) => _then(Variables$Query$GetActivity._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as int?),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetActivity<TRes>
    implements CopyWith$Variables$Query$GetActivity<TRes> {
  _CopyWithStubImpl$Variables$Query$GetActivity(this._res);

  TRes _res;

  call({int? id}) => _res;
}

class Query$GetActivity {
  Query$GetActivity({
    this.Activity,
    this.$__typename = 'Query',
  });

  factory Query$GetActivity.fromJson(Map<String, dynamic> json) {
    final l$Activity = json['Activity'];
    final l$$__typename = json['__typename'];
    return Query$GetActivity(
      Activity: l$Activity == null
          ? null
          : Query$GetActivity$Activity.fromJson(
              (l$Activity as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetActivity$Activity? Activity;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$Activity = Activity;
    _resultData['Activity'] = l$Activity?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$Activity = Activity;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$Activity,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetActivity) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$Activity = Activity;
    final lOther$Activity = other.Activity;
    if (l$Activity != lOther$Activity) {
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

extension UtilityExtension$Query$GetActivity on Query$GetActivity {
  CopyWith$Query$GetActivity<Query$GetActivity> get copyWith =>
      CopyWith$Query$GetActivity(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetActivity<TRes> {
  factory CopyWith$Query$GetActivity(
    Query$GetActivity instance,
    TRes Function(Query$GetActivity) then,
  ) = _CopyWithImpl$Query$GetActivity;

  factory CopyWith$Query$GetActivity.stub(TRes res) =
      _CopyWithStubImpl$Query$GetActivity;

  TRes call({
    Query$GetActivity$Activity? Activity,
    String? $__typename,
  });
  CopyWith$Query$GetActivity$Activity<TRes> get Activity;
}

class _CopyWithImpl$Query$GetActivity<TRes>
    implements CopyWith$Query$GetActivity<TRes> {
  _CopyWithImpl$Query$GetActivity(
    this._instance,
    this._then,
  );

  final Query$GetActivity _instance;

  final TRes Function(Query$GetActivity) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? Activity = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetActivity(
        Activity: Activity == _undefined
            ? _instance.Activity
            : (Activity as Query$GetActivity$Activity?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetActivity$Activity<TRes> get Activity {
    final local$Activity = _instance.Activity;
    return local$Activity == null
        ? CopyWith$Query$GetActivity$Activity.stub(_then(_instance))
        : CopyWith$Query$GetActivity$Activity(
            local$Activity, (e) => call(Activity: e));
  }
}

class _CopyWithStubImpl$Query$GetActivity<TRes>
    implements CopyWith$Query$GetActivity<TRes> {
  _CopyWithStubImpl$Query$GetActivity(this._res);

  TRes _res;

  call({
    Query$GetActivity$Activity? Activity,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetActivity$Activity<TRes> get Activity =>
      CopyWith$Query$GetActivity$Activity.stub(_res);
}

const documentNodeQueryGetActivity = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetActivity'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'id')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'Activity'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'id')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'ListActivity'),
            directives: [],
          ),
          FragmentSpreadNode(
            name: NameNode(value: 'MessageActivity'),
            directives: [],
          ),
          FragmentSpreadNode(
            name: NameNode(value: 'TextActivity'),
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
  fragmentDefinitionListActivity,
  fragmentDefinitionMessageActivity,
  fragmentDefinitionTextActivity,
]);
Query$GetActivity _parserFn$Query$GetActivity(Map<String, dynamic> data) =>
    Query$GetActivity.fromJson(data);
typedef OnQueryComplete$Query$GetActivity = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$GetActivity?,
);

class Options$Query$GetActivity
    extends graphql.QueryOptions<Query$GetActivity> {
  Options$Query$GetActivity({
    String? operationName,
    Variables$Query$GetActivity? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetActivity? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$GetActivity? onComplete,
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
                    data == null ? null : _parserFn$Query$GetActivity(data),
                  ),
          onError: onError,
          document: documentNodeQueryGetActivity,
          parserFn: _parserFn$Query$GetActivity,
        );

  final OnQueryComplete$Query$GetActivity? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$GetActivity
    extends graphql.WatchQueryOptions<Query$GetActivity> {
  WatchOptions$Query$GetActivity({
    String? operationName,
    Variables$Query$GetActivity? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetActivity? typedOptimisticResult,
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
          document: documentNodeQueryGetActivity,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetActivity,
        );
}

class FetchMoreOptions$Query$GetActivity extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetActivity({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$GetActivity? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryGetActivity,
        );
}

extension ClientExtension$Query$GetActivity on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetActivity>> query$GetActivity(
          [Options$Query$GetActivity? options]) async =>
      await this.query(options ?? Options$Query$GetActivity());
  graphql.ObservableQuery<Query$GetActivity> watchQuery$GetActivity(
          [WatchOptions$Query$GetActivity? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$GetActivity());
  void writeQuery$GetActivity({
    required Query$GetActivity data,
    Variables$Query$GetActivity? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryGetActivity),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetActivity? readQuery$GetActivity({
    Variables$Query$GetActivity? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryGetActivity),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$GetActivity.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$GetActivity> useQuery$GetActivity(
        [Options$Query$GetActivity? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$GetActivity());
graphql.ObservableQuery<Query$GetActivity> useWatchQuery$GetActivity(
        [WatchOptions$Query$GetActivity? options]) =>
    graphql_flutter.useWatchQuery(options ?? WatchOptions$Query$GetActivity());

class Query$GetActivity$Widget
    extends graphql_flutter.Query<Query$GetActivity> {
  Query$GetActivity$Widget({
    widgets.Key? key,
    Options$Query$GetActivity? options,
    required graphql_flutter.QueryBuilder<Query$GetActivity> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$GetActivity(),
          builder: builder,
        );
}

class Query$GetActivity$Activity {
  Query$GetActivity$Activity({required this.$__typename});

  factory Query$GetActivity$Activity.fromJson(Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "ListActivity":
        return Query$GetActivity$Activity$$ListActivity.fromJson(json);

      case "MessageActivity":
        return Query$GetActivity$Activity$$MessageActivity.fromJson(json);

      case "TextActivity":
        return Query$GetActivity$Activity$$TextActivity.fromJson(json);

      default:
        final l$$__typename = json['__typename'];
        return Query$GetActivity$Activity(
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
    if (!(other is Query$GetActivity$Activity) ||
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

extension UtilityExtension$Query$GetActivity$Activity
    on Query$GetActivity$Activity {
  CopyWith$Query$GetActivity$Activity<Query$GetActivity$Activity>
      get copyWith => CopyWith$Query$GetActivity$Activity(
            this,
            (i) => i,
          );
  _T when<_T>({
    required _T Function(Query$GetActivity$Activity$$ListActivity) listActivity,
    required _T Function(Query$GetActivity$Activity$$MessageActivity)
        messageActivity,
    required _T Function(Query$GetActivity$Activity$$TextActivity) textActivity,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "ListActivity":
        return listActivity(this as Query$GetActivity$Activity$$ListActivity);

      case "MessageActivity":
        return messageActivity(
            this as Query$GetActivity$Activity$$MessageActivity);

      case "TextActivity":
        return textActivity(this as Query$GetActivity$Activity$$TextActivity);

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(Query$GetActivity$Activity$$ListActivity)? listActivity,
    _T Function(Query$GetActivity$Activity$$MessageActivity)? messageActivity,
    _T Function(Query$GetActivity$Activity$$TextActivity)? textActivity,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "ListActivity":
        if (listActivity != null) {
          return listActivity(this as Query$GetActivity$Activity$$ListActivity);
        } else {
          return orElse();
        }

      case "MessageActivity":
        if (messageActivity != null) {
          return messageActivity(
              this as Query$GetActivity$Activity$$MessageActivity);
        } else {
          return orElse();
        }

      case "TextActivity":
        if (textActivity != null) {
          return textActivity(this as Query$GetActivity$Activity$$TextActivity);
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWith$Query$GetActivity$Activity<TRes> {
  factory CopyWith$Query$GetActivity$Activity(
    Query$GetActivity$Activity instance,
    TRes Function(Query$GetActivity$Activity) then,
  ) = _CopyWithImpl$Query$GetActivity$Activity;

  factory CopyWith$Query$GetActivity$Activity.stub(TRes res) =
      _CopyWithStubImpl$Query$GetActivity$Activity;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Query$GetActivity$Activity<TRes>
    implements CopyWith$Query$GetActivity$Activity<TRes> {
  _CopyWithImpl$Query$GetActivity$Activity(
    this._instance,
    this._then,
  );

  final Query$GetActivity$Activity _instance;

  final TRes Function(Query$GetActivity$Activity) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) => _then(
      Query$GetActivity$Activity(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$GetActivity$Activity<TRes>
    implements CopyWith$Query$GetActivity$Activity<TRes> {
  _CopyWithStubImpl$Query$GetActivity$Activity(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Query$GetActivity$Activity$$ListActivity
    implements Fragment$ListActivity, Query$GetActivity$Activity {
  Query$GetActivity$Activity$$ListActivity({
    required this.id,
    this.user,
    required this.likeCount,
    required this.replyCount,
    required this.createdAt,
    this.isLiked,
    this.isSubscribed,
    this.siteUrl,
    this.progress,
    this.status,
    this.media,
    this.$__typename = 'ListActivity',
  });

  factory Query$GetActivity$Activity$$ListActivity.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$user = json['user'];
    final l$likeCount = json['likeCount'];
    final l$replyCount = json['replyCount'];
    final l$createdAt = json['createdAt'];
    final l$isLiked = json['isLiked'];
    final l$isSubscribed = json['isSubscribed'];
    final l$siteUrl = json['siteUrl'];
    final l$progress = json['progress'];
    final l$status = json['status'];
    final l$media = json['media'];
    final l$$__typename = json['__typename'];
    return Query$GetActivity$Activity$$ListActivity(
      id: (l$id as int),
      user: l$user == null
          ? null
          : Query$GetActivity$Activity$$ListActivity$user.fromJson(
              (l$user as Map<String, dynamic>)),
      likeCount: (l$likeCount as int),
      replyCount: (l$replyCount as int),
      createdAt: (l$createdAt as int),
      isLiked: (l$isLiked as bool?),
      isSubscribed: (l$isSubscribed as bool?),
      siteUrl: (l$siteUrl as String?),
      progress: (l$progress as String?),
      status: (l$status as String?),
      media: l$media == null
          ? null
          : Query$GetActivity$Activity$$ListActivity$media.fromJson(
              (l$media as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final Query$GetActivity$Activity$$ListActivity$user? user;

  final int likeCount;

  final int replyCount;

  final int createdAt;

  final bool? isLiked;

  final bool? isSubscribed;

  final String? siteUrl;

  final String? progress;

  final String? status;

  final Query$GetActivity$Activity$$ListActivity$media? media;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$likeCount = likeCount;
    _resultData['likeCount'] = l$likeCount;
    final l$replyCount = replyCount;
    _resultData['replyCount'] = l$replyCount;
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt;
    final l$isLiked = isLiked;
    _resultData['isLiked'] = l$isLiked;
    final l$isSubscribed = isSubscribed;
    _resultData['isSubscribed'] = l$isSubscribed;
    final l$siteUrl = siteUrl;
    _resultData['siteUrl'] = l$siteUrl;
    final l$progress = progress;
    _resultData['progress'] = l$progress;
    final l$status = status;
    _resultData['status'] = l$status;
    final l$media = media;
    _resultData['media'] = l$media?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$user = user;
    final l$likeCount = likeCount;
    final l$replyCount = replyCount;
    final l$createdAt = createdAt;
    final l$isLiked = isLiked;
    final l$isSubscribed = isSubscribed;
    final l$siteUrl = siteUrl;
    final l$progress = progress;
    final l$status = status;
    final l$media = media;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$user,
      l$likeCount,
      l$replyCount,
      l$createdAt,
      l$isLiked,
      l$isSubscribed,
      l$siteUrl,
      l$progress,
      l$status,
      l$media,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetActivity$Activity$$ListActivity) ||
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
    final l$likeCount = likeCount;
    final lOther$likeCount = other.likeCount;
    if (l$likeCount != lOther$likeCount) {
      return false;
    }
    final l$replyCount = replyCount;
    final lOther$replyCount = other.replyCount;
    if (l$replyCount != lOther$replyCount) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$isLiked = isLiked;
    final lOther$isLiked = other.isLiked;
    if (l$isLiked != lOther$isLiked) {
      return false;
    }
    final l$isSubscribed = isSubscribed;
    final lOther$isSubscribed = other.isSubscribed;
    if (l$isSubscribed != lOther$isSubscribed) {
      return false;
    }
    final l$siteUrl = siteUrl;
    final lOther$siteUrl = other.siteUrl;
    if (l$siteUrl != lOther$siteUrl) {
      return false;
    }
    final l$progress = progress;
    final lOther$progress = other.progress;
    if (l$progress != lOther$progress) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
      return false;
    }
    final l$media = media;
    final lOther$media = other.media;
    if (l$media != lOther$media) {
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

extension UtilityExtension$Query$GetActivity$Activity$$ListActivity
    on Query$GetActivity$Activity$$ListActivity {
  CopyWith$Query$GetActivity$Activity$$ListActivity<
          Query$GetActivity$Activity$$ListActivity>
      get copyWith => CopyWith$Query$GetActivity$Activity$$ListActivity(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetActivity$Activity$$ListActivity<TRes> {
  factory CopyWith$Query$GetActivity$Activity$$ListActivity(
    Query$GetActivity$Activity$$ListActivity instance,
    TRes Function(Query$GetActivity$Activity$$ListActivity) then,
  ) = _CopyWithImpl$Query$GetActivity$Activity$$ListActivity;

  factory CopyWith$Query$GetActivity$Activity$$ListActivity.stub(TRes res) =
      _CopyWithStubImpl$Query$GetActivity$Activity$$ListActivity;

  TRes call({
    int? id,
    Query$GetActivity$Activity$$ListActivity$user? user,
    int? likeCount,
    int? replyCount,
    int? createdAt,
    bool? isLiked,
    bool? isSubscribed,
    String? siteUrl,
    String? progress,
    String? status,
    Query$GetActivity$Activity$$ListActivity$media? media,
    String? $__typename,
  });
  CopyWith$Query$GetActivity$Activity$$ListActivity$user<TRes> get user;
  CopyWith$Query$GetActivity$Activity$$ListActivity$media<TRes> get media;
}

class _CopyWithImpl$Query$GetActivity$Activity$$ListActivity<TRes>
    implements CopyWith$Query$GetActivity$Activity$$ListActivity<TRes> {
  _CopyWithImpl$Query$GetActivity$Activity$$ListActivity(
    this._instance,
    this._then,
  );

  final Query$GetActivity$Activity$$ListActivity _instance;

  final TRes Function(Query$GetActivity$Activity$$ListActivity) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? user = _undefined,
    Object? likeCount = _undefined,
    Object? replyCount = _undefined,
    Object? createdAt = _undefined,
    Object? isLiked = _undefined,
    Object? isSubscribed = _undefined,
    Object? siteUrl = _undefined,
    Object? progress = _undefined,
    Object? status = _undefined,
    Object? media = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetActivity$Activity$$ListActivity(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        user: user == _undefined
            ? _instance.user
            : (user as Query$GetActivity$Activity$$ListActivity$user?),
        likeCount: likeCount == _undefined || likeCount == null
            ? _instance.likeCount
            : (likeCount as int),
        replyCount: replyCount == _undefined || replyCount == null
            ? _instance.replyCount
            : (replyCount as int),
        createdAt: createdAt == _undefined || createdAt == null
            ? _instance.createdAt
            : (createdAt as int),
        isLiked: isLiked == _undefined ? _instance.isLiked : (isLiked as bool?),
        isSubscribed: isSubscribed == _undefined
            ? _instance.isSubscribed
            : (isSubscribed as bool?),
        siteUrl:
            siteUrl == _undefined ? _instance.siteUrl : (siteUrl as String?),
        progress:
            progress == _undefined ? _instance.progress : (progress as String?),
        status: status == _undefined ? _instance.status : (status as String?),
        media: media == _undefined
            ? _instance.media
            : (media as Query$GetActivity$Activity$$ListActivity$media?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetActivity$Activity$$ListActivity$user<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith$Query$GetActivity$Activity$$ListActivity$user.stub(
            _then(_instance))
        : CopyWith$Query$GetActivity$Activity$$ListActivity$user(
            local$user, (e) => call(user: e));
  }

  CopyWith$Query$GetActivity$Activity$$ListActivity$media<TRes> get media {
    final local$media = _instance.media;
    return local$media == null
        ? CopyWith$Query$GetActivity$Activity$$ListActivity$media.stub(
            _then(_instance))
        : CopyWith$Query$GetActivity$Activity$$ListActivity$media(
            local$media, (e) => call(media: e));
  }
}

class _CopyWithStubImpl$Query$GetActivity$Activity$$ListActivity<TRes>
    implements CopyWith$Query$GetActivity$Activity$$ListActivity<TRes> {
  _CopyWithStubImpl$Query$GetActivity$Activity$$ListActivity(this._res);

  TRes _res;

  call({
    int? id,
    Query$GetActivity$Activity$$ListActivity$user? user,
    int? likeCount,
    int? replyCount,
    int? createdAt,
    bool? isLiked,
    bool? isSubscribed,
    String? siteUrl,
    String? progress,
    String? status,
    Query$GetActivity$Activity$$ListActivity$media? media,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetActivity$Activity$$ListActivity$user<TRes> get user =>
      CopyWith$Query$GetActivity$Activity$$ListActivity$user.stub(_res);

  CopyWith$Query$GetActivity$Activity$$ListActivity$media<TRes> get media =>
      CopyWith$Query$GetActivity$Activity$$ListActivity$media.stub(_res);
}

class Query$GetActivity$Activity$$ListActivity$user
    implements Fragment$ListActivity$user {
  Query$GetActivity$Activity$$ListActivity$user({
    required this.id,
    this.avatar,
    required this.name,
    this.isFollowing,
    this.$__typename = 'User',
  });

  factory Query$GetActivity$Activity$$ListActivity$user.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$avatar = json['avatar'];
    final l$name = json['name'];
    final l$isFollowing = json['isFollowing'];
    final l$$__typename = json['__typename'];
    return Query$GetActivity$Activity$$ListActivity$user(
      id: (l$id as int),
      avatar: l$avatar == null
          ? null
          : Query$GetActivity$Activity$$ListActivity$user$avatar.fromJson(
              (l$avatar as Map<String, dynamic>)),
      name: (l$name as String),
      isFollowing: (l$isFollowing as bool?),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final Query$GetActivity$Activity$$ListActivity$user$avatar? avatar;

  final String name;

  final bool? isFollowing;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$avatar = avatar;
    _resultData['avatar'] = l$avatar?.toJson();
    final l$name = name;
    _resultData['name'] = l$name;
    final l$isFollowing = isFollowing;
    _resultData['isFollowing'] = l$isFollowing;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$avatar = avatar;
    final l$name = name;
    final l$isFollowing = isFollowing;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$avatar,
      l$name,
      l$isFollowing,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetActivity$Activity$$ListActivity$user) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$avatar = avatar;
    final lOther$avatar = other.avatar;
    if (l$avatar != lOther$avatar) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$isFollowing = isFollowing;
    final lOther$isFollowing = other.isFollowing;
    if (l$isFollowing != lOther$isFollowing) {
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

extension UtilityExtension$Query$GetActivity$Activity$$ListActivity$user
    on Query$GetActivity$Activity$$ListActivity$user {
  CopyWith$Query$GetActivity$Activity$$ListActivity$user<
          Query$GetActivity$Activity$$ListActivity$user>
      get copyWith => CopyWith$Query$GetActivity$Activity$$ListActivity$user(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetActivity$Activity$$ListActivity$user<TRes> {
  factory CopyWith$Query$GetActivity$Activity$$ListActivity$user(
    Query$GetActivity$Activity$$ListActivity$user instance,
    TRes Function(Query$GetActivity$Activity$$ListActivity$user) then,
  ) = _CopyWithImpl$Query$GetActivity$Activity$$ListActivity$user;

  factory CopyWith$Query$GetActivity$Activity$$ListActivity$user.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetActivity$Activity$$ListActivity$user;

  TRes call({
    int? id,
    Query$GetActivity$Activity$$ListActivity$user$avatar? avatar,
    String? name,
    bool? isFollowing,
    String? $__typename,
  });
  CopyWith$Query$GetActivity$Activity$$ListActivity$user$avatar<TRes>
      get avatar;
}

class _CopyWithImpl$Query$GetActivity$Activity$$ListActivity$user<TRes>
    implements CopyWith$Query$GetActivity$Activity$$ListActivity$user<TRes> {
  _CopyWithImpl$Query$GetActivity$Activity$$ListActivity$user(
    this._instance,
    this._then,
  );

  final Query$GetActivity$Activity$$ListActivity$user _instance;

  final TRes Function(Query$GetActivity$Activity$$ListActivity$user) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? avatar = _undefined,
    Object? name = _undefined,
    Object? isFollowing = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetActivity$Activity$$ListActivity$user(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        avatar: avatar == _undefined
            ? _instance.avatar
            : (avatar as Query$GetActivity$Activity$$ListActivity$user$avatar?),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        isFollowing: isFollowing == _undefined
            ? _instance.isFollowing
            : (isFollowing as bool?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetActivity$Activity$$ListActivity$user$avatar<TRes>
      get avatar {
    final local$avatar = _instance.avatar;
    return local$avatar == null
        ? CopyWith$Query$GetActivity$Activity$$ListActivity$user$avatar.stub(
            _then(_instance))
        : CopyWith$Query$GetActivity$Activity$$ListActivity$user$avatar(
            local$avatar, (e) => call(avatar: e));
  }
}

class _CopyWithStubImpl$Query$GetActivity$Activity$$ListActivity$user<TRes>
    implements CopyWith$Query$GetActivity$Activity$$ListActivity$user<TRes> {
  _CopyWithStubImpl$Query$GetActivity$Activity$$ListActivity$user(this._res);

  TRes _res;

  call({
    int? id,
    Query$GetActivity$Activity$$ListActivity$user$avatar? avatar,
    String? name,
    bool? isFollowing,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetActivity$Activity$$ListActivity$user$avatar<TRes>
      get avatar =>
          CopyWith$Query$GetActivity$Activity$$ListActivity$user$avatar.stub(
              _res);
}

class Query$GetActivity$Activity$$ListActivity$user$avatar
    implements Fragment$ListActivity$user$avatar {
  Query$GetActivity$Activity$$ListActivity$user$avatar({
    this.medium,
    this.$__typename = 'UserAvatar',
  });

  factory Query$GetActivity$Activity$$ListActivity$user$avatar.fromJson(
      Map<String, dynamic> json) {
    final l$medium = json['medium'];
    final l$$__typename = json['__typename'];
    return Query$GetActivity$Activity$$ListActivity$user$avatar(
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
    if (!(other is Query$GetActivity$Activity$$ListActivity$user$avatar) ||
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

extension UtilityExtension$Query$GetActivity$Activity$$ListActivity$user$avatar
    on Query$GetActivity$Activity$$ListActivity$user$avatar {
  CopyWith$Query$GetActivity$Activity$$ListActivity$user$avatar<
          Query$GetActivity$Activity$$ListActivity$user$avatar>
      get copyWith =>
          CopyWith$Query$GetActivity$Activity$$ListActivity$user$avatar(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetActivity$Activity$$ListActivity$user$avatar<
    TRes> {
  factory CopyWith$Query$GetActivity$Activity$$ListActivity$user$avatar(
    Query$GetActivity$Activity$$ListActivity$user$avatar instance,
    TRes Function(Query$GetActivity$Activity$$ListActivity$user$avatar) then,
  ) = _CopyWithImpl$Query$GetActivity$Activity$$ListActivity$user$avatar;

  factory CopyWith$Query$GetActivity$Activity$$ListActivity$user$avatar.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetActivity$Activity$$ListActivity$user$avatar;

  TRes call({
    String? medium,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetActivity$Activity$$ListActivity$user$avatar<TRes>
    implements
        CopyWith$Query$GetActivity$Activity$$ListActivity$user$avatar<TRes> {
  _CopyWithImpl$Query$GetActivity$Activity$$ListActivity$user$avatar(
    this._instance,
    this._then,
  );

  final Query$GetActivity$Activity$$ListActivity$user$avatar _instance;

  final TRes Function(Query$GetActivity$Activity$$ListActivity$user$avatar)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? medium = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetActivity$Activity$$ListActivity$user$avatar(
        medium: medium == _undefined ? _instance.medium : (medium as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetActivity$Activity$$ListActivity$user$avatar<
        TRes>
    implements
        CopyWith$Query$GetActivity$Activity$$ListActivity$user$avatar<TRes> {
  _CopyWithStubImpl$Query$GetActivity$Activity$$ListActivity$user$avatar(
      this._res);

  TRes _res;

  call({
    String? medium,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetActivity$Activity$$ListActivity$media
    implements Fragment$ListActivity$media {
  Query$GetActivity$Activity$$ListActivity$media({
    required this.id,
    this.coverImage,
    this.title,
    this.type,
    this.format,
    this.isAdult,
    this.$__typename = 'Media',
  });

  factory Query$GetActivity$Activity$$ListActivity$media.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$coverImage = json['coverImage'];
    final l$title = json['title'];
    final l$type = json['type'];
    final l$format = json['format'];
    final l$isAdult = json['isAdult'];
    final l$$__typename = json['__typename'];
    return Query$GetActivity$Activity$$ListActivity$media(
      id: (l$id as int),
      coverImage: l$coverImage == null
          ? null
          : Query$GetActivity$Activity$$ListActivity$media$coverImage.fromJson(
              (l$coverImage as Map<String, dynamic>)),
      title: l$title == null
          ? null
          : Query$GetActivity$Activity$$ListActivity$media$title.fromJson(
              (l$title as Map<String, dynamic>)),
      type: l$type == null ? null : fromJson$Enum$MediaType((l$type as String)),
      format: l$format == null
          ? null
          : fromJson$Enum$MediaFormat((l$format as String)),
      isAdult: (l$isAdult as bool?),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final Query$GetActivity$Activity$$ListActivity$media$coverImage? coverImage;

  final Query$GetActivity$Activity$$ListActivity$media$title? title;

  final Enum$MediaType? type;

  final Enum$MediaFormat? format;

  final bool? isAdult;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$coverImage = coverImage;
    _resultData['coverImage'] = l$coverImage?.toJson();
    final l$title = title;
    _resultData['title'] = l$title?.toJson();
    final l$type = type;
    _resultData['type'] = l$type == null ? null : toJson$Enum$MediaType(l$type);
    final l$format = format;
    _resultData['format'] =
        l$format == null ? null : toJson$Enum$MediaFormat(l$format);
    final l$isAdult = isAdult;
    _resultData['isAdult'] = l$isAdult;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$coverImage = coverImage;
    final l$title = title;
    final l$type = type;
    final l$format = format;
    final l$isAdult = isAdult;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$coverImage,
      l$title,
      l$type,
      l$format,
      l$isAdult,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetActivity$Activity$$ListActivity$media) ||
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
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$format = format;
    final lOther$format = other.format;
    if (l$format != lOther$format) {
      return false;
    }
    final l$isAdult = isAdult;
    final lOther$isAdult = other.isAdult;
    if (l$isAdult != lOther$isAdult) {
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

extension UtilityExtension$Query$GetActivity$Activity$$ListActivity$media
    on Query$GetActivity$Activity$$ListActivity$media {
  CopyWith$Query$GetActivity$Activity$$ListActivity$media<
          Query$GetActivity$Activity$$ListActivity$media>
      get copyWith => CopyWith$Query$GetActivity$Activity$$ListActivity$media(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetActivity$Activity$$ListActivity$media<TRes> {
  factory CopyWith$Query$GetActivity$Activity$$ListActivity$media(
    Query$GetActivity$Activity$$ListActivity$media instance,
    TRes Function(Query$GetActivity$Activity$$ListActivity$media) then,
  ) = _CopyWithImpl$Query$GetActivity$Activity$$ListActivity$media;

  factory CopyWith$Query$GetActivity$Activity$$ListActivity$media.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetActivity$Activity$$ListActivity$media;

  TRes call({
    int? id,
    Query$GetActivity$Activity$$ListActivity$media$coverImage? coverImage,
    Query$GetActivity$Activity$$ListActivity$media$title? title,
    Enum$MediaType? type,
    Enum$MediaFormat? format,
    bool? isAdult,
    String? $__typename,
  });
  CopyWith$Query$GetActivity$Activity$$ListActivity$media$coverImage<TRes>
      get coverImage;
  CopyWith$Query$GetActivity$Activity$$ListActivity$media$title<TRes> get title;
}

class _CopyWithImpl$Query$GetActivity$Activity$$ListActivity$media<TRes>
    implements CopyWith$Query$GetActivity$Activity$$ListActivity$media<TRes> {
  _CopyWithImpl$Query$GetActivity$Activity$$ListActivity$media(
    this._instance,
    this._then,
  );

  final Query$GetActivity$Activity$$ListActivity$media _instance;

  final TRes Function(Query$GetActivity$Activity$$ListActivity$media) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? coverImage = _undefined,
    Object? title = _undefined,
    Object? type = _undefined,
    Object? format = _undefined,
    Object? isAdult = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetActivity$Activity$$ListActivity$media(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        coverImage: coverImage == _undefined
            ? _instance.coverImage
            : (coverImage
                as Query$GetActivity$Activity$$ListActivity$media$coverImage?),
        title: title == _undefined
            ? _instance.title
            : (title as Query$GetActivity$Activity$$ListActivity$media$title?),
        type: type == _undefined ? _instance.type : (type as Enum$MediaType?),
        format: format == _undefined
            ? _instance.format
            : (format as Enum$MediaFormat?),
        isAdult: isAdult == _undefined ? _instance.isAdult : (isAdult as bool?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetActivity$Activity$$ListActivity$media$coverImage<TRes>
      get coverImage {
    final local$coverImage = _instance.coverImage;
    return local$coverImage == null
        ? CopyWith$Query$GetActivity$Activity$$ListActivity$media$coverImage
            .stub(_then(_instance))
        : CopyWith$Query$GetActivity$Activity$$ListActivity$media$coverImage(
            local$coverImage, (e) => call(coverImage: e));
  }

  CopyWith$Query$GetActivity$Activity$$ListActivity$media$title<TRes>
      get title {
    final local$title = _instance.title;
    return local$title == null
        ? CopyWith$Query$GetActivity$Activity$$ListActivity$media$title.stub(
            _then(_instance))
        : CopyWith$Query$GetActivity$Activity$$ListActivity$media$title(
            local$title, (e) => call(title: e));
  }
}

class _CopyWithStubImpl$Query$GetActivity$Activity$$ListActivity$media<TRes>
    implements CopyWith$Query$GetActivity$Activity$$ListActivity$media<TRes> {
  _CopyWithStubImpl$Query$GetActivity$Activity$$ListActivity$media(this._res);

  TRes _res;

  call({
    int? id,
    Query$GetActivity$Activity$$ListActivity$media$coverImage? coverImage,
    Query$GetActivity$Activity$$ListActivity$media$title? title,
    Enum$MediaType? type,
    Enum$MediaFormat? format,
    bool? isAdult,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetActivity$Activity$$ListActivity$media$coverImage<TRes>
      get coverImage =>
          CopyWith$Query$GetActivity$Activity$$ListActivity$media$coverImage
              .stub(_res);

  CopyWith$Query$GetActivity$Activity$$ListActivity$media$title<TRes>
      get title =>
          CopyWith$Query$GetActivity$Activity$$ListActivity$media$title.stub(
              _res);
}

class Query$GetActivity$Activity$$ListActivity$media$coverImage
    implements Fragment$ListActivity$media$coverImage {
  Query$GetActivity$Activity$$ListActivity$media$coverImage({
    this.medium,
    this.$__typename = 'MediaCoverImage',
  });

  factory Query$GetActivity$Activity$$ListActivity$media$coverImage.fromJson(
      Map<String, dynamic> json) {
    final l$medium = json['medium'];
    final l$$__typename = json['__typename'];
    return Query$GetActivity$Activity$$ListActivity$media$coverImage(
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
    if (!(other is Query$GetActivity$Activity$$ListActivity$media$coverImage) ||
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

extension UtilityExtension$Query$GetActivity$Activity$$ListActivity$media$coverImage
    on Query$GetActivity$Activity$$ListActivity$media$coverImage {
  CopyWith$Query$GetActivity$Activity$$ListActivity$media$coverImage<
          Query$GetActivity$Activity$$ListActivity$media$coverImage>
      get copyWith =>
          CopyWith$Query$GetActivity$Activity$$ListActivity$media$coverImage(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetActivity$Activity$$ListActivity$media$coverImage<
    TRes> {
  factory CopyWith$Query$GetActivity$Activity$$ListActivity$media$coverImage(
    Query$GetActivity$Activity$$ListActivity$media$coverImage instance,
    TRes Function(Query$GetActivity$Activity$$ListActivity$media$coverImage)
        then,
  ) = _CopyWithImpl$Query$GetActivity$Activity$$ListActivity$media$coverImage;

  factory CopyWith$Query$GetActivity$Activity$$ListActivity$media$coverImage.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetActivity$Activity$$ListActivity$media$coverImage;

  TRes call({
    String? medium,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetActivity$Activity$$ListActivity$media$coverImage<
        TRes>
    implements
        CopyWith$Query$GetActivity$Activity$$ListActivity$media$coverImage<
            TRes> {
  _CopyWithImpl$Query$GetActivity$Activity$$ListActivity$media$coverImage(
    this._instance,
    this._then,
  );

  final Query$GetActivity$Activity$$ListActivity$media$coverImage _instance;

  final TRes Function(Query$GetActivity$Activity$$ListActivity$media$coverImage)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? medium = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetActivity$Activity$$ListActivity$media$coverImage(
        medium: medium == _undefined ? _instance.medium : (medium as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetActivity$Activity$$ListActivity$media$coverImage<
        TRes>
    implements
        CopyWith$Query$GetActivity$Activity$$ListActivity$media$coverImage<
            TRes> {
  _CopyWithStubImpl$Query$GetActivity$Activity$$ListActivity$media$coverImage(
      this._res);

  TRes _res;

  call({
    String? medium,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetActivity$Activity$$ListActivity$media$title
    implements Fragment$ListActivity$media$title {
  Query$GetActivity$Activity$$ListActivity$media$title({
    this.userPreferred,
    this.$__typename = 'MediaTitle',
  });

  factory Query$GetActivity$Activity$$ListActivity$media$title.fromJson(
      Map<String, dynamic> json) {
    final l$userPreferred = json['userPreferred'];
    final l$$__typename = json['__typename'];
    return Query$GetActivity$Activity$$ListActivity$media$title(
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
    if (!(other is Query$GetActivity$Activity$$ListActivity$media$title) ||
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

extension UtilityExtension$Query$GetActivity$Activity$$ListActivity$media$title
    on Query$GetActivity$Activity$$ListActivity$media$title {
  CopyWith$Query$GetActivity$Activity$$ListActivity$media$title<
          Query$GetActivity$Activity$$ListActivity$media$title>
      get copyWith =>
          CopyWith$Query$GetActivity$Activity$$ListActivity$media$title(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetActivity$Activity$$ListActivity$media$title<
    TRes> {
  factory CopyWith$Query$GetActivity$Activity$$ListActivity$media$title(
    Query$GetActivity$Activity$$ListActivity$media$title instance,
    TRes Function(Query$GetActivity$Activity$$ListActivity$media$title) then,
  ) = _CopyWithImpl$Query$GetActivity$Activity$$ListActivity$media$title;

  factory CopyWith$Query$GetActivity$Activity$$ListActivity$media$title.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetActivity$Activity$$ListActivity$media$title;

  TRes call({
    String? userPreferred,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetActivity$Activity$$ListActivity$media$title<TRes>
    implements
        CopyWith$Query$GetActivity$Activity$$ListActivity$media$title<TRes> {
  _CopyWithImpl$Query$GetActivity$Activity$$ListActivity$media$title(
    this._instance,
    this._then,
  );

  final Query$GetActivity$Activity$$ListActivity$media$title _instance;

  final TRes Function(Query$GetActivity$Activity$$ListActivity$media$title)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userPreferred = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetActivity$Activity$$ListActivity$media$title(
        userPreferred: userPreferred == _undefined
            ? _instance.userPreferred
            : (userPreferred as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetActivity$Activity$$ListActivity$media$title<
        TRes>
    implements
        CopyWith$Query$GetActivity$Activity$$ListActivity$media$title<TRes> {
  _CopyWithStubImpl$Query$GetActivity$Activity$$ListActivity$media$title(
      this._res);

  TRes _res;

  call({
    String? userPreferred,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetActivity$Activity$$MessageActivity
    implements Fragment$MessageActivity, Query$GetActivity$Activity {
  Query$GetActivity$Activity$$MessageActivity({
    required this.id,
    this.messenger,
    this.recipient,
    required this.likeCount,
    required this.replyCount,
    required this.createdAt,
    this.isLiked,
    this.isSubscribed,
    this.siteUrl,
    this.message,
    this.isPrivate,
    this.$__typename = 'MessageActivity',
  });

  factory Query$GetActivity$Activity$$MessageActivity.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$messenger = json['messenger'];
    final l$recipient = json['recipient'];
    final l$likeCount = json['likeCount'];
    final l$replyCount = json['replyCount'];
    final l$createdAt = json['createdAt'];
    final l$isLiked = json['isLiked'];
    final l$isSubscribed = json['isSubscribed'];
    final l$siteUrl = json['siteUrl'];
    final l$message = json['message'];
    final l$isPrivate = json['isPrivate'];
    final l$$__typename = json['__typename'];
    return Query$GetActivity$Activity$$MessageActivity(
      id: (l$id as int),
      messenger: l$messenger == null
          ? null
          : Query$GetActivity$Activity$$MessageActivity$messenger.fromJson(
              (l$messenger as Map<String, dynamic>)),
      recipient: l$recipient == null
          ? null
          : Query$GetActivity$Activity$$MessageActivity$recipient.fromJson(
              (l$recipient as Map<String, dynamic>)),
      likeCount: (l$likeCount as int),
      replyCount: (l$replyCount as int),
      createdAt: (l$createdAt as int),
      isLiked: (l$isLiked as bool?),
      isSubscribed: (l$isSubscribed as bool?),
      siteUrl: (l$siteUrl as String?),
      message: (l$message as String?),
      isPrivate: (l$isPrivate as bool?),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final Query$GetActivity$Activity$$MessageActivity$messenger? messenger;

  final Query$GetActivity$Activity$$MessageActivity$recipient? recipient;

  final int likeCount;

  final int replyCount;

  final int createdAt;

  final bool? isLiked;

  final bool? isSubscribed;

  final String? siteUrl;

  final String? message;

  final bool? isPrivate;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$messenger = messenger;
    _resultData['messenger'] = l$messenger?.toJson();
    final l$recipient = recipient;
    _resultData['recipient'] = l$recipient?.toJson();
    final l$likeCount = likeCount;
    _resultData['likeCount'] = l$likeCount;
    final l$replyCount = replyCount;
    _resultData['replyCount'] = l$replyCount;
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt;
    final l$isLiked = isLiked;
    _resultData['isLiked'] = l$isLiked;
    final l$isSubscribed = isSubscribed;
    _resultData['isSubscribed'] = l$isSubscribed;
    final l$siteUrl = siteUrl;
    _resultData['siteUrl'] = l$siteUrl;
    final l$message = message;
    _resultData['message'] = l$message;
    final l$isPrivate = isPrivate;
    _resultData['isPrivate'] = l$isPrivate;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$messenger = messenger;
    final l$recipient = recipient;
    final l$likeCount = likeCount;
    final l$replyCount = replyCount;
    final l$createdAt = createdAt;
    final l$isLiked = isLiked;
    final l$isSubscribed = isSubscribed;
    final l$siteUrl = siteUrl;
    final l$message = message;
    final l$isPrivate = isPrivate;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$messenger,
      l$recipient,
      l$likeCount,
      l$replyCount,
      l$createdAt,
      l$isLiked,
      l$isSubscribed,
      l$siteUrl,
      l$message,
      l$isPrivate,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetActivity$Activity$$MessageActivity) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$messenger = messenger;
    final lOther$messenger = other.messenger;
    if (l$messenger != lOther$messenger) {
      return false;
    }
    final l$recipient = recipient;
    final lOther$recipient = other.recipient;
    if (l$recipient != lOther$recipient) {
      return false;
    }
    final l$likeCount = likeCount;
    final lOther$likeCount = other.likeCount;
    if (l$likeCount != lOther$likeCount) {
      return false;
    }
    final l$replyCount = replyCount;
    final lOther$replyCount = other.replyCount;
    if (l$replyCount != lOther$replyCount) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$isLiked = isLiked;
    final lOther$isLiked = other.isLiked;
    if (l$isLiked != lOther$isLiked) {
      return false;
    }
    final l$isSubscribed = isSubscribed;
    final lOther$isSubscribed = other.isSubscribed;
    if (l$isSubscribed != lOther$isSubscribed) {
      return false;
    }
    final l$siteUrl = siteUrl;
    final lOther$siteUrl = other.siteUrl;
    if (l$siteUrl != lOther$siteUrl) {
      return false;
    }
    final l$message = message;
    final lOther$message = other.message;
    if (l$message != lOther$message) {
      return false;
    }
    final l$isPrivate = isPrivate;
    final lOther$isPrivate = other.isPrivate;
    if (l$isPrivate != lOther$isPrivate) {
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

extension UtilityExtension$Query$GetActivity$Activity$$MessageActivity
    on Query$GetActivity$Activity$$MessageActivity {
  CopyWith$Query$GetActivity$Activity$$MessageActivity<
          Query$GetActivity$Activity$$MessageActivity>
      get copyWith => CopyWith$Query$GetActivity$Activity$$MessageActivity(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetActivity$Activity$$MessageActivity<TRes> {
  factory CopyWith$Query$GetActivity$Activity$$MessageActivity(
    Query$GetActivity$Activity$$MessageActivity instance,
    TRes Function(Query$GetActivity$Activity$$MessageActivity) then,
  ) = _CopyWithImpl$Query$GetActivity$Activity$$MessageActivity;

  factory CopyWith$Query$GetActivity$Activity$$MessageActivity.stub(TRes res) =
      _CopyWithStubImpl$Query$GetActivity$Activity$$MessageActivity;

  TRes call({
    int? id,
    Query$GetActivity$Activity$$MessageActivity$messenger? messenger,
    Query$GetActivity$Activity$$MessageActivity$recipient? recipient,
    int? likeCount,
    int? replyCount,
    int? createdAt,
    bool? isLiked,
    bool? isSubscribed,
    String? siteUrl,
    String? message,
    bool? isPrivate,
    String? $__typename,
  });
  CopyWith$Query$GetActivity$Activity$$MessageActivity$messenger<TRes>
      get messenger;
  CopyWith$Query$GetActivity$Activity$$MessageActivity$recipient<TRes>
      get recipient;
}

class _CopyWithImpl$Query$GetActivity$Activity$$MessageActivity<TRes>
    implements CopyWith$Query$GetActivity$Activity$$MessageActivity<TRes> {
  _CopyWithImpl$Query$GetActivity$Activity$$MessageActivity(
    this._instance,
    this._then,
  );

  final Query$GetActivity$Activity$$MessageActivity _instance;

  final TRes Function(Query$GetActivity$Activity$$MessageActivity) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? messenger = _undefined,
    Object? recipient = _undefined,
    Object? likeCount = _undefined,
    Object? replyCount = _undefined,
    Object? createdAt = _undefined,
    Object? isLiked = _undefined,
    Object? isSubscribed = _undefined,
    Object? siteUrl = _undefined,
    Object? message = _undefined,
    Object? isPrivate = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetActivity$Activity$$MessageActivity(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        messenger: messenger == _undefined
            ? _instance.messenger
            : (messenger
                as Query$GetActivity$Activity$$MessageActivity$messenger?),
        recipient: recipient == _undefined
            ? _instance.recipient
            : (recipient
                as Query$GetActivity$Activity$$MessageActivity$recipient?),
        likeCount: likeCount == _undefined || likeCount == null
            ? _instance.likeCount
            : (likeCount as int),
        replyCount: replyCount == _undefined || replyCount == null
            ? _instance.replyCount
            : (replyCount as int),
        createdAt: createdAt == _undefined || createdAt == null
            ? _instance.createdAt
            : (createdAt as int),
        isLiked: isLiked == _undefined ? _instance.isLiked : (isLiked as bool?),
        isSubscribed: isSubscribed == _undefined
            ? _instance.isSubscribed
            : (isSubscribed as bool?),
        siteUrl:
            siteUrl == _undefined ? _instance.siteUrl : (siteUrl as String?),
        message:
            message == _undefined ? _instance.message : (message as String?),
        isPrivate: isPrivate == _undefined
            ? _instance.isPrivate
            : (isPrivate as bool?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetActivity$Activity$$MessageActivity$messenger<TRes>
      get messenger {
    final local$messenger = _instance.messenger;
    return local$messenger == null
        ? CopyWith$Query$GetActivity$Activity$$MessageActivity$messenger.stub(
            _then(_instance))
        : CopyWith$Query$GetActivity$Activity$$MessageActivity$messenger(
            local$messenger, (e) => call(messenger: e));
  }

  CopyWith$Query$GetActivity$Activity$$MessageActivity$recipient<TRes>
      get recipient {
    final local$recipient = _instance.recipient;
    return local$recipient == null
        ? CopyWith$Query$GetActivity$Activity$$MessageActivity$recipient.stub(
            _then(_instance))
        : CopyWith$Query$GetActivity$Activity$$MessageActivity$recipient(
            local$recipient, (e) => call(recipient: e));
  }
}

class _CopyWithStubImpl$Query$GetActivity$Activity$$MessageActivity<TRes>
    implements CopyWith$Query$GetActivity$Activity$$MessageActivity<TRes> {
  _CopyWithStubImpl$Query$GetActivity$Activity$$MessageActivity(this._res);

  TRes _res;

  call({
    int? id,
    Query$GetActivity$Activity$$MessageActivity$messenger? messenger,
    Query$GetActivity$Activity$$MessageActivity$recipient? recipient,
    int? likeCount,
    int? replyCount,
    int? createdAt,
    bool? isLiked,
    bool? isSubscribed,
    String? siteUrl,
    String? message,
    bool? isPrivate,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetActivity$Activity$$MessageActivity$messenger<TRes>
      get messenger =>
          CopyWith$Query$GetActivity$Activity$$MessageActivity$messenger.stub(
              _res);

  CopyWith$Query$GetActivity$Activity$$MessageActivity$recipient<TRes>
      get recipient =>
          CopyWith$Query$GetActivity$Activity$$MessageActivity$recipient.stub(
              _res);
}

class Query$GetActivity$Activity$$MessageActivity$messenger
    implements Fragment$MessageActivity$messenger {
  Query$GetActivity$Activity$$MessageActivity$messenger({
    required this.id,
    this.avatar,
    required this.name,
    this.isFollowing,
    this.$__typename = 'User',
  });

  factory Query$GetActivity$Activity$$MessageActivity$messenger.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$avatar = json['avatar'];
    final l$name = json['name'];
    final l$isFollowing = json['isFollowing'];
    final l$$__typename = json['__typename'];
    return Query$GetActivity$Activity$$MessageActivity$messenger(
      id: (l$id as int),
      avatar: l$avatar == null
          ? null
          : Query$GetActivity$Activity$$MessageActivity$messenger$avatar
              .fromJson((l$avatar as Map<String, dynamic>)),
      name: (l$name as String),
      isFollowing: (l$isFollowing as bool?),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final Query$GetActivity$Activity$$MessageActivity$messenger$avatar? avatar;

  final String name;

  final bool? isFollowing;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$avatar = avatar;
    _resultData['avatar'] = l$avatar?.toJson();
    final l$name = name;
    _resultData['name'] = l$name;
    final l$isFollowing = isFollowing;
    _resultData['isFollowing'] = l$isFollowing;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$avatar = avatar;
    final l$name = name;
    final l$isFollowing = isFollowing;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$avatar,
      l$name,
      l$isFollowing,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetActivity$Activity$$MessageActivity$messenger) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$avatar = avatar;
    final lOther$avatar = other.avatar;
    if (l$avatar != lOther$avatar) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$isFollowing = isFollowing;
    final lOther$isFollowing = other.isFollowing;
    if (l$isFollowing != lOther$isFollowing) {
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

extension UtilityExtension$Query$GetActivity$Activity$$MessageActivity$messenger
    on Query$GetActivity$Activity$$MessageActivity$messenger {
  CopyWith$Query$GetActivity$Activity$$MessageActivity$messenger<
          Query$GetActivity$Activity$$MessageActivity$messenger>
      get copyWith =>
          CopyWith$Query$GetActivity$Activity$$MessageActivity$messenger(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetActivity$Activity$$MessageActivity$messenger<
    TRes> {
  factory CopyWith$Query$GetActivity$Activity$$MessageActivity$messenger(
    Query$GetActivity$Activity$$MessageActivity$messenger instance,
    TRes Function(Query$GetActivity$Activity$$MessageActivity$messenger) then,
  ) = _CopyWithImpl$Query$GetActivity$Activity$$MessageActivity$messenger;

  factory CopyWith$Query$GetActivity$Activity$$MessageActivity$messenger.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetActivity$Activity$$MessageActivity$messenger;

  TRes call({
    int? id,
    Query$GetActivity$Activity$$MessageActivity$messenger$avatar? avatar,
    String? name,
    bool? isFollowing,
    String? $__typename,
  });
  CopyWith$Query$GetActivity$Activity$$MessageActivity$messenger$avatar<TRes>
      get avatar;
}

class _CopyWithImpl$Query$GetActivity$Activity$$MessageActivity$messenger<TRes>
    implements
        CopyWith$Query$GetActivity$Activity$$MessageActivity$messenger<TRes> {
  _CopyWithImpl$Query$GetActivity$Activity$$MessageActivity$messenger(
    this._instance,
    this._then,
  );

  final Query$GetActivity$Activity$$MessageActivity$messenger _instance;

  final TRes Function(Query$GetActivity$Activity$$MessageActivity$messenger)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? avatar = _undefined,
    Object? name = _undefined,
    Object? isFollowing = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetActivity$Activity$$MessageActivity$messenger(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        avatar: avatar == _undefined
            ? _instance.avatar
            : (avatar
                as Query$GetActivity$Activity$$MessageActivity$messenger$avatar?),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        isFollowing: isFollowing == _undefined
            ? _instance.isFollowing
            : (isFollowing as bool?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetActivity$Activity$$MessageActivity$messenger$avatar<TRes>
      get avatar {
    final local$avatar = _instance.avatar;
    return local$avatar == null
        ? CopyWith$Query$GetActivity$Activity$$MessageActivity$messenger$avatar
            .stub(_then(_instance))
        : CopyWith$Query$GetActivity$Activity$$MessageActivity$messenger$avatar(
            local$avatar, (e) => call(avatar: e));
  }
}

class _CopyWithStubImpl$Query$GetActivity$Activity$$MessageActivity$messenger<
        TRes>
    implements
        CopyWith$Query$GetActivity$Activity$$MessageActivity$messenger<TRes> {
  _CopyWithStubImpl$Query$GetActivity$Activity$$MessageActivity$messenger(
      this._res);

  TRes _res;

  call({
    int? id,
    Query$GetActivity$Activity$$MessageActivity$messenger$avatar? avatar,
    String? name,
    bool? isFollowing,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetActivity$Activity$$MessageActivity$messenger$avatar<TRes>
      get avatar =>
          CopyWith$Query$GetActivity$Activity$$MessageActivity$messenger$avatar
              .stub(_res);
}

class Query$GetActivity$Activity$$MessageActivity$messenger$avatar
    implements Fragment$MessageActivity$messenger$avatar {
  Query$GetActivity$Activity$$MessageActivity$messenger$avatar({
    this.medium,
    this.$__typename = 'UserAvatar',
  });

  factory Query$GetActivity$Activity$$MessageActivity$messenger$avatar.fromJson(
      Map<String, dynamic> json) {
    final l$medium = json['medium'];
    final l$$__typename = json['__typename'];
    return Query$GetActivity$Activity$$MessageActivity$messenger$avatar(
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
    if (!(other
            is Query$GetActivity$Activity$$MessageActivity$messenger$avatar) ||
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

extension UtilityExtension$Query$GetActivity$Activity$$MessageActivity$messenger$avatar
    on Query$GetActivity$Activity$$MessageActivity$messenger$avatar {
  CopyWith$Query$GetActivity$Activity$$MessageActivity$messenger$avatar<
          Query$GetActivity$Activity$$MessageActivity$messenger$avatar>
      get copyWith =>
          CopyWith$Query$GetActivity$Activity$$MessageActivity$messenger$avatar(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetActivity$Activity$$MessageActivity$messenger$avatar<
    TRes> {
  factory CopyWith$Query$GetActivity$Activity$$MessageActivity$messenger$avatar(
    Query$GetActivity$Activity$$MessageActivity$messenger$avatar instance,
    TRes Function(Query$GetActivity$Activity$$MessageActivity$messenger$avatar)
        then,
  ) = _CopyWithImpl$Query$GetActivity$Activity$$MessageActivity$messenger$avatar;

  factory CopyWith$Query$GetActivity$Activity$$MessageActivity$messenger$avatar.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetActivity$Activity$$MessageActivity$messenger$avatar;

  TRes call({
    String? medium,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetActivity$Activity$$MessageActivity$messenger$avatar<
        TRes>
    implements
        CopyWith$Query$GetActivity$Activity$$MessageActivity$messenger$avatar<
            TRes> {
  _CopyWithImpl$Query$GetActivity$Activity$$MessageActivity$messenger$avatar(
    this._instance,
    this._then,
  );

  final Query$GetActivity$Activity$$MessageActivity$messenger$avatar _instance;

  final TRes Function(
      Query$GetActivity$Activity$$MessageActivity$messenger$avatar) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? medium = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetActivity$Activity$$MessageActivity$messenger$avatar(
        medium: medium == _undefined ? _instance.medium : (medium as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetActivity$Activity$$MessageActivity$messenger$avatar<
        TRes>
    implements
        CopyWith$Query$GetActivity$Activity$$MessageActivity$messenger$avatar<
            TRes> {
  _CopyWithStubImpl$Query$GetActivity$Activity$$MessageActivity$messenger$avatar(
      this._res);

  TRes _res;

  call({
    String? medium,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetActivity$Activity$$MessageActivity$recipient
    implements Fragment$MessageActivity$recipient {
  Query$GetActivity$Activity$$MessageActivity$recipient({
    required this.id,
    this.avatar,
    required this.name,
    this.$__typename = 'User',
  });

  factory Query$GetActivity$Activity$$MessageActivity$recipient.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$avatar = json['avatar'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$GetActivity$Activity$$MessageActivity$recipient(
      id: (l$id as int),
      avatar: l$avatar == null
          ? null
          : Query$GetActivity$Activity$$MessageActivity$recipient$avatar
              .fromJson((l$avatar as Map<String, dynamic>)),
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final Query$GetActivity$Activity$$MessageActivity$recipient$avatar? avatar;

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$avatar = avatar;
    _resultData['avatar'] = l$avatar?.toJson();
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$avatar = avatar;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$avatar,
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetActivity$Activity$$MessageActivity$recipient) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$avatar = avatar;
    final lOther$avatar = other.avatar;
    if (l$avatar != lOther$avatar) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
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

extension UtilityExtension$Query$GetActivity$Activity$$MessageActivity$recipient
    on Query$GetActivity$Activity$$MessageActivity$recipient {
  CopyWith$Query$GetActivity$Activity$$MessageActivity$recipient<
          Query$GetActivity$Activity$$MessageActivity$recipient>
      get copyWith =>
          CopyWith$Query$GetActivity$Activity$$MessageActivity$recipient(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetActivity$Activity$$MessageActivity$recipient<
    TRes> {
  factory CopyWith$Query$GetActivity$Activity$$MessageActivity$recipient(
    Query$GetActivity$Activity$$MessageActivity$recipient instance,
    TRes Function(Query$GetActivity$Activity$$MessageActivity$recipient) then,
  ) = _CopyWithImpl$Query$GetActivity$Activity$$MessageActivity$recipient;

  factory CopyWith$Query$GetActivity$Activity$$MessageActivity$recipient.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetActivity$Activity$$MessageActivity$recipient;

  TRes call({
    int? id,
    Query$GetActivity$Activity$$MessageActivity$recipient$avatar? avatar,
    String? name,
    String? $__typename,
  });
  CopyWith$Query$GetActivity$Activity$$MessageActivity$recipient$avatar<TRes>
      get avatar;
}

class _CopyWithImpl$Query$GetActivity$Activity$$MessageActivity$recipient<TRes>
    implements
        CopyWith$Query$GetActivity$Activity$$MessageActivity$recipient<TRes> {
  _CopyWithImpl$Query$GetActivity$Activity$$MessageActivity$recipient(
    this._instance,
    this._then,
  );

  final Query$GetActivity$Activity$$MessageActivity$recipient _instance;

  final TRes Function(Query$GetActivity$Activity$$MessageActivity$recipient)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? avatar = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetActivity$Activity$$MessageActivity$recipient(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        avatar: avatar == _undefined
            ? _instance.avatar
            : (avatar
                as Query$GetActivity$Activity$$MessageActivity$recipient$avatar?),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetActivity$Activity$$MessageActivity$recipient$avatar<TRes>
      get avatar {
    final local$avatar = _instance.avatar;
    return local$avatar == null
        ? CopyWith$Query$GetActivity$Activity$$MessageActivity$recipient$avatar
            .stub(_then(_instance))
        : CopyWith$Query$GetActivity$Activity$$MessageActivity$recipient$avatar(
            local$avatar, (e) => call(avatar: e));
  }
}

class _CopyWithStubImpl$Query$GetActivity$Activity$$MessageActivity$recipient<
        TRes>
    implements
        CopyWith$Query$GetActivity$Activity$$MessageActivity$recipient<TRes> {
  _CopyWithStubImpl$Query$GetActivity$Activity$$MessageActivity$recipient(
      this._res);

  TRes _res;

  call({
    int? id,
    Query$GetActivity$Activity$$MessageActivity$recipient$avatar? avatar,
    String? name,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetActivity$Activity$$MessageActivity$recipient$avatar<TRes>
      get avatar =>
          CopyWith$Query$GetActivity$Activity$$MessageActivity$recipient$avatar
              .stub(_res);
}

class Query$GetActivity$Activity$$MessageActivity$recipient$avatar
    implements Fragment$MessageActivity$recipient$avatar {
  Query$GetActivity$Activity$$MessageActivity$recipient$avatar({
    this.medium,
    this.$__typename = 'UserAvatar',
  });

  factory Query$GetActivity$Activity$$MessageActivity$recipient$avatar.fromJson(
      Map<String, dynamic> json) {
    final l$medium = json['medium'];
    final l$$__typename = json['__typename'];
    return Query$GetActivity$Activity$$MessageActivity$recipient$avatar(
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
    if (!(other
            is Query$GetActivity$Activity$$MessageActivity$recipient$avatar) ||
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

extension UtilityExtension$Query$GetActivity$Activity$$MessageActivity$recipient$avatar
    on Query$GetActivity$Activity$$MessageActivity$recipient$avatar {
  CopyWith$Query$GetActivity$Activity$$MessageActivity$recipient$avatar<
          Query$GetActivity$Activity$$MessageActivity$recipient$avatar>
      get copyWith =>
          CopyWith$Query$GetActivity$Activity$$MessageActivity$recipient$avatar(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetActivity$Activity$$MessageActivity$recipient$avatar<
    TRes> {
  factory CopyWith$Query$GetActivity$Activity$$MessageActivity$recipient$avatar(
    Query$GetActivity$Activity$$MessageActivity$recipient$avatar instance,
    TRes Function(Query$GetActivity$Activity$$MessageActivity$recipient$avatar)
        then,
  ) = _CopyWithImpl$Query$GetActivity$Activity$$MessageActivity$recipient$avatar;

  factory CopyWith$Query$GetActivity$Activity$$MessageActivity$recipient$avatar.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetActivity$Activity$$MessageActivity$recipient$avatar;

  TRes call({
    String? medium,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetActivity$Activity$$MessageActivity$recipient$avatar<
        TRes>
    implements
        CopyWith$Query$GetActivity$Activity$$MessageActivity$recipient$avatar<
            TRes> {
  _CopyWithImpl$Query$GetActivity$Activity$$MessageActivity$recipient$avatar(
    this._instance,
    this._then,
  );

  final Query$GetActivity$Activity$$MessageActivity$recipient$avatar _instance;

  final TRes Function(
      Query$GetActivity$Activity$$MessageActivity$recipient$avatar) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? medium = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetActivity$Activity$$MessageActivity$recipient$avatar(
        medium: medium == _undefined ? _instance.medium : (medium as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetActivity$Activity$$MessageActivity$recipient$avatar<
        TRes>
    implements
        CopyWith$Query$GetActivity$Activity$$MessageActivity$recipient$avatar<
            TRes> {
  _CopyWithStubImpl$Query$GetActivity$Activity$$MessageActivity$recipient$avatar(
      this._res);

  TRes _res;

  call({
    String? medium,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetActivity$Activity$$TextActivity
    implements Fragment$TextActivity, Query$GetActivity$Activity {
  Query$GetActivity$Activity$$TextActivity({
    required this.id,
    this.user,
    required this.likeCount,
    required this.replyCount,
    required this.createdAt,
    this.isLiked,
    this.isSubscribed,
    this.siteUrl,
    this.text,
    this.$__typename = 'TextActivity',
  });

  factory Query$GetActivity$Activity$$TextActivity.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$user = json['user'];
    final l$likeCount = json['likeCount'];
    final l$replyCount = json['replyCount'];
    final l$createdAt = json['createdAt'];
    final l$isLiked = json['isLiked'];
    final l$isSubscribed = json['isSubscribed'];
    final l$siteUrl = json['siteUrl'];
    final l$text = json['text'];
    final l$$__typename = json['__typename'];
    return Query$GetActivity$Activity$$TextActivity(
      id: (l$id as int),
      user: l$user == null
          ? null
          : Query$GetActivity$Activity$$TextActivity$user.fromJson(
              (l$user as Map<String, dynamic>)),
      likeCount: (l$likeCount as int),
      replyCount: (l$replyCount as int),
      createdAt: (l$createdAt as int),
      isLiked: (l$isLiked as bool?),
      isSubscribed: (l$isSubscribed as bool?),
      siteUrl: (l$siteUrl as String?),
      text: (l$text as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final Query$GetActivity$Activity$$TextActivity$user? user;

  final int likeCount;

  final int replyCount;

  final int createdAt;

  final bool? isLiked;

  final bool? isSubscribed;

  final String? siteUrl;

  final String? text;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$likeCount = likeCount;
    _resultData['likeCount'] = l$likeCount;
    final l$replyCount = replyCount;
    _resultData['replyCount'] = l$replyCount;
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt;
    final l$isLiked = isLiked;
    _resultData['isLiked'] = l$isLiked;
    final l$isSubscribed = isSubscribed;
    _resultData['isSubscribed'] = l$isSubscribed;
    final l$siteUrl = siteUrl;
    _resultData['siteUrl'] = l$siteUrl;
    final l$text = text;
    _resultData['text'] = l$text;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$user = user;
    final l$likeCount = likeCount;
    final l$replyCount = replyCount;
    final l$createdAt = createdAt;
    final l$isLiked = isLiked;
    final l$isSubscribed = isSubscribed;
    final l$siteUrl = siteUrl;
    final l$text = text;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$user,
      l$likeCount,
      l$replyCount,
      l$createdAt,
      l$isLiked,
      l$isSubscribed,
      l$siteUrl,
      l$text,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetActivity$Activity$$TextActivity) ||
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
    final l$likeCount = likeCount;
    final lOther$likeCount = other.likeCount;
    if (l$likeCount != lOther$likeCount) {
      return false;
    }
    final l$replyCount = replyCount;
    final lOther$replyCount = other.replyCount;
    if (l$replyCount != lOther$replyCount) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$isLiked = isLiked;
    final lOther$isLiked = other.isLiked;
    if (l$isLiked != lOther$isLiked) {
      return false;
    }
    final l$isSubscribed = isSubscribed;
    final lOther$isSubscribed = other.isSubscribed;
    if (l$isSubscribed != lOther$isSubscribed) {
      return false;
    }
    final l$siteUrl = siteUrl;
    final lOther$siteUrl = other.siteUrl;
    if (l$siteUrl != lOther$siteUrl) {
      return false;
    }
    final l$text = text;
    final lOther$text = other.text;
    if (l$text != lOther$text) {
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

extension UtilityExtension$Query$GetActivity$Activity$$TextActivity
    on Query$GetActivity$Activity$$TextActivity {
  CopyWith$Query$GetActivity$Activity$$TextActivity<
          Query$GetActivity$Activity$$TextActivity>
      get copyWith => CopyWith$Query$GetActivity$Activity$$TextActivity(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetActivity$Activity$$TextActivity<TRes> {
  factory CopyWith$Query$GetActivity$Activity$$TextActivity(
    Query$GetActivity$Activity$$TextActivity instance,
    TRes Function(Query$GetActivity$Activity$$TextActivity) then,
  ) = _CopyWithImpl$Query$GetActivity$Activity$$TextActivity;

  factory CopyWith$Query$GetActivity$Activity$$TextActivity.stub(TRes res) =
      _CopyWithStubImpl$Query$GetActivity$Activity$$TextActivity;

  TRes call({
    int? id,
    Query$GetActivity$Activity$$TextActivity$user? user,
    int? likeCount,
    int? replyCount,
    int? createdAt,
    bool? isLiked,
    bool? isSubscribed,
    String? siteUrl,
    String? text,
    String? $__typename,
  });
  CopyWith$Query$GetActivity$Activity$$TextActivity$user<TRes> get user;
}

class _CopyWithImpl$Query$GetActivity$Activity$$TextActivity<TRes>
    implements CopyWith$Query$GetActivity$Activity$$TextActivity<TRes> {
  _CopyWithImpl$Query$GetActivity$Activity$$TextActivity(
    this._instance,
    this._then,
  );

  final Query$GetActivity$Activity$$TextActivity _instance;

  final TRes Function(Query$GetActivity$Activity$$TextActivity) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? user = _undefined,
    Object? likeCount = _undefined,
    Object? replyCount = _undefined,
    Object? createdAt = _undefined,
    Object? isLiked = _undefined,
    Object? isSubscribed = _undefined,
    Object? siteUrl = _undefined,
    Object? text = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetActivity$Activity$$TextActivity(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        user: user == _undefined
            ? _instance.user
            : (user as Query$GetActivity$Activity$$TextActivity$user?),
        likeCount: likeCount == _undefined || likeCount == null
            ? _instance.likeCount
            : (likeCount as int),
        replyCount: replyCount == _undefined || replyCount == null
            ? _instance.replyCount
            : (replyCount as int),
        createdAt: createdAt == _undefined || createdAt == null
            ? _instance.createdAt
            : (createdAt as int),
        isLiked: isLiked == _undefined ? _instance.isLiked : (isLiked as bool?),
        isSubscribed: isSubscribed == _undefined
            ? _instance.isSubscribed
            : (isSubscribed as bool?),
        siteUrl:
            siteUrl == _undefined ? _instance.siteUrl : (siteUrl as String?),
        text: text == _undefined ? _instance.text : (text as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetActivity$Activity$$TextActivity$user<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith$Query$GetActivity$Activity$$TextActivity$user.stub(
            _then(_instance))
        : CopyWith$Query$GetActivity$Activity$$TextActivity$user(
            local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl$Query$GetActivity$Activity$$TextActivity<TRes>
    implements CopyWith$Query$GetActivity$Activity$$TextActivity<TRes> {
  _CopyWithStubImpl$Query$GetActivity$Activity$$TextActivity(this._res);

  TRes _res;

  call({
    int? id,
    Query$GetActivity$Activity$$TextActivity$user? user,
    int? likeCount,
    int? replyCount,
    int? createdAt,
    bool? isLiked,
    bool? isSubscribed,
    String? siteUrl,
    String? text,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetActivity$Activity$$TextActivity$user<TRes> get user =>
      CopyWith$Query$GetActivity$Activity$$TextActivity$user.stub(_res);
}

class Query$GetActivity$Activity$$TextActivity$user
    implements Fragment$TextActivity$user {
  Query$GetActivity$Activity$$TextActivity$user({
    required this.id,
    this.avatar,
    required this.name,
    this.isFollowing,
    this.$__typename = 'User',
  });

  factory Query$GetActivity$Activity$$TextActivity$user.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$avatar = json['avatar'];
    final l$name = json['name'];
    final l$isFollowing = json['isFollowing'];
    final l$$__typename = json['__typename'];
    return Query$GetActivity$Activity$$TextActivity$user(
      id: (l$id as int),
      avatar: l$avatar == null
          ? null
          : Query$GetActivity$Activity$$TextActivity$user$avatar.fromJson(
              (l$avatar as Map<String, dynamic>)),
      name: (l$name as String),
      isFollowing: (l$isFollowing as bool?),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final Query$GetActivity$Activity$$TextActivity$user$avatar? avatar;

  final String name;

  final bool? isFollowing;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$avatar = avatar;
    _resultData['avatar'] = l$avatar?.toJson();
    final l$name = name;
    _resultData['name'] = l$name;
    final l$isFollowing = isFollowing;
    _resultData['isFollowing'] = l$isFollowing;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$avatar = avatar;
    final l$name = name;
    final l$isFollowing = isFollowing;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$avatar,
      l$name,
      l$isFollowing,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetActivity$Activity$$TextActivity$user) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$avatar = avatar;
    final lOther$avatar = other.avatar;
    if (l$avatar != lOther$avatar) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$isFollowing = isFollowing;
    final lOther$isFollowing = other.isFollowing;
    if (l$isFollowing != lOther$isFollowing) {
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

extension UtilityExtension$Query$GetActivity$Activity$$TextActivity$user
    on Query$GetActivity$Activity$$TextActivity$user {
  CopyWith$Query$GetActivity$Activity$$TextActivity$user<
          Query$GetActivity$Activity$$TextActivity$user>
      get copyWith => CopyWith$Query$GetActivity$Activity$$TextActivity$user(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetActivity$Activity$$TextActivity$user<TRes> {
  factory CopyWith$Query$GetActivity$Activity$$TextActivity$user(
    Query$GetActivity$Activity$$TextActivity$user instance,
    TRes Function(Query$GetActivity$Activity$$TextActivity$user) then,
  ) = _CopyWithImpl$Query$GetActivity$Activity$$TextActivity$user;

  factory CopyWith$Query$GetActivity$Activity$$TextActivity$user.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetActivity$Activity$$TextActivity$user;

  TRes call({
    int? id,
    Query$GetActivity$Activity$$TextActivity$user$avatar? avatar,
    String? name,
    bool? isFollowing,
    String? $__typename,
  });
  CopyWith$Query$GetActivity$Activity$$TextActivity$user$avatar<TRes>
      get avatar;
}

class _CopyWithImpl$Query$GetActivity$Activity$$TextActivity$user<TRes>
    implements CopyWith$Query$GetActivity$Activity$$TextActivity$user<TRes> {
  _CopyWithImpl$Query$GetActivity$Activity$$TextActivity$user(
    this._instance,
    this._then,
  );

  final Query$GetActivity$Activity$$TextActivity$user _instance;

  final TRes Function(Query$GetActivity$Activity$$TextActivity$user) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? avatar = _undefined,
    Object? name = _undefined,
    Object? isFollowing = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetActivity$Activity$$TextActivity$user(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        avatar: avatar == _undefined
            ? _instance.avatar
            : (avatar as Query$GetActivity$Activity$$TextActivity$user$avatar?),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        isFollowing: isFollowing == _undefined
            ? _instance.isFollowing
            : (isFollowing as bool?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetActivity$Activity$$TextActivity$user$avatar<TRes>
      get avatar {
    final local$avatar = _instance.avatar;
    return local$avatar == null
        ? CopyWith$Query$GetActivity$Activity$$TextActivity$user$avatar.stub(
            _then(_instance))
        : CopyWith$Query$GetActivity$Activity$$TextActivity$user$avatar(
            local$avatar, (e) => call(avatar: e));
  }
}

class _CopyWithStubImpl$Query$GetActivity$Activity$$TextActivity$user<TRes>
    implements CopyWith$Query$GetActivity$Activity$$TextActivity$user<TRes> {
  _CopyWithStubImpl$Query$GetActivity$Activity$$TextActivity$user(this._res);

  TRes _res;

  call({
    int? id,
    Query$GetActivity$Activity$$TextActivity$user$avatar? avatar,
    String? name,
    bool? isFollowing,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetActivity$Activity$$TextActivity$user$avatar<TRes>
      get avatar =>
          CopyWith$Query$GetActivity$Activity$$TextActivity$user$avatar.stub(
              _res);
}

class Query$GetActivity$Activity$$TextActivity$user$avatar
    implements Fragment$TextActivity$user$avatar {
  Query$GetActivity$Activity$$TextActivity$user$avatar({
    this.medium,
    this.$__typename = 'UserAvatar',
  });

  factory Query$GetActivity$Activity$$TextActivity$user$avatar.fromJson(
      Map<String, dynamic> json) {
    final l$medium = json['medium'];
    final l$$__typename = json['__typename'];
    return Query$GetActivity$Activity$$TextActivity$user$avatar(
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
    if (!(other is Query$GetActivity$Activity$$TextActivity$user$avatar) ||
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

extension UtilityExtension$Query$GetActivity$Activity$$TextActivity$user$avatar
    on Query$GetActivity$Activity$$TextActivity$user$avatar {
  CopyWith$Query$GetActivity$Activity$$TextActivity$user$avatar<
          Query$GetActivity$Activity$$TextActivity$user$avatar>
      get copyWith =>
          CopyWith$Query$GetActivity$Activity$$TextActivity$user$avatar(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetActivity$Activity$$TextActivity$user$avatar<
    TRes> {
  factory CopyWith$Query$GetActivity$Activity$$TextActivity$user$avatar(
    Query$GetActivity$Activity$$TextActivity$user$avatar instance,
    TRes Function(Query$GetActivity$Activity$$TextActivity$user$avatar) then,
  ) = _CopyWithImpl$Query$GetActivity$Activity$$TextActivity$user$avatar;

  factory CopyWith$Query$GetActivity$Activity$$TextActivity$user$avatar.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetActivity$Activity$$TextActivity$user$avatar;

  TRes call({
    String? medium,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetActivity$Activity$$TextActivity$user$avatar<TRes>
    implements
        CopyWith$Query$GetActivity$Activity$$TextActivity$user$avatar<TRes> {
  _CopyWithImpl$Query$GetActivity$Activity$$TextActivity$user$avatar(
    this._instance,
    this._then,
  );

  final Query$GetActivity$Activity$$TextActivity$user$avatar _instance;

  final TRes Function(Query$GetActivity$Activity$$TextActivity$user$avatar)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? medium = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetActivity$Activity$$TextActivity$user$avatar(
        medium: medium == _undefined ? _instance.medium : (medium as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetActivity$Activity$$TextActivity$user$avatar<
        TRes>
    implements
        CopyWith$Query$GetActivity$Activity$$TextActivity$user$avatar<TRes> {
  _CopyWithStubImpl$Query$GetActivity$Activity$$TextActivity$user$avatar(
      this._res);

  TRes _res;

  call({
    String? medium,
    String? $__typename,
  }) =>
      _res;
}
