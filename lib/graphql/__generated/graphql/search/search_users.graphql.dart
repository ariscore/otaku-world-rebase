// GENERATED FILE
// DO NOT MODIFY
// ignore_for_file: type=lint
import 'dart:async';

import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

import '../fragments.graphql.dart';

class Variables$Query$SearchUsers {
  factory Variables$Query$SearchUsers({
    int? page,
    String? search,
  }) =>
      Variables$Query$SearchUsers._({
        if (page != null) r'page': page,
        if (search != null) r'search': search,
      });

  Variables$Query$SearchUsers._(this._$data);

  factory Variables$Query$SearchUsers.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('page')) {
      final l$page = data['page'];
      result$data['page'] = (l$page as int?);
    }
    if (data.containsKey('search')) {
      final l$search = data['search'];
      result$data['search'] = (l$search as String?);
    }
    return Variables$Query$SearchUsers._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get page => (_$data['page'] as int?);

  String? get search => (_$data['search'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('page')) {
      final l$page = page;
      result$data['page'] = l$page;
    }
    if (_$data.containsKey('search')) {
      final l$search = search;
      result$data['search'] = l$search;
    }
    return result$data;
  }

  CopyWith$Variables$Query$SearchUsers<Variables$Query$SearchUsers>
      get copyWith => CopyWith$Variables$Query$SearchUsers(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$SearchUsers) ||
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
    final l$search = search;
    final lOther$search = other.search;
    if (_$data.containsKey('search') != other._$data.containsKey('search')) {
      return false;
    }
    if (l$search != lOther$search) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$page = page;
    final l$search = search;
    return Object.hashAll([
      _$data.containsKey('page') ? l$page : const {},
      _$data.containsKey('search') ? l$search : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$SearchUsers<TRes> {
  factory CopyWith$Variables$Query$SearchUsers(
    Variables$Query$SearchUsers instance,
    TRes Function(Variables$Query$SearchUsers) then,
  ) = _CopyWithImpl$Variables$Query$SearchUsers;

  factory CopyWith$Variables$Query$SearchUsers.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$SearchUsers;

  TRes call({
    int? page,
    String? search,
  });
}

class _CopyWithImpl$Variables$Query$SearchUsers<TRes>
    implements CopyWith$Variables$Query$SearchUsers<TRes> {
  _CopyWithImpl$Variables$Query$SearchUsers(
    this._instance,
    this._then,
  );

  final Variables$Query$SearchUsers _instance;

  final TRes Function(Variables$Query$SearchUsers) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? page = _undefined,
    Object? search = _undefined,
  }) =>
      _then(Variables$Query$SearchUsers._({
        ..._instance._$data,
        if (page != _undefined) 'page': (page as int?),
        if (search != _undefined) 'search': (search as String?),
      }));
}

class _CopyWithStubImpl$Variables$Query$SearchUsers<TRes>
    implements CopyWith$Variables$Query$SearchUsers<TRes> {
  _CopyWithStubImpl$Variables$Query$SearchUsers(this._res);

  TRes _res;

  call({
    int? page,
    String? search,
  }) =>
      _res;
}

class Query$SearchUsers {
  Query$SearchUsers({
    this.Page,
    this.$__typename = 'Query',
  });

