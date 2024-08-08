// GENERATED FILE
// DO NOT MODIFY
// ignore_for_file: type=lint
import '../fragments.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$GetTrendingAnime {
  factory Variables$Query$GetTrendingAnime({int? page}) =>
      Variables$Query$GetTrendingAnime._({
        if (page != null) r'page': page,
      });

  Variables$Query$GetTrendingAnime._(this._$data);

  factory Variables$Query$GetTrendingAnime.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('page')) {
      final l$page = data['page'];
      result$data['page'] = (l$page as int?);
    }
    return Variables$Query$GetTrendingAnime._(result$data);
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

  CopyWith$Variables$Query$GetTrendingAnime<Variables$Query$GetTrendingAnime>
      get copyWith => CopyWith$Variables$Query$GetTrendingAnime(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GetTrendingAnime) ||
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

abstract class CopyWith$Variables$Query$GetTrendingAnime<TRes> {
  factory CopyWith$Variables$Query$GetTrendingAnime(
    Variables$Query$GetTrendingAnime instance,
    TRes Function(Variables$Query$GetTrendingAnime) then,
  ) = _CopyWithImpl$Variables$Query$GetTrendingAnime;

  factory CopyWith$Variables$Query$GetTrendingAnime.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetTrendingAnime;

  TRes call({int? page});
}

