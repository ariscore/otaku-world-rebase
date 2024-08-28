// GENERATED FILE
// DO NOT MODIFY
// ignore_for_file: type=lint
import '../fragments.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$GetActivityReplies {
  factory Variables$Query$GetActivityReplies({
    int? page,
    int? activityId,
  }) =>
      Variables$Query$GetActivityReplies._({
        if (page != null) r'page': page,
        if (activityId != null) r'activityId': activityId,
      });

  Variables$Query$GetActivityReplies._(this._$data);

  factory Variables$Query$GetActivityReplies.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('page')) {
      final l$page = data['page'];
      result$data['page'] = (l$page as int?);
    }
    if (data.containsKey('activityId')) {
      final l$activityId = data['activityId'];
      result$data['activityId'] = (l$activityId as int?);
    }
    return Variables$Query$GetActivityReplies._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get page => (_$data['page'] as int?);

  int? get activityId => (_$data['activityId'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('page')) {
      final l$page = page;
      result$data['page'] = l$page;
    }
    if (_$data.containsKey('activityId')) {
      final l$activityId = activityId;
      result$data['activityId'] = l$activityId;
    }
    return result$data;
  }

  CopyWith$Variables$Query$GetActivityReplies<
          Variables$Query$GetActivityReplies>
      get copyWith => CopyWith$Variables$Query$GetActivityReplies(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GetActivityReplies) ||
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
    final l$activityId = activityId;
    final lOther$activityId = other.activityId;
    if (_$data.containsKey('activityId') !=
        other._$data.containsKey('activityId')) {
      return false;
    }
    if (l$activityId != lOther$activityId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$page = page;
    final l$activityId = activityId;
    return Object.hashAll([
      _$data.containsKey('page') ? l$page : const {},
      _$data.containsKey('activityId') ? l$activityId : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$GetActivityReplies<TRes> {
  factory CopyWith$Variables$Query$GetActivityReplies(
    Variables$Query$GetActivityReplies instance,
    TRes Function(Variables$Query$GetActivityReplies) then,
  ) = _CopyWithImpl$Variables$Query$GetActivityReplies;

  factory CopyWith$Variables$Query$GetActivityReplies.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetActivityReplies;

  TRes call({
    int? page,
    int? activityId,
  });
}

class _CopyWithImpl$Variables$Query$GetActivityReplies<TRes>
    implements CopyWith$Variables$Query$GetActivityReplies<TRes> {
  _CopyWithImpl$Variables$Query$GetActivityReplies(
    this._instance,
    this._then,
  );

  final Variables$Query$GetActivityReplies _instance;

  final TRes Function(Variables$Query$GetActivityReplies) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? page = _undefined,
    Object? activityId = _undefined,
  }) =>
      _then(Variables$Query$GetActivityReplies._({
        ..._instance._$data,
        if (page != _undefined) 'page': (page as int?),
        if (activityId != _undefined) 'activityId': (activityId as int?),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetActivityReplies<TRes>
    implements CopyWith$Variables$Query$GetActivityReplies<TRes> {
  _CopyWithStubImpl$Variables$Query$GetActivityReplies(this._res);

  TRes _res;

  call({
    int? page,
    int? activityId,
  }) =>
      _res;
}

class Query$GetActivityReplies {
  Query$GetActivityReplies({
    this.Page,
    this.$__typename = 'Query',
  });

  factory Query$GetActivityReplies.fromJson(Map<String, dynamic> json) {
    final l$Page = json['Page'];
    final l$$__typename = json['__typename'];
    return Query$GetActivityReplies(
      Page: l$Page == null
          ? null
          : Query$GetActivityReplies$Page.fromJson(
              (l$Page as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetActivityReplies$Page? Page;

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
    if (!(other is Query$GetActivityReplies) ||
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

extension UtilityExtension$Query$GetActivityReplies
    on Query$GetActivityReplies {
  CopyWith$Query$GetActivityReplies<Query$GetActivityReplies> get copyWith =>
      CopyWith$Query$GetActivityReplies(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetActivityReplies<TRes> {
  factory CopyWith$Query$GetActivityReplies(
    Query$GetActivityReplies instance,
    TRes Function(Query$GetActivityReplies) then,
  ) = _CopyWithImpl$Query$GetActivityReplies;

  factory CopyWith$Query$GetActivityReplies.stub(TRes res) =
      _CopyWithStubImpl$Query$GetActivityReplies;

  TRes call({
    Query$GetActivityReplies$Page? Page,
    String? $__typename,
  });
  CopyWith$Query$GetActivityReplies$Page<TRes> get Page;
}

class _CopyWithImpl$Query$GetActivityReplies<TRes>
    implements CopyWith$Query$GetActivityReplies<TRes> {
  _CopyWithImpl$Query$GetActivityReplies(
    this._instance,
    this._then,
  );

  final Query$GetActivityReplies _instance;

  final TRes Function(Query$GetActivityReplies) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? Page = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetActivityReplies(
        Page: Page == _undefined
            ? _instance.Page
            : (Page as Query$GetActivityReplies$Page?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetActivityReplies$Page<TRes> get Page {
    final local$Page = _instance.Page;
    return local$Page == null
        ? CopyWith$Query$GetActivityReplies$Page.stub(_then(_instance))
        : CopyWith$Query$GetActivityReplies$Page(
            local$Page, (e) => call(Page: e));
  }
}

class _CopyWithStubImpl$Query$GetActivityReplies<TRes>
    implements CopyWith$Query$GetActivityReplies<TRes> {
  _CopyWithStubImpl$Query$GetActivityReplies(this._res);

  TRes _res;

  call({
    Query$GetActivityReplies$Page? Page,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetActivityReplies$Page<TRes> get Page =>
      CopyWith$Query$GetActivityReplies$Page.stub(_res);
}

const documentNodeQueryGetActivityReplies = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetActivityReplies'),
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
        variable: VariableNode(name: NameNode(value: 'activityId')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
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
            name: NameNode(value: 'activityReplies'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'activityId'),
                value: VariableNode(name: NameNode(value: 'activityId')),
              )
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                name: NameNode(value: 'ActivityReply'),
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
  fragmentDefinitionActivityReply,
]);
Query$GetActivityReplies _parserFn$Query$GetActivityReplies(
        Map<String, dynamic> data) =>
    Query$GetActivityReplies.fromJson(data);
typedef OnQueryComplete$Query$GetActivityReplies = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$GetActivityReplies?,
);

class Options$Query$GetActivityReplies
    extends graphql.QueryOptions<Query$GetActivityReplies> {
  Options$Query$GetActivityReplies({
    String? operationName,
    Variables$Query$GetActivityReplies? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetActivityReplies? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$GetActivityReplies? onComplete,
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
                        : _parserFn$Query$GetActivityReplies(data),
                  ),
          onError: onError,
          document: documentNodeQueryGetActivityReplies,
          parserFn: _parserFn$Query$GetActivityReplies,
        );

  final OnQueryComplete$Query$GetActivityReplies? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$GetActivityReplies
    extends graphql.WatchQueryOptions<Query$GetActivityReplies> {
  WatchOptions$Query$GetActivityReplies({
    String? operationName,
    Variables$Query$GetActivityReplies? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetActivityReplies? typedOptimisticResult,
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
          document: documentNodeQueryGetActivityReplies,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetActivityReplies,
        );
}

class FetchMoreOptions$Query$GetActivityReplies
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetActivityReplies({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$GetActivityReplies? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryGetActivityReplies,
        );
}

extension ClientExtension$Query$GetActivityReplies on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetActivityReplies>>
      query$GetActivityReplies(
              [Options$Query$GetActivityReplies? options]) async =>
          await this.query(options ?? Options$Query$GetActivityReplies());
  graphql.ObservableQuery<Query$GetActivityReplies>
      watchQuery$GetActivityReplies(
              [WatchOptions$Query$GetActivityReplies? options]) =>
          this.watchQuery(options ?? WatchOptions$Query$GetActivityReplies());
  void writeQuery$GetActivityReplies({
    required Query$GetActivityReplies data,
    Variables$Query$GetActivityReplies? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryGetActivityReplies),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetActivityReplies? readQuery$GetActivityReplies({
    Variables$Query$GetActivityReplies? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation:
            graphql.Operation(document: documentNodeQueryGetActivityReplies),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$GetActivityReplies.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$GetActivityReplies>
    useQuery$GetActivityReplies([Options$Query$GetActivityReplies? options]) =>
        graphql_flutter.useQuery(options ?? Options$Query$GetActivityReplies());
graphql.ObservableQuery<Query$GetActivityReplies>
    useWatchQuery$GetActivityReplies(
            [WatchOptions$Query$GetActivityReplies? options]) =>
        graphql_flutter
            .useWatchQuery(options ?? WatchOptions$Query$GetActivityReplies());

class Query$GetActivityReplies$Widget
    extends graphql_flutter.Query<Query$GetActivityReplies> {
  Query$GetActivityReplies$Widget({
    widgets.Key? key,
    Options$Query$GetActivityReplies? options,
    required graphql_flutter.QueryBuilder<Query$GetActivityReplies> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$GetActivityReplies(),
          builder: builder,
        );
}

class Query$GetActivityReplies$Page {
  Query$GetActivityReplies$Page({
    this.pageInfo,
    this.activityReplies,
    this.$__typename = 'Page',
  });

  factory Query$GetActivityReplies$Page.fromJson(Map<String, dynamic> json) {
    final l$pageInfo = json['pageInfo'];
    final l$activityReplies = json['activityReplies'];
    final l$$__typename = json['__typename'];
    return Query$GetActivityReplies$Page(
      pageInfo: l$pageInfo == null
          ? null
          : Query$GetActivityReplies$Page$pageInfo.fromJson(
              (l$pageInfo as Map<String, dynamic>)),
      activityReplies: (l$activityReplies as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$ActivityReply.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetActivityReplies$Page$pageInfo? pageInfo;

  final List<Fragment$ActivityReply?>? activityReplies;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$pageInfo = pageInfo;
    _resultData['pageInfo'] = l$pageInfo?.toJson();
    final l$activityReplies = activityReplies;
    _resultData['activityReplies'] =
        l$activityReplies?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$pageInfo = pageInfo;
    final l$activityReplies = activityReplies;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$pageInfo,
      l$activityReplies == null
          ? null
          : Object.hashAll(l$activityReplies.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetActivityReplies$Page) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$pageInfo = pageInfo;
    final lOther$pageInfo = other.pageInfo;
    if (l$pageInfo != lOther$pageInfo) {
      return false;
    }
    final l$activityReplies = activityReplies;
    final lOther$activityReplies = other.activityReplies;
    if (l$activityReplies != null && lOther$activityReplies != null) {
      if (l$activityReplies.length != lOther$activityReplies.length) {
        return false;
      }
      for (int i = 0; i < l$activityReplies.length; i++) {
        final l$activityReplies$entry = l$activityReplies[i];
        final lOther$activityReplies$entry = lOther$activityReplies[i];
        if (l$activityReplies$entry != lOther$activityReplies$entry) {
          return false;
        }
      }
    } else if (l$activityReplies != lOther$activityReplies) {
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

extension UtilityExtension$Query$GetActivityReplies$Page
    on Query$GetActivityReplies$Page {
  CopyWith$Query$GetActivityReplies$Page<Query$GetActivityReplies$Page>
      get copyWith => CopyWith$Query$GetActivityReplies$Page(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetActivityReplies$Page<TRes> {
  factory CopyWith$Query$GetActivityReplies$Page(
    Query$GetActivityReplies$Page instance,
    TRes Function(Query$GetActivityReplies$Page) then,
  ) = _CopyWithImpl$Query$GetActivityReplies$Page;

  factory CopyWith$Query$GetActivityReplies$Page.stub(TRes res) =
      _CopyWithStubImpl$Query$GetActivityReplies$Page;

  TRes call({
    Query$GetActivityReplies$Page$pageInfo? pageInfo,
    List<Fragment$ActivityReply?>? activityReplies,
    String? $__typename,
  });
  CopyWith$Query$GetActivityReplies$Page$pageInfo<TRes> get pageInfo;
  TRes activityReplies(
      Iterable<Fragment$ActivityReply?>? Function(
              Iterable<
                  CopyWith$Fragment$ActivityReply<Fragment$ActivityReply>?>?)
          _fn);
}

class _CopyWithImpl$Query$GetActivityReplies$Page<TRes>
    implements CopyWith$Query$GetActivityReplies$Page<TRes> {
  _CopyWithImpl$Query$GetActivityReplies$Page(
    this._instance,
    this._then,
  );

  final Query$GetActivityReplies$Page _instance;

  final TRes Function(Query$GetActivityReplies$Page) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pageInfo = _undefined,
    Object? activityReplies = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetActivityReplies$Page(
        pageInfo: pageInfo == _undefined
            ? _instance.pageInfo
            : (pageInfo as Query$GetActivityReplies$Page$pageInfo?),
        activityReplies: activityReplies == _undefined
            ? _instance.activityReplies
            : (activityReplies as List<Fragment$ActivityReply?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetActivityReplies$Page$pageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return local$pageInfo == null
        ? CopyWith$Query$GetActivityReplies$Page$pageInfo.stub(_then(_instance))
        : CopyWith$Query$GetActivityReplies$Page$pageInfo(
            local$pageInfo, (e) => call(pageInfo: e));
  }

  TRes activityReplies(
          Iterable<Fragment$ActivityReply?>? Function(
                  Iterable<
                      CopyWith$Fragment$ActivityReply<
                          Fragment$ActivityReply>?>?)
              _fn) =>
      call(
          activityReplies: _fn(_instance.activityReplies?.map((e) => e == null
              ? null
              : CopyWith$Fragment$ActivityReply(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$GetActivityReplies$Page<TRes>
    implements CopyWith$Query$GetActivityReplies$Page<TRes> {
  _CopyWithStubImpl$Query$GetActivityReplies$Page(this._res);

  TRes _res;

  call({
    Query$GetActivityReplies$Page$pageInfo? pageInfo,
    List<Fragment$ActivityReply?>? activityReplies,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetActivityReplies$Page$pageInfo<TRes> get pageInfo =>
      CopyWith$Query$GetActivityReplies$Page$pageInfo.stub(_res);

  activityReplies(_fn) => _res;
}

class Query$GetActivityReplies$Page$pageInfo {
  Query$GetActivityReplies$Page$pageInfo({
    this.hasNextPage,
    this.$__typename = 'PageInfo',
  });

  factory Query$GetActivityReplies$Page$pageInfo.fromJson(
      Map<String, dynamic> json) {
    final l$hasNextPage = json['hasNextPage'];
    final l$$__typename = json['__typename'];
    return Query$GetActivityReplies$Page$pageInfo(
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
    if (!(other is Query$GetActivityReplies$Page$pageInfo) ||
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

extension UtilityExtension$Query$GetActivityReplies$Page$pageInfo
    on Query$GetActivityReplies$Page$pageInfo {
  CopyWith$Query$GetActivityReplies$Page$pageInfo<
          Query$GetActivityReplies$Page$pageInfo>
      get copyWith => CopyWith$Query$GetActivityReplies$Page$pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetActivityReplies$Page$pageInfo<TRes> {
  factory CopyWith$Query$GetActivityReplies$Page$pageInfo(
    Query$GetActivityReplies$Page$pageInfo instance,
    TRes Function(Query$GetActivityReplies$Page$pageInfo) then,
  ) = _CopyWithImpl$Query$GetActivityReplies$Page$pageInfo;

  factory CopyWith$Query$GetActivityReplies$Page$pageInfo.stub(TRes res) =
      _CopyWithStubImpl$Query$GetActivityReplies$Page$pageInfo;

  TRes call({
    bool? hasNextPage,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetActivityReplies$Page$pageInfo<TRes>
    implements CopyWith$Query$GetActivityReplies$Page$pageInfo<TRes> {
  _CopyWithImpl$Query$GetActivityReplies$Page$pageInfo(
    this._instance,
    this._then,
  );

  final Query$GetActivityReplies$Page$pageInfo _instance;

  final TRes Function(Query$GetActivityReplies$Page$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasNextPage = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetActivityReplies$Page$pageInfo(
        hasNextPage: hasNextPage == _undefined
            ? _instance.hasNextPage
            : (hasNextPage as bool?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetActivityReplies$Page$pageInfo<TRes>
    implements CopyWith$Query$GetActivityReplies$Page$pageInfo<TRes> {
  _CopyWithStubImpl$Query$GetActivityReplies$Page$pageInfo(this._res);

  TRes _res;

  call({
    bool? hasNextPage,
    String? $__typename,
  }) =>
      _res;
}
