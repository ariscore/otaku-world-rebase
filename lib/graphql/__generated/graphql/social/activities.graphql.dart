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

class Variables$Query$GetActivities {
  factory Variables$Query$GetActivities({
    int? page,
    List<Enum$ActivityType?>? type_in,
    bool? isFollowing,
  }) =>
      Variables$Query$GetActivities._({
        if (page != null) r'page': page,
        if (type_in != null) r'type_in': type_in,
        if (isFollowing != null) r'isFollowing': isFollowing,
      });

  Variables$Query$GetActivities._(this._$data);

  factory Variables$Query$GetActivities.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('page')) {
      final l$page = data['page'];
      result$data['page'] = (l$page as int?);
    }
    if (data.containsKey('type_in')) {
      final l$type_in = data['type_in'];
      result$data['type_in'] = (l$type_in as List<dynamic>?)
          ?.map((e) =>
              e == null ? null : fromJson$Enum$ActivityType((e as String)))
          .toList();
    }
    if (data.containsKey('isFollowing')) {
      final l$isFollowing = data['isFollowing'];
      result$data['isFollowing'] = (l$isFollowing as bool?);
    }
    return Variables$Query$GetActivities._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get page => (_$data['page'] as int?);

  List<Enum$ActivityType?>? get type_in =>
      (_$data['type_in'] as List<Enum$ActivityType?>?);

  bool? get isFollowing => (_$data['isFollowing'] as bool?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('page')) {
      final l$page = page;
      result$data['page'] = l$page;
    }
    if (_$data.containsKey('type_in')) {
      final l$type_in = type_in;
      result$data['type_in'] = l$type_in
          ?.map((e) => e == null ? null : toJson$Enum$ActivityType(e))
          .toList();
    }
    if (_$data.containsKey('isFollowing')) {
      final l$isFollowing = isFollowing;
      result$data['isFollowing'] = l$isFollowing;
    }
    return result$data;
  }

  CopyWith$Variables$Query$GetActivities<Variables$Query$GetActivities>
      get copyWith => CopyWith$Variables$Query$GetActivities(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GetActivities) ||
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
    final l$isFollowing = isFollowing;
    final lOther$isFollowing = other.isFollowing;
    if (_$data.containsKey('isFollowing') !=
        other._$data.containsKey('isFollowing')) {
      return false;
    }
    if (l$isFollowing != lOther$isFollowing) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$page = page;
    final l$type_in = type_in;
    final l$isFollowing = isFollowing;
    return Object.hashAll([
      _$data.containsKey('page') ? l$page : const {},
      _$data.containsKey('type_in')
          ? l$type_in == null
              ? null
              : Object.hashAll(l$type_in.map((v) => v))
          : const {},
      _$data.containsKey('isFollowing') ? l$isFollowing : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$GetActivities<TRes> {
  factory CopyWith$Variables$Query$GetActivities(
    Variables$Query$GetActivities instance,
    TRes Function(Variables$Query$GetActivities) then,
  ) = _CopyWithImpl$Variables$Query$GetActivities;

  factory CopyWith$Variables$Query$GetActivities.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetActivities;

  TRes call({
    int? page,
    List<Enum$ActivityType?>? type_in,
    bool? isFollowing,
  });
}

class _CopyWithImpl$Variables$Query$GetActivities<TRes>
    implements CopyWith$Variables$Query$GetActivities<TRes> {
  _CopyWithImpl$Variables$Query$GetActivities(
    this._instance,
    this._then,
  );

  final Variables$Query$GetActivities _instance;

  final TRes Function(Variables$Query$GetActivities) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? page = _undefined,
    Object? type_in = _undefined,
    Object? isFollowing = _undefined,
  }) =>
      _then(Variables$Query$GetActivities._({
        ..._instance._$data,
        if (page != _undefined) 'page': (page as int?),
        if (type_in != _undefined)
          'type_in': (type_in as List<Enum$ActivityType?>?),
        if (isFollowing != _undefined) 'isFollowing': (isFollowing as bool?),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetActivities<TRes>
    implements CopyWith$Variables$Query$GetActivities<TRes> {
  _CopyWithStubImpl$Variables$Query$GetActivities(this._res);

  TRes _res;

  call({
    int? page,
    List<Enum$ActivityType?>? type_in,
    bool? isFollowing,
  }) =>
      _res;
}

class Query$GetActivities {
  Query$GetActivities({
    this.Page,
    this.$__typename = 'Query',
  });

  factory Query$GetActivities.fromJson(Map<String, dynamic> json) {
    final l$Page = json['Page'];
    final l$$__typename = json['__typename'];
    return Query$GetActivities(
      Page: l$Page == null
          ? null
          : Query$GetActivities$Page.fromJson((l$Page as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetActivities$Page? Page;

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
    if (!(other is Query$GetActivities) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$GetActivities on Query$GetActivities {
  CopyWith$Query$GetActivities<Query$GetActivities> get copyWith =>
      CopyWith$Query$GetActivities(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetActivities<TRes> {
  factory CopyWith$Query$GetActivities(
    Query$GetActivities instance,
    TRes Function(Query$GetActivities) then,
  ) = _CopyWithImpl$Query$GetActivities;

  factory CopyWith$Query$GetActivities.stub(TRes res) =
      _CopyWithStubImpl$Query$GetActivities;

  TRes call({
    Query$GetActivities$Page? Page,
    String? $__typename,
  });
  CopyWith$Query$GetActivities$Page<TRes> get Page;
}

class _CopyWithImpl$Query$GetActivities<TRes>
    implements CopyWith$Query$GetActivities<TRes> {
  _CopyWithImpl$Query$GetActivities(
    this._instance,
    this._then,
  );

  final Query$GetActivities _instance;

  final TRes Function(Query$GetActivities) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? Page = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetActivities(
        Page: Page == _undefined
            ? _instance.Page
            : (Page as Query$GetActivities$Page?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetActivities$Page<TRes> get Page {
    final local$Page = _instance.Page;
    return local$Page == null
        ? CopyWith$Query$GetActivities$Page.stub(_then(_instance))
        : CopyWith$Query$GetActivities$Page(local$Page, (e) => call(Page: e));
  }
}

class _CopyWithStubImpl$Query$GetActivities<TRes>
    implements CopyWith$Query$GetActivities<TRes> {
  _CopyWithStubImpl$Query$GetActivities(this._res);

  TRes _res;

  call({
    Query$GetActivities$Page? Page,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetActivities$Page<TRes> get Page =>
      CopyWith$Query$GetActivities$Page.stub(_res);
}

const documentNodeQueryGetActivities = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetActivities'),
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
            name: NameNode(value: 'ActivityType'),
            isNonNull: false,
          ),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'isFollowing')),
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
            name: NameNode(value: 'activities'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'sort'),
                value: ListValueNode(
                    values: [EnumValueNode(name: NameNode(value: 'ID_DESC'))]),
              ),
              ArgumentNode(
                name: NameNode(value: 'type_in'),
                value: VariableNode(name: NameNode(value: 'type_in')),
              ),
              ArgumentNode(
                name: NameNode(value: 'isFollowing'),
                value: VariableNode(name: NameNode(value: 'isFollowing')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
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
Query$GetActivities _parserFn$Query$GetActivities(Map<String, dynamic> data) =>
    Query$GetActivities.fromJson(data);
typedef OnQueryComplete$Query$GetActivities = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$GetActivities?,
);

class Options$Query$GetActivities
    extends graphql.QueryOptions<Query$GetActivities> {
  Options$Query$GetActivities({
    String? operationName,
    Variables$Query$GetActivities? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetActivities? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$GetActivities? onComplete,
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
                    data == null ? null : _parserFn$Query$GetActivities(data),
                  ),
          onError: onError,
          document: documentNodeQueryGetActivities,
          parserFn: _parserFn$Query$GetActivities,
        );

  final OnQueryComplete$Query$GetActivities? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$GetActivities
    extends graphql.WatchQueryOptions<Query$GetActivities> {
  WatchOptions$Query$GetActivities({
    String? operationName,
    Variables$Query$GetActivities? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetActivities? typedOptimisticResult,
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
          document: documentNodeQueryGetActivities,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetActivities,
        );
}

class FetchMoreOptions$Query$GetActivities extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetActivities({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$GetActivities? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryGetActivities,
        );
}

extension ClientExtension$Query$GetActivities on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetActivities>> query$GetActivities(
          [Options$Query$GetActivities? options]) async =>
      await this.query(options ?? Options$Query$GetActivities());
  graphql.ObservableQuery<Query$GetActivities> watchQuery$GetActivities(
          [WatchOptions$Query$GetActivities? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$GetActivities());
  void writeQuery$GetActivities({
    required Query$GetActivities data,
    Variables$Query$GetActivities? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryGetActivities),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetActivities? readQuery$GetActivities({
    Variables$Query$GetActivities? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryGetActivities),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$GetActivities.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$GetActivities> useQuery$GetActivities(
        [Options$Query$GetActivities? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$GetActivities());
graphql.ObservableQuery<Query$GetActivities> useWatchQuery$GetActivities(
        [WatchOptions$Query$GetActivities? options]) =>
    graphql_flutter
        .useWatchQuery(options ?? WatchOptions$Query$GetActivities());

class Query$GetActivities$Widget
    extends graphql_flutter.Query<Query$GetActivities> {
  Query$GetActivities$Widget({
    widgets.Key? key,
    Options$Query$GetActivities? options,
    required graphql_flutter.QueryBuilder<Query$GetActivities> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$GetActivities(),
          builder: builder,
        );
}

class Query$GetActivities$Page {
  Query$GetActivities$Page({
    this.pageInfo,
    this.activities,
    this.$__typename = 'Page',
  });

  factory Query$GetActivities$Page.fromJson(Map<String, dynamic> json) {
    final l$pageInfo = json['pageInfo'];
    final l$activities = json['activities'];
    final l$$__typename = json['__typename'];
    return Query$GetActivities$Page(
      pageInfo: l$pageInfo == null
          ? null
          : Query$GetActivities$Page$pageInfo.fromJson(
              (l$pageInfo as Map<String, dynamic>)),
      activities: (l$activities as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$GetActivities$Page$activities.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetActivities$Page$pageInfo? pageInfo;

  final List<Query$GetActivities$Page$activities?>? activities;

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
    if (!(other is Query$GetActivities$Page) ||
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

extension UtilityExtension$Query$GetActivities$Page
    on Query$GetActivities$Page {
  CopyWith$Query$GetActivities$Page<Query$GetActivities$Page> get copyWith =>
      CopyWith$Query$GetActivities$Page(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetActivities$Page<TRes> {
  factory CopyWith$Query$GetActivities$Page(
    Query$GetActivities$Page instance,
    TRes Function(Query$GetActivities$Page) then,
  ) = _CopyWithImpl$Query$GetActivities$Page;

  factory CopyWith$Query$GetActivities$Page.stub(TRes res) =
      _CopyWithStubImpl$Query$GetActivities$Page;

  TRes call({
    Query$GetActivities$Page$pageInfo? pageInfo,
    List<Query$GetActivities$Page$activities?>? activities,
    String? $__typename,
  });
  CopyWith$Query$GetActivities$Page$pageInfo<TRes> get pageInfo;
  TRes activities(
      Iterable<Query$GetActivities$Page$activities?>? Function(
              Iterable<
                  CopyWith$Query$GetActivities$Page$activities<
                      Query$GetActivities$Page$activities>?>?)
          _fn);
}

class _CopyWithImpl$Query$GetActivities$Page<TRes>
    implements CopyWith$Query$GetActivities$Page<TRes> {
  _CopyWithImpl$Query$GetActivities$Page(
    this._instance,
    this._then,
  );

  final Query$GetActivities$Page _instance;

  final TRes Function(Query$GetActivities$Page) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pageInfo = _undefined,
    Object? activities = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetActivities$Page(
        pageInfo: pageInfo == _undefined
            ? _instance.pageInfo
            : (pageInfo as Query$GetActivities$Page$pageInfo?),
        activities: activities == _undefined
            ? _instance.activities
            : (activities as List<Query$GetActivities$Page$activities?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetActivities$Page$pageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return local$pageInfo == null
        ? CopyWith$Query$GetActivities$Page$pageInfo.stub(_then(_instance))
        : CopyWith$Query$GetActivities$Page$pageInfo(
            local$pageInfo, (e) => call(pageInfo: e));
  }

  TRes activities(
          Iterable<Query$GetActivities$Page$activities?>? Function(
                  Iterable<
                      CopyWith$Query$GetActivities$Page$activities<
                          Query$GetActivities$Page$activities>?>?)
              _fn) =>
      call(
          activities: _fn(_instance.activities?.map((e) => e == null
              ? null
              : CopyWith$Query$GetActivities$Page$activities(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$GetActivities$Page<TRes>
    implements CopyWith$Query$GetActivities$Page<TRes> {
  _CopyWithStubImpl$Query$GetActivities$Page(this._res);

  TRes _res;

  call({
    Query$GetActivities$Page$pageInfo? pageInfo,
    List<Query$GetActivities$Page$activities?>? activities,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetActivities$Page$pageInfo<TRes> get pageInfo =>
      CopyWith$Query$GetActivities$Page$pageInfo.stub(_res);

  activities(_fn) => _res;
}

class Query$GetActivities$Page$pageInfo {
  Query$GetActivities$Page$pageInfo({
    this.hasNextPage,
    this.$__typename = 'PageInfo',
  });

  factory Query$GetActivities$Page$pageInfo.fromJson(
      Map<String, dynamic> json) {
    final l$hasNextPage = json['hasNextPage'];
    final l$$__typename = json['__typename'];
    return Query$GetActivities$Page$pageInfo(
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
    if (!(other is Query$GetActivities$Page$pageInfo) ||
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

extension UtilityExtension$Query$GetActivities$Page$pageInfo
    on Query$GetActivities$Page$pageInfo {
  CopyWith$Query$GetActivities$Page$pageInfo<Query$GetActivities$Page$pageInfo>
      get copyWith => CopyWith$Query$GetActivities$Page$pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetActivities$Page$pageInfo<TRes> {
  factory CopyWith$Query$GetActivities$Page$pageInfo(
    Query$GetActivities$Page$pageInfo instance,
    TRes Function(Query$GetActivities$Page$pageInfo) then,
  ) = _CopyWithImpl$Query$GetActivities$Page$pageInfo;

  factory CopyWith$Query$GetActivities$Page$pageInfo.stub(TRes res) =
      _CopyWithStubImpl$Query$GetActivities$Page$pageInfo;

  TRes call({
    bool? hasNextPage,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetActivities$Page$pageInfo<TRes>
    implements CopyWith$Query$GetActivities$Page$pageInfo<TRes> {
  _CopyWithImpl$Query$GetActivities$Page$pageInfo(
    this._instance,
    this._then,
  );

  final Query$GetActivities$Page$pageInfo _instance;

  final TRes Function(Query$GetActivities$Page$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasNextPage = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetActivities$Page$pageInfo(
        hasNextPage: hasNextPage == _undefined
            ? _instance.hasNextPage
            : (hasNextPage as bool?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetActivities$Page$pageInfo<TRes>
    implements CopyWith$Query$GetActivities$Page$pageInfo<TRes> {
  _CopyWithStubImpl$Query$GetActivities$Page$pageInfo(this._res);

  TRes _res;

  call({
    bool? hasNextPage,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetActivities$Page$activities {
  Query$GetActivities$Page$activities({required this.$__typename});

  factory Query$GetActivities$Page$activities.fromJson(
      Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "ListActivity":
        return Query$GetActivities$Page$activities$$ListActivity.fromJson(json);

      case "MessageActivity":
        return Query$GetActivities$Page$activities$$MessageActivity.fromJson(
            json);

      case "TextActivity":
        return Query$GetActivities$Page$activities$$TextActivity.fromJson(json);

      default:
        final l$$__typename = json['__typename'];
        return Query$GetActivities$Page$activities(
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
    if (!(other is Query$GetActivities$Page$activities) ||
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

extension UtilityExtension$Query$GetActivities$Page$activities
    on Query$GetActivities$Page$activities {
  CopyWith$Query$GetActivities$Page$activities<
          Query$GetActivities$Page$activities>
      get copyWith => CopyWith$Query$GetActivities$Page$activities(
            this,
            (i) => i,
          );
  _T when<_T>({
    required _T Function(Query$GetActivities$Page$activities$$ListActivity)
        listActivity,
    required _T Function(Query$GetActivities$Page$activities$$MessageActivity)
        messageActivity,
    required _T Function(Query$GetActivities$Page$activities$$TextActivity)
        textActivity,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "ListActivity":
        return listActivity(
            this as Query$GetActivities$Page$activities$$ListActivity);

      case "MessageActivity":
        return messageActivity(
            this as Query$GetActivities$Page$activities$$MessageActivity);

      case "TextActivity":
        return textActivity(
            this as Query$GetActivities$Page$activities$$TextActivity);

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(Query$GetActivities$Page$activities$$ListActivity)?
        listActivity,
    _T Function(Query$GetActivities$Page$activities$$MessageActivity)?
        messageActivity,
    _T Function(Query$GetActivities$Page$activities$$TextActivity)?
        textActivity,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "ListActivity":
        if (listActivity != null) {
          return listActivity(
              this as Query$GetActivities$Page$activities$$ListActivity);
        } else {
          return orElse();
        }

      case "MessageActivity":
        if (messageActivity != null) {
          return messageActivity(
              this as Query$GetActivities$Page$activities$$MessageActivity);
        } else {
          return orElse();
        }

      case "TextActivity":
        if (textActivity != null) {
          return textActivity(
              this as Query$GetActivities$Page$activities$$TextActivity);
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWith$Query$GetActivities$Page$activities<TRes> {
  factory CopyWith$Query$GetActivities$Page$activities(
    Query$GetActivities$Page$activities instance,
    TRes Function(Query$GetActivities$Page$activities) then,
  ) = _CopyWithImpl$Query$GetActivities$Page$activities;

  factory CopyWith$Query$GetActivities$Page$activities.stub(TRes res) =
      _CopyWithStubImpl$Query$GetActivities$Page$activities;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Query$GetActivities$Page$activities<TRes>
    implements CopyWith$Query$GetActivities$Page$activities<TRes> {
  _CopyWithImpl$Query$GetActivities$Page$activities(
    this._instance,
    this._then,
  );

  final Query$GetActivities$Page$activities _instance;

  final TRes Function(Query$GetActivities$Page$activities) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) =>
      _then(Query$GetActivities$Page$activities(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$GetActivities$Page$activities<TRes>
    implements CopyWith$Query$GetActivities$Page$activities<TRes> {
  _CopyWithStubImpl$Query$GetActivities$Page$activities(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Query$GetActivities$Page$activities$$ListActivity
    implements Fragment$ListActivity, Query$GetActivities$Page$activities {
  Query$GetActivities$Page$activities$$ListActivity({
    this.$__typename = 'ListActivity',
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
  });

  factory Query$GetActivities$Page$activities$$ListActivity.fromJson(
      Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
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
    return Query$GetActivities$Page$activities$$ListActivity(
      $__typename: (l$$__typename as String),
      id: (l$id as int),
      user: l$user == null
          ? null
          : Query$GetActivities$Page$activities$$ListActivity$user.fromJson(
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
          : Query$GetActivities$Page$activities$$ListActivity$media.fromJson(
              (l$media as Map<String, dynamic>)),
    );
  }

  final String $__typename;

  final int id;

  final Query$GetActivities$Page$activities$$ListActivity$user? user;

  final int likeCount;

  final int replyCount;

  final int createdAt;

  final bool? isLiked;

  final bool? isSubscribed;

  final String? siteUrl;

  final String? progress;

  final String? status;

  final Query$GetActivities$Page$activities$$ListActivity$media? media;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
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
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
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
    return Object.hashAll([
      l$$__typename,
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
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetActivities$Page$activities$$ListActivity) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
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
    return true;
  }
}

extension UtilityExtension$Query$GetActivities$Page$activities$$ListActivity
    on Query$GetActivities$Page$activities$$ListActivity {
  CopyWith$Query$GetActivities$Page$activities$$ListActivity<
          Query$GetActivities$Page$activities$$ListActivity>
      get copyWith =>
          CopyWith$Query$GetActivities$Page$activities$$ListActivity(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetActivities$Page$activities$$ListActivity<
    TRes> {
  factory CopyWith$Query$GetActivities$Page$activities$$ListActivity(
    Query$GetActivities$Page$activities$$ListActivity instance,
    TRes Function(Query$GetActivities$Page$activities$$ListActivity) then,
  ) = _CopyWithImpl$Query$GetActivities$Page$activities$$ListActivity;

  factory CopyWith$Query$GetActivities$Page$activities$$ListActivity.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetActivities$Page$activities$$ListActivity;

  TRes call({
    String? $__typename,
    int? id,
    Query$GetActivities$Page$activities$$ListActivity$user? user,
    int? likeCount,
    int? replyCount,
    int? createdAt,
    bool? isLiked,
    bool? isSubscribed,
    String? siteUrl,
    String? progress,
    String? status,
    Query$GetActivities$Page$activities$$ListActivity$media? media,
  });
  CopyWith$Query$GetActivities$Page$activities$$ListActivity$user<TRes>
      get user;
  CopyWith$Query$GetActivities$Page$activities$$ListActivity$media<TRes>
      get media;
}

class _CopyWithImpl$Query$GetActivities$Page$activities$$ListActivity<TRes>
    implements
        CopyWith$Query$GetActivities$Page$activities$$ListActivity<TRes> {
  _CopyWithImpl$Query$GetActivities$Page$activities$$ListActivity(
    this._instance,
    this._then,
  );

  final Query$GetActivities$Page$activities$$ListActivity _instance;

  final TRes Function(Query$GetActivities$Page$activities$$ListActivity) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $__typename = _undefined,
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
  }) =>
      _then(Query$GetActivities$Page$activities$$ListActivity(
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        id: id == _undefined || id == null ? _instance.id : (id as int),
        user: user == _undefined
            ? _instance.user
            : (user as Query$GetActivities$Page$activities$$ListActivity$user?),
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
                as Query$GetActivities$Page$activities$$ListActivity$media?),
      ));

  CopyWith$Query$GetActivities$Page$activities$$ListActivity$user<TRes>
      get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith$Query$GetActivities$Page$activities$$ListActivity$user.stub(
            _then(_instance))
        : CopyWith$Query$GetActivities$Page$activities$$ListActivity$user(
            local$user, (e) => call(user: e));
  }

  CopyWith$Query$GetActivities$Page$activities$$ListActivity$media<TRes>
      get media {
    final local$media = _instance.media;
    return local$media == null
        ? CopyWith$Query$GetActivities$Page$activities$$ListActivity$media.stub(
            _then(_instance))
        : CopyWith$Query$GetActivities$Page$activities$$ListActivity$media(
            local$media, (e) => call(media: e));
  }
}

class _CopyWithStubImpl$Query$GetActivities$Page$activities$$ListActivity<TRes>
    implements
        CopyWith$Query$GetActivities$Page$activities$$ListActivity<TRes> {
  _CopyWithStubImpl$Query$GetActivities$Page$activities$$ListActivity(
      this._res);

  TRes _res;

  call({
    String? $__typename,
    int? id,
    Query$GetActivities$Page$activities$$ListActivity$user? user,
    int? likeCount,
    int? replyCount,
    int? createdAt,
    bool? isLiked,
    bool? isSubscribed,
    String? siteUrl,
    String? progress,
    String? status,
    Query$GetActivities$Page$activities$$ListActivity$media? media,
  }) =>
      _res;

  CopyWith$Query$GetActivities$Page$activities$$ListActivity$user<TRes>
      get user =>
          CopyWith$Query$GetActivities$Page$activities$$ListActivity$user.stub(
              _res);

  CopyWith$Query$GetActivities$Page$activities$$ListActivity$media<TRes>
      get media =>
          CopyWith$Query$GetActivities$Page$activities$$ListActivity$media.stub(
              _res);
}

class Query$GetActivities$Page$activities$$ListActivity$user
    implements Fragment$ListActivity$user {
  Query$GetActivities$Page$activities$$ListActivity$user({
    required this.id,
    this.avatar,
    required this.name,
    this.$__typename = 'User',
  });

  factory Query$GetActivities$Page$activities$$ListActivity$user.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$avatar = json['avatar'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$GetActivities$Page$activities$$ListActivity$user(
      id: (l$id as int),
      avatar: l$avatar == null
          ? null
          : Query$GetActivities$Page$activities$$ListActivity$user$avatar
              .fromJson((l$avatar as Map<String, dynamic>)),
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final Query$GetActivities$Page$activities$$ListActivity$user$avatar? avatar;

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
    if (!(other is Query$GetActivities$Page$activities$$ListActivity$user) ||
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

extension UtilityExtension$Query$GetActivities$Page$activities$$ListActivity$user
    on Query$GetActivities$Page$activities$$ListActivity$user {
  CopyWith$Query$GetActivities$Page$activities$$ListActivity$user<
          Query$GetActivities$Page$activities$$ListActivity$user>
      get copyWith =>
          CopyWith$Query$GetActivities$Page$activities$$ListActivity$user(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetActivities$Page$activities$$ListActivity$user<
    TRes> {
  factory CopyWith$Query$GetActivities$Page$activities$$ListActivity$user(
    Query$GetActivities$Page$activities$$ListActivity$user instance,
    TRes Function(Query$GetActivities$Page$activities$$ListActivity$user) then,
  ) = _CopyWithImpl$Query$GetActivities$Page$activities$$ListActivity$user;

  factory CopyWith$Query$GetActivities$Page$activities$$ListActivity$user.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetActivities$Page$activities$$ListActivity$user;

  TRes call({
    int? id,
    Query$GetActivities$Page$activities$$ListActivity$user$avatar? avatar,
    String? name,
    String? $__typename,
  });
  CopyWith$Query$GetActivities$Page$activities$$ListActivity$user$avatar<TRes>
      get avatar;
}

class _CopyWithImpl$Query$GetActivities$Page$activities$$ListActivity$user<TRes>
    implements
        CopyWith$Query$GetActivities$Page$activities$$ListActivity$user<TRes> {
  _CopyWithImpl$Query$GetActivities$Page$activities$$ListActivity$user(
    this._instance,
    this._then,
  );

  final Query$GetActivities$Page$activities$$ListActivity$user _instance;

  final TRes Function(Query$GetActivities$Page$activities$$ListActivity$user)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? avatar = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetActivities$Page$activities$$ListActivity$user(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        avatar: avatar == _undefined
            ? _instance.avatar
            : (avatar
                as Query$GetActivities$Page$activities$$ListActivity$user$avatar?),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetActivities$Page$activities$$ListActivity$user$avatar<TRes>
      get avatar {
    final local$avatar = _instance.avatar;
    return local$avatar == null
        ? CopyWith$Query$GetActivities$Page$activities$$ListActivity$user$avatar
            .stub(_then(_instance))
        : CopyWith$Query$GetActivities$Page$activities$$ListActivity$user$avatar(
            local$avatar, (e) => call(avatar: e));
  }
}

class _CopyWithStubImpl$Query$GetActivities$Page$activities$$ListActivity$user<
        TRes>
    implements
        CopyWith$Query$GetActivities$Page$activities$$ListActivity$user<TRes> {
  _CopyWithStubImpl$Query$GetActivities$Page$activities$$ListActivity$user(
      this._res);

  TRes _res;

  call({
    int? id,
    Query$GetActivities$Page$activities$$ListActivity$user$avatar? avatar,
    String? name,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetActivities$Page$activities$$ListActivity$user$avatar<TRes>
      get avatar =>
          CopyWith$Query$GetActivities$Page$activities$$ListActivity$user$avatar
              .stub(_res);
}

class Query$GetActivities$Page$activities$$ListActivity$user$avatar
    implements Fragment$ListActivity$user$avatar {
  Query$GetActivities$Page$activities$$ListActivity$user$avatar({
    this.medium,
    this.$__typename = 'UserAvatar',
  });

  factory Query$GetActivities$Page$activities$$ListActivity$user$avatar.fromJson(
      Map<String, dynamic> json) {
    final l$medium = json['medium'];
    final l$$__typename = json['__typename'];
    return Query$GetActivities$Page$activities$$ListActivity$user$avatar(
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
            is Query$GetActivities$Page$activities$$ListActivity$user$avatar) ||
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

extension UtilityExtension$Query$GetActivities$Page$activities$$ListActivity$user$avatar
    on Query$GetActivities$Page$activities$$ListActivity$user$avatar {
  CopyWith$Query$GetActivities$Page$activities$$ListActivity$user$avatar<
          Query$GetActivities$Page$activities$$ListActivity$user$avatar>
      get copyWith =>
          CopyWith$Query$GetActivities$Page$activities$$ListActivity$user$avatar(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetActivities$Page$activities$$ListActivity$user$avatar<
    TRes> {
  factory CopyWith$Query$GetActivities$Page$activities$$ListActivity$user$avatar(
    Query$GetActivities$Page$activities$$ListActivity$user$avatar instance,
    TRes Function(Query$GetActivities$Page$activities$$ListActivity$user$avatar)
        then,
  ) = _CopyWithImpl$Query$GetActivities$Page$activities$$ListActivity$user$avatar;

  factory CopyWith$Query$GetActivities$Page$activities$$ListActivity$user$avatar.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetActivities$Page$activities$$ListActivity$user$avatar;

  TRes call({
    String? medium,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetActivities$Page$activities$$ListActivity$user$avatar<
        TRes>
    implements
        CopyWith$Query$GetActivities$Page$activities$$ListActivity$user$avatar<
            TRes> {
  _CopyWithImpl$Query$GetActivities$Page$activities$$ListActivity$user$avatar(
    this._instance,
    this._then,
  );

  final Query$GetActivities$Page$activities$$ListActivity$user$avatar _instance;

  final TRes Function(
      Query$GetActivities$Page$activities$$ListActivity$user$avatar) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? medium = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetActivities$Page$activities$$ListActivity$user$avatar(
        medium: medium == _undefined ? _instance.medium : (medium as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetActivities$Page$activities$$ListActivity$user$avatar<
        TRes>
    implements
        CopyWith$Query$GetActivities$Page$activities$$ListActivity$user$avatar<
            TRes> {
  _CopyWithStubImpl$Query$GetActivities$Page$activities$$ListActivity$user$avatar(
      this._res);

  TRes _res;

  call({
    String? medium,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetActivities$Page$activities$$ListActivity$media
    implements Fragment$ListActivity$media {
  Query$GetActivities$Page$activities$$ListActivity$media({
    required this.id,
    this.coverImage,
    this.title,
    this.type,
    this.format,
    this.isAdult,
    this.$__typename = 'Media',
  });

  factory Query$GetActivities$Page$activities$$ListActivity$media.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$coverImage = json['coverImage'];
    final l$title = json['title'];
    final l$type = json['type'];
    final l$format = json['format'];
    final l$isAdult = json['isAdult'];
    final l$$__typename = json['__typename'];
    return Query$GetActivities$Page$activities$$ListActivity$media(
      id: (l$id as int),
      coverImage: l$coverImage == null
          ? null
          : Query$GetActivities$Page$activities$$ListActivity$media$coverImage
              .fromJson((l$coverImage as Map<String, dynamic>)),
      title: l$title == null
          ? null
          : Query$GetActivities$Page$activities$$ListActivity$media$title
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

  final Query$GetActivities$Page$activities$$ListActivity$media$coverImage?
      coverImage;

  final Query$GetActivities$Page$activities$$ListActivity$media$title? title;

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
    if (!(other is Query$GetActivities$Page$activities$$ListActivity$media) ||
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

extension UtilityExtension$Query$GetActivities$Page$activities$$ListActivity$media
    on Query$GetActivities$Page$activities$$ListActivity$media {
  CopyWith$Query$GetActivities$Page$activities$$ListActivity$media<
          Query$GetActivities$Page$activities$$ListActivity$media>
      get copyWith =>
          CopyWith$Query$GetActivities$Page$activities$$ListActivity$media(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetActivities$Page$activities$$ListActivity$media<
    TRes> {
  factory CopyWith$Query$GetActivities$Page$activities$$ListActivity$media(
    Query$GetActivities$Page$activities$$ListActivity$media instance,
    TRes Function(Query$GetActivities$Page$activities$$ListActivity$media) then,
  ) = _CopyWithImpl$Query$GetActivities$Page$activities$$ListActivity$media;

  factory CopyWith$Query$GetActivities$Page$activities$$ListActivity$media.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetActivities$Page$activities$$ListActivity$media;

  TRes call({
    int? id,
    Query$GetActivities$Page$activities$$ListActivity$media$coverImage?
        coverImage,
    Query$GetActivities$Page$activities$$ListActivity$media$title? title,
    Enum$MediaType? type,
    Enum$MediaFormat? format,
    bool? isAdult,
    String? $__typename,
  });
  CopyWith$Query$GetActivities$Page$activities$$ListActivity$media$coverImage<
      TRes> get coverImage;
  CopyWith$Query$GetActivities$Page$activities$$ListActivity$media$title<TRes>
      get title;
}

class _CopyWithImpl$Query$GetActivities$Page$activities$$ListActivity$media<
        TRes>
    implements
        CopyWith$Query$GetActivities$Page$activities$$ListActivity$media<TRes> {
  _CopyWithImpl$Query$GetActivities$Page$activities$$ListActivity$media(
    this._instance,
    this._then,
  );

  final Query$GetActivities$Page$activities$$ListActivity$media _instance;

  final TRes Function(Query$GetActivities$Page$activities$$ListActivity$media)
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
      _then(Query$GetActivities$Page$activities$$ListActivity$media(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        coverImage: coverImage == _undefined
            ? _instance.coverImage
            : (coverImage
                as Query$GetActivities$Page$activities$$ListActivity$media$coverImage?),
        title: title == _undefined
            ? _instance.title
            : (title
                as Query$GetActivities$Page$activities$$ListActivity$media$title?),
        type: type == _undefined ? _instance.type : (type as Enum$MediaType?),
        format: format == _undefined
            ? _instance.format
            : (format as Enum$MediaFormat?),
        isAdult: isAdult == _undefined ? _instance.isAdult : (isAdult as bool?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetActivities$Page$activities$$ListActivity$media$coverImage<
      TRes> get coverImage {
    final local$coverImage = _instance.coverImage;
    return local$coverImage == null
        ? CopyWith$Query$GetActivities$Page$activities$$ListActivity$media$coverImage
            .stub(_then(_instance))
        : CopyWith$Query$GetActivities$Page$activities$$ListActivity$media$coverImage(
            local$coverImage, (e) => call(coverImage: e));
  }

  CopyWith$Query$GetActivities$Page$activities$$ListActivity$media$title<TRes>
      get title {
    final local$title = _instance.title;
    return local$title == null
        ? CopyWith$Query$GetActivities$Page$activities$$ListActivity$media$title
            .stub(_then(_instance))
        : CopyWith$Query$GetActivities$Page$activities$$ListActivity$media$title(
            local$title, (e) => call(title: e));
  }
}

class _CopyWithStubImpl$Query$GetActivities$Page$activities$$ListActivity$media<
        TRes>
    implements
        CopyWith$Query$GetActivities$Page$activities$$ListActivity$media<TRes> {
  _CopyWithStubImpl$Query$GetActivities$Page$activities$$ListActivity$media(
      this._res);

  TRes _res;

  call({
    int? id,
    Query$GetActivities$Page$activities$$ListActivity$media$coverImage?
        coverImage,
    Query$GetActivities$Page$activities$$ListActivity$media$title? title,
    Enum$MediaType? type,
    Enum$MediaFormat? format,
    bool? isAdult,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetActivities$Page$activities$$ListActivity$media$coverImage<
          TRes>
      get coverImage =>
          CopyWith$Query$GetActivities$Page$activities$$ListActivity$media$coverImage
              .stub(_res);

  CopyWith$Query$GetActivities$Page$activities$$ListActivity$media$title<TRes>
      get title =>
          CopyWith$Query$GetActivities$Page$activities$$ListActivity$media$title
              .stub(_res);
}

class Query$GetActivities$Page$activities$$ListActivity$media$coverImage
    implements Fragment$ListActivity$media$coverImage {
  Query$GetActivities$Page$activities$$ListActivity$media$coverImage({
    this.medium,
    this.$__typename = 'MediaCoverImage',
  });

  factory Query$GetActivities$Page$activities$$ListActivity$media$coverImage.fromJson(
      Map<String, dynamic> json) {
    final l$medium = json['medium'];
    final l$$__typename = json['__typename'];
    return Query$GetActivities$Page$activities$$ListActivity$media$coverImage(
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
            is Query$GetActivities$Page$activities$$ListActivity$media$coverImage) ||
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

extension UtilityExtension$Query$GetActivities$Page$activities$$ListActivity$media$coverImage
    on Query$GetActivities$Page$activities$$ListActivity$media$coverImage {
  CopyWith$Query$GetActivities$Page$activities$$ListActivity$media$coverImage<
          Query$GetActivities$Page$activities$$ListActivity$media$coverImage>
      get copyWith =>
          CopyWith$Query$GetActivities$Page$activities$$ListActivity$media$coverImage(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetActivities$Page$activities$$ListActivity$media$coverImage<
    TRes> {
  factory CopyWith$Query$GetActivities$Page$activities$$ListActivity$media$coverImage(
    Query$GetActivities$Page$activities$$ListActivity$media$coverImage instance,
    TRes Function(
            Query$GetActivities$Page$activities$$ListActivity$media$coverImage)
        then,
  ) = _CopyWithImpl$Query$GetActivities$Page$activities$$ListActivity$media$coverImage;

  factory CopyWith$Query$GetActivities$Page$activities$$ListActivity$media$coverImage.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetActivities$Page$activities$$ListActivity$media$coverImage;

  TRes call({
    String? medium,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetActivities$Page$activities$$ListActivity$media$coverImage<
        TRes>
    implements
        CopyWith$Query$GetActivities$Page$activities$$ListActivity$media$coverImage<
            TRes> {
  _CopyWithImpl$Query$GetActivities$Page$activities$$ListActivity$media$coverImage(
    this._instance,
    this._then,
  );

  final Query$GetActivities$Page$activities$$ListActivity$media$coverImage
      _instance;

  final TRes Function(
      Query$GetActivities$Page$activities$$ListActivity$media$coverImage) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? medium = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetActivities$Page$activities$$ListActivity$media$coverImage(
        medium: medium == _undefined ? _instance.medium : (medium as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetActivities$Page$activities$$ListActivity$media$coverImage<
        TRes>
    implements
        CopyWith$Query$GetActivities$Page$activities$$ListActivity$media$coverImage<
            TRes> {
  _CopyWithStubImpl$Query$GetActivities$Page$activities$$ListActivity$media$coverImage(
      this._res);

  TRes _res;

  call({
    String? medium,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetActivities$Page$activities$$ListActivity$media$title
    implements Fragment$ListActivity$media$title {
  Query$GetActivities$Page$activities$$ListActivity$media$title({
    this.userPreferred,
    this.$__typename = 'MediaTitle',
  });

  factory Query$GetActivities$Page$activities$$ListActivity$media$title.fromJson(
      Map<String, dynamic> json) {
    final l$userPreferred = json['userPreferred'];
    final l$$__typename = json['__typename'];
    return Query$GetActivities$Page$activities$$ListActivity$media$title(
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
            is Query$GetActivities$Page$activities$$ListActivity$media$title) ||
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

extension UtilityExtension$Query$GetActivities$Page$activities$$ListActivity$media$title
    on Query$GetActivities$Page$activities$$ListActivity$media$title {
  CopyWith$Query$GetActivities$Page$activities$$ListActivity$media$title<
          Query$GetActivities$Page$activities$$ListActivity$media$title>
      get copyWith =>
          CopyWith$Query$GetActivities$Page$activities$$ListActivity$media$title(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetActivities$Page$activities$$ListActivity$media$title<
    TRes> {
  factory CopyWith$Query$GetActivities$Page$activities$$ListActivity$media$title(
    Query$GetActivities$Page$activities$$ListActivity$media$title instance,
    TRes Function(Query$GetActivities$Page$activities$$ListActivity$media$title)
        then,
  ) = _CopyWithImpl$Query$GetActivities$Page$activities$$ListActivity$media$title;

  factory CopyWith$Query$GetActivities$Page$activities$$ListActivity$media$title.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetActivities$Page$activities$$ListActivity$media$title;

  TRes call({
    String? userPreferred,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetActivities$Page$activities$$ListActivity$media$title<
        TRes>
    implements
        CopyWith$Query$GetActivities$Page$activities$$ListActivity$media$title<
            TRes> {
  _CopyWithImpl$Query$GetActivities$Page$activities$$ListActivity$media$title(
    this._instance,
    this._then,
  );

  final Query$GetActivities$Page$activities$$ListActivity$media$title _instance;

  final TRes Function(
      Query$GetActivities$Page$activities$$ListActivity$media$title) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userPreferred = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetActivities$Page$activities$$ListActivity$media$title(
        userPreferred: userPreferred == _undefined
            ? _instance.userPreferred
            : (userPreferred as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetActivities$Page$activities$$ListActivity$media$title<
        TRes>
    implements
        CopyWith$Query$GetActivities$Page$activities$$ListActivity$media$title<
            TRes> {
  _CopyWithStubImpl$Query$GetActivities$Page$activities$$ListActivity$media$title(
      this._res);

  TRes _res;

  call({
    String? userPreferred,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetActivities$Page$activities$$MessageActivity
    implements Fragment$MessageActivity, Query$GetActivities$Page$activities {
  Query$GetActivities$Page$activities$$MessageActivity({
    this.$__typename = 'MessageActivity',
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
  });

  factory Query$GetActivities$Page$activities$$MessageActivity.fromJson(
      Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
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
    return Query$GetActivities$Page$activities$$MessageActivity(
      $__typename: (l$$__typename as String),
      id: (l$id as int),
      messenger: l$messenger == null
          ? null
          : Query$GetActivities$Page$activities$$MessageActivity$messenger
              .fromJson((l$messenger as Map<String, dynamic>)),
      recipient: l$recipient == null
          ? null
          : Query$GetActivities$Page$activities$$MessageActivity$recipient
              .fromJson((l$recipient as Map<String, dynamic>)),
      likeCount: (l$likeCount as int),
      replyCount: (l$replyCount as int),
      createdAt: (l$createdAt as int),
      isLiked: (l$isLiked as bool?),
      isSubscribed: (l$isSubscribed as bool?),
      siteUrl: (l$siteUrl as String?),
      message: (l$message as String?),
    );
  }

  final String $__typename;

  final int id;

  final Query$GetActivities$Page$activities$$MessageActivity$messenger?
      messenger;

  final Query$GetActivities$Page$activities$$MessageActivity$recipient?
      recipient;

  final int likeCount;

  final int replyCount;

  final int createdAt;

  final bool? isLiked;

  final bool? isSubscribed;

  final String? siteUrl;

  final String? message;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
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
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
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
    return Object.hashAll([
      l$$__typename,
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
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetActivities$Page$activities$$MessageActivity) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
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
    return true;
  }
}

extension UtilityExtension$Query$GetActivities$Page$activities$$MessageActivity
    on Query$GetActivities$Page$activities$$MessageActivity {
  CopyWith$Query$GetActivities$Page$activities$$MessageActivity<
          Query$GetActivities$Page$activities$$MessageActivity>
      get copyWith =>
          CopyWith$Query$GetActivities$Page$activities$$MessageActivity(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetActivities$Page$activities$$MessageActivity<
    TRes> {
  factory CopyWith$Query$GetActivities$Page$activities$$MessageActivity(
    Query$GetActivities$Page$activities$$MessageActivity instance,
    TRes Function(Query$GetActivities$Page$activities$$MessageActivity) then,
  ) = _CopyWithImpl$Query$GetActivities$Page$activities$$MessageActivity;

  factory CopyWith$Query$GetActivities$Page$activities$$MessageActivity.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetActivities$Page$activities$$MessageActivity;

  TRes call({
    String? $__typename,
    int? id,
    Query$GetActivities$Page$activities$$MessageActivity$messenger? messenger,
    Query$GetActivities$Page$activities$$MessageActivity$recipient? recipient,
    int? likeCount,
    int? replyCount,
    int? createdAt,
    bool? isLiked,
    bool? isSubscribed,
    String? siteUrl,
    String? message,
  });
  CopyWith$Query$GetActivities$Page$activities$$MessageActivity$messenger<TRes>
      get messenger;
  CopyWith$Query$GetActivities$Page$activities$$MessageActivity$recipient<TRes>
      get recipient;
}

class _CopyWithImpl$Query$GetActivities$Page$activities$$MessageActivity<TRes>
    implements
        CopyWith$Query$GetActivities$Page$activities$$MessageActivity<TRes> {
  _CopyWithImpl$Query$GetActivities$Page$activities$$MessageActivity(
    this._instance,
    this._then,
  );

  final Query$GetActivities$Page$activities$$MessageActivity _instance;

  final TRes Function(Query$GetActivities$Page$activities$$MessageActivity)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $__typename = _undefined,
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
  }) =>
      _then(Query$GetActivities$Page$activities$$MessageActivity(
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        id: id == _undefined || id == null ? _instance.id : (id as int),
        messenger: messenger == _undefined
            ? _instance.messenger
            : (messenger
                as Query$GetActivities$Page$activities$$MessageActivity$messenger?),
        recipient: recipient == _undefined
            ? _instance.recipient
            : (recipient
                as Query$GetActivities$Page$activities$$MessageActivity$recipient?),
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
      ));

  CopyWith$Query$GetActivities$Page$activities$$MessageActivity$messenger<TRes>
      get messenger {
    final local$messenger = _instance.messenger;
    return local$messenger == null
        ? CopyWith$Query$GetActivities$Page$activities$$MessageActivity$messenger
            .stub(_then(_instance))
        : CopyWith$Query$GetActivities$Page$activities$$MessageActivity$messenger(
            local$messenger, (e) => call(messenger: e));
  }

  CopyWith$Query$GetActivities$Page$activities$$MessageActivity$recipient<TRes>
      get recipient {
    final local$recipient = _instance.recipient;
    return local$recipient == null
        ? CopyWith$Query$GetActivities$Page$activities$$MessageActivity$recipient
            .stub(_then(_instance))
        : CopyWith$Query$GetActivities$Page$activities$$MessageActivity$recipient(
            local$recipient, (e) => call(recipient: e));
  }
}

class _CopyWithStubImpl$Query$GetActivities$Page$activities$$MessageActivity<
        TRes>
    implements
        CopyWith$Query$GetActivities$Page$activities$$MessageActivity<TRes> {
  _CopyWithStubImpl$Query$GetActivities$Page$activities$$MessageActivity(
      this._res);

  TRes _res;

  call({
    String? $__typename,
    int? id,
    Query$GetActivities$Page$activities$$MessageActivity$messenger? messenger,
    Query$GetActivities$Page$activities$$MessageActivity$recipient? recipient,
    int? likeCount,
    int? replyCount,
    int? createdAt,
    bool? isLiked,
    bool? isSubscribed,
    String? siteUrl,
    String? message,
  }) =>
      _res;

  CopyWith$Query$GetActivities$Page$activities$$MessageActivity$messenger<TRes>
      get messenger =>
          CopyWith$Query$GetActivities$Page$activities$$MessageActivity$messenger
              .stub(_res);

  CopyWith$Query$GetActivities$Page$activities$$MessageActivity$recipient<TRes>
      get recipient =>
          CopyWith$Query$GetActivities$Page$activities$$MessageActivity$recipient
              .stub(_res);
}

class Query$GetActivities$Page$activities$$MessageActivity$messenger
    implements Fragment$MessageActivity$messenger {
  Query$GetActivities$Page$activities$$MessageActivity$messenger({
    required this.id,
    this.avatar,
    required this.name,
    this.$__typename = 'User',
  });

  factory Query$GetActivities$Page$activities$$MessageActivity$messenger.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$avatar = json['avatar'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$GetActivities$Page$activities$$MessageActivity$messenger(
      id: (l$id as int),
      avatar: l$avatar == null
          ? null
          : Query$GetActivities$Page$activities$$MessageActivity$messenger$avatar
              .fromJson((l$avatar as Map<String, dynamic>)),
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final Query$GetActivities$Page$activities$$MessageActivity$messenger$avatar?
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
            is Query$GetActivities$Page$activities$$MessageActivity$messenger) ||
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

extension UtilityExtension$Query$GetActivities$Page$activities$$MessageActivity$messenger
    on Query$GetActivities$Page$activities$$MessageActivity$messenger {
  CopyWith$Query$GetActivities$Page$activities$$MessageActivity$messenger<
          Query$GetActivities$Page$activities$$MessageActivity$messenger>
      get copyWith =>
          CopyWith$Query$GetActivities$Page$activities$$MessageActivity$messenger(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetActivities$Page$activities$$MessageActivity$messenger<
    TRes> {
  factory CopyWith$Query$GetActivities$Page$activities$$MessageActivity$messenger(
    Query$GetActivities$Page$activities$$MessageActivity$messenger instance,
    TRes Function(
            Query$GetActivities$Page$activities$$MessageActivity$messenger)
        then,
  ) = _CopyWithImpl$Query$GetActivities$Page$activities$$MessageActivity$messenger;

  factory CopyWith$Query$GetActivities$Page$activities$$MessageActivity$messenger.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetActivities$Page$activities$$MessageActivity$messenger;

  TRes call({
    int? id,
    Query$GetActivities$Page$activities$$MessageActivity$messenger$avatar?
        avatar,
    String? name,
    String? $__typename,
  });
  CopyWith$Query$GetActivities$Page$activities$$MessageActivity$messenger$avatar<
      TRes> get avatar;
}

class _CopyWithImpl$Query$GetActivities$Page$activities$$MessageActivity$messenger<
        TRes>
    implements
        CopyWith$Query$GetActivities$Page$activities$$MessageActivity$messenger<
            TRes> {
  _CopyWithImpl$Query$GetActivities$Page$activities$$MessageActivity$messenger(
    this._instance,
    this._then,
  );

  final Query$GetActivities$Page$activities$$MessageActivity$messenger
      _instance;

  final TRes Function(
      Query$GetActivities$Page$activities$$MessageActivity$messenger) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? avatar = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetActivities$Page$activities$$MessageActivity$messenger(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        avatar: avatar == _undefined
            ? _instance.avatar
            : (avatar
                as Query$GetActivities$Page$activities$$MessageActivity$messenger$avatar?),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetActivities$Page$activities$$MessageActivity$messenger$avatar<
      TRes> get avatar {
    final local$avatar = _instance.avatar;
    return local$avatar == null
        ? CopyWith$Query$GetActivities$Page$activities$$MessageActivity$messenger$avatar
            .stub(_then(_instance))
        : CopyWith$Query$GetActivities$Page$activities$$MessageActivity$messenger$avatar(
            local$avatar, (e) => call(avatar: e));
  }
}

class _CopyWithStubImpl$Query$GetActivities$Page$activities$$MessageActivity$messenger<
        TRes>
    implements
        CopyWith$Query$GetActivities$Page$activities$$MessageActivity$messenger<
            TRes> {
  _CopyWithStubImpl$Query$GetActivities$Page$activities$$MessageActivity$messenger(
      this._res);

  TRes _res;

  call({
    int? id,
    Query$GetActivities$Page$activities$$MessageActivity$messenger$avatar?
        avatar,
    String? name,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetActivities$Page$activities$$MessageActivity$messenger$avatar<
          TRes>
      get avatar =>
          CopyWith$Query$GetActivities$Page$activities$$MessageActivity$messenger$avatar
              .stub(_res);
}

class Query$GetActivities$Page$activities$$MessageActivity$messenger$avatar
    implements Fragment$MessageActivity$messenger$avatar {
  Query$GetActivities$Page$activities$$MessageActivity$messenger$avatar({
    this.medium,
    this.$__typename = 'UserAvatar',
  });

  factory Query$GetActivities$Page$activities$$MessageActivity$messenger$avatar.fromJson(
      Map<String, dynamic> json) {
    final l$medium = json['medium'];
    final l$$__typename = json['__typename'];
    return Query$GetActivities$Page$activities$$MessageActivity$messenger$avatar(
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
            is Query$GetActivities$Page$activities$$MessageActivity$messenger$avatar) ||
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

extension UtilityExtension$Query$GetActivities$Page$activities$$MessageActivity$messenger$avatar
    on Query$GetActivities$Page$activities$$MessageActivity$messenger$avatar {
  CopyWith$Query$GetActivities$Page$activities$$MessageActivity$messenger$avatar<
          Query$GetActivities$Page$activities$$MessageActivity$messenger$avatar>
      get copyWith =>
          CopyWith$Query$GetActivities$Page$activities$$MessageActivity$messenger$avatar(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetActivities$Page$activities$$MessageActivity$messenger$avatar<
    TRes> {
  factory CopyWith$Query$GetActivities$Page$activities$$MessageActivity$messenger$avatar(
    Query$GetActivities$Page$activities$$MessageActivity$messenger$avatar
        instance,
    TRes Function(
            Query$GetActivities$Page$activities$$MessageActivity$messenger$avatar)
        then,
  ) = _CopyWithImpl$Query$GetActivities$Page$activities$$MessageActivity$messenger$avatar;

  factory CopyWith$Query$GetActivities$Page$activities$$MessageActivity$messenger$avatar.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetActivities$Page$activities$$MessageActivity$messenger$avatar;

  TRes call({
    String? medium,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetActivities$Page$activities$$MessageActivity$messenger$avatar<
        TRes>
    implements
        CopyWith$Query$GetActivities$Page$activities$$MessageActivity$messenger$avatar<
            TRes> {
  _CopyWithImpl$Query$GetActivities$Page$activities$$MessageActivity$messenger$avatar(
    this._instance,
    this._then,
  );

  final Query$GetActivities$Page$activities$$MessageActivity$messenger$avatar
      _instance;

  final TRes Function(
          Query$GetActivities$Page$activities$$MessageActivity$messenger$avatar)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? medium = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$GetActivities$Page$activities$$MessageActivity$messenger$avatar(
        medium: medium == _undefined ? _instance.medium : (medium as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetActivities$Page$activities$$MessageActivity$messenger$avatar<
        TRes>
    implements
        CopyWith$Query$GetActivities$Page$activities$$MessageActivity$messenger$avatar<
            TRes> {
  _CopyWithStubImpl$Query$GetActivities$Page$activities$$MessageActivity$messenger$avatar(
      this._res);

  TRes _res;

  call({
    String? medium,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetActivities$Page$activities$$MessageActivity$recipient
    implements Fragment$MessageActivity$recipient {
  Query$GetActivities$Page$activities$$MessageActivity$recipient({
    required this.id,
    this.avatar,
    required this.name,
    this.$__typename = 'User',
  });

  factory Query$GetActivities$Page$activities$$MessageActivity$recipient.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$avatar = json['avatar'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$GetActivities$Page$activities$$MessageActivity$recipient(
      id: (l$id as int),
      avatar: l$avatar == null
          ? null
          : Query$GetActivities$Page$activities$$MessageActivity$recipient$avatar
              .fromJson((l$avatar as Map<String, dynamic>)),
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final Query$GetActivities$Page$activities$$MessageActivity$recipient$avatar?
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
            is Query$GetActivities$Page$activities$$MessageActivity$recipient) ||
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

extension UtilityExtension$Query$GetActivities$Page$activities$$MessageActivity$recipient
    on Query$GetActivities$Page$activities$$MessageActivity$recipient {
  CopyWith$Query$GetActivities$Page$activities$$MessageActivity$recipient<
          Query$GetActivities$Page$activities$$MessageActivity$recipient>
      get copyWith =>
          CopyWith$Query$GetActivities$Page$activities$$MessageActivity$recipient(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetActivities$Page$activities$$MessageActivity$recipient<
    TRes> {
  factory CopyWith$Query$GetActivities$Page$activities$$MessageActivity$recipient(
    Query$GetActivities$Page$activities$$MessageActivity$recipient instance,
    TRes Function(
            Query$GetActivities$Page$activities$$MessageActivity$recipient)
        then,
  ) = _CopyWithImpl$Query$GetActivities$Page$activities$$MessageActivity$recipient;

  factory CopyWith$Query$GetActivities$Page$activities$$MessageActivity$recipient.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetActivities$Page$activities$$MessageActivity$recipient;

  TRes call({
    int? id,
    Query$GetActivities$Page$activities$$MessageActivity$recipient$avatar?
        avatar,
    String? name,
    String? $__typename,
  });
  CopyWith$Query$GetActivities$Page$activities$$MessageActivity$recipient$avatar<
      TRes> get avatar;
}

class _CopyWithImpl$Query$GetActivities$Page$activities$$MessageActivity$recipient<
        TRes>
    implements
        CopyWith$Query$GetActivities$Page$activities$$MessageActivity$recipient<
            TRes> {
  _CopyWithImpl$Query$GetActivities$Page$activities$$MessageActivity$recipient(
    this._instance,
    this._then,
  );

  final Query$GetActivities$Page$activities$$MessageActivity$recipient
      _instance;

  final TRes Function(
      Query$GetActivities$Page$activities$$MessageActivity$recipient) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? avatar = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetActivities$Page$activities$$MessageActivity$recipient(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        avatar: avatar == _undefined
            ? _instance.avatar
            : (avatar
                as Query$GetActivities$Page$activities$$MessageActivity$recipient$avatar?),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetActivities$Page$activities$$MessageActivity$recipient$avatar<
      TRes> get avatar {
    final local$avatar = _instance.avatar;
    return local$avatar == null
        ? CopyWith$Query$GetActivities$Page$activities$$MessageActivity$recipient$avatar
            .stub(_then(_instance))
        : CopyWith$Query$GetActivities$Page$activities$$MessageActivity$recipient$avatar(
            local$avatar, (e) => call(avatar: e));
  }
}

class _CopyWithStubImpl$Query$GetActivities$Page$activities$$MessageActivity$recipient<
        TRes>
    implements
        CopyWith$Query$GetActivities$Page$activities$$MessageActivity$recipient<
            TRes> {
  _CopyWithStubImpl$Query$GetActivities$Page$activities$$MessageActivity$recipient(
      this._res);

  TRes _res;

  call({
    int? id,
    Query$GetActivities$Page$activities$$MessageActivity$recipient$avatar?
        avatar,
    String? name,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetActivities$Page$activities$$MessageActivity$recipient$avatar<
          TRes>
      get avatar =>
          CopyWith$Query$GetActivities$Page$activities$$MessageActivity$recipient$avatar
              .stub(_res);
}

class Query$GetActivities$Page$activities$$MessageActivity$recipient$avatar
    implements Fragment$MessageActivity$recipient$avatar {
  Query$GetActivities$Page$activities$$MessageActivity$recipient$avatar({
    this.medium,
    this.$__typename = 'UserAvatar',
  });

  factory Query$GetActivities$Page$activities$$MessageActivity$recipient$avatar.fromJson(
      Map<String, dynamic> json) {
    final l$medium = json['medium'];
    final l$$__typename = json['__typename'];
    return Query$GetActivities$Page$activities$$MessageActivity$recipient$avatar(
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
            is Query$GetActivities$Page$activities$$MessageActivity$recipient$avatar) ||
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

extension UtilityExtension$Query$GetActivities$Page$activities$$MessageActivity$recipient$avatar
    on Query$GetActivities$Page$activities$$MessageActivity$recipient$avatar {
  CopyWith$Query$GetActivities$Page$activities$$MessageActivity$recipient$avatar<
          Query$GetActivities$Page$activities$$MessageActivity$recipient$avatar>
      get copyWith =>
          CopyWith$Query$GetActivities$Page$activities$$MessageActivity$recipient$avatar(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetActivities$Page$activities$$MessageActivity$recipient$avatar<
    TRes> {
  factory CopyWith$Query$GetActivities$Page$activities$$MessageActivity$recipient$avatar(
    Query$GetActivities$Page$activities$$MessageActivity$recipient$avatar
        instance,
    TRes Function(
            Query$GetActivities$Page$activities$$MessageActivity$recipient$avatar)
        then,
  ) = _CopyWithImpl$Query$GetActivities$Page$activities$$MessageActivity$recipient$avatar;

  factory CopyWith$Query$GetActivities$Page$activities$$MessageActivity$recipient$avatar.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetActivities$Page$activities$$MessageActivity$recipient$avatar;

  TRes call({
    String? medium,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetActivities$Page$activities$$MessageActivity$recipient$avatar<
        TRes>
    implements
        CopyWith$Query$GetActivities$Page$activities$$MessageActivity$recipient$avatar<
            TRes> {
  _CopyWithImpl$Query$GetActivities$Page$activities$$MessageActivity$recipient$avatar(
    this._instance,
    this._then,
  );

  final Query$GetActivities$Page$activities$$MessageActivity$recipient$avatar
      _instance;

  final TRes Function(
          Query$GetActivities$Page$activities$$MessageActivity$recipient$avatar)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? medium = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$GetActivities$Page$activities$$MessageActivity$recipient$avatar(
        medium: medium == _undefined ? _instance.medium : (medium as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetActivities$Page$activities$$MessageActivity$recipient$avatar<
        TRes>
    implements
        CopyWith$Query$GetActivities$Page$activities$$MessageActivity$recipient$avatar<
            TRes> {
  _CopyWithStubImpl$Query$GetActivities$Page$activities$$MessageActivity$recipient$avatar(
      this._res);

  TRes _res;

  call({
    String? medium,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetActivities$Page$activities$$TextActivity
    implements Fragment$TextActivity, Query$GetActivities$Page$activities {
  Query$GetActivities$Page$activities$$TextActivity({
    this.$__typename = 'TextActivity',
    required this.id,
    this.user,
    required this.likeCount,
    required this.replyCount,
    required this.createdAt,
    this.isLiked,
    this.isSubscribed,
    this.siteUrl,
    this.text,
  });

  factory Query$GetActivities$Page$activities$$TextActivity.fromJson(
      Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    final l$id = json['id'];
    final l$user = json['user'];
    final l$likeCount = json['likeCount'];
    final l$replyCount = json['replyCount'];
    final l$createdAt = json['createdAt'];
    final l$isLiked = json['isLiked'];
    final l$isSubscribed = json['isSubscribed'];
    final l$siteUrl = json['siteUrl'];
    final l$text = json['text'];
    return Query$GetActivities$Page$activities$$TextActivity(
      $__typename: (l$$__typename as String),
      id: (l$id as int),
      user: l$user == null
          ? null
          : Query$GetActivities$Page$activities$$TextActivity$user.fromJson(
              (l$user as Map<String, dynamic>)),
      likeCount: (l$likeCount as int),
      replyCount: (l$replyCount as int),
      createdAt: (l$createdAt as int),
      isLiked: (l$isLiked as bool?),
      isSubscribed: (l$isSubscribed as bool?),
      siteUrl: (l$siteUrl as String?),
      text: (l$text as String?),
    );
  }

  final String $__typename;

  final int id;

  final Query$GetActivities$Page$activities$$TextActivity$user? user;

  final int likeCount;

  final int replyCount;

  final int createdAt;

  final bool? isLiked;

  final bool? isSubscribed;

  final String? siteUrl;

  final String? text;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
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
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    final l$id = id;
    final l$user = user;
    final l$likeCount = likeCount;
    final l$replyCount = replyCount;
    final l$createdAt = createdAt;
    final l$isLiked = isLiked;
    final l$isSubscribed = isSubscribed;
    final l$siteUrl = siteUrl;
    final l$text = text;
    return Object.hashAll([
      l$$__typename,
      l$id,
      l$user,
      l$likeCount,
      l$replyCount,
      l$createdAt,
      l$isLiked,
      l$isSubscribed,
      l$siteUrl,
      l$text,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetActivities$Page$activities$$TextActivity) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
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
    return true;
  }
}

extension UtilityExtension$Query$GetActivities$Page$activities$$TextActivity
    on Query$GetActivities$Page$activities$$TextActivity {
  CopyWith$Query$GetActivities$Page$activities$$TextActivity<
          Query$GetActivities$Page$activities$$TextActivity>
      get copyWith =>
          CopyWith$Query$GetActivities$Page$activities$$TextActivity(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetActivities$Page$activities$$TextActivity<
    TRes> {
  factory CopyWith$Query$GetActivities$Page$activities$$TextActivity(
    Query$GetActivities$Page$activities$$TextActivity instance,
    TRes Function(Query$GetActivities$Page$activities$$TextActivity) then,
  ) = _CopyWithImpl$Query$GetActivities$Page$activities$$TextActivity;

  factory CopyWith$Query$GetActivities$Page$activities$$TextActivity.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetActivities$Page$activities$$TextActivity;

  TRes call({
    String? $__typename,
    int? id,
    Query$GetActivities$Page$activities$$TextActivity$user? user,
    int? likeCount,
    int? replyCount,
    int? createdAt,
    bool? isLiked,
    bool? isSubscribed,
    String? siteUrl,
    String? text,
  });
  CopyWith$Query$GetActivities$Page$activities$$TextActivity$user<TRes>
      get user;
}

class _CopyWithImpl$Query$GetActivities$Page$activities$$TextActivity<TRes>
    implements
        CopyWith$Query$GetActivities$Page$activities$$TextActivity<TRes> {
  _CopyWithImpl$Query$GetActivities$Page$activities$$TextActivity(
    this._instance,
    this._then,
  );

  final Query$GetActivities$Page$activities$$TextActivity _instance;

  final TRes Function(Query$GetActivities$Page$activities$$TextActivity) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $__typename = _undefined,
    Object? id = _undefined,
    Object? user = _undefined,
    Object? likeCount = _undefined,
    Object? replyCount = _undefined,
    Object? createdAt = _undefined,
    Object? isLiked = _undefined,
    Object? isSubscribed = _undefined,
    Object? siteUrl = _undefined,
    Object? text = _undefined,
  }) =>
      _then(Query$GetActivities$Page$activities$$TextActivity(
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        id: id == _undefined || id == null ? _instance.id : (id as int),
        user: user == _undefined
            ? _instance.user
            : (user as Query$GetActivities$Page$activities$$TextActivity$user?),
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
      ));

  CopyWith$Query$GetActivities$Page$activities$$TextActivity$user<TRes>
      get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith$Query$GetActivities$Page$activities$$TextActivity$user.stub(
            _then(_instance))
        : CopyWith$Query$GetActivities$Page$activities$$TextActivity$user(
            local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl$Query$GetActivities$Page$activities$$TextActivity<TRes>
    implements
        CopyWith$Query$GetActivities$Page$activities$$TextActivity<TRes> {
  _CopyWithStubImpl$Query$GetActivities$Page$activities$$TextActivity(
      this._res);

  TRes _res;

  call({
    String? $__typename,
    int? id,
    Query$GetActivities$Page$activities$$TextActivity$user? user,
    int? likeCount,
    int? replyCount,
    int? createdAt,
    bool? isLiked,
    bool? isSubscribed,
    String? siteUrl,
    String? text,
  }) =>
      _res;

  CopyWith$Query$GetActivities$Page$activities$$TextActivity$user<TRes>
      get user =>
          CopyWith$Query$GetActivities$Page$activities$$TextActivity$user.stub(
              _res);
}

class Query$GetActivities$Page$activities$$TextActivity$user
    implements Fragment$TextActivity$user {
  Query$GetActivities$Page$activities$$TextActivity$user({
    required this.id,
    this.avatar,
    required this.name,
    this.$__typename = 'User',
  });

  factory Query$GetActivities$Page$activities$$TextActivity$user.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$avatar = json['avatar'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$GetActivities$Page$activities$$TextActivity$user(
      id: (l$id as int),
      avatar: l$avatar == null
          ? null
          : Query$GetActivities$Page$activities$$TextActivity$user$avatar
              .fromJson((l$avatar as Map<String, dynamic>)),
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final Query$GetActivities$Page$activities$$TextActivity$user$avatar? avatar;

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
    if (!(other is Query$GetActivities$Page$activities$$TextActivity$user) ||
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

extension UtilityExtension$Query$GetActivities$Page$activities$$TextActivity$user
    on Query$GetActivities$Page$activities$$TextActivity$user {
  CopyWith$Query$GetActivities$Page$activities$$TextActivity$user<
          Query$GetActivities$Page$activities$$TextActivity$user>
      get copyWith =>
          CopyWith$Query$GetActivities$Page$activities$$TextActivity$user(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetActivities$Page$activities$$TextActivity$user<
    TRes> {
  factory CopyWith$Query$GetActivities$Page$activities$$TextActivity$user(
    Query$GetActivities$Page$activities$$TextActivity$user instance,
    TRes Function(Query$GetActivities$Page$activities$$TextActivity$user) then,
  ) = _CopyWithImpl$Query$GetActivities$Page$activities$$TextActivity$user;

  factory CopyWith$Query$GetActivities$Page$activities$$TextActivity$user.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetActivities$Page$activities$$TextActivity$user;

  TRes call({
    int? id,
    Query$GetActivities$Page$activities$$TextActivity$user$avatar? avatar,
    String? name,
    String? $__typename,
  });
  CopyWith$Query$GetActivities$Page$activities$$TextActivity$user$avatar<TRes>
      get avatar;
}

class _CopyWithImpl$Query$GetActivities$Page$activities$$TextActivity$user<TRes>
    implements
        CopyWith$Query$GetActivities$Page$activities$$TextActivity$user<TRes> {
  _CopyWithImpl$Query$GetActivities$Page$activities$$TextActivity$user(
    this._instance,
    this._then,
  );

  final Query$GetActivities$Page$activities$$TextActivity$user _instance;

  final TRes Function(Query$GetActivities$Page$activities$$TextActivity$user)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? avatar = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetActivities$Page$activities$$TextActivity$user(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        avatar: avatar == _undefined
            ? _instance.avatar
            : (avatar
                as Query$GetActivities$Page$activities$$TextActivity$user$avatar?),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetActivities$Page$activities$$TextActivity$user$avatar<TRes>
      get avatar {
    final local$avatar = _instance.avatar;
    return local$avatar == null
        ? CopyWith$Query$GetActivities$Page$activities$$TextActivity$user$avatar
            .stub(_then(_instance))
        : CopyWith$Query$GetActivities$Page$activities$$TextActivity$user$avatar(
            local$avatar, (e) => call(avatar: e));
  }
}

class _CopyWithStubImpl$Query$GetActivities$Page$activities$$TextActivity$user<
        TRes>
    implements
        CopyWith$Query$GetActivities$Page$activities$$TextActivity$user<TRes> {
  _CopyWithStubImpl$Query$GetActivities$Page$activities$$TextActivity$user(
      this._res);

  TRes _res;

  call({
    int? id,
    Query$GetActivities$Page$activities$$TextActivity$user$avatar? avatar,
    String? name,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetActivities$Page$activities$$TextActivity$user$avatar<TRes>
      get avatar =>
          CopyWith$Query$GetActivities$Page$activities$$TextActivity$user$avatar
              .stub(_res);
}

class Query$GetActivities$Page$activities$$TextActivity$user$avatar
    implements Fragment$TextActivity$user$avatar {
  Query$GetActivities$Page$activities$$TextActivity$user$avatar({
    this.medium,
    this.$__typename = 'UserAvatar',
  });

  factory Query$GetActivities$Page$activities$$TextActivity$user$avatar.fromJson(
      Map<String, dynamic> json) {
    final l$medium = json['medium'];
    final l$$__typename = json['__typename'];
    return Query$GetActivities$Page$activities$$TextActivity$user$avatar(
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
            is Query$GetActivities$Page$activities$$TextActivity$user$avatar) ||
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

extension UtilityExtension$Query$GetActivities$Page$activities$$TextActivity$user$avatar
    on Query$GetActivities$Page$activities$$TextActivity$user$avatar {
  CopyWith$Query$GetActivities$Page$activities$$TextActivity$user$avatar<
          Query$GetActivities$Page$activities$$TextActivity$user$avatar>
      get copyWith =>
          CopyWith$Query$GetActivities$Page$activities$$TextActivity$user$avatar(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetActivities$Page$activities$$TextActivity$user$avatar<
    TRes> {
  factory CopyWith$Query$GetActivities$Page$activities$$TextActivity$user$avatar(
    Query$GetActivities$Page$activities$$TextActivity$user$avatar instance,
    TRes Function(Query$GetActivities$Page$activities$$TextActivity$user$avatar)
        then,
  ) = _CopyWithImpl$Query$GetActivities$Page$activities$$TextActivity$user$avatar;

  factory CopyWith$Query$GetActivities$Page$activities$$TextActivity$user$avatar.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetActivities$Page$activities$$TextActivity$user$avatar;

  TRes call({
    String? medium,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetActivities$Page$activities$$TextActivity$user$avatar<
        TRes>
    implements
        CopyWith$Query$GetActivities$Page$activities$$TextActivity$user$avatar<
            TRes> {
  _CopyWithImpl$Query$GetActivities$Page$activities$$TextActivity$user$avatar(
    this._instance,
    this._then,
  );

  final Query$GetActivities$Page$activities$$TextActivity$user$avatar _instance;

  final TRes Function(
      Query$GetActivities$Page$activities$$TextActivity$user$avatar) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? medium = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetActivities$Page$activities$$TextActivity$user$avatar(
        medium: medium == _undefined ? _instance.medium : (medium as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetActivities$Page$activities$$TextActivity$user$avatar<
        TRes>
    implements
        CopyWith$Query$GetActivities$Page$activities$$TextActivity$user$avatar<
            TRes> {
  _CopyWithStubImpl$Query$GetActivities$Page$activities$$TextActivity$user$avatar(
      this._res);

  TRes _res;

  call({
    String? medium,
    String? $__typename,
  }) =>
      _res;
}
