// GENERATED FILE
// DO NOT MODIFY
// ignore_for_file: type=lint
import '../fragments.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$MediaActivityQuery {
  factory Variables$Query$MediaActivityQuery({
    int? mediaId,
    int? page,
    bool? isFollowing,
  }) =>
      Variables$Query$MediaActivityQuery._({
        if (mediaId != null) r'mediaId': mediaId,
        if (page != null) r'page': page,
        if (isFollowing != null) r'isFollowing': isFollowing,
      });

  Variables$Query$MediaActivityQuery._(this._$data);

  factory Variables$Query$MediaActivityQuery.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('mediaId')) {
      final l$mediaId = data['mediaId'];
      result$data['mediaId'] = (l$mediaId as int?);
    }
    if (data.containsKey('page')) {
      final l$page = data['page'];
      result$data['page'] = (l$page as int?);
    }
    if (data.containsKey('isFollowing')) {
      final l$isFollowing = data['isFollowing'];
      result$data['isFollowing'] = (l$isFollowing as bool?);
    }
    return Variables$Query$MediaActivityQuery._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get mediaId => (_$data['mediaId'] as int?);

  int? get page => (_$data['page'] as int?);

  bool? get isFollowing => (_$data['isFollowing'] as bool?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('mediaId')) {
      final l$mediaId = mediaId;
      result$data['mediaId'] = l$mediaId;
    }
    if (_$data.containsKey('page')) {
      final l$page = page;
      result$data['page'] = l$page;
    }
    if (_$data.containsKey('isFollowing')) {
      final l$isFollowing = isFollowing;
      result$data['isFollowing'] = l$isFollowing;
    }
    return result$data;
  }

  CopyWith$Variables$Query$MediaActivityQuery<
          Variables$Query$MediaActivityQuery>
      get copyWith => CopyWith$Variables$Query$MediaActivityQuery(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$MediaActivityQuery) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mediaId = mediaId;
    final lOther$mediaId = other.mediaId;
    if (_$data.containsKey('mediaId') != other._$data.containsKey('mediaId')) {
      return false;
    }
    if (l$mediaId != lOther$mediaId) {
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
    final l$mediaId = mediaId;
    final l$page = page;
    final l$isFollowing = isFollowing;
    return Object.hashAll([
      _$data.containsKey('mediaId') ? l$mediaId : const {},
      _$data.containsKey('page') ? l$page : const {},
      _$data.containsKey('isFollowing') ? l$isFollowing : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$MediaActivityQuery<TRes> {
  factory CopyWith$Variables$Query$MediaActivityQuery(
    Variables$Query$MediaActivityQuery instance,
    TRes Function(Variables$Query$MediaActivityQuery) then,
  ) = _CopyWithImpl$Variables$Query$MediaActivityQuery;

  factory CopyWith$Variables$Query$MediaActivityQuery.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$MediaActivityQuery;

  TRes call({
    int? mediaId,
    int? page,
    bool? isFollowing,
  });
}

class _CopyWithImpl$Variables$Query$MediaActivityQuery<TRes>
    implements CopyWith$Variables$Query$MediaActivityQuery<TRes> {
  _CopyWithImpl$Variables$Query$MediaActivityQuery(
    this._instance,
    this._then,
  );

  final Variables$Query$MediaActivityQuery _instance;

  final TRes Function(Variables$Query$MediaActivityQuery) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mediaId = _undefined,
    Object? page = _undefined,
    Object? isFollowing = _undefined,
  }) =>
      _then(Variables$Query$MediaActivityQuery._({
        ..._instance._$data,
        if (mediaId != _undefined) 'mediaId': (mediaId as int?),
        if (page != _undefined) 'page': (page as int?),
        if (isFollowing != _undefined) 'isFollowing': (isFollowing as bool?),
      }));
}

class _CopyWithStubImpl$Variables$Query$MediaActivityQuery<TRes>
    implements CopyWith$Variables$Query$MediaActivityQuery<TRes> {
  _CopyWithStubImpl$Variables$Query$MediaActivityQuery(this._res);

  TRes _res;

  call({
    int? mediaId,
    int? page,
    bool? isFollowing,
  }) =>
      _res;
}

class Query$MediaActivityQuery {
  Query$MediaActivityQuery({
    this.Page,
    this.$__typename = 'Query',
  });

  factory Query$MediaActivityQuery.fromJson(Map<String, dynamic> json) {
    final l$Page = json['Page'];
    final l$$__typename = json['__typename'];
    return Query$MediaActivityQuery(
      Page: l$Page == null
          ? null
          : Query$MediaActivityQuery$Page.fromJson(
              (l$Page as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$MediaActivityQuery$Page? Page;

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
    if (!(other is Query$MediaActivityQuery) ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$MediaActivityQuery
    on Query$MediaActivityQuery {
  CopyWith$Query$MediaActivityQuery<Query$MediaActivityQuery> get copyWith =>
      CopyWith$Query$MediaActivityQuery(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$MediaActivityQuery<TRes> {
  factory CopyWith$Query$MediaActivityQuery(
    Query$MediaActivityQuery instance,
    TRes Function(Query$MediaActivityQuery) then,
  ) = _CopyWithImpl$Query$MediaActivityQuery;

  factory CopyWith$Query$MediaActivityQuery.stub(TRes res) =
      _CopyWithStubImpl$Query$MediaActivityQuery;

  TRes call({
    Query$MediaActivityQuery$Page? Page,
    String? $__typename,
  });
  CopyWith$Query$MediaActivityQuery$Page<TRes> get Page;
}

class _CopyWithImpl$Query$MediaActivityQuery<TRes>
    implements CopyWith$Query$MediaActivityQuery<TRes> {
  _CopyWithImpl$Query$MediaActivityQuery(
    this._instance,
    this._then,
  );

  final Query$MediaActivityQuery _instance;

  final TRes Function(Query$MediaActivityQuery) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? Page = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$MediaActivityQuery(
        Page: Page == _undefined
            ? _instance.Page
            : (Page as Query$MediaActivityQuery$Page?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$MediaActivityQuery$Page<TRes> get Page {
    final local$Page = _instance.Page;
    return local$Page == null
        ? CopyWith$Query$MediaActivityQuery$Page.stub(_then(_instance))
        : CopyWith$Query$MediaActivityQuery$Page(
            local$Page, (e) => call(Page: e));
  }
}

class _CopyWithStubImpl$Query$MediaActivityQuery<TRes>
    implements CopyWith$Query$MediaActivityQuery<TRes> {
  _CopyWithStubImpl$Query$MediaActivityQuery(this._res);

  TRes _res;

  call({
    Query$MediaActivityQuery$Page? Page,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$MediaActivityQuery$Page<TRes> get Page =>
      CopyWith$Query$MediaActivityQuery$Page.stub(_res);
}

const documentNodeQueryMediaActivityQuery = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'MediaActivityQuery'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'mediaId')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
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
          )
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
                name: NameNode(value: 'total'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'perPage'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'currentPage'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'lastPage'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
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
                name: NameNode(value: 'mediaId'),
                value: VariableNode(name: NameNode(value: 'mediaId')),
              ),
              ArgumentNode(
                name: NameNode(value: 'sort'),
                value: ListValueNode(
                    values: [EnumValueNode(name: NameNode(value: 'ID_DESC'))]),
              ),
              ArgumentNode(
                name: NameNode(value: 'isFollowing'),
                value: VariableNode(name: NameNode(value: 'isFollowing')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
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
  fragmentDefinitionListActivity,
]);
Query$MediaActivityQuery _parserFn$Query$MediaActivityQuery(
        Map<String, dynamic> data) =>
    Query$MediaActivityQuery.fromJson(data);
typedef OnQueryComplete$Query$MediaActivityQuery = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$MediaActivityQuery?,
);

class Options$Query$MediaActivityQuery
    extends graphql.QueryOptions<Query$MediaActivityQuery> {
  Options$Query$MediaActivityQuery({
    String? operationName,
    Variables$Query$MediaActivityQuery? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$MediaActivityQuery? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$MediaActivityQuery? onComplete,
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
                        : _parserFn$Query$MediaActivityQuery(data),
                  ),
          onError: onError,
          document: documentNodeQueryMediaActivityQuery,
          parserFn: _parserFn$Query$MediaActivityQuery,
        );

  final OnQueryComplete$Query$MediaActivityQuery? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$MediaActivityQuery
    extends graphql.WatchQueryOptions<Query$MediaActivityQuery> {
  WatchOptions$Query$MediaActivityQuery({
    String? operationName,
    Variables$Query$MediaActivityQuery? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$MediaActivityQuery? typedOptimisticResult,
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
          document: documentNodeQueryMediaActivityQuery,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$MediaActivityQuery,
        );
}

class FetchMoreOptions$Query$MediaActivityQuery
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$MediaActivityQuery({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$MediaActivityQuery? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryMediaActivityQuery,
        );
}

extension ClientExtension$Query$MediaActivityQuery on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$MediaActivityQuery>>
      query$MediaActivityQuery(
              [Options$Query$MediaActivityQuery? options]) async =>
          await this.query(options ?? Options$Query$MediaActivityQuery());
  graphql.ObservableQuery<Query$MediaActivityQuery>
      watchQuery$MediaActivityQuery(
              [WatchOptions$Query$MediaActivityQuery? options]) =>
          this.watchQuery(options ?? WatchOptions$Query$MediaActivityQuery());
  void writeQuery$MediaActivityQuery({
    required Query$MediaActivityQuery data,
    Variables$Query$MediaActivityQuery? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryMediaActivityQuery),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$MediaActivityQuery? readQuery$MediaActivityQuery({
    Variables$Query$MediaActivityQuery? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation:
            graphql.Operation(document: documentNodeQueryMediaActivityQuery),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$MediaActivityQuery.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$MediaActivityQuery>
    useQuery$MediaActivityQuery([Options$Query$MediaActivityQuery? options]) =>
        graphql_flutter.useQuery(options ?? Options$Query$MediaActivityQuery());
graphql.ObservableQuery<Query$MediaActivityQuery>
    useWatchQuery$MediaActivityQuery(
            [WatchOptions$Query$MediaActivityQuery? options]) =>
        graphql_flutter
            .useWatchQuery(options ?? WatchOptions$Query$MediaActivityQuery());

class Query$MediaActivityQuery$Widget
    extends graphql_flutter.Query<Query$MediaActivityQuery> {
  Query$MediaActivityQuery$Widget({
    widgets.Key? key,
    Options$Query$MediaActivityQuery? options,
    required graphql_flutter.QueryBuilder<Query$MediaActivityQuery> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$MediaActivityQuery(),
          builder: builder,
        );
}

class Query$MediaActivityQuery$Page {
  Query$MediaActivityQuery$Page({
    this.pageInfo,
    this.activities,
    this.$__typename = 'Page',
  });

  factory Query$MediaActivityQuery$Page.fromJson(Map<String, dynamic> json) {
    final l$pageInfo = json['pageInfo'];
    final l$activities = json['activities'];
    final l$$__typename = json['__typename'];
    return Query$MediaActivityQuery$Page(
      pageInfo: l$pageInfo == null
          ? null
          : Query$MediaActivityQuery$Page$pageInfo.fromJson(
              (l$pageInfo as Map<String, dynamic>)),
      activities: (l$activities as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$MediaActivityQuery$Page$activities.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$MediaActivityQuery$Page$pageInfo? pageInfo;

  final List<Query$MediaActivityQuery$Page$activities?>? activities;

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
    if (!(other is Query$MediaActivityQuery$Page) ||
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

extension UtilityExtension$Query$MediaActivityQuery$Page
    on Query$MediaActivityQuery$Page {
  CopyWith$Query$MediaActivityQuery$Page<Query$MediaActivityQuery$Page>
      get copyWith => CopyWith$Query$MediaActivityQuery$Page(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$MediaActivityQuery$Page<TRes> {
  factory CopyWith$Query$MediaActivityQuery$Page(
    Query$MediaActivityQuery$Page instance,
    TRes Function(Query$MediaActivityQuery$Page) then,
  ) = _CopyWithImpl$Query$MediaActivityQuery$Page;

  factory CopyWith$Query$MediaActivityQuery$Page.stub(TRes res) =
      _CopyWithStubImpl$Query$MediaActivityQuery$Page;

  TRes call({
    Query$MediaActivityQuery$Page$pageInfo? pageInfo,
    List<Query$MediaActivityQuery$Page$activities?>? activities,
    String? $__typename,
  });
  CopyWith$Query$MediaActivityQuery$Page$pageInfo<TRes> get pageInfo;
  TRes activities(
      Iterable<Query$MediaActivityQuery$Page$activities?>? Function(
              Iterable<
                  CopyWith$Query$MediaActivityQuery$Page$activities<
                      Query$MediaActivityQuery$Page$activities>?>?)
          _fn);
}

class _CopyWithImpl$Query$MediaActivityQuery$Page<TRes>
    implements CopyWith$Query$MediaActivityQuery$Page<TRes> {
  _CopyWithImpl$Query$MediaActivityQuery$Page(
    this._instance,
    this._then,
  );

  final Query$MediaActivityQuery$Page _instance;

  final TRes Function(Query$MediaActivityQuery$Page) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pageInfo = _undefined,
    Object? activities = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$MediaActivityQuery$Page(
        pageInfo: pageInfo == _undefined
            ? _instance.pageInfo
            : (pageInfo as Query$MediaActivityQuery$Page$pageInfo?),
        activities: activities == _undefined
            ? _instance.activities
            : (activities as List<Query$MediaActivityQuery$Page$activities?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$MediaActivityQuery$Page$pageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return local$pageInfo == null
        ? CopyWith$Query$MediaActivityQuery$Page$pageInfo.stub(_then(_instance))
        : CopyWith$Query$MediaActivityQuery$Page$pageInfo(
            local$pageInfo, (e) => call(pageInfo: e));
  }

  TRes activities(
          Iterable<Query$MediaActivityQuery$Page$activities?>? Function(
                  Iterable<
                      CopyWith$Query$MediaActivityQuery$Page$activities<
                          Query$MediaActivityQuery$Page$activities>?>?)
              _fn) =>
      call(
          activities: _fn(_instance.activities?.map((e) => e == null
              ? null
              : CopyWith$Query$MediaActivityQuery$Page$activities(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$MediaActivityQuery$Page<TRes>
    implements CopyWith$Query$MediaActivityQuery$Page<TRes> {
  _CopyWithStubImpl$Query$MediaActivityQuery$Page(this._res);

  TRes _res;

  call({
    Query$MediaActivityQuery$Page$pageInfo? pageInfo,
    List<Query$MediaActivityQuery$Page$activities?>? activities,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$MediaActivityQuery$Page$pageInfo<TRes> get pageInfo =>
      CopyWith$Query$MediaActivityQuery$Page$pageInfo.stub(_res);

  activities(_fn) => _res;
}

class Query$MediaActivityQuery$Page$pageInfo {
  Query$MediaActivityQuery$Page$pageInfo({
    this.total,
    this.perPage,
    this.currentPage,
    this.lastPage,
    this.hasNextPage,
    this.$__typename = 'PageInfo',
  });

  factory Query$MediaActivityQuery$Page$pageInfo.fromJson(
      Map<String, dynamic> json) {
    final l$total = json['total'];
    final l$perPage = json['perPage'];
    final l$currentPage = json['currentPage'];
    final l$lastPage = json['lastPage'];
    final l$hasNextPage = json['hasNextPage'];
    final l$$__typename = json['__typename'];
    return Query$MediaActivityQuery$Page$pageInfo(
      total: (l$total as int?),
      perPage: (l$perPage as int?),
      currentPage: (l$currentPage as int?),
      lastPage: (l$lastPage as int?),
      hasNextPage: (l$hasNextPage as bool?),
      $__typename: (l$$__typename as String),
    );
  }

  final int? total;

  final int? perPage;

  final int? currentPage;

  final int? lastPage;

  final bool? hasNextPage;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$total = total;
    _resultData['total'] = l$total;
    final l$perPage = perPage;
    _resultData['perPage'] = l$perPage;
    final l$currentPage = currentPage;
    _resultData['currentPage'] = l$currentPage;
    final l$lastPage = lastPage;
    _resultData['lastPage'] = l$lastPage;
    final l$hasNextPage = hasNextPage;
    _resultData['hasNextPage'] = l$hasNextPage;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$total = total;
    final l$perPage = perPage;
    final l$currentPage = currentPage;
    final l$lastPage = lastPage;
    final l$hasNextPage = hasNextPage;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$total,
      l$perPage,
      l$currentPage,
      l$lastPage,
      l$hasNextPage,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$MediaActivityQuery$Page$pageInfo) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$total = total;
    final lOther$total = other.total;
    if (l$total != lOther$total) {
      return false;
    }
    final l$perPage = perPage;
    final lOther$perPage = other.perPage;
    if (l$perPage != lOther$perPage) {
      return false;
    }
    final l$currentPage = currentPage;
    final lOther$currentPage = other.currentPage;
    if (l$currentPage != lOther$currentPage) {
      return false;
    }
    final l$lastPage = lastPage;
    final lOther$lastPage = other.lastPage;
    if (l$lastPage != lOther$lastPage) {
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

extension UtilityExtension$Query$MediaActivityQuery$Page$pageInfo
    on Query$MediaActivityQuery$Page$pageInfo {
  CopyWith$Query$MediaActivityQuery$Page$pageInfo<
          Query$MediaActivityQuery$Page$pageInfo>
      get copyWith => CopyWith$Query$MediaActivityQuery$Page$pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$MediaActivityQuery$Page$pageInfo<TRes> {
  factory CopyWith$Query$MediaActivityQuery$Page$pageInfo(
    Query$MediaActivityQuery$Page$pageInfo instance,
    TRes Function(Query$MediaActivityQuery$Page$pageInfo) then,
  ) = _CopyWithImpl$Query$MediaActivityQuery$Page$pageInfo;

  factory CopyWith$Query$MediaActivityQuery$Page$pageInfo.stub(TRes res) =
      _CopyWithStubImpl$Query$MediaActivityQuery$Page$pageInfo;

  TRes call({
    int? total,
    int? perPage,
    int? currentPage,
    int? lastPage,
    bool? hasNextPage,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$MediaActivityQuery$Page$pageInfo<TRes>
    implements CopyWith$Query$MediaActivityQuery$Page$pageInfo<TRes> {
  _CopyWithImpl$Query$MediaActivityQuery$Page$pageInfo(
    this._instance,
    this._then,
  );

  final Query$MediaActivityQuery$Page$pageInfo _instance;

  final TRes Function(Query$MediaActivityQuery$Page$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? total = _undefined,
    Object? perPage = _undefined,
    Object? currentPage = _undefined,
    Object? lastPage = _undefined,
    Object? hasNextPage = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$MediaActivityQuery$Page$pageInfo(
        total: total == _undefined ? _instance.total : (total as int?),
        perPage: perPage == _undefined ? _instance.perPage : (perPage as int?),
        currentPage: currentPage == _undefined
            ? _instance.currentPage
            : (currentPage as int?),
        lastPage:
            lastPage == _undefined ? _instance.lastPage : (lastPage as int?),
        hasNextPage: hasNextPage == _undefined
            ? _instance.hasNextPage
            : (hasNextPage as bool?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$MediaActivityQuery$Page$pageInfo<TRes>
    implements CopyWith$Query$MediaActivityQuery$Page$pageInfo<TRes> {
  _CopyWithStubImpl$Query$MediaActivityQuery$Page$pageInfo(this._res);

  TRes _res;

  call({
    int? total,
    int? perPage,
    int? currentPage,
    int? lastPage,
    bool? hasNextPage,
    String? $__typename,
  }) =>
      _res;
}

class Query$MediaActivityQuery$Page$activities {
  Query$MediaActivityQuery$Page$activities({required this.$__typename});

  factory Query$MediaActivityQuery$Page$activities.fromJson(
      Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "ListActivity":
        return Query$MediaActivityQuery$Page$activities$$ListActivity.fromJson(
            json);

      case "MessageActivity":
        return Query$MediaActivityQuery$Page$activities$$MessageActivity
            .fromJson(json);

      case "TextActivity":
        return Query$MediaActivityQuery$Page$activities$$TextActivity.fromJson(
            json);

      default:
        final l$$__typename = json['__typename'];
        return Query$MediaActivityQuery$Page$activities(
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
    if (!(other is Query$MediaActivityQuery$Page$activities) ||
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

extension UtilityExtension$Query$MediaActivityQuery$Page$activities
    on Query$MediaActivityQuery$Page$activities {
  CopyWith$Query$MediaActivityQuery$Page$activities<
          Query$MediaActivityQuery$Page$activities>
      get copyWith => CopyWith$Query$MediaActivityQuery$Page$activities(
            this,
            (i) => i,
          );
  _T when<_T>({
    required _T Function(Query$MediaActivityQuery$Page$activities$$ListActivity)
        listActivity,
    required _T Function(
            Query$MediaActivityQuery$Page$activities$$MessageActivity)
        messageActivity,
    required _T Function(Query$MediaActivityQuery$Page$activities$$TextActivity)
        textActivity,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "ListActivity":
        return listActivity(
            this as Query$MediaActivityQuery$Page$activities$$ListActivity);

      case "MessageActivity":
        return messageActivity(
            this as Query$MediaActivityQuery$Page$activities$$MessageActivity);

      case "TextActivity":
        return textActivity(
            this as Query$MediaActivityQuery$Page$activities$$TextActivity);

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(Query$MediaActivityQuery$Page$activities$$ListActivity)?
        listActivity,
    _T Function(Query$MediaActivityQuery$Page$activities$$MessageActivity)?
        messageActivity,
    _T Function(Query$MediaActivityQuery$Page$activities$$TextActivity)?
        textActivity,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "ListActivity":
        if (listActivity != null) {
          return listActivity(
              this as Query$MediaActivityQuery$Page$activities$$ListActivity);
        } else {
          return orElse();
        }

      case "MessageActivity":
        if (messageActivity != null) {
          return messageActivity(this
              as Query$MediaActivityQuery$Page$activities$$MessageActivity);
        } else {
          return orElse();
        }

      case "TextActivity":
        if (textActivity != null) {
          return textActivity(
              this as Query$MediaActivityQuery$Page$activities$$TextActivity);
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWith$Query$MediaActivityQuery$Page$activities<TRes> {
  factory CopyWith$Query$MediaActivityQuery$Page$activities(
    Query$MediaActivityQuery$Page$activities instance,
    TRes Function(Query$MediaActivityQuery$Page$activities) then,
  ) = _CopyWithImpl$Query$MediaActivityQuery$Page$activities;

  factory CopyWith$Query$MediaActivityQuery$Page$activities.stub(TRes res) =
      _CopyWithStubImpl$Query$MediaActivityQuery$Page$activities;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Query$MediaActivityQuery$Page$activities<TRes>
    implements CopyWith$Query$MediaActivityQuery$Page$activities<TRes> {
  _CopyWithImpl$Query$MediaActivityQuery$Page$activities(
    this._instance,
    this._then,
  );

  final Query$MediaActivityQuery$Page$activities _instance;

  final TRes Function(Query$MediaActivityQuery$Page$activities) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) =>
      _then(Query$MediaActivityQuery$Page$activities(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$MediaActivityQuery$Page$activities<TRes>
    implements CopyWith$Query$MediaActivityQuery$Page$activities<TRes> {
  _CopyWithStubImpl$Query$MediaActivityQuery$Page$activities(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Query$MediaActivityQuery$Page$activities$$ListActivity
    implements Fragment$ListActivity, Query$MediaActivityQuery$Page$activities {
  Query$MediaActivityQuery$Page$activities$$ListActivity({
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

  factory Query$MediaActivityQuery$Page$activities$$ListActivity.fromJson(
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
    return Query$MediaActivityQuery$Page$activities$$ListActivity(
      id: (l$id as int),
      user: l$user == null
          ? null
          : Fragment$ListActivity$user.fromJson(
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
          : Fragment$ListActivity$media.fromJson(
              (l$media as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final Fragment$ListActivity$user? user;

  final int likeCount;

  final int replyCount;

  final int createdAt;

  final bool? isLiked;

  final bool? isSubscribed;

  final String? siteUrl;

  final String? progress;

  final String? status;

  final Fragment$ListActivity$media? media;

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
    if (!(other is Query$MediaActivityQuery$Page$activities$$ListActivity) ||
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

extension UtilityExtension$Query$MediaActivityQuery$Page$activities$$ListActivity
    on Query$MediaActivityQuery$Page$activities$$ListActivity {
  CopyWith$Query$MediaActivityQuery$Page$activities$$ListActivity<
          Query$MediaActivityQuery$Page$activities$$ListActivity>
      get copyWith =>
          CopyWith$Query$MediaActivityQuery$Page$activities$$ListActivity(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$MediaActivityQuery$Page$activities$$ListActivity<
    TRes> {
  factory CopyWith$Query$MediaActivityQuery$Page$activities$$ListActivity(
    Query$MediaActivityQuery$Page$activities$$ListActivity instance,
    TRes Function(Query$MediaActivityQuery$Page$activities$$ListActivity) then,
  ) = _CopyWithImpl$Query$MediaActivityQuery$Page$activities$$ListActivity;

  factory CopyWith$Query$MediaActivityQuery$Page$activities$$ListActivity.stub(
          TRes res) =
      _CopyWithStubImpl$Query$MediaActivityQuery$Page$activities$$ListActivity;

  TRes call({
    int? id,
    Fragment$ListActivity$user? user,
    int? likeCount,
    int? replyCount,
    int? createdAt,
    bool? isLiked,
    bool? isSubscribed,
    String? siteUrl,
    String? progress,
    String? status,
    Fragment$ListActivity$media? media,
    String? $__typename,
  });
  CopyWith$Fragment$ListActivity$user<TRes> get user;
  CopyWith$Fragment$ListActivity$media<TRes> get media;
}

class _CopyWithImpl$Query$MediaActivityQuery$Page$activities$$ListActivity<TRes>
    implements
        CopyWith$Query$MediaActivityQuery$Page$activities$$ListActivity<TRes> {
  _CopyWithImpl$Query$MediaActivityQuery$Page$activities$$ListActivity(
    this._instance,
    this._then,
  );

  final Query$MediaActivityQuery$Page$activities$$ListActivity _instance;

  final TRes Function(Query$MediaActivityQuery$Page$activities$$ListActivity)
      _then;

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
      _then(Query$MediaActivityQuery$Page$activities$$ListActivity(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        user: user == _undefined
            ? _instance.user
            : (user as Fragment$ListActivity$user?),
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
            : (media as Fragment$ListActivity$media?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$ListActivity$user<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith$Fragment$ListActivity$user.stub(_then(_instance))
        : CopyWith$Fragment$ListActivity$user(local$user, (e) => call(user: e));
  }

  CopyWith$Fragment$ListActivity$media<TRes> get media {
    final local$media = _instance.media;
    return local$media == null
        ? CopyWith$Fragment$ListActivity$media.stub(_then(_instance))
        : CopyWith$Fragment$ListActivity$media(
            local$media, (e) => call(media: e));
  }
}

class _CopyWithStubImpl$Query$MediaActivityQuery$Page$activities$$ListActivity<
        TRes>
    implements
        CopyWith$Query$MediaActivityQuery$Page$activities$$ListActivity<TRes> {
  _CopyWithStubImpl$Query$MediaActivityQuery$Page$activities$$ListActivity(
      this._res);

  TRes _res;

  call({
    int? id,
    Fragment$ListActivity$user? user,
    int? likeCount,
    int? replyCount,
    int? createdAt,
    bool? isLiked,
    bool? isSubscribed,
    String? siteUrl,
    String? progress,
    String? status,
    Fragment$ListActivity$media? media,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$ListActivity$user<TRes> get user =>
      CopyWith$Fragment$ListActivity$user.stub(_res);

  CopyWith$Fragment$ListActivity$media<TRes> get media =>
      CopyWith$Fragment$ListActivity$media.stub(_res);
}

class Query$MediaActivityQuery$Page$activities$$MessageActivity
    implements Query$MediaActivityQuery$Page$activities {
  Query$MediaActivityQuery$Page$activities$$MessageActivity(
      {this.$__typename = 'MessageActivity'});

  factory Query$MediaActivityQuery$Page$activities$$MessageActivity.fromJson(
      Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    return Query$MediaActivityQuery$Page$activities$$MessageActivity(
        $__typename: (l$$__typename as String));
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
    if (!(other is Query$MediaActivityQuery$Page$activities$$MessageActivity) ||
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

extension UtilityExtension$Query$MediaActivityQuery$Page$activities$$MessageActivity
    on Query$MediaActivityQuery$Page$activities$$MessageActivity {
  CopyWith$Query$MediaActivityQuery$Page$activities$$MessageActivity<
          Query$MediaActivityQuery$Page$activities$$MessageActivity>
      get copyWith =>
          CopyWith$Query$MediaActivityQuery$Page$activities$$MessageActivity(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$MediaActivityQuery$Page$activities$$MessageActivity<
    TRes> {
  factory CopyWith$Query$MediaActivityQuery$Page$activities$$MessageActivity(
    Query$MediaActivityQuery$Page$activities$$MessageActivity instance,
    TRes Function(Query$MediaActivityQuery$Page$activities$$MessageActivity)
        then,
  ) = _CopyWithImpl$Query$MediaActivityQuery$Page$activities$$MessageActivity;

  factory CopyWith$Query$MediaActivityQuery$Page$activities$$MessageActivity.stub(
          TRes res) =
      _CopyWithStubImpl$Query$MediaActivityQuery$Page$activities$$MessageActivity;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Query$MediaActivityQuery$Page$activities$$MessageActivity<
        TRes>
    implements
        CopyWith$Query$MediaActivityQuery$Page$activities$$MessageActivity<
            TRes> {
  _CopyWithImpl$Query$MediaActivityQuery$Page$activities$$MessageActivity(
    this._instance,
    this._then,
  );

  final Query$MediaActivityQuery$Page$activities$$MessageActivity _instance;

  final TRes Function(Query$MediaActivityQuery$Page$activities$$MessageActivity)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) =>
      _then(Query$MediaActivityQuery$Page$activities$$MessageActivity(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$MediaActivityQuery$Page$activities$$MessageActivity<
        TRes>
    implements
        CopyWith$Query$MediaActivityQuery$Page$activities$$MessageActivity<
            TRes> {
  _CopyWithStubImpl$Query$MediaActivityQuery$Page$activities$$MessageActivity(
      this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Query$MediaActivityQuery$Page$activities$$TextActivity
    implements Query$MediaActivityQuery$Page$activities {
  Query$MediaActivityQuery$Page$activities$$TextActivity(
      {this.$__typename = 'TextActivity'});

  factory Query$MediaActivityQuery$Page$activities$$TextActivity.fromJson(
      Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    return Query$MediaActivityQuery$Page$activities$$TextActivity(
        $__typename: (l$$__typename as String));
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
    if (!(other is Query$MediaActivityQuery$Page$activities$$TextActivity) ||
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

extension UtilityExtension$Query$MediaActivityQuery$Page$activities$$TextActivity
    on Query$MediaActivityQuery$Page$activities$$TextActivity {
  CopyWith$Query$MediaActivityQuery$Page$activities$$TextActivity<
          Query$MediaActivityQuery$Page$activities$$TextActivity>
      get copyWith =>
          CopyWith$Query$MediaActivityQuery$Page$activities$$TextActivity(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$MediaActivityQuery$Page$activities$$TextActivity<
    TRes> {
  factory CopyWith$Query$MediaActivityQuery$Page$activities$$TextActivity(
    Query$MediaActivityQuery$Page$activities$$TextActivity instance,
    TRes Function(Query$MediaActivityQuery$Page$activities$$TextActivity) then,
  ) = _CopyWithImpl$Query$MediaActivityQuery$Page$activities$$TextActivity;

  factory CopyWith$Query$MediaActivityQuery$Page$activities$$TextActivity.stub(
          TRes res) =
      _CopyWithStubImpl$Query$MediaActivityQuery$Page$activities$$TextActivity;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Query$MediaActivityQuery$Page$activities$$TextActivity<TRes>
    implements
        CopyWith$Query$MediaActivityQuery$Page$activities$$TextActivity<TRes> {
  _CopyWithImpl$Query$MediaActivityQuery$Page$activities$$TextActivity(
    this._instance,
    this._then,
  );

  final Query$MediaActivityQuery$Page$activities$$TextActivity _instance;

  final TRes Function(Query$MediaActivityQuery$Page$activities$$TextActivity)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) =>
      _then(Query$MediaActivityQuery$Page$activities$$TextActivity(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$MediaActivityQuery$Page$activities$$TextActivity<
        TRes>
    implements
        CopyWith$Query$MediaActivityQuery$Page$activities$$TextActivity<TRes> {
  _CopyWithStubImpl$Query$MediaActivityQuery$Page$activities$$TextActivity(
      this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}
