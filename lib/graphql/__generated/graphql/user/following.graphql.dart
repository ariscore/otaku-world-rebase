// GENERATED FILE
// DO NOT MODIFY
// ignore_for_file: type=lint
import '../fragments.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$Following {
  factory Variables$Query$Following({
    int? page,
    required int userId,
  }) =>
      Variables$Query$Following._({
        if (page != null) r'page': page,
        r'userId': userId,
      });

  Variables$Query$Following._(this._$data);

  factory Variables$Query$Following.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('page')) {
      final l$page = data['page'];
      result$data['page'] = (l$page as int?);
    }
    final l$userId = data['userId'];
    result$data['userId'] = (l$userId as int);
    return Variables$Query$Following._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get page => (_$data['page'] as int?);

  int get userId => (_$data['userId'] as int);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('page')) {
      final l$page = page;
      result$data['page'] = l$page;
    }
    final l$userId = userId;
    result$data['userId'] = l$userId;
    return result$data;
  }

  CopyWith$Variables$Query$Following<Variables$Query$Following> get copyWith =>
      CopyWith$Variables$Query$Following(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$Following) ||
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
    if (l$userId != lOther$userId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$page = page;
    final l$userId = userId;
    return Object.hashAll([
      _$data.containsKey('page') ? l$page : const {},
      l$userId,
    ]);
  }
}

abstract class CopyWith$Variables$Query$Following<TRes> {
  factory CopyWith$Variables$Query$Following(
    Variables$Query$Following instance,
    TRes Function(Variables$Query$Following) then,
  ) = _CopyWithImpl$Variables$Query$Following;

  factory CopyWith$Variables$Query$Following.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$Following;

  TRes call({
    int? page,
    int? userId,
  });
}

class _CopyWithImpl$Variables$Query$Following<TRes>
    implements CopyWith$Variables$Query$Following<TRes> {
  _CopyWithImpl$Variables$Query$Following(
    this._instance,
    this._then,
  );

  final Variables$Query$Following _instance;

  final TRes Function(Variables$Query$Following) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? page = _undefined,
    Object? userId = _undefined,
  }) =>
      _then(Variables$Query$Following._({
        ..._instance._$data,
        if (page != _undefined) 'page': (page as int?),
        if (userId != _undefined && userId != null) 'userId': (userId as int),
      }));
}

class _CopyWithStubImpl$Variables$Query$Following<TRes>
    implements CopyWith$Variables$Query$Following<TRes> {
  _CopyWithStubImpl$Variables$Query$Following(this._res);

  TRes _res;

  call({
    int? page,
    int? userId,
  }) =>
      _res;
}

class Query$Following {
  Query$Following({
    this.Page,
    this.$__typename = 'Query',
  });

