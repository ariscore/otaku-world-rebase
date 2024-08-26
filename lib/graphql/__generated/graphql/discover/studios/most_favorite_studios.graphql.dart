// GENERATED FILE
// DO NOT MODIFY
// ignore_for_file: type=lint
import '../../fragments.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$GetMostFavoriteStudios {
  factory Variables$Query$GetMostFavoriteStudios({int? page}) =>
      Variables$Query$GetMostFavoriteStudios._({
        if (page != null) r'page': page,
      });

  Variables$Query$GetMostFavoriteStudios._(this._$data);

  factory Variables$Query$GetMostFavoriteStudios.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('page')) {
      final l$page = data['page'];
      result$data['page'] = (l$page as int?);
    }
    return Variables$Query$GetMostFavoriteStudios._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get page => (_$data['page'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('page')) {
      final l$page = page;
      result$data['page'] = l$page;
    }
    return result$data;
  }

  CopyWith$Variables$Query$GetMostFavoriteStudios<
          Variables$Query$GetMostFavoriteStudios>
      get copyWith => CopyWith$Variables$Query$GetMostFavoriteStudios(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GetMostFavoriteStudios) ||
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
    return true;
  }

  @override
  int get hashCode {
    final l$page = page;
    return Object.hashAll([_$data.containsKey('page') ? l$page : const {}]);
  }
}

abstract class CopyWith$Variables$Query$GetMostFavoriteStudios<TRes> {
  factory CopyWith$Variables$Query$GetMostFavoriteStudios(
    Variables$Query$GetMostFavoriteStudios instance,
    TRes Function(Variables$Query$GetMostFavoriteStudios) then,
  ) = _CopyWithImpl$Variables$Query$GetMostFavoriteStudios;

  factory CopyWith$Variables$Query$GetMostFavoriteStudios.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetMostFavoriteStudios;

  TRes call({int? page});
}

