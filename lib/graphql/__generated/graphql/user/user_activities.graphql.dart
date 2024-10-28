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

class Variables$Query$UserActivities {
  factory Variables$Query$UserActivities({
    int? page,
    int? userId,
    Enum$ActivityType? type,
  }) =>
      Variables$Query$UserActivities._({
        if (page != null) r'page': page,
        if (userId != null) r'userId': userId,
        if (type != null) r'type': type,
      });

  Variables$Query$UserActivities._(this._$data);

  factory Variables$Query$UserActivities.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('page')) {
      final l$page = data['page'];
      result$data['page'] = (l$page as int?);
    }
    if (data.containsKey('userId')) {
      final l$userId = data['userId'];
      result$data['userId'] = (l$userId as int?);
    }
    if (data.containsKey('type')) {
      final l$type = data['type'];
      result$data['type'] = l$type == null
          ? null
          : fromJson$Enum$ActivityType((l$type as String));
    }
    return Variables$Query$UserActivities._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get page => (_$data['page'] as int?);

  int? get userId => (_$data['userId'] as int?);

  Enum$ActivityType? get type => (_$data['type'] as Enum$ActivityType?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('page')) {
      final l$page = page;
      result$data['page'] = l$page;
    }
    if (_$data.containsKey('userId')) {
      final l$userId = userId;
      result$data['userId'] = l$userId;
    }
    if (_$data.containsKey('type')) {
      final l$type = type;
      result$data['type'] =
          l$type == null ? null : toJson$Enum$ActivityType(l$type);
    }
    return result$data;
  }

  CopyWith$Variables$Query$UserActivities<Variables$Query$UserActivities>
      get copyWith => CopyWith$Variables$Query$UserActivities(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$UserActivities) ||
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
    final l$userId = userId;
    final lOther$userId = other.userId;
    if (_$data.containsKey('userId') != other._$data.containsKey('userId')) {
      return false;
    }
    if (l$userId != lOther$userId) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (_$data.containsKey('type') != other._$data.containsKey('type')) {
      return false;
    }
    if (l$type != lOther$type) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$page = page;
    final l$userId = userId;
    final l$type = type;
    return Object.hashAll([
      _$data.containsKey('page') ? l$page : const {},
      _$data.containsKey('userId') ? l$userId : const {},
      _$data.containsKey('type') ? l$type : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$UserActivities<TRes> {
  factory CopyWith$Variables$Query$UserActivities(
    Variables$Query$UserActivities instance,
    TRes Function(Variables$Query$UserActivities) then,
  ) = _CopyWithImpl$Variables$Query$UserActivities;

  factory CopyWith$Variables$Query$UserActivities.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$UserActivities;

  TRes call({
    int? page,
    int? userId,
    Enum$ActivityType? type,
  });
}

class _CopyWithImpl$Variables$Query$UserActivities<TRes>
    implements CopyWith$Variables$Query$UserActivities<TRes> {
  _CopyWithImpl$Variables$Query$UserActivities(
    this._instance,
    this._then,
  );

  final Variables$Query$UserActivities _instance;

  final TRes Function(Variables$Query$UserActivities) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? page = _undefined,
    Object? userId = _undefined,
    Object? type = _undefined,
  }) =>
      _then(Variables$Query$UserActivities._({
        ..._instance._$data,
        if (page != _undefined) 'page': (page as int?),
        if (userId != _undefined) 'userId': (userId as int?),
        if (type != _undefined) 'type': (type as Enum$ActivityType?),
      }));
}

class _CopyWithStubImpl$Variables$Query$UserActivities<TRes>
    implements CopyWith$Variables$Query$UserActivities<TRes> {
  _CopyWithStubImpl$Variables$Query$UserActivities(this._res);

  TRes _res;

  call({
    int? page,
    int? userId,
    Enum$ActivityType? type,
  }) =>
      _res;
}

class Query$UserActivities {
  Query$UserActivities({
    this.Page,
    this.$__typename = 'Query',
  });

