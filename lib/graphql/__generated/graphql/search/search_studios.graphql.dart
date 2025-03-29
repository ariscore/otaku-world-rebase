// GENERATED FILE
// DO NOT MODIFY
// ignore_for_file: type=lint
import '../fragments.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$SearchStudios {
  factory Variables$Query$SearchStudios({
    int? page,
    String? search,
  }) =>
      Variables$Query$SearchStudios._({
        if (page != null) r'page': page,
        if (search != null) r'search': search,
      });

  Variables$Query$SearchStudios._(this._$data);

  factory Variables$Query$SearchStudios.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('page')) {
      final l$page = data['page'];
      result$data['page'] = (l$page as int?);
    }
    if (data.containsKey('search')) {
      final l$search = data['search'];
      result$data['search'] = (l$search as String?);
    }
    return Variables$Query$SearchStudios._(result$data);
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

  CopyWith$Variables$Query$SearchStudios<Variables$Query$SearchStudios>
      get copyWith => CopyWith$Variables$Query$SearchStudios(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$SearchStudios ||
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

abstract class CopyWith$Variables$Query$SearchStudios<TRes> {
  factory CopyWith$Variables$Query$SearchStudios(
    Variables$Query$SearchStudios instance,
    TRes Function(Variables$Query$SearchStudios) then,
  ) = _CopyWithImpl$Variables$Query$SearchStudios;

  factory CopyWith$Variables$Query$SearchStudios.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$SearchStudios;

  TRes call({
    int? page,
    String? search,
  });
}

class _CopyWithImpl$Variables$Query$SearchStudios<TRes>
    implements CopyWith$Variables$Query$SearchStudios<TRes> {
  _CopyWithImpl$Variables$Query$SearchStudios(
    this._instance,
    this._then,
  );

  final Variables$Query$SearchStudios _instance;

  final TRes Function(Variables$Query$SearchStudios) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? page = _undefined,
    Object? search = _undefined,
  }) =>
      _then(Variables$Query$SearchStudios._({
        ..._instance._$data,
        if (page != _undefined) 'page': (page as int?),
        if (search != _undefined) 'search': (search as String?),
      }));
}

class _CopyWithStubImpl$Variables$Query$SearchStudios<TRes>
    implements CopyWith$Variables$Query$SearchStudios<TRes> {
  _CopyWithStubImpl$Variables$Query$SearchStudios(this._res);

  TRes _res;

  call({
    int? page,
    String? search,
  }) =>
      _res;
}

class Query$SearchStudios {
  Query$SearchStudios({
    this.Page,
    this.$__typename = 'Query',
  });