class _CopyWithImpl$Variables$Query$GetTrendingAnime<TRes>
    implements CopyWith$Variables$Query$GetTrendingAnime<TRes> {
  _CopyWithImpl$Variables$Query$GetTrendingAnime(
    this._instance,
    this._then,
  );

  final Variables$Query$GetTrendingAnime _instance;

  final TRes Function(Variables$Query$GetTrendingAnime) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? page = _undefined}) =>
      _then(Variables$Query$GetTrendingAnime._({
        ..._instance._$data,
        if (page != _undefined) 'page': (page as int?),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetTrendingAnime<TRes>
    implements CopyWith$Variables$Query$GetTrendingAnime<TRes> {
  _CopyWithStubImpl$Variables$Query$GetTrendingAnime(this._res);

  TRes _res;

  call({int? page}) => _res;
}

class Query$GetTrendingAnime {
  Query$GetTrendingAnime({
    this.Page,
    this.$__typename = 'Query',
  });

  factory Query$GetTrendingAnime.fromJson(Map<String, dynamic> json) {
    final l$Page = json['Page'];
    final l$$__typename = json['__typename'];
    return Query$GetTrendingAnime(
      Page: l$Page == null
          ? null
          : Query$GetTrendingAnime$Page.fromJson(
              (l$Page as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetTrendingAnime$Page? Page;

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
    if (!(other is Query$GetTrendingAnime) ||
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

extension UtilityExtension$Query$GetTrendingAnime on Query$GetTrendingAnime {
  CopyWith$Query$GetTrendingAnime<Query$GetTrendingAnime> get copyWith =>
      CopyWith$Query$GetTrendingAnime(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetTrendingAnime<TRes> {
  factory CopyWith$Query$GetTrendingAnime(
    Query$GetTrendingAnime instance,
    TRes Function(Query$GetTrendingAnime) then,
  ) = _CopyWithImpl$Query$GetTrendingAnime;

  factory CopyWith$Query$GetTrendingAnime.stub(TRes res) =
      _CopyWithStubImpl$Query$GetTrendingAnime;

  TRes call({
    Query$GetTrendingAnime$Page? Page,
    String? $__typename,
  });
  CopyWith$Query$GetTrendingAnime$Page<TRes> get Page;
}

class _CopyWithImpl$Query$GetTrendingAnime<TRes>
    implements CopyWith$Query$GetTrendingAnime<TRes> {
  _CopyWithImpl$Query$GetTrendingAnime(
    this._instance,
    this._then,
  );

  final Query$GetTrendingAnime _instance;

  final TRes Function(Query$GetTrendingAnime) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? Page = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetTrendingAnime(
        Page: Page == _undefined
            ? _instance.Page
            : (Page as Query$GetTrendingAnime$Page?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetTrendingAnime$Page<TRes> get Page {
    final local$Page = _instance.Page;
    return local$Page == null
        ? CopyWith$Query$GetTrendingAnime$Page.stub(_then(_instance))
        : CopyWith$Query$GetTrendingAnime$Page(
            local$Page, (e) => call(Page: e));
  }
}

class _CopyWithStubImpl$Query$GetTrendingAnime<TRes>
    implements CopyWith$Query$GetTrendingAnime<TRes> {
  _CopyWithStubImpl$Query$GetTrendingAnime(this._res);

  TRes _res;

  call({
    Query$GetTrendingAnime$Page? Page,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetTrendingAnime$Page<TRes> get Page =>
      CopyWith$Query$GetTrendingAnime$Page.stub(_res);
}

const documentNodeQueryGetTrendingAnime = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetTrendingAnime'),
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
            name: NameNode(value: 'perPage'),
            value: IntValueNode(value: '30'),
          ),
          ArgumentNode(
            name: NameNode(value: 'page'),
            value: VariableNode(name: NameNode(value: 'page')),
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
            name: NameNode(value: 'media'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'sort'),
                value: ListValueNode(values: [
                  EnumValueNode(name: NameNode(value: 'TRENDING_DESC'))
                ]),
              ),
              ArgumentNode(
                name: NameNode(value: 'type'),
                value: EnumValueNode(name: NameNode(value: 'ANIME')),
              ),
              ArgumentNode(
                name: NameNode(value: 'isAdult'),
                value: BooleanValueNode(value: false),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                name: NameNode(value: 'MediaShort'),
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
  fragmentDefinitionMediaShort,
  fragmentDefinitionFuzzyDate,
]);
Query$GetTrendingAnime _parserFn$Query$GetTrendingAnime(
        Map<String, dynamic> data) =>
    Query$GetTrendingAnime.fromJson(data);
typedef OnQueryComplete$Query$GetTrendingAnime = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$GetTrendingAnime?,
);

class Options$Query$GetTrendingAnime
    extends graphql.QueryOptions<Query$GetTrendingAnime> {
  Options$Query$GetTrendingAnime({
    String? operationName,
    Variables$Query$GetTrendingAnime? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetTrendingAnime? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$GetTrendingAnime? onComplete,
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
                        : _parserFn$Query$GetTrendingAnime(data),
                  ),
          onError: onError,
          document: documentNodeQueryGetTrendingAnime,
          parserFn: _parserFn$Query$GetTrendingAnime,
        );

  final OnQueryComplete$Query$GetTrendingAnime? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$GetTrendingAnime
    extends graphql.WatchQueryOptions<Query$GetTrendingAnime> {
  WatchOptions$Query$GetTrendingAnime({
    String? operationName,
    Variables$Query$GetTrendingAnime? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetTrendingAnime? typedOptimisticResult,
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
          document: documentNodeQueryGetTrendingAnime,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetTrendingAnime,
        );
}

class FetchMoreOptions$Query$GetTrendingAnime extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetTrendingAnime({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$GetTrendingAnime? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryGetTrendingAnime,
        );
}

extension ClientExtension$Query$GetTrendingAnime on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetTrendingAnime>> query$GetTrendingAnime(
          [Options$Query$GetTrendingAnime? options]) async =>
      await this.query(options ?? Options$Query$GetTrendingAnime());
  graphql.ObservableQuery<Query$GetTrendingAnime> watchQuery$GetTrendingAnime(
          [WatchOptions$Query$GetTrendingAnime? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$GetTrendingAnime());
  void writeQuery$GetTrendingAnime({
    required Query$GetTrendingAnime data,
    Variables$Query$GetTrendingAnime? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryGetTrendingAnime),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetTrendingAnime? readQuery$GetTrendingAnime({
    Variables$Query$GetTrendingAnime? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation:
            graphql.Operation(document: documentNodeQueryGetTrendingAnime),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$GetTrendingAnime.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$GetTrendingAnime>
    useQuery$GetTrendingAnime([Options$Query$GetTrendingAnime? options]) =>
        graphql_flutter.useQuery(options ?? Options$Query$GetTrendingAnime());
graphql.ObservableQuery<Query$GetTrendingAnime> useWatchQuery$GetTrendingAnime(
        [WatchOptions$Query$GetTrendingAnime? options]) =>
    graphql_flutter
        .useWatchQuery(options ?? WatchOptions$Query$GetTrendingAnime());

class Query$GetTrendingAnime$Widget
    extends graphql_flutter.Query<Query$GetTrendingAnime> {
  Query$GetTrendingAnime$Widget({
    widgets.Key? key,
    Options$Query$GetTrendingAnime? options,
    required graphql_flutter.QueryBuilder<Query$GetTrendingAnime> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$GetTrendingAnime(),
          builder: builder,
        );
}

class Query$GetTrendingAnime$Page {
  Query$GetTrendingAnime$Page({
    this.pageInfo,
    this.media,
    this.$__typename = 'Page',
  });

  factory Query$GetTrendingAnime$Page.fromJson(Map<String, dynamic> json) {
    final l$pageInfo = json['pageInfo'];
    final l$media = json['media'];
    final l$$__typename = json['__typename'];
    return Query$GetTrendingAnime$Page(
      pageInfo: l$pageInfo == null
          ? null
          : Query$GetTrendingAnime$Page$pageInfo.fromJson(
              (l$pageInfo as Map<String, dynamic>)),
      media: (l$media as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$MediaShort.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetTrendingAnime$Page$pageInfo? pageInfo;

  final List<Fragment$MediaShort?>? media;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$pageInfo = pageInfo;
    _resultData['pageInfo'] = l$pageInfo?.toJson();
    final l$media = media;
    _resultData['media'] = l$media?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$pageInfo = pageInfo;
    final l$media = media;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$pageInfo,
      l$media == null ? null : Object.hashAll(l$media.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetTrendingAnime$Page) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$pageInfo = pageInfo;
    final lOther$pageInfo = other.pageInfo;
    if (l$pageInfo != lOther$pageInfo) {
      return false;
    }
    final l$media = media;
    final lOther$media = other.media;
    if (l$media != null && lOther$media != null) {
      if (l$media.length != lOther$media.length) {
        return false;
      }
      for (int i = 0; i < l$media.length; i++) {
        final l$media$entry = l$media[i];
        final lOther$media$entry = lOther$media[i];
        if (l$media$entry != lOther$media$entry) {
          return false;
        }
      }
    } else if (l$media != lOther$media) {
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

extension UtilityExtension$Query$GetTrendingAnime$Page
    on Query$GetTrendingAnime$Page {
  CopyWith$Query$GetTrendingAnime$Page<Query$GetTrendingAnime$Page>
      get copyWith => CopyWith$Query$GetTrendingAnime$Page(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetTrendingAnime$Page<TRes> {
  factory CopyWith$Query$GetTrendingAnime$Page(
    Query$GetTrendingAnime$Page instance,
    TRes Function(Query$GetTrendingAnime$Page) then,
  ) = _CopyWithImpl$Query$GetTrendingAnime$Page;

  factory CopyWith$Query$GetTrendingAnime$Page.stub(TRes res) =
      _CopyWithStubImpl$Query$GetTrendingAnime$Page;

  TRes call({
    Query$GetTrendingAnime$Page$pageInfo? pageInfo,
    List<Fragment$MediaShort?>? media,
    String? $__typename,
  });
  CopyWith$Query$GetTrendingAnime$Page$pageInfo<TRes> get pageInfo;
  TRes media(
      Iterable<Fragment$MediaShort?>? Function(
              Iterable<CopyWith$Fragment$MediaShort<Fragment$MediaShort>?>?)
          _fn);
}

class _CopyWithImpl$Query$GetTrendingAnime$Page<TRes>
    implements CopyWith$Query$GetTrendingAnime$Page<TRes> {
  _CopyWithImpl$Query$GetTrendingAnime$Page(
    this._instance,
    this._then,
  );

  final Query$GetTrendingAnime$Page _instance;

  final TRes Function(Query$GetTrendingAnime$Page) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pageInfo = _undefined,
    Object? media = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetTrendingAnime$Page(
        pageInfo: pageInfo == _undefined
            ? _instance.pageInfo
            : (pageInfo as Query$GetTrendingAnime$Page$pageInfo?),
        media: media == _undefined
            ? _instance.media
            : (media as List<Fragment$MediaShort?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetTrendingAnime$Page$pageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return local$pageInfo == null
        ? CopyWith$Query$GetTrendingAnime$Page$pageInfo.stub(_then(_instance))
        : CopyWith$Query$GetTrendingAnime$Page$pageInfo(
            local$pageInfo, (e) => call(pageInfo: e));
  }

  TRes media(
          Iterable<Fragment$MediaShort?>? Function(
                  Iterable<CopyWith$Fragment$MediaShort<Fragment$MediaShort>?>?)
              _fn) =>
      call(
          media: _fn(_instance.media?.map((e) => e == null
              ? null
              : CopyWith$Fragment$MediaShort(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$GetTrendingAnime$Page<TRes>
    implements CopyWith$Query$GetTrendingAnime$Page<TRes> {
  _CopyWithStubImpl$Query$GetTrendingAnime$Page(this._res);

  TRes _res;

  call({
    Query$GetTrendingAnime$Page$pageInfo? pageInfo,
    List<Fragment$MediaShort?>? media,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetTrendingAnime$Page$pageInfo<TRes> get pageInfo =>
      CopyWith$Query$GetTrendingAnime$Page$pageInfo.stub(_res);

  media(_fn) => _res;
}

class Query$GetTrendingAnime$Page$pageInfo {
  Query$GetTrendingAnime$Page$pageInfo({
    this.hasNextPage,
    this.$__typename = 'PageInfo',
  });

  factory Query$GetTrendingAnime$Page$pageInfo.fromJson(
      Map<String, dynamic> json) {
    final l$hasNextPage = json['hasNextPage'];
    final l$$__typename = json['__typename'];
    return Query$GetTrendingAnime$Page$pageInfo(
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
    if (!(other is Query$GetTrendingAnime$Page$pageInfo) ||
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

extension UtilityExtension$Query$GetTrendingAnime$Page$pageInfo
    on Query$GetTrendingAnime$Page$pageInfo {
  CopyWith$Query$GetTrendingAnime$Page$pageInfo<
          Query$GetTrendingAnime$Page$pageInfo>
      get copyWith => CopyWith$Query$GetTrendingAnime$Page$pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetTrendingAnime$Page$pageInfo<TRes> {
  factory CopyWith$Query$GetTrendingAnime$Page$pageInfo(
    Query$GetTrendingAnime$Page$pageInfo instance,
    TRes Function(Query$GetTrendingAnime$Page$pageInfo) then,
  ) = _CopyWithImpl$Query$GetTrendingAnime$Page$pageInfo;

  factory CopyWith$Query$GetTrendingAnime$Page$pageInfo.stub(TRes res) =
      _CopyWithStubImpl$Query$GetTrendingAnime$Page$pageInfo;

  TRes call({
    bool? hasNextPage,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetTrendingAnime$Page$pageInfo<TRes>
    implements CopyWith$Query$GetTrendingAnime$Page$pageInfo<TRes> {
  _CopyWithImpl$Query$GetTrendingAnime$Page$pageInfo(
    this._instance,
    this._then,
  );

  final Query$GetTrendingAnime$Page$pageInfo _instance;

  final TRes Function(Query$GetTrendingAnime$Page$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasNextPage = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetTrendingAnime$Page$pageInfo(
        hasNextPage: hasNextPage == _undefined
            ? _instance.hasNextPage
            : (hasNextPage as bool?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetTrendingAnime$Page$pageInfo<TRes>
    implements CopyWith$Query$GetTrendingAnime$Page$pageInfo<TRes> {
  _CopyWithStubImpl$Query$GetTrendingAnime$Page$pageInfo(this._res);

  TRes _res;

  call({
    bool? hasNextPage,
    String? $__typename,
  }) =>
      _res;
}