  factory Query$UserActivities.fromJson(Map<String, dynamic> json) {
    final l$Page = json['Page'];
    final l$$__typename = json['__typename'];
    return Query$UserActivities(
      Page: l$Page == null
          ? null
          : Query$UserActivities$Page.fromJson(
              (l$Page as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$UserActivities$Page? Page;

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
    if (!(other is Query$UserActivities) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$UserActivities on Query$UserActivities {
  CopyWith$Query$UserActivities<Query$UserActivities> get copyWith =>
      CopyWith$Query$UserActivities(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$UserActivities<TRes> {
  factory CopyWith$Query$UserActivities(
    Query$UserActivities instance,
    TRes Function(Query$UserActivities) then,
  ) = _CopyWithImpl$Query$UserActivities;

  factory CopyWith$Query$UserActivities.stub(TRes res) =
      _CopyWithStubImpl$Query$UserActivities;

  TRes call({
    Query$UserActivities$Page? Page,
    String? $__typename,
  });
  CopyWith$Query$UserActivities$Page<TRes> get Page;
}

class _CopyWithImpl$Query$UserActivities<TRes>
    implements CopyWith$Query$UserActivities<TRes> {
  _CopyWithImpl$Query$UserActivities(
    this._instance,
    this._then,
  );

  final Query$UserActivities _instance;

  final TRes Function(Query$UserActivities) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? Page = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$UserActivities(
        Page: Page == _undefined
            ? _instance.Page
            : (Page as Query$UserActivities$Page?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$UserActivities$Page<TRes> get Page {
    final local$Page = _instance.Page;
    return local$Page == null
        ? CopyWith$Query$UserActivities$Page.stub(_then(_instance))
        : CopyWith$Query$UserActivities$Page(local$Page, (e) => call(Page: e));
  }
}

class _CopyWithStubImpl$Query$UserActivities<TRes>
    implements CopyWith$Query$UserActivities<TRes> {
  _CopyWithStubImpl$Query$UserActivities(this._res);

  TRes _res;

  call({
    Query$UserActivities$Page? Page,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$UserActivities$Page<TRes> get Page =>
      CopyWith$Query$UserActivities$Page.stub(_res);
}

const documentNodeQueryUserActivities = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'UserActivities'),
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
        variable: VariableNode(name: NameNode(value: 'userId')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'type')),
        type: NamedTypeNode(
          name: NameNode(value: 'ActivityType'),
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
            name: NameNode(value: 'activities'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'userId'),
                value: VariableNode(name: NameNode(value: 'userId')),
              ),
              ArgumentNode(
                name: NameNode(value: 'sort'),
                value: ListValueNode(
                    values: [EnumValueNode(name: NameNode(value: 'ID_DESC'))]),
              ),
              ArgumentNode(
                name: NameNode(value: 'type'),
                value: VariableNode(name: NameNode(value: 'type')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                name: NameNode(value: 'TextActivity'),
                directives: [],
              ),
              FragmentSpreadNode(
                name: NameNode(value: 'MessageActivity'),
                directives: [],
              ),
              FragmentSpreadNode(
                name: NameNode(value: 'ListActivity'),
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
  fragmentDefinitionTextActivity,
  fragmentDefinitionMessageActivity,
  fragmentDefinitionListActivity,
]);
Query$UserActivities _parserFn$Query$UserActivities(
        Map<String, dynamic> data) =>
    Query$UserActivities.fromJson(data);
typedef OnQueryComplete$Query$UserActivities = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$UserActivities?,
);

class Options$Query$UserActivities
    extends graphql.QueryOptions<Query$UserActivities> {
  Options$Query$UserActivities({
    String? operationName,
    Variables$Query$UserActivities? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$UserActivities? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$UserActivities? onComplete,
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
                    data == null ? null : _parserFn$Query$UserActivities(data),
                  ),
          onError: onError,
          document: documentNodeQueryUserActivities,
          parserFn: _parserFn$Query$UserActivities,
        );

  final OnQueryComplete$Query$UserActivities? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$UserActivities
    extends graphql.WatchQueryOptions<Query$UserActivities> {
  WatchOptions$Query$UserActivities({
    String? operationName,
    Variables$Query$UserActivities? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$UserActivities? typedOptimisticResult,
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
          document: documentNodeQueryUserActivities,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$UserActivities,
        );
}

class FetchMoreOptions$Query$UserActivities extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$UserActivities({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$UserActivities? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryUserActivities,
        );
}

extension ClientExtension$Query$UserActivities on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$UserActivities>> query$UserActivities(
          [Options$Query$UserActivities? options]) async =>
      await this.query(options ?? Options$Query$UserActivities());
  graphql.ObservableQuery<Query$UserActivities> watchQuery$UserActivities(
          [WatchOptions$Query$UserActivities? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$UserActivities());
  void writeQuery$UserActivities({
    required Query$UserActivities data,
    Variables$Query$UserActivities? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryUserActivities),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$UserActivities? readQuery$UserActivities({
    Variables$Query$UserActivities? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryUserActivities),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$UserActivities.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$UserActivities> useQuery$UserActivities(
        [Options$Query$UserActivities? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$UserActivities());
graphql.ObservableQuery<Query$UserActivities> useWatchQuery$UserActivities(
        [WatchOptions$Query$UserActivities? options]) =>
    graphql_flutter
        .useWatchQuery(options ?? WatchOptions$Query$UserActivities());

class Query$UserActivities$Widget
    extends graphql_flutter.Query<Query$UserActivities> {
  Query$UserActivities$Widget({
    widgets.Key? key,
    Options$Query$UserActivities? options,
    required graphql_flutter.QueryBuilder<Query$UserActivities> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$UserActivities(),
          builder: builder,
        );
}

class Query$UserActivities$Page {
  Query$UserActivities$Page({
    this.pageInfo,
    this.activities,
    this.$__typename = 'Page',
  });

  factory Query$UserActivities$Page.fromJson(Map<String, dynamic> json) {
    final l$pageInfo = json['pageInfo'];
    final l$activities = json['activities'];
    final l$$__typename = json['__typename'];
    return Query$UserActivities$Page(
      pageInfo: l$pageInfo == null
          ? null
          : Query$UserActivities$Page$pageInfo.fromJson(
              (l$pageInfo as Map<String, dynamic>)),
      activities: (l$activities as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$UserActivities$Page$activities.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$UserActivities$Page$pageInfo? pageInfo;

  final List<Query$UserActivities$Page$activities?>? activities;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$pageInfo = pageInfo;
    _resultData['pageInfo'] = l$pageInfo?.toJson();
    final l$activities = activities;
    _resultData['activities'] = l$activities?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$pageInfo = pageInfo;
    final l$activities = activities;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$pageInfo,
      l$activities == null ? null : Object.hashAll(l$activities.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$UserActivities$Page) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$pageInfo = pageInfo;
    final lOther$pageInfo = other.pageInfo;
    if (l$pageInfo != lOther$pageInfo) {
      return false;
    }
    final l$activities = activities;
    final lOther$activities = other.activities;
    if (l$activities != null && lOther$activities != null) {
      if (l$activities.length != lOther$activities.length) {
        return false;
      }
      for (int i = 0; i < l$activities.length; i++) {
        final l$activities$entry = l$activities[i];
        final lOther$activities$entry = lOther$activities[i];
        if (l$activities$entry != lOther$activities$entry) {
          return false;
        }
      }
    } else if (l$activities != lOther$activities) {
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

extension UtilityExtension$Query$UserActivities$Page
    on Query$UserActivities$Page {
  CopyWith$Query$UserActivities$Page<Query$UserActivities$Page> get copyWith =>
      CopyWith$Query$UserActivities$Page(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$UserActivities$Page<TRes> {
  factory CopyWith$Query$UserActivities$Page(
    Query$UserActivities$Page instance,
    TRes Function(Query$UserActivities$Page) then,
  ) = _CopyWithImpl$Query$UserActivities$Page;

  factory CopyWith$Query$UserActivities$Page.stub(TRes res) =
      _CopyWithStubImpl$Query$UserActivities$Page;

  TRes call({
    Query$UserActivities$Page$pageInfo? pageInfo,
    List<Query$UserActivities$Page$activities?>? activities,
    String? $__typename,
  });
  CopyWith$Query$UserActivities$Page$pageInfo<TRes> get pageInfo;
  TRes activities(
      Iterable<Query$UserActivities$Page$activities?>? Function(
              Iterable<
                  CopyWith$Query$UserActivities$Page$activities<
                      Query$UserActivities$Page$activities>?>?)
          _fn);
}

class _CopyWithImpl$Query$UserActivities$Page<TRes>
    implements CopyWith$Query$UserActivities$Page<TRes> {
  _CopyWithImpl$Query$UserActivities$Page(
    this._instance,
    this._then,
  );

  final Query$UserActivities$Page _instance;

  final TRes Function(Query$UserActivities$Page) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pageInfo = _undefined,
    Object? activities = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$UserActivities$Page(
        pageInfo: pageInfo == _undefined
            ? _instance.pageInfo
            : (pageInfo as Query$UserActivities$Page$pageInfo?),
        activities: activities == _undefined
            ? _instance.activities
            : (activities as List<Query$UserActivities$Page$activities?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$UserActivities$Page$pageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return local$pageInfo == null
        ? CopyWith$Query$UserActivities$Page$pageInfo.stub(_then(_instance))
        : CopyWith$Query$UserActivities$Page$pageInfo(
            local$pageInfo, (e) => call(pageInfo: e));
  }

  TRes activities(
          Iterable<Query$UserActivities$Page$activities?>? Function(
                  Iterable<
                      CopyWith$Query$UserActivities$Page$activities<
                          Query$UserActivities$Page$activities>?>?)
              _fn) =>
      call(
          activities: _fn(_instance.activities?.map((e) => e == null
              ? null
              : CopyWith$Query$UserActivities$Page$activities(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$UserActivities$Page<TRes>
    implements CopyWith$Query$UserActivities$Page<TRes> {
  _CopyWithStubImpl$Query$UserActivities$Page(this._res);

  TRes _res;

  call({
    Query$UserActivities$Page$pageInfo? pageInfo,
    List<Query$UserActivities$Page$activities?>? activities,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$UserActivities$Page$pageInfo<TRes> get pageInfo =>
      CopyWith$Query$UserActivities$Page$pageInfo.stub(_res);

  activities(_fn) => _res;
}

class Query$UserActivities$Page$pageInfo {
  Query$UserActivities$Page$pageInfo({
    this.hasNextPage,
    this.$__typename = 'PageInfo',
  });

  factory Query$UserActivities$Page$pageInfo.fromJson(
      Map<String, dynamic> json) {
    final l$hasNextPage = json['hasNextPage'];
    final l$$__typename = json['__typename'];
    return Query$UserActivities$Page$pageInfo(
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
    if (!(other is Query$UserActivities$Page$pageInfo) ||
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

extension UtilityExtension$Query$UserActivities$Page$pageInfo
    on Query$UserActivities$Page$pageInfo {
  CopyWith$Query$UserActivities$Page$pageInfo<
          Query$UserActivities$Page$pageInfo>
      get copyWith => CopyWith$Query$UserActivities$Page$pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$UserActivities$Page$pageInfo<TRes> {
  factory CopyWith$Query$UserActivities$Page$pageInfo(
    Query$UserActivities$Page$pageInfo instance,
    TRes Function(Query$UserActivities$Page$pageInfo) then,
  ) = _CopyWithImpl$Query$UserActivities$Page$pageInfo;

  factory CopyWith$Query$UserActivities$Page$pageInfo.stub(TRes res) =
      _CopyWithStubImpl$Query$UserActivities$Page$pageInfo;

  TRes call({
    bool? hasNextPage,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$UserActivities$Page$pageInfo<TRes>
    implements CopyWith$Query$UserActivities$Page$pageInfo<TRes> {
  _CopyWithImpl$Query$UserActivities$Page$pageInfo(
    this._instance,
    this._then,
  );

  final Query$UserActivities$Page$pageInfo _instance;

  final TRes Function(Query$UserActivities$Page$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasNextPage = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$UserActivities$Page$pageInfo(
        hasNextPage: hasNextPage == _undefined
            ? _instance.hasNextPage
            : (hasNextPage as bool?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$UserActivities$Page$pageInfo<TRes>
    implements CopyWith$Query$UserActivities$Page$pageInfo<TRes> {
  _CopyWithStubImpl$Query$UserActivities$Page$pageInfo(this._res);

  TRes _res;

  call({
    bool? hasNextPage,
    String? $__typename,
  }) =>
      _res;
}

class Query$UserActivities$Page$activities {
  Query$UserActivities$Page$activities({required this.$__typename});

  factory Query$UserActivities$Page$activities.fromJson(
      Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "ListActivity":
        return Query$UserActivities$Page$activities$$ListActivity.fromJson(
            json);

      case "MessageActivity":
        return Query$UserActivities$Page$activities$$MessageActivity.fromJson(
            json);

      case "TextActivity":
        return Query$UserActivities$Page$activities$$TextActivity.fromJson(
            json);

      default:
        final l$$__typename = json['__typename'];
        return Query$UserActivities$Page$activities(
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
    if (!(other is Query$UserActivities$Page$activities) ||
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

extension UtilityExtension$Query$UserActivities$Page$activities
    on Query$UserActivities$Page$activities {
  CopyWith$Query$UserActivities$Page$activities<
          Query$UserActivities$Page$activities>
      get copyWith => CopyWith$Query$UserActivities$Page$activities(
            this,
            (i) => i,
          );
  _T when<_T>({
    required _T Function(Query$UserActivities$Page$activities$$ListActivity)
        listActivity,
    required _T Function(Query$UserActivities$Page$activities$$MessageActivity)
        messageActivity,
    required _T Function(Query$UserActivities$Page$activities$$TextActivity)
        textActivity,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "ListActivity":
        return listActivity(
            this as Query$UserActivities$Page$activities$$ListActivity);

      case "MessageActivity":
        return messageActivity(
            this as Query$UserActivities$Page$activities$$MessageActivity);

      case "TextActivity":
        return textActivity(
            this as Query$UserActivities$Page$activities$$TextActivity);

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(Query$UserActivities$Page$activities$$ListActivity)?
        listActivity,
    _T Function(Query$UserActivities$Page$activities$$MessageActivity)?
        messageActivity,
    _T Function(Query$UserActivities$Page$activities$$TextActivity)?
        textActivity,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "ListActivity":
        if (listActivity != null) {
          return listActivity(
              this as Query$UserActivities$Page$activities$$ListActivity);
        } else {
          return orElse();
        }

      case "MessageActivity":
        if (messageActivity != null) {
          return messageActivity(
              this as Query$UserActivities$Page$activities$$MessageActivity);
        } else {
          return orElse();
        }

      case "TextActivity":
        if (textActivity != null) {
          return textActivity(
              this as Query$UserActivities$Page$activities$$TextActivity);
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWith$Query$UserActivities$Page$activities<TRes> {
  factory CopyWith$Query$UserActivities$Page$activities(
    Query$UserActivities$Page$activities instance,
    TRes Function(Query$UserActivities$Page$activities) then,
  ) = _CopyWithImpl$Query$UserActivities$Page$activities;

  factory CopyWith$Query$UserActivities$Page$activities.stub(TRes res) =
      _CopyWithStubImpl$Query$UserActivities$Page$activities;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Query$UserActivities$Page$activities<TRes>
    implements CopyWith$Query$UserActivities$Page$activities<TRes> {
  _CopyWithImpl$Query$UserActivities$Page$activities(
    this._instance,
    this._then,
  );

  final Query$UserActivities$Page$activities _instance;

  final TRes Function(Query$UserActivities$Page$activities) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) =>
      _then(Query$UserActivities$Page$activities(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$UserActivities$Page$activities<TRes>
    implements CopyWith$Query$UserActivities$Page$activities<TRes> {
  _CopyWithStubImpl$Query$UserActivities$Page$activities(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Query$UserActivities$Page$activities$$ListActivity
    implements Fragment$ListActivity, Query$UserActivities$Page$activities {
  Query$UserActivities$Page$activities$$ListActivity({
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

  factory Query$UserActivities$Page$activities$$ListActivity.fromJson(
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
    return Query$UserActivities$Page$activities$$ListActivity(
      id: (l$id as int),
      user: l$user == null
          ? null
          : Query$UserActivities$Page$activities$$ListActivity$user.fromJson(
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
          : Query$UserActivities$Page$activities$$ListActivity$media.fromJson(
              (l$media as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final Query$UserActivities$Page$activities$$ListActivity$user? user;

  final int likeCount;

  final int replyCount;

  final int createdAt;

  final bool? isLiked;

  final bool? isSubscribed;

  final String? siteUrl;

  final String? progress;

  final String? status;

  final Query$UserActivities$Page$activities$$ListActivity$media? media;

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
    if (!(other is Query$UserActivities$Page$activities$$ListActivity) ||
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

extension UtilityExtension$Query$UserActivities$Page$activities$$ListActivity
    on Query$UserActivities$Page$activities$$ListActivity {
  CopyWith$Query$UserActivities$Page$activities$$ListActivity<
          Query$UserActivities$Page$activities$$ListActivity>
      get copyWith =>
          CopyWith$Query$UserActivities$Page$activities$$ListActivity(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$UserActivities$Page$activities$$ListActivity<
    TRes> {
  factory CopyWith$Query$UserActivities$Page$activities$$ListActivity(
    Query$UserActivities$Page$activities$$ListActivity instance,
    TRes Function(Query$UserActivities$Page$activities$$ListActivity) then,
  ) = _CopyWithImpl$Query$UserActivities$Page$activities$$ListActivity;

  factory CopyWith$Query$UserActivities$Page$activities$$ListActivity.stub(
          TRes res) =
      _CopyWithStubImpl$Query$UserActivities$Page$activities$$ListActivity;

  TRes call({
    int? id,
    Query$UserActivities$Page$activities$$ListActivity$user? user,
    int? likeCount,
    int? replyCount,
    int? createdAt,
    bool? isLiked,
    bool? isSubscribed,
    String? siteUrl,
    String? progress,
    String? status,
    Query$UserActivities$Page$activities$$ListActivity$media? media,
    String? $__typename,
  });
  CopyWith$Query$UserActivities$Page$activities$$ListActivity$user<TRes>
      get user;
  CopyWith$Query$UserActivities$Page$activities$$ListActivity$media<TRes>
      get media;
}

class _CopyWithImpl$Query$UserActivities$Page$activities$$ListActivity<TRes>
    implements
        CopyWith$Query$UserActivities$Page$activities$$ListActivity<TRes> {
  _CopyWithImpl$Query$UserActivities$Page$activities$$ListActivity(
    this._instance,
    this._then,
  );

  final Query$UserActivities$Page$activities$$ListActivity _instance;

  final TRes Function(Query$UserActivities$Page$activities$$ListActivity) _then;

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
      _then(Query$UserActivities$Page$activities$$ListActivity(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        user: user == _undefined
            ? _instance.user
            : (user
                as Query$UserActivities$Page$activities$$ListActivity$user?),
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
            : (media
                as Query$UserActivities$Page$activities$$ListActivity$media?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$UserActivities$Page$activities$$ListActivity$user<TRes>
      get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith$Query$UserActivities$Page$activities$$ListActivity$user.stub(
            _then(_instance))
        : CopyWith$Query$UserActivities$Page$activities$$ListActivity$user(
            local$user, (e) => call(user: e));
  }

  CopyWith$Query$UserActivities$Page$activities$$ListActivity$media<TRes>
      get media {
    final local$media = _instance.media;
    return local$media == null
        ? CopyWith$Query$UserActivities$Page$activities$$ListActivity$media
            .stub(_then(_instance))
        : CopyWith$Query$UserActivities$Page$activities$$ListActivity$media(
            local$media, (e) => call(media: e));
  }
}

class _CopyWithStubImpl$Query$UserActivities$Page$activities$$ListActivity<TRes>
    implements
        CopyWith$Query$UserActivities$Page$activities$$ListActivity<TRes> {
  _CopyWithStubImpl$Query$UserActivities$Page$activities$$ListActivity(
      this._res);

  TRes _res;

  call({
    int? id,
    Query$UserActivities$Page$activities$$ListActivity$user? user,
    int? likeCount,
    int? replyCount,
    int? createdAt,
    bool? isLiked,
    bool? isSubscribed,
    String? siteUrl,
    String? progress,
    String? status,
    Query$UserActivities$Page$activities$$ListActivity$media? media,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$UserActivities$Page$activities$$ListActivity$user<TRes>
      get user =>
          CopyWith$Query$UserActivities$Page$activities$$ListActivity$user.stub(
              _res);

  CopyWith$Query$UserActivities$Page$activities$$ListActivity$media<TRes>
      get media =>
          CopyWith$Query$UserActivities$Page$activities$$ListActivity$media
              .stub(_res);
}

class Query$UserActivities$Page$activities$$ListActivity$user
    implements Fragment$ListActivity$user {
  Query$UserActivities$Page$activities$$ListActivity$user({
    required this.id,
    this.avatar,
    required this.name,
    this.isFollowing,
    this.$__typename = 'User',
  });

  factory Query$UserActivities$Page$activities$$ListActivity$user.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$avatar = json['avatar'];
    final l$name = json['name'];
    final l$isFollowing = json['isFollowing'];
    final l$$__typename = json['__typename'];
    return Query$UserActivities$Page$activities$$ListActivity$user(
      id: (l$id as int),
      avatar: l$avatar == null
          ? null
          : Query$UserActivities$Page$activities$$ListActivity$user$avatar
              .fromJson((l$avatar as Map<String, dynamic>)),
      name: (l$name as String),
      isFollowing: (l$isFollowing as bool?),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final Query$UserActivities$Page$activities$$ListActivity$user$avatar? avatar;

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
    if (!(other is Query$UserActivities$Page$activities$$ListActivity$user) ||
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

extension UtilityExtension$Query$UserActivities$Page$activities$$ListActivity$user
    on Query$UserActivities$Page$activities$$ListActivity$user {
  CopyWith$Query$UserActivities$Page$activities$$ListActivity$user<
          Query$UserActivities$Page$activities$$ListActivity$user>
      get copyWith =>
          CopyWith$Query$UserActivities$Page$activities$$ListActivity$user(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$UserActivities$Page$activities$$ListActivity$user<
    TRes> {
  factory CopyWith$Query$UserActivities$Page$activities$$ListActivity$user(
    Query$UserActivities$Page$activities$$ListActivity$user instance,
    TRes Function(Query$UserActivities$Page$activities$$ListActivity$user) then,
  ) = _CopyWithImpl$Query$UserActivities$Page$activities$$ListActivity$user;

  factory CopyWith$Query$UserActivities$Page$activities$$ListActivity$user.stub(
          TRes res) =
      _CopyWithStubImpl$Query$UserActivities$Page$activities$$ListActivity$user;

  TRes call({
    int? id,
    Query$UserActivities$Page$activities$$ListActivity$user$avatar? avatar,
    String? name,
    bool? isFollowing,
    String? $__typename,
  });
  CopyWith$Query$UserActivities$Page$activities$$ListActivity$user$avatar<TRes>
      get avatar;
}

class _CopyWithImpl$Query$UserActivities$Page$activities$$ListActivity$user<
        TRes>
    implements
        CopyWith$Query$UserActivities$Page$activities$$ListActivity$user<TRes> {
  _CopyWithImpl$Query$UserActivities$Page$activities$$ListActivity$user(
    this._instance,
    this._then,
  );

  final Query$UserActivities$Page$activities$$ListActivity$user _instance;

  final TRes Function(Query$UserActivities$Page$activities$$ListActivity$user)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? avatar = _undefined,
    Object? name = _undefined,
    Object? isFollowing = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$UserActivities$Page$activities$$ListActivity$user(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        avatar: avatar == _undefined
            ? _instance.avatar
            : (avatar
                as Query$UserActivities$Page$activities$$ListActivity$user$avatar?),
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

  CopyWith$Query$UserActivities$Page$activities$$ListActivity$user$avatar<TRes>
      get avatar {
    final local$avatar = _instance.avatar;
    return local$avatar == null
        ? CopyWith$Query$UserActivities$Page$activities$$ListActivity$user$avatar
            .stub(_then(_instance))
        : CopyWith$Query$UserActivities$Page$activities$$ListActivity$user$avatar(
            local$avatar, (e) => call(avatar: e));
  }
}

class _CopyWithStubImpl$Query$UserActivities$Page$activities$$ListActivity$user<
        TRes>
    implements
        CopyWith$Query$UserActivities$Page$activities$$ListActivity$user<TRes> {
  _CopyWithStubImpl$Query$UserActivities$Page$activities$$ListActivity$user(
      this._res);

  TRes _res;

  call({
    int? id,
    Query$UserActivities$Page$activities$$ListActivity$user$avatar? avatar,
    String? name,
    bool? isFollowing,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$UserActivities$Page$activities$$ListActivity$user$avatar<TRes>
      get avatar =>
          CopyWith$Query$UserActivities$Page$activities$$ListActivity$user$avatar
              .stub(_res);
}

class Query$UserActivities$Page$activities$$ListActivity$user$avatar
    implements Fragment$ListActivity$user$avatar {
  Query$UserActivities$Page$activities$$ListActivity$user$avatar({
    this.medium,
    this.$__typename = 'UserAvatar',
  });

  factory Query$UserActivities$Page$activities$$ListActivity$user$avatar.fromJson(
      Map<String, dynamic> json) {
    final l$medium = json['medium'];
    final l$$__typename = json['__typename'];
    return Query$UserActivities$Page$activities$$ListActivity$user$avatar(
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
            is Query$UserActivities$Page$activities$$ListActivity$user$avatar) ||
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

extension UtilityExtension$Query$UserActivities$Page$activities$$ListActivity$user$avatar
    on Query$UserActivities$Page$activities$$ListActivity$user$avatar {
  CopyWith$Query$UserActivities$Page$activities$$ListActivity$user$avatar<
          Query$UserActivities$Page$activities$$ListActivity$user$avatar>
      get copyWith =>
          CopyWith$Query$UserActivities$Page$activities$$ListActivity$user$avatar(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$UserActivities$Page$activities$$ListActivity$user$avatar<
    TRes> {
  factory CopyWith$Query$UserActivities$Page$activities$$ListActivity$user$avatar(
    Query$UserActivities$Page$activities$$ListActivity$user$avatar instance,
    TRes Function(
            Query$UserActivities$Page$activities$$ListActivity$user$avatar)
        then,
  ) = _CopyWithImpl$Query$UserActivities$Page$activities$$ListActivity$user$avatar;

  factory CopyWith$Query$UserActivities$Page$activities$$ListActivity$user$avatar.stub(
          TRes res) =
      _CopyWithStubImpl$Query$UserActivities$Page$activities$$ListActivity$user$avatar;

  TRes call({
    String? medium,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$UserActivities$Page$activities$$ListActivity$user$avatar<
        TRes>
    implements
        CopyWith$Query$UserActivities$Page$activities$$ListActivity$user$avatar<
            TRes> {
  _CopyWithImpl$Query$UserActivities$Page$activities$$ListActivity$user$avatar(
    this._instance,
    this._then,
  );

  final Query$UserActivities$Page$activities$$ListActivity$user$avatar
      _instance;

  final TRes Function(
      Query$UserActivities$Page$activities$$ListActivity$user$avatar) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? medium = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$UserActivities$Page$activities$$ListActivity$user$avatar(
        medium: medium == _undefined ? _instance.medium : (medium as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$UserActivities$Page$activities$$ListActivity$user$avatar<
        TRes>
    implements
        CopyWith$Query$UserActivities$Page$activities$$ListActivity$user$avatar<
            TRes> {
  _CopyWithStubImpl$Query$UserActivities$Page$activities$$ListActivity$user$avatar(
      this._res);

  TRes _res;

  call({
    String? medium,
    String? $__typename,
  }) =>
      _res;
}

class Query$UserActivities$Page$activities$$ListActivity$media
    implements Fragment$ListActivity$media {
  Query$UserActivities$Page$activities$$ListActivity$media({
    required this.id,
    this.coverImage,
    this.title,
    this.type,
    this.format,
    this.isAdult,
    this.$__typename = 'Media',
  });

  factory Query$UserActivities$Page$activities$$ListActivity$media.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$coverImage = json['coverImage'];
    final l$title = json['title'];
    final l$type = json['type'];
    final l$format = json['format'];
    final l$isAdult = json['isAdult'];
    final l$$__typename = json['__typename'];
    return Query$UserActivities$Page$activities$$ListActivity$media(
      id: (l$id as int),
      coverImage: l$coverImage == null
          ? null
          : Query$UserActivities$Page$activities$$ListActivity$media$coverImage
              .fromJson((l$coverImage as Map<String, dynamic>)),
      title: l$title == null
          ? null
          : Query$UserActivities$Page$activities$$ListActivity$media$title
              .fromJson((l$title as Map<String, dynamic>)),
      type: l$type == null ? null : fromJson$Enum$MediaType((l$type as String)),
      format: l$format == null
          ? null
          : fromJson$Enum$MediaFormat((l$format as String)),
      isAdult: (l$isAdult as bool?),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final Query$UserActivities$Page$activities$$ListActivity$media$coverImage?
      coverImage;

  final Query$UserActivities$Page$activities$$ListActivity$media$title? title;

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
    if (!(other is Query$UserActivities$Page$activities$$ListActivity$media) ||
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

extension UtilityExtension$Query$UserActivities$Page$activities$$ListActivity$media
    on Query$UserActivities$Page$activities$$ListActivity$media {
  CopyWith$Query$UserActivities$Page$activities$$ListActivity$media<
          Query$UserActivities$Page$activities$$ListActivity$media>
      get copyWith =>
          CopyWith$Query$UserActivities$Page$activities$$ListActivity$media(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$UserActivities$Page$activities$$ListActivity$media<
    TRes> {
  factory CopyWith$Query$UserActivities$Page$activities$$ListActivity$media(
    Query$UserActivities$Page$activities$$ListActivity$media instance,
    TRes Function(Query$UserActivities$Page$activities$$ListActivity$media)
        then,
  ) = _CopyWithImpl$Query$UserActivities$Page$activities$$ListActivity$media;

  factory CopyWith$Query$UserActivities$Page$activities$$ListActivity$media.stub(
          TRes res) =
      _CopyWithStubImpl$Query$UserActivities$Page$activities$$ListActivity$media;

  TRes call({
    int? id,
    Query$UserActivities$Page$activities$$ListActivity$media$coverImage?
        coverImage,
    Query$UserActivities$Page$activities$$ListActivity$media$title? title,
    Enum$MediaType? type,
    Enum$MediaFormat? format,
    bool? isAdult,
    String? $__typename,
  });
  CopyWith$Query$UserActivities$Page$activities$$ListActivity$media$coverImage<
      TRes> get coverImage;
  CopyWith$Query$UserActivities$Page$activities$$ListActivity$media$title<TRes>
      get title;
}

class _CopyWithImpl$Query$UserActivities$Page$activities$$ListActivity$media<
        TRes>
    implements
        CopyWith$Query$UserActivities$Page$activities$$ListActivity$media<
            TRes> {
  _CopyWithImpl$Query$UserActivities$Page$activities$$ListActivity$media(
    this._instance,
    this._then,
  );

  final Query$UserActivities$Page$activities$$ListActivity$media _instance;

  final TRes Function(Query$UserActivities$Page$activities$$ListActivity$media)
      _then;

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
      _then(Query$UserActivities$Page$activities$$ListActivity$media(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        coverImage: coverImage == _undefined
            ? _instance.coverImage
            : (coverImage
                as Query$UserActivities$Page$activities$$ListActivity$media$coverImage?),
        title: title == _undefined
            ? _instance.title
            : (title
                as Query$UserActivities$Page$activities$$ListActivity$media$title?),
        type: type == _undefined ? _instance.type : (type as Enum$MediaType?),
        format: format == _undefined
            ? _instance.format
            : (format as Enum$MediaFormat?),
        isAdult: isAdult == _undefined ? _instance.isAdult : (isAdult as bool?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$UserActivities$Page$activities$$ListActivity$media$coverImage<
      TRes> get coverImage {
    final local$coverImage = _instance.coverImage;
    return local$coverImage == null
        ? CopyWith$Query$UserActivities$Page$activities$$ListActivity$media$coverImage
            .stub(_then(_instance))
        : CopyWith$Query$UserActivities$Page$activities$$ListActivity$media$coverImage(
            local$coverImage, (e) => call(coverImage: e));
  }

  CopyWith$Query$UserActivities$Page$activities$$ListActivity$media$title<TRes>
      get title {
    final local$title = _instance.title;
    return local$title == null
        ? CopyWith$Query$UserActivities$Page$activities$$ListActivity$media$title
            .stub(_then(_instance))
        : CopyWith$Query$UserActivities$Page$activities$$ListActivity$media$title(
            local$title, (e) => call(title: e));
  }
}

class _CopyWithStubImpl$Query$UserActivities$Page$activities$$ListActivity$media<
        TRes>
    implements
        CopyWith$Query$UserActivities$Page$activities$$ListActivity$media<
            TRes> {
  _CopyWithStubImpl$Query$UserActivities$Page$activities$$ListActivity$media(
      this._res);

  TRes _res;

  call({
    int? id,
    Query$UserActivities$Page$activities$$ListActivity$media$coverImage?
        coverImage,
    Query$UserActivities$Page$activities$$ListActivity$media$title? title,
    Enum$MediaType? type,
    Enum$MediaFormat? format,
    bool? isAdult,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$UserActivities$Page$activities$$ListActivity$media$coverImage<
          TRes>
      get coverImage =>
          CopyWith$Query$UserActivities$Page$activities$$ListActivity$media$coverImage
              .stub(_res);

  CopyWith$Query$UserActivities$Page$activities$$ListActivity$media$title<TRes>
      get title =>
          CopyWith$Query$UserActivities$Page$activities$$ListActivity$media$title
              .stub(_res);
}

class Query$UserActivities$Page$activities$$ListActivity$media$coverImage
    implements Fragment$ListActivity$media$coverImage {
  Query$UserActivities$Page$activities$$ListActivity$media$coverImage({
    this.medium,
    this.$__typename = 'MediaCoverImage',
  });

  factory Query$UserActivities$Page$activities$$ListActivity$media$coverImage.fromJson(
      Map<String, dynamic> json) {
    final l$medium = json['medium'];
    final l$$__typename = json['__typename'];
    return Query$UserActivities$Page$activities$$ListActivity$media$coverImage(
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
            is Query$UserActivities$Page$activities$$ListActivity$media$coverImage) ||
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

extension UtilityExtension$Query$UserActivities$Page$activities$$ListActivity$media$coverImage
    on Query$UserActivities$Page$activities$$ListActivity$media$coverImage {
  CopyWith$Query$UserActivities$Page$activities$$ListActivity$media$coverImage<
          Query$UserActivities$Page$activities$$ListActivity$media$coverImage>
      get copyWith =>
          CopyWith$Query$UserActivities$Page$activities$$ListActivity$media$coverImage(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$UserActivities$Page$activities$$ListActivity$media$coverImage<
    TRes> {
  factory CopyWith$Query$UserActivities$Page$activities$$ListActivity$media$coverImage(
    Query$UserActivities$Page$activities$$ListActivity$media$coverImage
        instance,
    TRes Function(
            Query$UserActivities$Page$activities$$ListActivity$media$coverImage)
        then,
  ) = _CopyWithImpl$Query$UserActivities$Page$activities$$ListActivity$media$coverImage;

  factory CopyWith$Query$UserActivities$Page$activities$$ListActivity$media$coverImage.stub(
          TRes res) =
      _CopyWithStubImpl$Query$UserActivities$Page$activities$$ListActivity$media$coverImage;

  TRes call({
    String? medium,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$UserActivities$Page$activities$$ListActivity$media$coverImage<
        TRes>
    implements
        CopyWith$Query$UserActivities$Page$activities$$ListActivity$media$coverImage<
            TRes> {
  _CopyWithImpl$Query$UserActivities$Page$activities$$ListActivity$media$coverImage(
    this._instance,
    this._then,
  );

  final Query$UserActivities$Page$activities$$ListActivity$media$coverImage
      _instance;

  final TRes Function(
          Query$UserActivities$Page$activities$$ListActivity$media$coverImage)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? medium = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$UserActivities$Page$activities$$ListActivity$media$coverImage(
        medium: medium == _undefined ? _instance.medium : (medium as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$UserActivities$Page$activities$$ListActivity$media$coverImage<
        TRes>
    implements
        CopyWith$Query$UserActivities$Page$activities$$ListActivity$media$coverImage<
            TRes> {
  _CopyWithStubImpl$Query$UserActivities$Page$activities$$ListActivity$media$coverImage(
      this._res);

  TRes _res;

  call({
    String? medium,
    String? $__typename,
  }) =>
      _res;
}

class Query$UserActivities$Page$activities$$ListActivity$media$title
    implements Fragment$ListActivity$media$title {
  Query$UserActivities$Page$activities$$ListActivity$media$title({
    this.userPreferred,
    this.$__typename = 'MediaTitle',
  });

  factory Query$UserActivities$Page$activities$$ListActivity$media$title.fromJson(
      Map<String, dynamic> json) {
    final l$userPreferred = json['userPreferred'];
    final l$$__typename = json['__typename'];
    return Query$UserActivities$Page$activities$$ListActivity$media$title(
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
    if (!(other
            is Query$UserActivities$Page$activities$$ListActivity$media$title) ||
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

extension UtilityExtension$Query$UserActivities$Page$activities$$ListActivity$media$title
    on Query$UserActivities$Page$activities$$ListActivity$media$title {
  CopyWith$Query$UserActivities$Page$activities$$ListActivity$media$title<
          Query$UserActivities$Page$activities$$ListActivity$media$title>
      get copyWith =>
          CopyWith$Query$UserActivities$Page$activities$$ListActivity$media$title(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$UserActivities$Page$activities$$ListActivity$media$title<
    TRes> {
  factory CopyWith$Query$UserActivities$Page$activities$$ListActivity$media$title(
    Query$UserActivities$Page$activities$$ListActivity$media$title instance,
    TRes Function(
            Query$UserActivities$Page$activities$$ListActivity$media$title)
        then,
  ) = _CopyWithImpl$Query$UserActivities$Page$activities$$ListActivity$media$title;

  factory CopyWith$Query$UserActivities$Page$activities$$ListActivity$media$title.stub(
          TRes res) =
      _CopyWithStubImpl$Query$UserActivities$Page$activities$$ListActivity$media$title;

  TRes call({
    String? userPreferred,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$UserActivities$Page$activities$$ListActivity$media$title<
        TRes>
    implements
        CopyWith$Query$UserActivities$Page$activities$$ListActivity$media$title<
            TRes> {
  _CopyWithImpl$Query$UserActivities$Page$activities$$ListActivity$media$title(
    this._instance,
    this._then,
  );

  final Query$UserActivities$Page$activities$$ListActivity$media$title
      _instance;

  final TRes Function(
      Query$UserActivities$Page$activities$$ListActivity$media$title) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userPreferred = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$UserActivities$Page$activities$$ListActivity$media$title(
        userPreferred: userPreferred == _undefined
            ? _instance.userPreferred
            : (userPreferred as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$UserActivities$Page$activities$$ListActivity$media$title<
        TRes>
    implements
        CopyWith$Query$UserActivities$Page$activities$$ListActivity$media$title<
            TRes> {
  _CopyWithStubImpl$Query$UserActivities$Page$activities$$ListActivity$media$title(
      this._res);

  TRes _res;

  call({
    String? userPreferred,
    String? $__typename,
  }) =>
      _res;
}

class Query$UserActivities$Page$activities$$MessageActivity
    implements Fragment$MessageActivity, Query$UserActivities$Page$activities {
  Query$UserActivities$Page$activities$$MessageActivity({
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

  factory Query$UserActivities$Page$activities$$MessageActivity.fromJson(
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
    return Query$UserActivities$Page$activities$$MessageActivity(
      id: (l$id as int),
      messenger: l$messenger == null
          ? null
          : Query$UserActivities$Page$activities$$MessageActivity$messenger
              .fromJson((l$messenger as Map<String, dynamic>)),
      recipient: l$recipient == null
          ? null
          : Query$UserActivities$Page$activities$$MessageActivity$recipient
              .fromJson((l$recipient as Map<String, dynamic>)),
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

  final Query$UserActivities$Page$activities$$MessageActivity$messenger?
      messenger;

  final Query$UserActivities$Page$activities$$MessageActivity$recipient?
      recipient;

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
    if (!(other is Query$UserActivities$Page$activities$$MessageActivity) ||
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

extension UtilityExtension$Query$UserActivities$Page$activities$$MessageActivity
    on Query$UserActivities$Page$activities$$MessageActivity {
  CopyWith$Query$UserActivities$Page$activities$$MessageActivity<
          Query$UserActivities$Page$activities$$MessageActivity>
      get copyWith =>
          CopyWith$Query$UserActivities$Page$activities$$MessageActivity(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$UserActivities$Page$activities$$MessageActivity<
    TRes> {
  factory CopyWith$Query$UserActivities$Page$activities$$MessageActivity(
    Query$UserActivities$Page$activities$$MessageActivity instance,
    TRes Function(Query$UserActivities$Page$activities$$MessageActivity) then,
  ) = _CopyWithImpl$Query$UserActivities$Page$activities$$MessageActivity;

  factory CopyWith$Query$UserActivities$Page$activities$$MessageActivity.stub(
          TRes res) =
      _CopyWithStubImpl$Query$UserActivities$Page$activities$$MessageActivity;

  TRes call({
    int? id,
    Query$UserActivities$Page$activities$$MessageActivity$messenger? messenger,
    Query$UserActivities$Page$activities$$MessageActivity$recipient? recipient,
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
  CopyWith$Query$UserActivities$Page$activities$$MessageActivity$messenger<TRes>
      get messenger;
  CopyWith$Query$UserActivities$Page$activities$$MessageActivity$recipient<TRes>
      get recipient;
}

class _CopyWithImpl$Query$UserActivities$Page$activities$$MessageActivity<TRes>
    implements
        CopyWith$Query$UserActivities$Page$activities$$MessageActivity<TRes> {
  _CopyWithImpl$Query$UserActivities$Page$activities$$MessageActivity(
    this._instance,
    this._then,
  );

  final Query$UserActivities$Page$activities$$MessageActivity _instance;

  final TRes Function(Query$UserActivities$Page$activities$$MessageActivity)
      _then;

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
      _then(Query$UserActivities$Page$activities$$MessageActivity(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        messenger: messenger == _undefined
            ? _instance.messenger
            : (messenger
                as Query$UserActivities$Page$activities$$MessageActivity$messenger?),
        recipient: recipient == _undefined
            ? _instance.recipient
            : (recipient
                as Query$UserActivities$Page$activities$$MessageActivity$recipient?),
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

  CopyWith$Query$UserActivities$Page$activities$$MessageActivity$messenger<TRes>
      get messenger {
    final local$messenger = _instance.messenger;
    return local$messenger == null
        ? CopyWith$Query$UserActivities$Page$activities$$MessageActivity$messenger
            .stub(_then(_instance))
        : CopyWith$Query$UserActivities$Page$activities$$MessageActivity$messenger(
            local$messenger, (e) => call(messenger: e));
  }

  CopyWith$Query$UserActivities$Page$activities$$MessageActivity$recipient<TRes>
      get recipient {
    final local$recipient = _instance.recipient;
    return local$recipient == null
        ? CopyWith$Query$UserActivities$Page$activities$$MessageActivity$recipient
            .stub(_then(_instance))
        : CopyWith$Query$UserActivities$Page$activities$$MessageActivity$recipient(
            local$recipient, (e) => call(recipient: e));
  }
}

class _CopyWithStubImpl$Query$UserActivities$Page$activities$$MessageActivity<
        TRes>
    implements
        CopyWith$Query$UserActivities$Page$activities$$MessageActivity<TRes> {
  _CopyWithStubImpl$Query$UserActivities$Page$activities$$MessageActivity(
      this._res);

  TRes _res;

  call({
    int? id,
    Query$UserActivities$Page$activities$$MessageActivity$messenger? messenger,
    Query$UserActivities$Page$activities$$MessageActivity$recipient? recipient,
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

  CopyWith$Query$UserActivities$Page$activities$$MessageActivity$messenger<TRes>
      get messenger =>
          CopyWith$Query$UserActivities$Page$activities$$MessageActivity$messenger
              .stub(_res);

  CopyWith$Query$UserActivities$Page$activities$$MessageActivity$recipient<TRes>
      get recipient =>
          CopyWith$Query$UserActivities$Page$activities$$MessageActivity$recipient
              .stub(_res);
}

class Query$UserActivities$Page$activities$$MessageActivity$messenger
    implements Fragment$MessageActivity$messenger {
  Query$UserActivities$Page$activities$$MessageActivity$messenger({
    required this.id,
    this.avatar,
    required this.name,
    this.isFollowing,
    this.$__typename = 'User',
  });

  factory Query$UserActivities$Page$activities$$MessageActivity$messenger.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$avatar = json['avatar'];
    final l$name = json['name'];
    final l$isFollowing = json['isFollowing'];
    final l$$__typename = json['__typename'];
    return Query$UserActivities$Page$activities$$MessageActivity$messenger(
      id: (l$id as int),
      avatar: l$avatar == null
          ? null
          : Query$UserActivities$Page$activities$$MessageActivity$messenger$avatar
              .fromJson((l$avatar as Map<String, dynamic>)),
      name: (l$name as String),
      isFollowing: (l$isFollowing as bool?),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final Query$UserActivities$Page$activities$$MessageActivity$messenger$avatar?
      avatar;

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
    if (!(other
            is Query$UserActivities$Page$activities$$MessageActivity$messenger) ||
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

extension UtilityExtension$Query$UserActivities$Page$activities$$MessageActivity$messenger
    on Query$UserActivities$Page$activities$$MessageActivity$messenger {
  CopyWith$Query$UserActivities$Page$activities$$MessageActivity$messenger<
          Query$UserActivities$Page$activities$$MessageActivity$messenger>
      get copyWith =>
          CopyWith$Query$UserActivities$Page$activities$$MessageActivity$messenger(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$UserActivities$Page$activities$$MessageActivity$messenger<
    TRes> {
  factory CopyWith$Query$UserActivities$Page$activities$$MessageActivity$messenger(
    Query$UserActivities$Page$activities$$MessageActivity$messenger instance,
    TRes Function(
            Query$UserActivities$Page$activities$$MessageActivity$messenger)
        then,
  ) = _CopyWithImpl$Query$UserActivities$Page$activities$$MessageActivity$messenger;

  factory CopyWith$Query$UserActivities$Page$activities$$MessageActivity$messenger.stub(
          TRes res) =
      _CopyWithStubImpl$Query$UserActivities$Page$activities$$MessageActivity$messenger;

  TRes call({
    int? id,
    Query$UserActivities$Page$activities$$MessageActivity$messenger$avatar?
        avatar,
    String? name,
    bool? isFollowing,
    String? $__typename,
  });
  CopyWith$Query$UserActivities$Page$activities$$MessageActivity$messenger$avatar<
      TRes> get avatar;
}

class _CopyWithImpl$Query$UserActivities$Page$activities$$MessageActivity$messenger<
        TRes>
    implements
        CopyWith$Query$UserActivities$Page$activities$$MessageActivity$messenger<
            TRes> {
  _CopyWithImpl$Query$UserActivities$Page$activities$$MessageActivity$messenger(
    this._instance,
    this._then,
  );

  final Query$UserActivities$Page$activities$$MessageActivity$messenger
      _instance;

  final TRes Function(
      Query$UserActivities$Page$activities$$MessageActivity$messenger) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? avatar = _undefined,
    Object? name = _undefined,
    Object? isFollowing = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$UserActivities$Page$activities$$MessageActivity$messenger(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        avatar: avatar == _undefined
            ? _instance.avatar
            : (avatar
                as Query$UserActivities$Page$activities$$MessageActivity$messenger$avatar?),
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

  CopyWith$Query$UserActivities$Page$activities$$MessageActivity$messenger$avatar<
      TRes> get avatar {
    final local$avatar = _instance.avatar;
    return local$avatar == null
        ? CopyWith$Query$UserActivities$Page$activities$$MessageActivity$messenger$avatar
            .stub(_then(_instance))
        : CopyWith$Query$UserActivities$Page$activities$$MessageActivity$messenger$avatar(
            local$avatar, (e) => call(avatar: e));
  }
}

class _CopyWithStubImpl$Query$UserActivities$Page$activities$$MessageActivity$messenger<
        TRes>
    implements
        CopyWith$Query$UserActivities$Page$activities$$MessageActivity$messenger<
            TRes> {
  _CopyWithStubImpl$Query$UserActivities$Page$activities$$MessageActivity$messenger(
      this._res);

  TRes _res;

  call({
    int? id,
    Query$UserActivities$Page$activities$$MessageActivity$messenger$avatar?
        avatar,
    String? name,
    bool? isFollowing,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$UserActivities$Page$activities$$MessageActivity$messenger$avatar<
          TRes>
      get avatar =>
          CopyWith$Query$UserActivities$Page$activities$$MessageActivity$messenger$avatar
              .stub(_res);
}

class Query$UserActivities$Page$activities$$MessageActivity$messenger$avatar
    implements Fragment$MessageActivity$messenger$avatar {
  Query$UserActivities$Page$activities$$MessageActivity$messenger$avatar({
    this.medium,
    this.$__typename = 'UserAvatar',
  });

  factory Query$UserActivities$Page$activities$$MessageActivity$messenger$avatar.fromJson(
      Map<String, dynamic> json) {
    final l$medium = json['medium'];
    final l$$__typename = json['__typename'];
    return Query$UserActivities$Page$activities$$MessageActivity$messenger$avatar(
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
            is Query$UserActivities$Page$activities$$MessageActivity$messenger$avatar) ||
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

extension UtilityExtension$Query$UserActivities$Page$activities$$MessageActivity$messenger$avatar
    on Query$UserActivities$Page$activities$$MessageActivity$messenger$avatar {
  CopyWith$Query$UserActivities$Page$activities$$MessageActivity$messenger$avatar<
          Query$UserActivities$Page$activities$$MessageActivity$messenger$avatar>
      get copyWith =>
          CopyWith$Query$UserActivities$Page$activities$$MessageActivity$messenger$avatar(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$UserActivities$Page$activities$$MessageActivity$messenger$avatar<
    TRes> {
  factory CopyWith$Query$UserActivities$Page$activities$$MessageActivity$messenger$avatar(
    Query$UserActivities$Page$activities$$MessageActivity$messenger$avatar
        instance,
    TRes Function(
            Query$UserActivities$Page$activities$$MessageActivity$messenger$avatar)
        then,
  ) = _CopyWithImpl$Query$UserActivities$Page$activities$$MessageActivity$messenger$avatar;

  factory CopyWith$Query$UserActivities$Page$activities$$MessageActivity$messenger$avatar.stub(
          TRes res) =
      _CopyWithStubImpl$Query$UserActivities$Page$activities$$MessageActivity$messenger$avatar;

  TRes call({
    String? medium,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$UserActivities$Page$activities$$MessageActivity$messenger$avatar<
        TRes>
    implements
        CopyWith$Query$UserActivities$Page$activities$$MessageActivity$messenger$avatar<
            TRes> {
  _CopyWithImpl$Query$UserActivities$Page$activities$$MessageActivity$messenger$avatar(
    this._instance,
    this._then,
  );

  final Query$UserActivities$Page$activities$$MessageActivity$messenger$avatar
      _instance;

  final TRes Function(
          Query$UserActivities$Page$activities$$MessageActivity$messenger$avatar)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? medium = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$UserActivities$Page$activities$$MessageActivity$messenger$avatar(
        medium: medium == _undefined ? _instance.medium : (medium as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$UserActivities$Page$activities$$MessageActivity$messenger$avatar<
        TRes>
    implements
        CopyWith$Query$UserActivities$Page$activities$$MessageActivity$messenger$avatar<
            TRes> {
  _CopyWithStubImpl$Query$UserActivities$Page$activities$$MessageActivity$messenger$avatar(
      this._res);

  TRes _res;

  call({
    String? medium,
    String? $__typename,
  }) =>
      _res;
}

class Query$UserActivities$Page$activities$$MessageActivity$recipient
    implements Fragment$MessageActivity$recipient {
  Query$UserActivities$Page$activities$$MessageActivity$recipient({
    required this.id,
    this.avatar,
    required this.name,
    this.$__typename = 'User',
  });

  factory Query$UserActivities$Page$activities$$MessageActivity$recipient.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$avatar = json['avatar'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$UserActivities$Page$activities$$MessageActivity$recipient(
      id: (l$id as int),
      avatar: l$avatar == null
          ? null
          : Query$UserActivities$Page$activities$$MessageActivity$recipient$avatar
              .fromJson((l$avatar as Map<String, dynamic>)),
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final Query$UserActivities$Page$activities$$MessageActivity$recipient$avatar?
      avatar;

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
    if (!(other
            is Query$UserActivities$Page$activities$$MessageActivity$recipient) ||
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

extension UtilityExtension$Query$UserActivities$Page$activities$$MessageActivity$recipient
    on Query$UserActivities$Page$activities$$MessageActivity$recipient {
  CopyWith$Query$UserActivities$Page$activities$$MessageActivity$recipient<
          Query$UserActivities$Page$activities$$MessageActivity$recipient>
      get copyWith =>
          CopyWith$Query$UserActivities$Page$activities$$MessageActivity$recipient(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$UserActivities$Page$activities$$MessageActivity$recipient<
    TRes> {
  factory CopyWith$Query$UserActivities$Page$activities$$MessageActivity$recipient(
    Query$UserActivities$Page$activities$$MessageActivity$recipient instance,
    TRes Function(
            Query$UserActivities$Page$activities$$MessageActivity$recipient)
        then,
  ) = _CopyWithImpl$Query$UserActivities$Page$activities$$MessageActivity$recipient;

  factory CopyWith$Query$UserActivities$Page$activities$$MessageActivity$recipient.stub(
          TRes res) =
      _CopyWithStubImpl$Query$UserActivities$Page$activities$$MessageActivity$recipient;

  TRes call({
    int? id,
    Query$UserActivities$Page$activities$$MessageActivity$recipient$avatar?
        avatar,
    String? name,
    String? $__typename,
  });
  CopyWith$Query$UserActivities$Page$activities$$MessageActivity$recipient$avatar<
      TRes> get avatar;
}

class _CopyWithImpl$Query$UserActivities$Page$activities$$MessageActivity$recipient<
        TRes>
    implements
        CopyWith$Query$UserActivities$Page$activities$$MessageActivity$recipient<
            TRes> {
  _CopyWithImpl$Query$UserActivities$Page$activities$$MessageActivity$recipient(
    this._instance,
    this._then,
  );

  final Query$UserActivities$Page$activities$$MessageActivity$recipient
      _instance;

  final TRes Function(
      Query$UserActivities$Page$activities$$MessageActivity$recipient) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? avatar = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$UserActivities$Page$activities$$MessageActivity$recipient(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        avatar: avatar == _undefined
            ? _instance.avatar
            : (avatar
                as Query$UserActivities$Page$activities$$MessageActivity$recipient$avatar?),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$UserActivities$Page$activities$$MessageActivity$recipient$avatar<
      TRes> get avatar {
    final local$avatar = _instance.avatar;
    return local$avatar == null
        ? CopyWith$Query$UserActivities$Page$activities$$MessageActivity$recipient$avatar
            .stub(_then(_instance))
        : CopyWith$Query$UserActivities$Page$activities$$MessageActivity$recipient$avatar(
            local$avatar, (e) => call(avatar: e));
  }
}

class _CopyWithStubImpl$Query$UserActivities$Page$activities$$MessageActivity$recipient<
        TRes>
    implements
        CopyWith$Query$UserActivities$Page$activities$$MessageActivity$recipient<
            TRes> {
  _CopyWithStubImpl$Query$UserActivities$Page$activities$$MessageActivity$recipient(
      this._res);

  TRes _res;

  call({
    int? id,
    Query$UserActivities$Page$activities$$MessageActivity$recipient$avatar?
        avatar,
    String? name,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$UserActivities$Page$activities$$MessageActivity$recipient$avatar<
          TRes>
      get avatar =>
          CopyWith$Query$UserActivities$Page$activities$$MessageActivity$recipient$avatar
              .stub(_res);
}

class Query$UserActivities$Page$activities$$MessageActivity$recipient$avatar
    implements Fragment$MessageActivity$recipient$avatar {
  Query$UserActivities$Page$activities$$MessageActivity$recipient$avatar({
    this.medium,
    this.$__typename = 'UserAvatar',
  });

  factory Query$UserActivities$Page$activities$$MessageActivity$recipient$avatar.fromJson(
      Map<String, dynamic> json) {
    final l$medium = json['medium'];
    final l$$__typename = json['__typename'];
    return Query$UserActivities$Page$activities$$MessageActivity$recipient$avatar(
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
            is Query$UserActivities$Page$activities$$MessageActivity$recipient$avatar) ||
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

extension UtilityExtension$Query$UserActivities$Page$activities$$MessageActivity$recipient$avatar
    on Query$UserActivities$Page$activities$$MessageActivity$recipient$avatar {
  CopyWith$Query$UserActivities$Page$activities$$MessageActivity$recipient$avatar<
          Query$UserActivities$Page$activities$$MessageActivity$recipient$avatar>
      get copyWith =>
          CopyWith$Query$UserActivities$Page$activities$$MessageActivity$recipient$avatar(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$UserActivities$Page$activities$$MessageActivity$recipient$avatar<
    TRes> {
  factory CopyWith$Query$UserActivities$Page$activities$$MessageActivity$recipient$avatar(
    Query$UserActivities$Page$activities$$MessageActivity$recipient$avatar
        instance,
    TRes Function(
            Query$UserActivities$Page$activities$$MessageActivity$recipient$avatar)
        then,
  ) = _CopyWithImpl$Query$UserActivities$Page$activities$$MessageActivity$recipient$avatar;

  factory CopyWith$Query$UserActivities$Page$activities$$MessageActivity$recipient$avatar.stub(
          TRes res) =
      _CopyWithStubImpl$Query$UserActivities$Page$activities$$MessageActivity$recipient$avatar;

  TRes call({
    String? medium,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$UserActivities$Page$activities$$MessageActivity$recipient$avatar<
        TRes>
    implements
        CopyWith$Query$UserActivities$Page$activities$$MessageActivity$recipient$avatar<
            TRes> {
  _CopyWithImpl$Query$UserActivities$Page$activities$$MessageActivity$recipient$avatar(
    this._instance,
    this._then,
  );

  final Query$UserActivities$Page$activities$$MessageActivity$recipient$avatar
      _instance;

  final TRes Function(
          Query$UserActivities$Page$activities$$MessageActivity$recipient$avatar)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? medium = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$UserActivities$Page$activities$$MessageActivity$recipient$avatar(
        medium: medium == _undefined ? _instance.medium : (medium as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$UserActivities$Page$activities$$MessageActivity$recipient$avatar<
        TRes>
    implements
        CopyWith$Query$UserActivities$Page$activities$$MessageActivity$recipient$avatar<
            TRes> {
  _CopyWithStubImpl$Query$UserActivities$Page$activities$$MessageActivity$recipient$avatar(
      this._res);

  TRes _res;

  call({
    String? medium,
    String? $__typename,
  }) =>
      _res;
}

class Query$UserActivities$Page$activities$$TextActivity
    implements Fragment$TextActivity, Query$UserActivities$Page$activities {
  Query$UserActivities$Page$activities$$TextActivity({
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

  factory Query$UserActivities$Page$activities$$TextActivity.fromJson(
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
    return Query$UserActivities$Page$activities$$TextActivity(
      id: (l$id as int),
      user: l$user == null
          ? null
          : Query$UserActivities$Page$activities$$TextActivity$user.fromJson(
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

  final Query$UserActivities$Page$activities$$TextActivity$user? user;

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
    if (!(other is Query$UserActivities$Page$activities$$TextActivity) ||
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

extension UtilityExtension$Query$UserActivities$Page$activities$$TextActivity
    on Query$UserActivities$Page$activities$$TextActivity {
  CopyWith$Query$UserActivities$Page$activities$$TextActivity<
          Query$UserActivities$Page$activities$$TextActivity>
      get copyWith =>
          CopyWith$Query$UserActivities$Page$activities$$TextActivity(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$UserActivities$Page$activities$$TextActivity<
    TRes> {
  factory CopyWith$Query$UserActivities$Page$activities$$TextActivity(
    Query$UserActivities$Page$activities$$TextActivity instance,
    TRes Function(Query$UserActivities$Page$activities$$TextActivity) then,
  ) = _CopyWithImpl$Query$UserActivities$Page$activities$$TextActivity;

  factory CopyWith$Query$UserActivities$Page$activities$$TextActivity.stub(
          TRes res) =
      _CopyWithStubImpl$Query$UserActivities$Page$activities$$TextActivity;

  TRes call({
    int? id,
    Query$UserActivities$Page$activities$$TextActivity$user? user,
    int? likeCount,
    int? replyCount,
    int? createdAt,
    bool? isLiked,
    bool? isSubscribed,
    String? siteUrl,
    String? text,
    String? $__typename,
  });
  CopyWith$Query$UserActivities$Page$activities$$TextActivity$user<TRes>
      get user;
}

class _CopyWithImpl$Query$UserActivities$Page$activities$$TextActivity<TRes>
    implements
        CopyWith$Query$UserActivities$Page$activities$$TextActivity<TRes> {
  _CopyWithImpl$Query$UserActivities$Page$activities$$TextActivity(
    this._instance,
    this._then,
  );

  final Query$UserActivities$Page$activities$$TextActivity _instance;

  final TRes Function(Query$UserActivities$Page$activities$$TextActivity) _then;

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
      _then(Query$UserActivities$Page$activities$$TextActivity(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        user: user == _undefined
            ? _instance.user
            : (user
                as Query$UserActivities$Page$activities$$TextActivity$user?),
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

  CopyWith$Query$UserActivities$Page$activities$$TextActivity$user<TRes>
      get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith$Query$UserActivities$Page$activities$$TextActivity$user.stub(
            _then(_instance))
        : CopyWith$Query$UserActivities$Page$activities$$TextActivity$user(
            local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl$Query$UserActivities$Page$activities$$TextActivity<TRes>
    implements
        CopyWith$Query$UserActivities$Page$activities$$TextActivity<TRes> {
  _CopyWithStubImpl$Query$UserActivities$Page$activities$$TextActivity(
      this._res);

  TRes _res;

  call({
    int? id,
    Query$UserActivities$Page$activities$$TextActivity$user? user,
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

  CopyWith$Query$UserActivities$Page$activities$$TextActivity$user<TRes>
      get user =>
          CopyWith$Query$UserActivities$Page$activities$$TextActivity$user.stub(
              _res);
}

class Query$UserActivities$Page$activities$$TextActivity$user
    implements Fragment$TextActivity$user {
  Query$UserActivities$Page$activities$$TextActivity$user({
    required this.id,
    this.avatar,
    required this.name,
    this.isFollowing,
    this.$__typename = 'User',
  });

  factory Query$UserActivities$Page$activities$$TextActivity$user.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$avatar = json['avatar'];
    final l$name = json['name'];
    final l$isFollowing = json['isFollowing'];
    final l$$__typename = json['__typename'];
    return Query$UserActivities$Page$activities$$TextActivity$user(
      id: (l$id as int),
      avatar: l$avatar == null
          ? null
          : Query$UserActivities$Page$activities$$TextActivity$user$avatar
              .fromJson((l$avatar as Map<String, dynamic>)),
      name: (l$name as String),
      isFollowing: (l$isFollowing as bool?),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final Query$UserActivities$Page$activities$$TextActivity$user$avatar? avatar;

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
    if (!(other is Query$UserActivities$Page$activities$$TextActivity$user) ||
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

extension UtilityExtension$Query$UserActivities$Page$activities$$TextActivity$user
    on Query$UserActivities$Page$activities$$TextActivity$user {
  CopyWith$Query$UserActivities$Page$activities$$TextActivity$user<
          Query$UserActivities$Page$activities$$TextActivity$user>
      get copyWith =>
          CopyWith$Query$UserActivities$Page$activities$$TextActivity$user(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$UserActivities$Page$activities$$TextActivity$user<
    TRes> {
  factory CopyWith$Query$UserActivities$Page$activities$$TextActivity$user(
    Query$UserActivities$Page$activities$$TextActivity$user instance,
    TRes Function(Query$UserActivities$Page$activities$$TextActivity$user) then,
  ) = _CopyWithImpl$Query$UserActivities$Page$activities$$TextActivity$user;

  factory CopyWith$Query$UserActivities$Page$activities$$TextActivity$user.stub(
          TRes res) =
      _CopyWithStubImpl$Query$UserActivities$Page$activities$$TextActivity$user;

  TRes call({
    int? id,
    Query$UserActivities$Page$activities$$TextActivity$user$avatar? avatar,
    String? name,
    bool? isFollowing,
    String? $__typename,
  });
  CopyWith$Query$UserActivities$Page$activities$$TextActivity$user$avatar<TRes>
      get avatar;
}

class _CopyWithImpl$Query$UserActivities$Page$activities$$TextActivity$user<
        TRes>
    implements
        CopyWith$Query$UserActivities$Page$activities$$TextActivity$user<TRes> {
  _CopyWithImpl$Query$UserActivities$Page$activities$$TextActivity$user(
    this._instance,
    this._then,
  );

  final Query$UserActivities$Page$activities$$TextActivity$user _instance;

  final TRes Function(Query$UserActivities$Page$activities$$TextActivity$user)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? avatar = _undefined,
    Object? name = _undefined,
    Object? isFollowing = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$UserActivities$Page$activities$$TextActivity$user(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        avatar: avatar == _undefined
            ? _instance.avatar
            : (avatar
                as Query$UserActivities$Page$activities$$TextActivity$user$avatar?),
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

  CopyWith$Query$UserActivities$Page$activities$$TextActivity$user$avatar<TRes>
      get avatar {
    final local$avatar = _instance.avatar;
    return local$avatar == null
        ? CopyWith$Query$UserActivities$Page$activities$$TextActivity$user$avatar
            .stub(_then(_instance))
        : CopyWith$Query$UserActivities$Page$activities$$TextActivity$user$avatar(
            local$avatar, (e) => call(avatar: e));
  }
}

class _CopyWithStubImpl$Query$UserActivities$Page$activities$$TextActivity$user<
        TRes>
    implements
        CopyWith$Query$UserActivities$Page$activities$$TextActivity$user<TRes> {
  _CopyWithStubImpl$Query$UserActivities$Page$activities$$TextActivity$user(
      this._res);

  TRes _res;

  call({
    int? id,
    Query$UserActivities$Page$activities$$TextActivity$user$avatar? avatar,
    String? name,
    bool? isFollowing,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$UserActivities$Page$activities$$TextActivity$user$avatar<TRes>
      get avatar =>
          CopyWith$Query$UserActivities$Page$activities$$TextActivity$user$avatar
              .stub(_res);
}

class Query$UserActivities$Page$activities$$TextActivity$user$avatar
    implements Fragment$TextActivity$user$avatar {
  Query$UserActivities$Page$activities$$TextActivity$user$avatar({
    this.medium,
    this.$__typename = 'UserAvatar',
  });

  factory Query$UserActivities$Page$activities$$TextActivity$user$avatar.fromJson(
      Map<String, dynamic> json) {
    final l$medium = json['medium'];
    final l$$__typename = json['__typename'];
    return Query$UserActivities$Page$activities$$TextActivity$user$avatar(
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
            is Query$UserActivities$Page$activities$$TextActivity$user$avatar) ||
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

extension UtilityExtension$Query$UserActivities$Page$activities$$TextActivity$user$avatar
    on Query$UserActivities$Page$activities$$TextActivity$user$avatar {
  CopyWith$Query$UserActivities$Page$activities$$TextActivity$user$avatar<
          Query$UserActivities$Page$activities$$TextActivity$user$avatar>
      get copyWith =>
          CopyWith$Query$UserActivities$Page$activities$$TextActivity$user$avatar(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$UserActivities$Page$activities$$TextActivity$user$avatar<
    TRes> {
  factory CopyWith$Query$UserActivities$Page$activities$$TextActivity$user$avatar(
    Query$UserActivities$Page$activities$$TextActivity$user$avatar instance,
    TRes Function(
            Query$UserActivities$Page$activities$$TextActivity$user$avatar)
        then,
  ) = _CopyWithImpl$Query$UserActivities$Page$activities$$TextActivity$user$avatar;

  factory CopyWith$Query$UserActivities$Page$activities$$TextActivity$user$avatar.stub(
          TRes res) =
      _CopyWithStubImpl$Query$UserActivities$Page$activities$$TextActivity$user$avatar;

  TRes call({
    String? medium,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$UserActivities$Page$activities$$TextActivity$user$avatar<
        TRes>
    implements
        CopyWith$Query$UserActivities$Page$activities$$TextActivity$user$avatar<
            TRes> {
  _CopyWithImpl$Query$UserActivities$Page$activities$$TextActivity$user$avatar(
    this._instance,
    this._then,
  );

  final Query$UserActivities$Page$activities$$TextActivity$user$avatar
      _instance;

  final TRes Function(
      Query$UserActivities$Page$activities$$TextActivity$user$avatar) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? medium = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$UserActivities$Page$activities$$TextActivity$user$avatar(
        medium: medium == _undefined ? _instance.medium : (medium as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$UserActivities$Page$activities$$TextActivity$user$avatar<
        TRes>
    implements
        CopyWith$Query$UserActivities$Page$activities$$TextActivity$user$avatar<
            TRes> {
  _CopyWithStubImpl$Query$UserActivities$Page$activities$$TextActivity$user$avatar(
      this._res);

  TRes _res;

  call({
    String? medium,
    String? $__typename,
  }) =>
      _res;
}