  factory Query$SearchStudios.fromJson(Map<String, dynamic> json) {
    final l$Page = json['Page'];
    final l$$__typename = json['__typename'];
    return Query$SearchStudios(
      Page: l$Page == null
          ? null
          : Query$SearchStudios$Page.fromJson((l$Page as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$SearchStudios$Page? Page;

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
    if (other is! Query$SearchStudios || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$SearchStudios on Query$SearchStudios {
  CopyWith$Query$SearchStudios<Query$SearchStudios> get copyWith =>
      CopyWith$Query$SearchStudios(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SearchStudios<TRes> {
  factory CopyWith$Query$SearchStudios(
    Query$SearchStudios instance,
    TRes Function(Query$SearchStudios) then,
  ) = _CopyWithImpl$Query$SearchStudios;

  factory CopyWith$Query$SearchStudios.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchStudios;

  TRes call({
    Query$SearchStudios$Page? Page,
    String? $__typename,
  });
  CopyWith$Query$SearchStudios$Page<TRes> get Page;
}

class _CopyWithImpl$Query$SearchStudios<TRes>
    implements CopyWith$Query$SearchStudios<TRes> {
  _CopyWithImpl$Query$SearchStudios(
    this._instance,
    this._then,
  );

  final Query$SearchStudios _instance;

  final TRes Function(Query$SearchStudios) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? Page = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$SearchStudios(
        Page: Page == _undefined
            ? _instance.Page
            : (Page as Query$SearchStudios$Page?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$SearchStudios$Page<TRes> get Page {
    final local$Page = _instance.Page;
    return local$Page == null
        ? CopyWith$Query$SearchStudios$Page.stub(_then(_instance))
        : CopyWith$Query$SearchStudios$Page(local$Page, (e) => call(Page: e));
  }
}

class _CopyWithStubImpl$Query$SearchStudios<TRes>
    implements CopyWith$Query$SearchStudios<TRes> {
  _CopyWithStubImpl$Query$SearchStudios(this._res);

  TRes _res;

  call({
    Query$SearchStudios$Page? Page,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$SearchStudios$Page<TRes> get Page =>
      CopyWith$Query$SearchStudios$Page.stub(_res);
}

const documentNodeQuerySearchStudios = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'SearchStudios'),
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
            name: NameNode(value: 'studios'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'search'),
                value: VariableNode(name: NameNode(value: 'search')),
              ),
              ArgumentNode(
                name: NameNode(value: 'sort'),
                value: ListValueNode(values: [
                  EnumValueNode(name: NameNode(value: 'SEARCH_MATCH')),
                  EnumValueNode(name: NameNode(value: 'FAVOURITES_DESC')),
                ]),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                name: NameNode(value: 'SearchResultStudio'),
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
  fragmentDefinitionSearchResultStudio,
]);
Query$SearchStudios _parserFn$Query$SearchStudios(Map<String, dynamic> data) =>
    Query$SearchStudios.fromJson(data);
typedef OnQueryComplete$Query$SearchStudios = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$SearchStudios?,
);

class Options$Query$SearchStudios
    extends graphql.QueryOptions<Query$SearchStudios> {
  Options$Query$SearchStudios({
    String? operationName,
    Variables$Query$SearchStudios? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$SearchStudios? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$SearchStudios? onComplete,
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
                    data == null ? null : _parserFn$Query$SearchStudios(data),
                  ),
          onError: onError,
          document: documentNodeQuerySearchStudios,
          parserFn: _parserFn$Query$SearchStudios,
        );

  final OnQueryComplete$Query$SearchStudios? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$SearchStudios
    extends graphql.WatchQueryOptions<Query$SearchStudios> {
  WatchOptions$Query$SearchStudios({
    String? operationName,
    Variables$Query$SearchStudios? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$SearchStudios? typedOptimisticResult,
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
          document: documentNodeQuerySearchStudios,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$SearchStudios,
        );
}

class FetchMoreOptions$Query$SearchStudios extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$SearchStudios({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$SearchStudios? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQuerySearchStudios,
        );
}

extension ClientExtension$Query$SearchStudios on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$SearchStudios>> query$SearchStudios(
          [Options$Query$SearchStudios? options]) async =>
      await this.query(options ?? Options$Query$SearchStudios());
  graphql.ObservableQuery<Query$SearchStudios> watchQuery$SearchStudios(
          [WatchOptions$Query$SearchStudios? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$SearchStudios());
  void writeQuery$SearchStudios({
    required Query$SearchStudios data,
    Variables$Query$SearchStudios? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQuerySearchStudios),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$SearchStudios? readQuery$SearchStudios({
    Variables$Query$SearchStudios? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQuerySearchStudios),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$SearchStudios.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$SearchStudios> useQuery$SearchStudios(
        [Options$Query$SearchStudios? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$SearchStudios());
graphql.ObservableQuery<Query$SearchStudios> useWatchQuery$SearchStudios(
        [WatchOptions$Query$SearchStudios? options]) =>
    graphql_flutter
        .useWatchQuery(options ?? WatchOptions$Query$SearchStudios());

class Query$SearchStudios$Widget
    extends graphql_flutter.Query<Query$SearchStudios> {
  Query$SearchStudios$Widget({
    widgets.Key? key,
    Options$Query$SearchStudios? options,
    required graphql_flutter.QueryBuilder<Query$SearchStudios> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$SearchStudios(),
          builder: builder,
        );
}

class Query$SearchStudios$Page {
  Query$SearchStudios$Page({
    this.pageInfo,
    this.studios,
    this.$__typename = 'Page',
  });

  factory Query$SearchStudios$Page.fromJson(Map<String, dynamic> json) {
    final l$pageInfo = json['pageInfo'];
    final l$studios = json['studios'];
    final l$$__typename = json['__typename'];
    return Query$SearchStudios$Page(
      pageInfo: l$pageInfo == null
          ? null
          : Query$SearchStudios$Page$pageInfo.fromJson(
              (l$pageInfo as Map<String, dynamic>)),
      studios: (l$studios as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$SearchResultStudio.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$SearchStudios$Page$pageInfo? pageInfo;

  final List<Fragment$SearchResultStudio?>? studios;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$pageInfo = pageInfo;
    _resultData['pageInfo'] = l$pageInfo?.toJson();
    final l$studios = studios;
    _resultData['studios'] = l$studios?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$pageInfo = pageInfo;
    final l$studios = studios;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$pageInfo,
      l$studios == null ? null : Object.hashAll(l$studios.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$SearchStudios$Page ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$pageInfo = pageInfo;
    final lOther$pageInfo = other.pageInfo;
    if (l$pageInfo != lOther$pageInfo) {
      return false;
    }
    final l$studios = studios;
    final lOther$studios = other.studios;
    if (l$studios != null && lOther$studios != null) {
      if (l$studios.length != lOther$studios.length) {
        return false;
      }
      for (int i = 0; i < l$studios.length; i++) {
        final l$studios$entry = l$studios[i];
        final lOther$studios$entry = lOther$studios[i];
        if (l$studios$entry != lOther$studios$entry) {
          return false;
        }
      }
    } else if (l$studios != lOther$studios) {
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

extension UtilityExtension$Query$SearchStudios$Page
    on Query$SearchStudios$Page {
  CopyWith$Query$SearchStudios$Page<Query$SearchStudios$Page> get copyWith =>
      CopyWith$Query$SearchStudios$Page(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SearchStudios$Page<TRes> {
  factory CopyWith$Query$SearchStudios$Page(
    Query$SearchStudios$Page instance,
    TRes Function(Query$SearchStudios$Page) then,
  ) = _CopyWithImpl$Query$SearchStudios$Page;

  factory CopyWith$Query$SearchStudios$Page.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchStudios$Page;

  TRes call({
    Query$SearchStudios$Page$pageInfo? pageInfo,
    List<Fragment$SearchResultStudio?>? studios,
    String? $__typename,
  });
  CopyWith$Query$SearchStudios$Page$pageInfo<TRes> get pageInfo;
  TRes studios(
      Iterable<Fragment$SearchResultStudio?>? Function(
              Iterable<
                  CopyWith$Fragment$SearchResultStudio<
                      Fragment$SearchResultStudio>?>?)
          _fn);
}

class _CopyWithImpl$Query$SearchStudios$Page<TRes>
    implements CopyWith$Query$SearchStudios$Page<TRes> {
  _CopyWithImpl$Query$SearchStudios$Page(
    this._instance,
    this._then,
  );

  final Query$SearchStudios$Page _instance;

  final TRes Function(Query$SearchStudios$Page) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pageInfo = _undefined,
    Object? studios = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$SearchStudios$Page(
        pageInfo: pageInfo == _undefined
            ? _instance.pageInfo
            : (pageInfo as Query$SearchStudios$Page$pageInfo?),
        studios: studios == _undefined
            ? _instance.studios
            : (studios as List<Fragment$SearchResultStudio?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$SearchStudios$Page$pageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return local$pageInfo == null
        ? CopyWith$Query$SearchStudios$Page$pageInfo.stub(_then(_instance))
        : CopyWith$Query$SearchStudios$Page$pageInfo(
            local$pageInfo, (e) => call(pageInfo: e));
  }

  TRes studios(
          Iterable<Fragment$SearchResultStudio?>? Function(
                  Iterable<
                      CopyWith$Fragment$SearchResultStudio<
                          Fragment$SearchResultStudio>?>?)
              _fn) =>
      call(
          studios: _fn(_instance.studios?.map((e) => e == null
              ? null
              : CopyWith$Fragment$SearchResultStudio(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$SearchStudios$Page<TRes>
    implements CopyWith$Query$SearchStudios$Page<TRes> {
  _CopyWithStubImpl$Query$SearchStudios$Page(this._res);

  TRes _res;

  call({
    Query$SearchStudios$Page$pageInfo? pageInfo,
    List<Fragment$SearchResultStudio?>? studios,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$SearchStudios$Page$pageInfo<TRes> get pageInfo =>
      CopyWith$Query$SearchStudios$Page$pageInfo.stub(_res);

  studios(_fn) => _res;
}

class Query$SearchStudios$Page$pageInfo {
  Query$SearchStudios$Page$pageInfo({
    this.hasNextPage,
    this.$__typename = 'PageInfo',
  });

  factory Query$SearchStudios$Page$pageInfo.fromJson(
      Map<String, dynamic> json) {
    final l$hasNextPage = json['hasNextPage'];
    final l$$__typename = json['__typename'];
    return Query$SearchStudios$Page$pageInfo(
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
    if (other is! Query$SearchStudios$Page$pageInfo ||
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

extension UtilityExtension$Query$SearchStudios$Page$pageInfo
    on Query$SearchStudios$Page$pageInfo {
  CopyWith$Query$SearchStudios$Page$pageInfo<Query$SearchStudios$Page$pageInfo>
      get copyWith => CopyWith$Query$SearchStudios$Page$pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$SearchStudios$Page$pageInfo<TRes> {
  factory CopyWith$Query$SearchStudios$Page$pageInfo(
    Query$SearchStudios$Page$pageInfo instance,
    TRes Function(Query$SearchStudios$Page$pageInfo) then,
  ) = _CopyWithImpl$Query$SearchStudios$Page$pageInfo;

  factory CopyWith$Query$SearchStudios$Page$pageInfo.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchStudios$Page$pageInfo;

  TRes call({
    bool? hasNextPage,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$SearchStudios$Page$pageInfo<TRes>
    implements CopyWith$Query$SearchStudios$Page$pageInfo<TRes> {
  _CopyWithImpl$Query$SearchStudios$Page$pageInfo(
    this._instance,
    this._then,
  );

  final Query$SearchStudios$Page$pageInfo _instance;

  final TRes Function(Query$SearchStudios$Page$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasNextPage = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$SearchStudios$Page$pageInfo(
        hasNextPage: hasNextPage == _undefined
            ? _instance.hasNextPage
            : (hasNextPage as bool?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$SearchStudios$Page$pageInfo<TRes>
    implements CopyWith$Query$SearchStudios$Page$pageInfo<TRes> {
  _CopyWithStubImpl$Query$SearchStudios$Page$pageInfo(this._res);

  TRes _res;

  call({
    bool? hasNextPage,
    String? $__typename,
  }) =>
      _res;
}