  factory Query$SearchUsers.fromJson(Map<String, dynamic> json) {
    final l$Page = json['Page'];
    final l$$__typename = json['__typename'];
    return Query$SearchUsers(
      Page: l$Page == null
          ? null
          : Query$SearchUsers$Page.fromJson((l$Page as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$SearchUsers$Page? Page;

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
    if (!(other is Query$SearchUsers) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$SearchUsers on Query$SearchUsers {
  CopyWith$Query$SearchUsers<Query$SearchUsers> get copyWith =>
      CopyWith$Query$SearchUsers(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SearchUsers<TRes> {
  factory CopyWith$Query$SearchUsers(
    Query$SearchUsers instance,
    TRes Function(Query$SearchUsers) then,
  ) = _CopyWithImpl$Query$SearchUsers;

  factory CopyWith$Query$SearchUsers.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchUsers;

  TRes call({
    Query$SearchUsers$Page? Page,
    String? $__typename,
  });
  CopyWith$Query$SearchUsers$Page<TRes> get Page;
}

class _CopyWithImpl$Query$SearchUsers<TRes>
    implements CopyWith$Query$SearchUsers<TRes> {
  _CopyWithImpl$Query$SearchUsers(
    this._instance,
    this._then,
  );

  final Query$SearchUsers _instance;

  final TRes Function(Query$SearchUsers) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? Page = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$SearchUsers(
        Page: Page == _undefined
            ? _instance.Page
            : (Page as Query$SearchUsers$Page?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$SearchUsers$Page<TRes> get Page {
    final local$Page = _instance.Page;
    return local$Page == null
        ? CopyWith$Query$SearchUsers$Page.stub(_then(_instance))
        : CopyWith$Query$SearchUsers$Page(local$Page, (e) => call(Page: e));
  }
}

class _CopyWithStubImpl$Query$SearchUsers<TRes>
    implements CopyWith$Query$SearchUsers<TRes> {
  _CopyWithStubImpl$Query$SearchUsers(this._res);

  TRes _res;

  call({
    Query$SearchUsers$Page? Page,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$SearchUsers$Page<TRes> get Page =>
      CopyWith$Query$SearchUsers$Page.stub(_res);
}

const documentNodeQuerySearchUsers = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'SearchUsers'),
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
        variable: VariableNode(name: NameNode(value: 'search')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
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
            value: IntValueNode(value: '50'),
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
            name: NameNode(value: 'users'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'search'),
                value: VariableNode(name: NameNode(value: 'search')),
              ),
              ArgumentNode(
                name: NameNode(value: 'sort'),
                value: ListValueNode(values: [
                  EnumValueNode(name: NameNode(value: 'SEARCH_MATCH'))
                ]),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                name: NameNode(value: 'SearchResultUser'),
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
  fragmentDefinitionSearchResultUser,
]);
Query$SearchUsers _parserFn$Query$SearchUsers(Map<String, dynamic> data) =>
    Query$SearchUsers.fromJson(data);
typedef OnQueryComplete$Query$SearchUsers = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$SearchUsers?,
);

class Options$Query$SearchUsers
    extends graphql.QueryOptions<Query$SearchUsers> {
  Options$Query$SearchUsers({
    String? operationName,
    Variables$Query$SearchUsers? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$SearchUsers? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$SearchUsers? onComplete,
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
                    data == null ? null : _parserFn$Query$SearchUsers(data),
                  ),
          onError: onError,
          document: documentNodeQuerySearchUsers,
          parserFn: _parserFn$Query$SearchUsers,
        );

  final OnQueryComplete$Query$SearchUsers? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$SearchUsers
    extends graphql.WatchQueryOptions<Query$SearchUsers> {
  WatchOptions$Query$SearchUsers({
    String? operationName,
    Variables$Query$SearchUsers? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$SearchUsers? typedOptimisticResult,
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
          document: documentNodeQuerySearchUsers,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$SearchUsers,
        );
}

class FetchMoreOptions$Query$SearchUsers extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$SearchUsers({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$SearchUsers? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQuerySearchUsers,
        );
}

extension ClientExtension$Query$SearchUsers on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$SearchUsers>> query$SearchUsers(
          [Options$Query$SearchUsers? options]) async =>
      await this.query(options ?? Options$Query$SearchUsers());
  graphql.ObservableQuery<Query$SearchUsers> watchQuery$SearchUsers(
          [WatchOptions$Query$SearchUsers? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$SearchUsers());
  void writeQuery$SearchUsers({
    required Query$SearchUsers data,
    Variables$Query$SearchUsers? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQuerySearchUsers),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$SearchUsers? readQuery$SearchUsers({
    Variables$Query$SearchUsers? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQuerySearchUsers),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$SearchUsers.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$SearchUsers> useQuery$SearchUsers(
        [Options$Query$SearchUsers? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$SearchUsers());
graphql.ObservableQuery<Query$SearchUsers> useWatchQuery$SearchUsers(
        [WatchOptions$Query$SearchUsers? options]) =>
    graphql_flutter.useWatchQuery(options ?? WatchOptions$Query$SearchUsers());

class Query$SearchUsers$Widget
    extends graphql_flutter.Query<Query$SearchUsers> {
  Query$SearchUsers$Widget({
    widgets.Key? key,
    Options$Query$SearchUsers? options,
    required graphql_flutter.QueryBuilder<Query$SearchUsers> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$SearchUsers(),
          builder: builder,
        );
}

class Query$SearchUsers$Page {
  Query$SearchUsers$Page({
    this.pageInfo,
    this.users,
    this.$__typename = 'Page',
  });

  factory Query$SearchUsers$Page.fromJson(Map<String, dynamic> json) {
    final l$pageInfo = json['pageInfo'];
    final l$users = json['users'];
    final l$$__typename = json['__typename'];
    return Query$SearchUsers$Page(
      pageInfo: l$pageInfo == null
          ? null
          : Query$SearchUsers$Page$pageInfo.fromJson(
              (l$pageInfo as Map<String, dynamic>)),
      users: (l$users as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$SearchResultUser.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$SearchUsers$Page$pageInfo? pageInfo;

  final List<Fragment$SearchResultUser?>? users;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$pageInfo = pageInfo;
    _resultData['pageInfo'] = l$pageInfo?.toJson();
    final l$users = users;
    _resultData['users'] = l$users?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$pageInfo = pageInfo;
    final l$users = users;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$pageInfo,
      l$users == null ? null : Object.hashAll(l$users.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$SearchUsers$Page) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$pageInfo = pageInfo;
    final lOther$pageInfo = other.pageInfo;
    if (l$pageInfo != lOther$pageInfo) {
      return false;
    }
    final l$users = users;
    final lOther$users = other.users;
    if (l$users != null && lOther$users != null) {
      if (l$users.length != lOther$users.length) {
        return false;
      }
      for (int i = 0; i < l$users.length; i++) {
        final l$users$entry = l$users[i];
        final lOther$users$entry = lOther$users[i];
        if (l$users$entry != lOther$users$entry) {
          return false;
        }
      }
    } else if (l$users != lOther$users) {
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

extension UtilityExtension$Query$SearchUsers$Page on Query$SearchUsers$Page {
  CopyWith$Query$SearchUsers$Page<Query$SearchUsers$Page> get copyWith =>
      CopyWith$Query$SearchUsers$Page(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SearchUsers$Page<TRes> {
  factory CopyWith$Query$SearchUsers$Page(
    Query$SearchUsers$Page instance,
    TRes Function(Query$SearchUsers$Page) then,
  ) = _CopyWithImpl$Query$SearchUsers$Page;

  factory CopyWith$Query$SearchUsers$Page.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchUsers$Page;

  TRes call({
    Query$SearchUsers$Page$pageInfo? pageInfo,
    List<Fragment$SearchResultUser?>? users,
    String? $__typename,
  });
  CopyWith$Query$SearchUsers$Page$pageInfo<TRes> get pageInfo;
  TRes users(
      Iterable<Fragment$SearchResultUser?>? Function(
              Iterable<
                  CopyWith$Fragment$SearchResultUser<
                      Fragment$SearchResultUser>?>?)
          _fn);
}

class _CopyWithImpl$Query$SearchUsers$Page<TRes>
    implements CopyWith$Query$SearchUsers$Page<TRes> {
  _CopyWithImpl$Query$SearchUsers$Page(
    this._instance,
    this._then,
  );

  final Query$SearchUsers$Page _instance;

  final TRes Function(Query$SearchUsers$Page) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pageInfo = _undefined,
    Object? users = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$SearchUsers$Page(
        pageInfo: pageInfo == _undefined
            ? _instance.pageInfo
            : (pageInfo as Query$SearchUsers$Page$pageInfo?),
        users: users == _undefined
            ? _instance.users
            : (users as List<Fragment$SearchResultUser?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$SearchUsers$Page$pageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return local$pageInfo == null
        ? CopyWith$Query$SearchUsers$Page$pageInfo.stub(_then(_instance))
        : CopyWith$Query$SearchUsers$Page$pageInfo(
            local$pageInfo, (e) => call(pageInfo: e));
  }

  TRes users(
          Iterable<Fragment$SearchResultUser?>? Function(
                  Iterable<
                      CopyWith$Fragment$SearchResultUser<
                          Fragment$SearchResultUser>?>?)
              _fn) =>
      call(
          users: _fn(_instance.users?.map((e) => e == null
              ? null
              : CopyWith$Fragment$SearchResultUser(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$SearchUsers$Page<TRes>
    implements CopyWith$Query$SearchUsers$Page<TRes> {
  _CopyWithStubImpl$Query$SearchUsers$Page(this._res);

  TRes _res;

  call({
    Query$SearchUsers$Page$pageInfo? pageInfo,
    List<Fragment$SearchResultUser?>? users,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$SearchUsers$Page$pageInfo<TRes> get pageInfo =>
      CopyWith$Query$SearchUsers$Page$pageInfo.stub(_res);

  users(_fn) => _res;
}

class Query$SearchUsers$Page$pageInfo {
  Query$SearchUsers$Page$pageInfo({
    this.hasNextPage,
    this.$__typename = 'PageInfo',
  });

  factory Query$SearchUsers$Page$pageInfo.fromJson(Map<String, dynamic> json) {
    final l$hasNextPage = json['hasNextPage'];
    final l$$__typename = json['__typename'];
    return Query$SearchUsers$Page$pageInfo(
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
    if (!(other is Query$SearchUsers$Page$pageInfo) ||
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

extension UtilityExtension$Query$SearchUsers$Page$pageInfo
    on Query$SearchUsers$Page$pageInfo {
  CopyWith$Query$SearchUsers$Page$pageInfo<Query$SearchUsers$Page$pageInfo>
      get copyWith => CopyWith$Query$SearchUsers$Page$pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$SearchUsers$Page$pageInfo<TRes> {
  factory CopyWith$Query$SearchUsers$Page$pageInfo(
    Query$SearchUsers$Page$pageInfo instance,
    TRes Function(Query$SearchUsers$Page$pageInfo) then,
  ) = _CopyWithImpl$Query$SearchUsers$Page$pageInfo;

  factory CopyWith$Query$SearchUsers$Page$pageInfo.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchUsers$Page$pageInfo;

  TRes call({
    bool? hasNextPage,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$SearchUsers$Page$pageInfo<TRes>
    implements CopyWith$Query$SearchUsers$Page$pageInfo<TRes> {
  _CopyWithImpl$Query$SearchUsers$Page$pageInfo(
    this._instance,
    this._then,
  );

  final Query$SearchUsers$Page$pageInfo _instance;

  final TRes Function(Query$SearchUsers$Page$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasNextPage = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$SearchUsers$Page$pageInfo(
        hasNextPage: hasNextPage == _undefined
            ? _instance.hasNextPage
            : (hasNextPage as bool?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$SearchUsers$Page$pageInfo<TRes>
    implements CopyWith$Query$SearchUsers$Page$pageInfo<TRes> {
  _CopyWithStubImpl$Query$SearchUsers$Page$pageInfo(this._res);

  TRes _res;

  call({
    bool? hasNextPage,
    String? $__typename,
  }) =>
      _res;
}