class _CopyWithImpl$Variables$Query$GetMostFavoriteStudios<TRes>
    implements CopyWith$Variables$Query$GetMostFavoriteStudios<TRes> {
  _CopyWithImpl$Variables$Query$GetMostFavoriteStudios(
    this._instance,
    this._then,
  );

  final Variables$Query$GetMostFavoriteStudios _instance;

  final TRes Function(Variables$Query$GetMostFavoriteStudios) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? page = _undefined}) =>
      _then(Variables$Query$GetMostFavoriteStudios._({
        ..._instance._$data,
        if (page != _undefined) 'page': (page as int?),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetMostFavoriteStudios<TRes>
    implements CopyWith$Variables$Query$GetMostFavoriteStudios<TRes> {
  _CopyWithStubImpl$Variables$Query$GetMostFavoriteStudios(this._res);

  TRes _res;

  call({int? page}) => _res;
}

class Query$GetMostFavoriteStudios {
  Query$GetMostFavoriteStudios({
    this.Page,
    this.$__typename = 'Query',
  });

  factory Query$GetMostFavoriteStudios.fromJson(Map<String, dynamic> json) {
    final l$Page = json['Page'];
    final l$$__typename = json['__typename'];
    return Query$GetMostFavoriteStudios(
      Page: l$Page == null
          ? null
          : Query$GetMostFavoriteStudios$Page.fromJson(
              (l$Page as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetMostFavoriteStudios$Page? Page;

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
    if (!(other is Query$GetMostFavoriteStudios) ||
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

extension UtilityExtension$Query$GetMostFavoriteStudios
    on Query$GetMostFavoriteStudios {
  CopyWith$Query$GetMostFavoriteStudios<Query$GetMostFavoriteStudios>
      get copyWith => CopyWith$Query$GetMostFavoriteStudios(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetMostFavoriteStudios<TRes> {
  factory CopyWith$Query$GetMostFavoriteStudios(
    Query$GetMostFavoriteStudios instance,
    TRes Function(Query$GetMostFavoriteStudios) then,
  ) = _CopyWithImpl$Query$GetMostFavoriteStudios;

  factory CopyWith$Query$GetMostFavoriteStudios.stub(TRes res) =
      _CopyWithStubImpl$Query$GetMostFavoriteStudios;

  TRes call({
    Query$GetMostFavoriteStudios$Page? Page,
    String? $__typename,
  });
  CopyWith$Query$GetMostFavoriteStudios$Page<TRes> get Page;
}

class _CopyWithImpl$Query$GetMostFavoriteStudios<TRes>
    implements CopyWith$Query$GetMostFavoriteStudios<TRes> {
  _CopyWithImpl$Query$GetMostFavoriteStudios(
    this._instance,
    this._then,
  );

  final Query$GetMostFavoriteStudios _instance;

  final TRes Function(Query$GetMostFavoriteStudios) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? Page = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetMostFavoriteStudios(
        Page: Page == _undefined
            ? _instance.Page
            : (Page as Query$GetMostFavoriteStudios$Page?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetMostFavoriteStudios$Page<TRes> get Page {
    final local$Page = _instance.Page;
    return local$Page == null
        ? CopyWith$Query$GetMostFavoriteStudios$Page.stub(_then(_instance))
        : CopyWith$Query$GetMostFavoriteStudios$Page(
            local$Page, (e) => call(Page: e));
  }
}

class _CopyWithStubImpl$Query$GetMostFavoriteStudios<TRes>
    implements CopyWith$Query$GetMostFavoriteStudios<TRes> {
  _CopyWithStubImpl$Query$GetMostFavoriteStudios(this._res);

  TRes _res;

  call({
    Query$GetMostFavoriteStudios$Page? Page,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetMostFavoriteStudios$Page<TRes> get Page =>
      CopyWith$Query$GetMostFavoriteStudios$Page.stub(_res);
}

const documentNodeQueryGetMostFavoriteStudios = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetMostFavoriteStudios'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'page')),
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
            name: NameNode(value: 'studios'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'sort'),
                value: ListValueNode(values: [
                  EnumValueNode(name: NameNode(value: 'FAVOURITES_DESC'))
                ]),
              )
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
Query$GetMostFavoriteStudios _parserFn$Query$GetMostFavoriteStudios(
        Map<String, dynamic> data) =>
    Query$GetMostFavoriteStudios.fromJson(data);
typedef OnQueryComplete$Query$GetMostFavoriteStudios = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$GetMostFavoriteStudios?,
);

class Options$Query$GetMostFavoriteStudios
    extends graphql.QueryOptions<Query$GetMostFavoriteStudios> {
  Options$Query$GetMostFavoriteStudios({
    String? operationName,
    Variables$Query$GetMostFavoriteStudios? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetMostFavoriteStudios? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$GetMostFavoriteStudios? onComplete,
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
                        : _parserFn$Query$GetMostFavoriteStudios(data),
                  ),
          onError: onError,
          document: documentNodeQueryGetMostFavoriteStudios,
          parserFn: _parserFn$Query$GetMostFavoriteStudios,
        );

  final OnQueryComplete$Query$GetMostFavoriteStudios? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$GetMostFavoriteStudios
    extends graphql.WatchQueryOptions<Query$GetMostFavoriteStudios> {
  WatchOptions$Query$GetMostFavoriteStudios({
    String? operationName,
    Variables$Query$GetMostFavoriteStudios? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetMostFavoriteStudios? typedOptimisticResult,
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
          document: documentNodeQueryGetMostFavoriteStudios,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetMostFavoriteStudios,
        );
}

class FetchMoreOptions$Query$GetMostFavoriteStudios
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetMostFavoriteStudios({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$GetMostFavoriteStudios? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryGetMostFavoriteStudios,
        );
}

extension ClientExtension$Query$GetMostFavoriteStudios
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetMostFavoriteStudios>>
      query$GetMostFavoriteStudios(
              [Options$Query$GetMostFavoriteStudios? options]) async =>
          await this.query(options ?? Options$Query$GetMostFavoriteStudios());
  graphql.ObservableQuery<
      Query$GetMostFavoriteStudios> watchQuery$GetMostFavoriteStudios(
          [WatchOptions$Query$GetMostFavoriteStudios? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$GetMostFavoriteStudios());
  void writeQuery$GetMostFavoriteStudios({
    required Query$GetMostFavoriteStudios data,
    Variables$Query$GetMostFavoriteStudios? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(
              document: documentNodeQueryGetMostFavoriteStudios),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetMostFavoriteStudios? readQuery$GetMostFavoriteStudios({
    Variables$Query$GetMostFavoriteStudios? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(
            document: documentNodeQueryGetMostFavoriteStudios),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null
        ? null
        : Query$GetMostFavoriteStudios.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$GetMostFavoriteStudios>
    useQuery$GetMostFavoriteStudios(
            [Options$Query$GetMostFavoriteStudios? options]) =>
        graphql_flutter
            .useQuery(options ?? Options$Query$GetMostFavoriteStudios());
graphql.ObservableQuery<Query$GetMostFavoriteStudios>
    useWatchQuery$GetMostFavoriteStudios(
            [WatchOptions$Query$GetMostFavoriteStudios? options]) =>
        graphql_flutter.useWatchQuery(
            options ?? WatchOptions$Query$GetMostFavoriteStudios());

class Query$GetMostFavoriteStudios$Widget
    extends graphql_flutter.Query<Query$GetMostFavoriteStudios> {
  Query$GetMostFavoriteStudios$Widget({
    widgets.Key? key,
    Options$Query$GetMostFavoriteStudios? options,
    required graphql_flutter.QueryBuilder<Query$GetMostFavoriteStudios> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$GetMostFavoriteStudios(),
          builder: builder,
        );
}

class Query$GetMostFavoriteStudios$Page {
  Query$GetMostFavoriteStudios$Page({
    this.pageInfo,
    this.studios,
    this.$__typename = 'Page',
  });

  factory Query$GetMostFavoriteStudios$Page.fromJson(
      Map<String, dynamic> json) {
    final l$pageInfo = json['pageInfo'];
    final l$studios = json['studios'];
    final l$$__typename = json['__typename'];
    return Query$GetMostFavoriteStudios$Page(
      pageInfo: l$pageInfo == null
          ? null
          : Query$GetMostFavoriteStudios$Page$pageInfo.fromJson(
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

  final Query$GetMostFavoriteStudios$Page$pageInfo? pageInfo;

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
    if (!(other is Query$GetMostFavoriteStudios$Page) ||
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

extension UtilityExtension$Query$GetMostFavoriteStudios$Page
    on Query$GetMostFavoriteStudios$Page {
  CopyWith$Query$GetMostFavoriteStudios$Page<Query$GetMostFavoriteStudios$Page>
      get copyWith => CopyWith$Query$GetMostFavoriteStudios$Page(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetMostFavoriteStudios$Page<TRes> {
  factory CopyWith$Query$GetMostFavoriteStudios$Page(
    Query$GetMostFavoriteStudios$Page instance,
    TRes Function(Query$GetMostFavoriteStudios$Page) then,
  ) = _CopyWithImpl$Query$GetMostFavoriteStudios$Page;

  factory CopyWith$Query$GetMostFavoriteStudios$Page.stub(TRes res) =
      _CopyWithStubImpl$Query$GetMostFavoriteStudios$Page;

  TRes call({
    Query$GetMostFavoriteStudios$Page$pageInfo? pageInfo,
    List<Fragment$SearchResultStudio?>? studios,
    String? $__typename,
  });
  CopyWith$Query$GetMostFavoriteStudios$Page$pageInfo<TRes> get pageInfo;
  TRes studios(
      Iterable<Fragment$SearchResultStudio?>? Function(
              Iterable<
                  CopyWith$Fragment$SearchResultStudio<
                      Fragment$SearchResultStudio>?>?)
          _fn);
}

class _CopyWithImpl$Query$GetMostFavoriteStudios$Page<TRes>
    implements CopyWith$Query$GetMostFavoriteStudios$Page<TRes> {
  _CopyWithImpl$Query$GetMostFavoriteStudios$Page(
    this._instance,
    this._then,
  );

  final Query$GetMostFavoriteStudios$Page _instance;

  final TRes Function(Query$GetMostFavoriteStudios$Page) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pageInfo = _undefined,
    Object? studios = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetMostFavoriteStudios$Page(
        pageInfo: pageInfo == _undefined
            ? _instance.pageInfo
            : (pageInfo as Query$GetMostFavoriteStudios$Page$pageInfo?),
        studios: studios == _undefined
            ? _instance.studios
            : (studios as List<Fragment$SearchResultStudio?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetMostFavoriteStudios$Page$pageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return local$pageInfo == null
        ? CopyWith$Query$GetMostFavoriteStudios$Page$pageInfo.stub(
            _then(_instance))
        : CopyWith$Query$GetMostFavoriteStudios$Page$pageInfo(
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

class _CopyWithStubImpl$Query$GetMostFavoriteStudios$Page<TRes>
    implements CopyWith$Query$GetMostFavoriteStudios$Page<TRes> {
  _CopyWithStubImpl$Query$GetMostFavoriteStudios$Page(this._res);

  TRes _res;

  call({
    Query$GetMostFavoriteStudios$Page$pageInfo? pageInfo,
    List<Fragment$SearchResultStudio?>? studios,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetMostFavoriteStudios$Page$pageInfo<TRes> get pageInfo =>
      CopyWith$Query$GetMostFavoriteStudios$Page$pageInfo.stub(_res);

  studios(_fn) => _res;
}

class Query$GetMostFavoriteStudios$Page$pageInfo {
  Query$GetMostFavoriteStudios$Page$pageInfo({
    this.hasNextPage,
    this.$__typename = 'PageInfo',
  });

  factory Query$GetMostFavoriteStudios$Page$pageInfo.fromJson(
      Map<String, dynamic> json) {
    final l$hasNextPage = json['hasNextPage'];
    final l$$__typename = json['__typename'];
    return Query$GetMostFavoriteStudios$Page$pageInfo(
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
    if (!(other is Query$GetMostFavoriteStudios$Page$pageInfo) ||
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

extension UtilityExtension$Query$GetMostFavoriteStudios$Page$pageInfo
    on Query$GetMostFavoriteStudios$Page$pageInfo {
  CopyWith$Query$GetMostFavoriteStudios$Page$pageInfo<
          Query$GetMostFavoriteStudios$Page$pageInfo>
      get copyWith => CopyWith$Query$GetMostFavoriteStudios$Page$pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetMostFavoriteStudios$Page$pageInfo<TRes> {
  factory CopyWith$Query$GetMostFavoriteStudios$Page$pageInfo(
    Query$GetMostFavoriteStudios$Page$pageInfo instance,
    TRes Function(Query$GetMostFavoriteStudios$Page$pageInfo) then,
  ) = _CopyWithImpl$Query$GetMostFavoriteStudios$Page$pageInfo;

  factory CopyWith$Query$GetMostFavoriteStudios$Page$pageInfo.stub(TRes res) =
      _CopyWithStubImpl$Query$GetMostFavoriteStudios$Page$pageInfo;

  TRes call({
    bool? hasNextPage,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetMostFavoriteStudios$Page$pageInfo<TRes>
    implements CopyWith$Query$GetMostFavoriteStudios$Page$pageInfo<TRes> {
  _CopyWithImpl$Query$GetMostFavoriteStudios$Page$pageInfo(
    this._instance,
    this._then,
  );

  final Query$GetMostFavoriteStudios$Page$pageInfo _instance;

  final TRes Function(Query$GetMostFavoriteStudios$Page$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasNextPage = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetMostFavoriteStudios$Page$pageInfo(
        hasNextPage: hasNextPage == _undefined
            ? _instance.hasNextPage
            : (hasNextPage as bool?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetMostFavoriteStudios$Page$pageInfo<TRes>
    implements CopyWith$Query$GetMostFavoriteStudios$Page$pageInfo<TRes> {
  _CopyWithStubImpl$Query$GetMostFavoriteStudios$Page$pageInfo(this._res);

  TRes _res;

  call({
    bool? hasNextPage,
    String? $__typename,
  }) =>
      _res;
}
