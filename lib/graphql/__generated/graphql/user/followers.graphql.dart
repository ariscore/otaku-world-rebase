// GENERATED FILE
// DO NOT MODIFY
// ignore_for_file: type=lint
import '../fragments.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$Followers {
  factory Variables$Query$Followers({
    int? page,
    required int userId,
  }) =>
      Variables$Query$Followers._({
        if (page != null) r'page': page,
        r'userId': userId,
      });

  Variables$Query$Followers._(this._$data);

  factory Variables$Query$Followers.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('page')) {
      final l$page = data['page'];
      result$data['page'] = (l$page as int?);
    }
    final l$userId = data['userId'];
    result$data['userId'] = (l$userId as int);
    return Variables$Query$Followers._(result$data);
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

  CopyWith$Variables$Query$Followers<Variables$Query$Followers> get copyWith =>
      CopyWith$Variables$Query$Followers(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$Followers) ||
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

abstract class CopyWith$Variables$Query$Followers<TRes> {
  factory CopyWith$Variables$Query$Followers(
    Variables$Query$Followers instance,
    TRes Function(Variables$Query$Followers) then,
  ) = _CopyWithImpl$Variables$Query$Followers;

  factory CopyWith$Variables$Query$Followers.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$Followers;

  TRes call({
    int? page,
    int? userId,
  });
}

class _CopyWithImpl$Variables$Query$Followers<TRes>
    implements CopyWith$Variables$Query$Followers<TRes> {
  _CopyWithImpl$Variables$Query$Followers(
    this._instance,
    this._then,
  );

  final Variables$Query$Followers _instance;

  final TRes Function(Variables$Query$Followers) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? page = _undefined,
    Object? userId = _undefined,
  }) =>
      _then(Variables$Query$Followers._({
        ..._instance._$data,
        if (page != _undefined) 'page': (page as int?),
        if (userId != _undefined && userId != null) 'userId': (userId as int),
      }));
}

class _CopyWithStubImpl$Variables$Query$Followers<TRes>
    implements CopyWith$Variables$Query$Followers<TRes> {
  _CopyWithStubImpl$Variables$Query$Followers(this._res);

  TRes _res;

  call({
    int? page,
    int? userId,
  }) =>
      _res;
}

class Query$Followers {
  Query$Followers({
    this.Page,
    this.$__typename = 'Query',
  });