  factory Query$Following.fromJson(Map<String, dynamic> json) {
    final l$Page = json['Page'];
    final l$$__typename = json['__typename'];
    return Query$Following(
      Page: l$Page == null
          ? null
          : Query$Following$Page.fromJson((l$Page as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$Following$Page? Page;

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
    if (!(other is Query$Following) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$Following on Query$Following {
  CopyWith$Query$Following<Query$Following> get copyWith =>
      CopyWith$Query$Following(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Following<TRes> {
  factory CopyWith$Query$Following(
    Query$Following instance,
    TRes Function(Query$Following) then,
  ) = _CopyWithImpl$Query$Following;

  factory CopyWith$Query$Following.stub(TRes res) =
      _CopyWithStubImpl$Query$Following;

  TRes call({
    Query$Following$Page? Page,
    String? $__typename,
  });
  CopyWith$Query$Following$Page<TRes> get Page;
}

class _CopyWithImpl$Query$Following<TRes>
    implements CopyWith$Query$Following<TRes> {
  _CopyWithImpl$Query$Following(
    this._instance,
    this._then,
  );

  final Query$Following _instance;

  final TRes Function(Query$Following) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? Page = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Following(
        Page: Page == _undefined
            ? _instance.Page
            : (Page as Query$Following$Page?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$Following$Page<TRes> get Page {
    final local$Page = _instance.Page;
    return local$Page == null
        ? CopyWith$Query$Following$Page.stub(_then(_instance))
        : CopyWith$Query$Following$Page(local$Page, (e) => call(Page: e));
  }
}

class _CopyWithStubImpl$Query$Following<TRes>
    implements CopyWith$Query$Following<TRes> {
  _CopyWithStubImpl$Query$Following(this._res);

  TRes _res;

  call({
    Query$Following$Page? Page,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$Following$Page<TRes> get Page =>
      CopyWith$Query$Following$Page.stub(_res);
}

const documentNodeQueryFollowing = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Following'),
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
          isNonNull: true,
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
            name: NameNode(value: 'following'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'userId'),
                value: VariableNode(name: NameNode(value: 'userId')),
              ),
              ArgumentNode(
                name: NameNode(value: 'sort'),
                value: ListValueNode(
                    values: [EnumValueNode(name: NameNode(value: 'USERNAME'))]),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                name: NameNode(value: 'User'),
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
  fragmentDefinitionUser,
]);
Query$Following _parserFn$Query$Following(Map<String, dynamic> data) =>
    Query$Following.fromJson(data);
typedef OnQueryComplete$Query$Following = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$Following?,
);

class Options$Query$Following extends graphql.QueryOptions<Query$Following> {
  Options$Query$Following({
    String? operationName,
    required Variables$Query$Following variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Following? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$Following? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
          variables: variables.toJson(),
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
                    data == null ? null : _parserFn$Query$Following(data),
                  ),
          onError: onError,
          document: documentNodeQueryFollowing,
          parserFn: _parserFn$Query$Following,
        );

  final OnQueryComplete$Query$Following? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$Following
    extends graphql.WatchQueryOptions<Query$Following> {
  WatchOptions$Query$Following({
    String? operationName,
    required Variables$Query$Following variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Following? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeQueryFollowing,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$Following,
        );
}

class FetchMoreOptions$Query$Following extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$Following({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$Following variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryFollowing,
        );
}

extension ClientExtension$Query$Following on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$Following>> query$Following(
          Options$Query$Following options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$Following> watchQuery$Following(
          WatchOptions$Query$Following options) =>
      this.watchQuery(options);
  void writeQuery$Following({
    required Query$Following data,
    required Variables$Query$Following variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryFollowing),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$Following? readQuery$Following({
    required Variables$Query$Following variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryFollowing),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$Following.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$Following> useQuery$Following(
        Options$Query$Following options) =>
    graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$Following> useWatchQuery$Following(
        WatchOptions$Query$Following options) =>
    graphql_flutter.useWatchQuery(options);

class Query$Following$Widget extends graphql_flutter.Query<Query$Following> {
  Query$Following$Widget({
    widgets.Key? key,
    required Options$Query$Following options,
    required graphql_flutter.QueryBuilder<Query$Following> builder,
  }) : super(
          key: key,
          options: options,
          builder: builder,
        );
}

class Query$Following$Page {
  Query$Following$Page({
    this.pageInfo,
    this.following,
    this.$__typename = 'Page',
  });

  factory Query$Following$Page.fromJson(Map<String, dynamic> json) {
    final l$pageInfo = json['pageInfo'];
    final l$following = json['following'];
    final l$$__typename = json['__typename'];
    return Query$Following$Page(
      pageInfo: l$pageInfo == null
          ? null
          : Query$Following$Page$pageInfo.fromJson(
              (l$pageInfo as Map<String, dynamic>)),
      following: (l$following as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$User.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$Following$Page$pageInfo? pageInfo;

  final List<Fragment$User?>? following;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$pageInfo = pageInfo;
    _resultData['pageInfo'] = l$pageInfo?.toJson();
    final l$following = following;
    _resultData['following'] = l$following?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$pageInfo = pageInfo;
    final l$following = following;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$pageInfo,
      l$following == null ? null : Object.hashAll(l$following.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Following$Page) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$pageInfo = pageInfo;
    final lOther$pageInfo = other.pageInfo;
    if (l$pageInfo != lOther$pageInfo) {
      return false;
    }
    final l$following = following;
    final lOther$following = other.following;
    if (l$following != null && lOther$following != null) {
      if (l$following.length != lOther$following.length) {
        return false;
      }
      for (int i = 0; i < l$following.length; i++) {
        final l$following$entry = l$following[i];
        final lOther$following$entry = lOther$following[i];
        if (l$following$entry != lOther$following$entry) {
          return false;
        }
      }
    } else if (l$following != lOther$following) {
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

extension UtilityExtension$Query$Following$Page on Query$Following$Page {
  CopyWith$Query$Following$Page<Query$Following$Page> get copyWith =>
      CopyWith$Query$Following$Page(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Following$Page<TRes> {
  factory CopyWith$Query$Following$Page(
    Query$Following$Page instance,
    TRes Function(Query$Following$Page) then,
  ) = _CopyWithImpl$Query$Following$Page;

  factory CopyWith$Query$Following$Page.stub(TRes res) =
      _CopyWithStubImpl$Query$Following$Page;

  TRes call({
    Query$Following$Page$pageInfo? pageInfo,
    List<Fragment$User?>? following,
    String? $__typename,
  });
  CopyWith$Query$Following$Page$pageInfo<TRes> get pageInfo;
  TRes following(
      Iterable<Fragment$User?>? Function(
              Iterable<CopyWith$Fragment$User<Fragment$User>?>?)
          _fn);
}

class _CopyWithImpl$Query$Following$Page<TRes>
    implements CopyWith$Query$Following$Page<TRes> {
  _CopyWithImpl$Query$Following$Page(
    this._instance,
    this._then,
  );

  final Query$Following$Page _instance;

  final TRes Function(Query$Following$Page) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pageInfo = _undefined,
    Object? following = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Following$Page(
        pageInfo: pageInfo == _undefined
            ? _instance.pageInfo
            : (pageInfo as Query$Following$Page$pageInfo?),
        following: following == _undefined
            ? _instance.following
            : (following as List<Fragment$User?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$Following$Page$pageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return local$pageInfo == null
        ? CopyWith$Query$Following$Page$pageInfo.stub(_then(_instance))
        : CopyWith$Query$Following$Page$pageInfo(
            local$pageInfo, (e) => call(pageInfo: e));
  }

  TRes following(
          Iterable<Fragment$User?>? Function(
                  Iterable<CopyWith$Fragment$User<Fragment$User>?>?)
              _fn) =>
      call(
          following: _fn(_instance.following?.map((e) => e == null
              ? null
              : CopyWith$Fragment$User(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$Following$Page<TRes>
    implements CopyWith$Query$Following$Page<TRes> {
  _CopyWithStubImpl$Query$Following$Page(this._res);

  TRes _res;

  call({
    Query$Following$Page$pageInfo? pageInfo,
    List<Fragment$User?>? following,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$Following$Page$pageInfo<TRes> get pageInfo =>
      CopyWith$Query$Following$Page$pageInfo.stub(_res);

  following(_fn) => _res;
}

class Query$Following$Page$pageInfo {
  Query$Following$Page$pageInfo({
    this.hasNextPage,
    this.$__typename = 'PageInfo',
  });

  factory Query$Following$Page$pageInfo.fromJson(Map<String, dynamic> json) {
    final l$hasNextPage = json['hasNextPage'];
    final l$$__typename = json['__typename'];
    return Query$Following$Page$pageInfo(
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
    if (!(other is Query$Following$Page$pageInfo) ||
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

extension UtilityExtension$Query$Following$Page$pageInfo
    on Query$Following$Page$pageInfo {
  CopyWith$Query$Following$Page$pageInfo<Query$Following$Page$pageInfo>
      get copyWith => CopyWith$Query$Following$Page$pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Following$Page$pageInfo<TRes> {
  factory CopyWith$Query$Following$Page$pageInfo(
    Query$Following$Page$pageInfo instance,
    TRes Function(Query$Following$Page$pageInfo) then,
  ) = _CopyWithImpl$Query$Following$Page$pageInfo;

  factory CopyWith$Query$Following$Page$pageInfo.stub(TRes res) =
      _CopyWithStubImpl$Query$Following$Page$pageInfo;

  TRes call({
    bool? hasNextPage,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Following$Page$pageInfo<TRes>
    implements CopyWith$Query$Following$Page$pageInfo<TRes> {
  _CopyWithImpl$Query$Following$Page$pageInfo(
    this._instance,
    this._then,
  );

  final Query$Following$Page$pageInfo _instance;

  final TRes Function(Query$Following$Page$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasNextPage = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Following$Page$pageInfo(
        hasNextPage: hasNextPage == _undefined
            ? _instance.hasNextPage
            : (hasNextPage as bool?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Following$Page$pageInfo<TRes>
    implements CopyWith$Query$Following$Page$pageInfo<TRes> {
  _CopyWithStubImpl$Query$Following$Page$pageInfo(this._res);

  TRes _res;

  call({
    bool? hasNextPage,
    String? $__typename,
  }) =>
      _res;
}