  factory Query$Followers.fromJson(Map<String, dynamic> json) {
    final l$Page = json['Page'];
    final l$$__typename = json['__typename'];
    return Query$Followers(
      Page: l$Page == null
          ? null
          : Query$Followers$Page.fromJson((l$Page as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$Followers$Page? Page;

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
    if (!(other is Query$Followers) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$Followers on Query$Followers {
  CopyWith$Query$Followers<Query$Followers> get copyWith =>
      CopyWith$Query$Followers(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Followers<TRes> {
  factory CopyWith$Query$Followers(
    Query$Followers instance,
    TRes Function(Query$Followers) then,
  ) = _CopyWithImpl$Query$Followers;

  factory CopyWith$Query$Followers.stub(TRes res) =
      _CopyWithStubImpl$Query$Followers;

  TRes call({
    Query$Followers$Page? Page,
    String? $__typename,
  });
  CopyWith$Query$Followers$Page<TRes> get Page;
}

class _CopyWithImpl$Query$Followers<TRes>
    implements CopyWith$Query$Followers<TRes> {
  _CopyWithImpl$Query$Followers(
    this._instance,
    this._then,
  );

  final Query$Followers _instance;

  final TRes Function(Query$Followers) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? Page = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Followers(
        Page: Page == _undefined
            ? _instance.Page
            : (Page as Query$Followers$Page?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$Followers$Page<TRes> get Page {
    final local$Page = _instance.Page;
    return local$Page == null
        ? CopyWith$Query$Followers$Page.stub(_then(_instance))
        : CopyWith$Query$Followers$Page(local$Page, (e) => call(Page: e));
  }
}

class _CopyWithStubImpl$Query$Followers<TRes>
    implements CopyWith$Query$Followers<TRes> {
  _CopyWithStubImpl$Query$Followers(this._res);

  TRes _res;

  call({
    Query$Followers$Page? Page,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$Followers$Page<TRes> get Page =>
      CopyWith$Query$Followers$Page.stub(_res);
}

const documentNodeQueryFollowers = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Followers'),
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
            name: NameNode(value: 'followers'),
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
Query$Followers _parserFn$Query$Followers(Map<String, dynamic> data) =>
    Query$Followers.fromJson(data);
typedef OnQueryComplete$Query$Followers = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$Followers?,
);

class Options$Query$Followers extends graphql.QueryOptions<Query$Followers> {
  Options$Query$Followers({
    String? operationName,
    required Variables$Query$Followers variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Followers? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$Followers? onComplete,
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
                    data == null ? null : _parserFn$Query$Followers(data),
                  ),
          onError: onError,
          document: documentNodeQueryFollowers,
          parserFn: _parserFn$Query$Followers,
        );

  final OnQueryComplete$Query$Followers? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$Followers
    extends graphql.WatchQueryOptions<Query$Followers> {
  WatchOptions$Query$Followers({
    String? operationName,
    required Variables$Query$Followers variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Followers? typedOptimisticResult,
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
          document: documentNodeQueryFollowers,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$Followers,
        );
}

class FetchMoreOptions$Query$Followers extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$Followers({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$Followers variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryFollowers,
        );
}

extension ClientExtension$Query$Followers on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$Followers>> query$Followers(
          Options$Query$Followers options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$Followers> watchQuery$Followers(
          WatchOptions$Query$Followers options) =>
      this.watchQuery(options);
  void writeQuery$Followers({
    required Query$Followers data,
    required Variables$Query$Followers variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryFollowers),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$Followers? readQuery$Followers({
    required Variables$Query$Followers variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryFollowers),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$Followers.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$Followers> useQuery$Followers(
        Options$Query$Followers options) =>
    graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$Followers> useWatchQuery$Followers(
        WatchOptions$Query$Followers options) =>
    graphql_flutter.useWatchQuery(options);

class Query$Followers$Widget extends graphql_flutter.Query<Query$Followers> {
  Query$Followers$Widget({
    widgets.Key? key,
    required Options$Query$Followers options,
    required graphql_flutter.QueryBuilder<Query$Followers> builder,
  }) : super(
          key: key,
          options: options,
          builder: builder,
        );
}

class Query$Followers$Page {
  Query$Followers$Page({
    this.pageInfo,
    this.followers,
    this.$__typename = 'Page',
  });

  factory Query$Followers$Page.fromJson(Map<String, dynamic> json) {
    final l$pageInfo = json['pageInfo'];
    final l$followers = json['followers'];
    final l$$__typename = json['__typename'];
    return Query$Followers$Page(
      pageInfo: l$pageInfo == null
          ? null
          : Query$Followers$Page$pageInfo.fromJson(
              (l$pageInfo as Map<String, dynamic>)),
      followers: (l$followers as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$User.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$Followers$Page$pageInfo? pageInfo;

  final List<Fragment$User?>? followers;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$pageInfo = pageInfo;
    _resultData['pageInfo'] = l$pageInfo?.toJson();
    final l$followers = followers;
    _resultData['followers'] = l$followers?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$pageInfo = pageInfo;
    final l$followers = followers;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$pageInfo,
      l$followers == null ? null : Object.hashAll(l$followers.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Followers$Page) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$pageInfo = pageInfo;
    final lOther$pageInfo = other.pageInfo;
    if (l$pageInfo != lOther$pageInfo) {
      return false;
    }
    final l$followers = followers;
    final lOther$followers = other.followers;
    if (l$followers != null && lOther$followers != null) {
      if (l$followers.length != lOther$followers.length) {
        return false;
      }
      for (int i = 0; i < l$followers.length; i++) {
        final l$followers$entry = l$followers[i];
        final lOther$followers$entry = lOther$followers[i];
        if (l$followers$entry != lOther$followers$entry) {
          return false;
        }
      }
    } else if (l$followers != lOther$followers) {
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

extension UtilityExtension$Query$Followers$Page on Query$Followers$Page {
  CopyWith$Query$Followers$Page<Query$Followers$Page> get copyWith =>
      CopyWith$Query$Followers$Page(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Followers$Page<TRes> {
  factory CopyWith$Query$Followers$Page(
    Query$Followers$Page instance,
    TRes Function(Query$Followers$Page) then,
  ) = _CopyWithImpl$Query$Followers$Page;

  factory CopyWith$Query$Followers$Page.stub(TRes res) =
      _CopyWithStubImpl$Query$Followers$Page;

  TRes call({
    Query$Followers$Page$pageInfo? pageInfo,
    List<Fragment$User?>? followers,
    String? $__typename,
  });
  CopyWith$Query$Followers$Page$pageInfo<TRes> get pageInfo;
  TRes followers(
      Iterable<Fragment$User?>? Function(
              Iterable<CopyWith$Fragment$User<Fragment$User>?>?)
          _fn);
}

class _CopyWithImpl$Query$Followers$Page<TRes>
    implements CopyWith$Query$Followers$Page<TRes> {
  _CopyWithImpl$Query$Followers$Page(
    this._instance,
    this._then,
  );

  final Query$Followers$Page _instance;

  final TRes Function(Query$Followers$Page) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pageInfo = _undefined,
    Object? followers = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Followers$Page(
        pageInfo: pageInfo == _undefined
            ? _instance.pageInfo
            : (pageInfo as Query$Followers$Page$pageInfo?),
        followers: followers == _undefined
            ? _instance.followers
            : (followers as List<Fragment$User?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$Followers$Page$pageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return local$pageInfo == null
        ? CopyWith$Query$Followers$Page$pageInfo.stub(_then(_instance))
        : CopyWith$Query$Followers$Page$pageInfo(
            local$pageInfo, (e) => call(pageInfo: e));
  }

  TRes followers(
          Iterable<Fragment$User?>? Function(
                  Iterable<CopyWith$Fragment$User<Fragment$User>?>?)
              _fn) =>
      call(
          followers: _fn(_instance.followers?.map((e) => e == null
              ? null
              : CopyWith$Fragment$User(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$Followers$Page<TRes>
    implements CopyWith$Query$Followers$Page<TRes> {
  _CopyWithStubImpl$Query$Followers$Page(this._res);

  TRes _res;

  call({
    Query$Followers$Page$pageInfo? pageInfo,
    List<Fragment$User?>? followers,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$Followers$Page$pageInfo<TRes> get pageInfo =>
      CopyWith$Query$Followers$Page$pageInfo.stub(_res);

  followers(_fn) => _res;
}

class Query$Followers$Page$pageInfo {
  Query$Followers$Page$pageInfo({
    this.hasNextPage,
    this.$__typename = 'PageInfo',
  });

  factory Query$Followers$Page$pageInfo.fromJson(Map<String, dynamic> json) {
    final l$hasNextPage = json['hasNextPage'];
    final l$$__typename = json['__typename'];
    return Query$Followers$Page$pageInfo(
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
    if (!(other is Query$Followers$Page$pageInfo) ||
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

extension UtilityExtension$Query$Followers$Page$pageInfo
    on Query$Followers$Page$pageInfo {
  CopyWith$Query$Followers$Page$pageInfo<Query$Followers$Page$pageInfo>
      get copyWith => CopyWith$Query$Followers$Page$pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Followers$Page$pageInfo<TRes> {
  factory CopyWith$Query$Followers$Page$pageInfo(
    Query$Followers$Page$pageInfo instance,
    TRes Function(Query$Followers$Page$pageInfo) then,
  ) = _CopyWithImpl$Query$Followers$Page$pageInfo;

  factory CopyWith$Query$Followers$Page$pageInfo.stub(TRes res) =
      _CopyWithStubImpl$Query$Followers$Page$pageInfo;

  TRes call({
    bool? hasNextPage,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Followers$Page$pageInfo<TRes>
    implements CopyWith$Query$Followers$Page$pageInfo<TRes> {
  _CopyWithImpl$Query$Followers$Page$pageInfo(
    this._instance,
    this._then,
  );

  final Query$Followers$Page$pageInfo _instance;

  final TRes Function(Query$Followers$Page$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasNextPage = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Followers$Page$pageInfo(
        hasNextPage: hasNextPage == _undefined
            ? _instance.hasNextPage
            : (hasNextPage as bool?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Followers$Page$pageInfo<TRes>
    implements CopyWith$Query$Followers$Page$pageInfo<TRes> {
  _CopyWithStubImpl$Query$Followers$Page$pageInfo(this._res);

  TRes _res;

  call({
    bool? hasNextPage,
    String? $__typename,
  }) =>
      _res;
}
