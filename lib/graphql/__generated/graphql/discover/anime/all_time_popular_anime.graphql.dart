// GENERATED FILE
// DO NOT MODIFY
// ignore_for_file: type=lint
import '../../fragments.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$GetAllTimePopularAnime {
  factory Variables$Query$GetAllTimePopularAnime({int? page}) =>
      Variables$Query$GetAllTimePopularAnime._({
        if (page != null) r'page': page,
      });

  Variables$Query$GetAllTimePopularAnime._(this._$data);

  factory Variables$Query$GetAllTimePopularAnime.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('page')) {
      final l$page = data['page'];
      result$data['page'] = (l$page as int?);
    }
    return Variables$Query$GetAllTimePopularAnime._(result$data);
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

  CopyWith$Variables$Query$GetAllTimePopularAnime<
          Variables$Query$GetAllTimePopularAnime>
      get copyWith => CopyWith$Variables$Query$GetAllTimePopularAnime(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GetAllTimePopularAnime) ||
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

abstract class CopyWith$Variables$Query$GetAllTimePopularAnime<TRes> {
  factory CopyWith$Variables$Query$GetAllTimePopularAnime(
    Variables$Query$GetAllTimePopularAnime instance,
    TRes Function(Variables$Query$GetAllTimePopularAnime) then,
  ) = _CopyWithImpl$Variables$Query$GetAllTimePopularAnime;

  factory CopyWith$Variables$Query$GetAllTimePopularAnime.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetAllTimePopularAnime;

  TRes call({int? page});
}

class _CopyWithImpl$Variables$Query$GetAllTimePopularAnime<TRes>
    implements CopyWith$Variables$Query$GetAllTimePopularAnime<TRes> {
  _CopyWithImpl$Variables$Query$GetAllTimePopularAnime(
    this._instance,
    this._then,
  );

  final Variables$Query$GetAllTimePopularAnime _instance;

  final TRes Function(Variables$Query$GetAllTimePopularAnime) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? page = _undefined}) =>
      _then(Variables$Query$GetAllTimePopularAnime._({
        ..._instance._$data,
        if (page != _undefined) 'page': (page as int?),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetAllTimePopularAnime<TRes>
    implements CopyWith$Variables$Query$GetAllTimePopularAnime<TRes> {
  _CopyWithStubImpl$Variables$Query$GetAllTimePopularAnime(this._res);

  TRes _res;

  call({int? page}) => _res;
}

class Query$GetAllTimePopularAnime {
  Query$GetAllTimePopularAnime({
    this.Page,
    this.$__typename = 'Query',
  });

  factory Query$GetAllTimePopularAnime.fromJson(Map<String, dynamic> json) {
    final l$Page = json['Page'];
    final l$$__typename = json['__typename'];
    return Query$GetAllTimePopularAnime(
      Page: l$Page == null
          ? null
          : Query$GetAllTimePopularAnime$Page.fromJson(
              (l$Page as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetAllTimePopularAnime$Page? Page;

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
    if (!(other is Query$GetAllTimePopularAnime) ||
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

extension UtilityExtension$Query$GetAllTimePopularAnime
    on Query$GetAllTimePopularAnime {
  CopyWith$Query$GetAllTimePopularAnime<Query$GetAllTimePopularAnime>
      get copyWith => CopyWith$Query$GetAllTimePopularAnime(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetAllTimePopularAnime<TRes> {
  factory CopyWith$Query$GetAllTimePopularAnime(
    Query$GetAllTimePopularAnime instance,
    TRes Function(Query$GetAllTimePopularAnime) then,
  ) = _CopyWithImpl$Query$GetAllTimePopularAnime;

  factory CopyWith$Query$GetAllTimePopularAnime.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAllTimePopularAnime;

  TRes call({
    Query$GetAllTimePopularAnime$Page? Page,
    String? $__typename,
  });
  CopyWith$Query$GetAllTimePopularAnime$Page<TRes> get Page;
}

class _CopyWithImpl$Query$GetAllTimePopularAnime<TRes>
    implements CopyWith$Query$GetAllTimePopularAnime<TRes> {
  _CopyWithImpl$Query$GetAllTimePopularAnime(
    this._instance,
    this._then,
  );

  final Query$GetAllTimePopularAnime _instance;

  final TRes Function(Query$GetAllTimePopularAnime) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? Page = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetAllTimePopularAnime(
        Page: Page == _undefined
            ? _instance.Page
            : (Page as Query$GetAllTimePopularAnime$Page?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetAllTimePopularAnime$Page<TRes> get Page {
    final local$Page = _instance.Page;
    return local$Page == null
        ? CopyWith$Query$GetAllTimePopularAnime$Page.stub(_then(_instance))
        : CopyWith$Query$GetAllTimePopularAnime$Page(
            local$Page, (e) => call(Page: e));
  }
}

class _CopyWithStubImpl$Query$GetAllTimePopularAnime<TRes>
    implements CopyWith$Query$GetAllTimePopularAnime<TRes> {
  _CopyWithStubImpl$Query$GetAllTimePopularAnime(this._res);

  TRes _res;

  call({
    Query$GetAllTimePopularAnime$Page? Page,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetAllTimePopularAnime$Page<TRes> get Page =>
      CopyWith$Query$GetAllTimePopularAnime$Page.stub(_res);
}

const documentNodeQueryGetAllTimePopularAnime = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetAllTimePopularAnime'),
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
            name: NameNode(value: 'media'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'sort'),
                value: ListValueNode(values: [
                  EnumValueNode(name: NameNode(value: 'POPULARITY_DESC'))
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
Query$GetAllTimePopularAnime _parserFn$Query$GetAllTimePopularAnime(
        Map<String, dynamic> data) =>
    Query$GetAllTimePopularAnime.fromJson(data);
typedef OnQueryComplete$Query$GetAllTimePopularAnime = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$GetAllTimePopularAnime?,
);

class Options$Query$GetAllTimePopularAnime
    extends graphql.QueryOptions<Query$GetAllTimePopularAnime> {
  Options$Query$GetAllTimePopularAnime({
    String? operationName,
    Variables$Query$GetAllTimePopularAnime? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetAllTimePopularAnime? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$GetAllTimePopularAnime? onComplete,
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
                        : _parserFn$Query$GetAllTimePopularAnime(data),
                  ),
          onError: onError,
          document: documentNodeQueryGetAllTimePopularAnime,
          parserFn: _parserFn$Query$GetAllTimePopularAnime,
        );

  final OnQueryComplete$Query$GetAllTimePopularAnime? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$GetAllTimePopularAnime
    extends graphql.WatchQueryOptions<Query$GetAllTimePopularAnime> {
  WatchOptions$Query$GetAllTimePopularAnime({
    String? operationName,
    Variables$Query$GetAllTimePopularAnime? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetAllTimePopularAnime? typedOptimisticResult,
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
          document: documentNodeQueryGetAllTimePopularAnime,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetAllTimePopularAnime,
        );
}

class FetchMoreOptions$Query$GetAllTimePopularAnime
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetAllTimePopularAnime({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$GetAllTimePopularAnime? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryGetAllTimePopularAnime,
        );
}

extension ClientExtension$Query$GetAllTimePopularAnime
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetAllTimePopularAnime>>
      query$GetAllTimePopularAnime(
              [Options$Query$GetAllTimePopularAnime? options]) async =>
          await this.query(options ?? Options$Query$GetAllTimePopularAnime());
  graphql.ObservableQuery<
      Query$GetAllTimePopularAnime> watchQuery$GetAllTimePopularAnime(
          [WatchOptions$Query$GetAllTimePopularAnime? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$GetAllTimePopularAnime());
  void writeQuery$GetAllTimePopularAnime({
    required Query$GetAllTimePopularAnime data,
    Variables$Query$GetAllTimePopularAnime? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(
              document: documentNodeQueryGetAllTimePopularAnime),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetAllTimePopularAnime? readQuery$GetAllTimePopularAnime({
    Variables$Query$GetAllTimePopularAnime? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(
            document: documentNodeQueryGetAllTimePopularAnime),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null
        ? null
        : Query$GetAllTimePopularAnime.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$GetAllTimePopularAnime>
    useQuery$GetAllTimePopularAnime(
            [Options$Query$GetAllTimePopularAnime? options]) =>
        graphql_flutter
            .useQuery(options ?? Options$Query$GetAllTimePopularAnime());
graphql.ObservableQuery<Query$GetAllTimePopularAnime>
    useWatchQuery$GetAllTimePopularAnime(
            [WatchOptions$Query$GetAllTimePopularAnime? options]) =>
        graphql_flutter.useWatchQuery(
            options ?? WatchOptions$Query$GetAllTimePopularAnime());

class Query$GetAllTimePopularAnime$Widget
    extends graphql_flutter.Query<Query$GetAllTimePopularAnime> {
  Query$GetAllTimePopularAnime$Widget({
    widgets.Key? key,
    Options$Query$GetAllTimePopularAnime? options,
    required graphql_flutter.QueryBuilder<Query$GetAllTimePopularAnime> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$GetAllTimePopularAnime(),
          builder: builder,
        );
}

class Query$GetAllTimePopularAnime$Page {
  Query$GetAllTimePopularAnime$Page({
    this.pageInfo,
    this.media,
    this.$__typename = 'Page',
  });

  factory Query$GetAllTimePopularAnime$Page.fromJson(
      Map<String, dynamic> json) {
    final l$pageInfo = json['pageInfo'];
    final l$media = json['media'];
    final l$$__typename = json['__typename'];
    return Query$GetAllTimePopularAnime$Page(
      pageInfo: l$pageInfo == null
          ? null
          : Query$GetAllTimePopularAnime$Page$pageInfo.fromJson(
              (l$pageInfo as Map<String, dynamic>)),
      media: (l$media as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$MediaShort.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetAllTimePopularAnime$Page$pageInfo? pageInfo;

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
    if (!(other is Query$GetAllTimePopularAnime$Page) ||
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

extension UtilityExtension$Query$GetAllTimePopularAnime$Page
    on Query$GetAllTimePopularAnime$Page {
  CopyWith$Query$GetAllTimePopularAnime$Page<Query$GetAllTimePopularAnime$Page>
      get copyWith => CopyWith$Query$GetAllTimePopularAnime$Page(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetAllTimePopularAnime$Page<TRes> {
  factory CopyWith$Query$GetAllTimePopularAnime$Page(
    Query$GetAllTimePopularAnime$Page instance,
    TRes Function(Query$GetAllTimePopularAnime$Page) then,
  ) = _CopyWithImpl$Query$GetAllTimePopularAnime$Page;

  factory CopyWith$Query$GetAllTimePopularAnime$Page.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAllTimePopularAnime$Page;

  TRes call({
    Query$GetAllTimePopularAnime$Page$pageInfo? pageInfo,
    List<Fragment$MediaShort?>? media,
    String? $__typename,
  });
  CopyWith$Query$GetAllTimePopularAnime$Page$pageInfo<TRes> get pageInfo;
  TRes media(
      Iterable<Fragment$MediaShort?>? Function(
              Iterable<CopyWith$Fragment$MediaShort<Fragment$MediaShort>?>?)
          _fn);
}

class _CopyWithImpl$Query$GetAllTimePopularAnime$Page<TRes>
    implements CopyWith$Query$GetAllTimePopularAnime$Page<TRes> {
  _CopyWithImpl$Query$GetAllTimePopularAnime$Page(
    this._instance,
    this._then,
  );

  final Query$GetAllTimePopularAnime$Page _instance;

  final TRes Function(Query$GetAllTimePopularAnime$Page) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pageInfo = _undefined,
    Object? media = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetAllTimePopularAnime$Page(
        pageInfo: pageInfo == _undefined
            ? _instance.pageInfo
            : (pageInfo as Query$GetAllTimePopularAnime$Page$pageInfo?),
        media: media == _undefined
            ? _instance.media
            : (media as List<Fragment$MediaShort?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetAllTimePopularAnime$Page$pageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return local$pageInfo == null
        ? CopyWith$Query$GetAllTimePopularAnime$Page$pageInfo.stub(
            _then(_instance))
        : CopyWith$Query$GetAllTimePopularAnime$Page$pageInfo(
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

class _CopyWithStubImpl$Query$GetAllTimePopularAnime$Page<TRes>
    implements CopyWith$Query$GetAllTimePopularAnime$Page<TRes> {
  _CopyWithStubImpl$Query$GetAllTimePopularAnime$Page(this._res);

  TRes _res;

  call({
    Query$GetAllTimePopularAnime$Page$pageInfo? pageInfo,
    List<Fragment$MediaShort?>? media,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetAllTimePopularAnime$Page$pageInfo<TRes> get pageInfo =>
      CopyWith$Query$GetAllTimePopularAnime$Page$pageInfo.stub(_res);

  media(_fn) => _res;
}

class Query$GetAllTimePopularAnime$Page$pageInfo {
  Query$GetAllTimePopularAnime$Page$pageInfo({
    this.hasNextPage,
    this.$__typename = 'PageInfo',
  });

  factory Query$GetAllTimePopularAnime$Page$pageInfo.fromJson(
      Map<String, dynamic> json) {
    final l$hasNextPage = json['hasNextPage'];
    final l$$__typename = json['__typename'];
    return Query$GetAllTimePopularAnime$Page$pageInfo(
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
    if (!(other is Query$GetAllTimePopularAnime$Page$pageInfo) ||
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

extension UtilityExtension$Query$GetAllTimePopularAnime$Page$pageInfo
    on Query$GetAllTimePopularAnime$Page$pageInfo {
  CopyWith$Query$GetAllTimePopularAnime$Page$pageInfo<
          Query$GetAllTimePopularAnime$Page$pageInfo>
      get copyWith => CopyWith$Query$GetAllTimePopularAnime$Page$pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetAllTimePopularAnime$Page$pageInfo<TRes> {
  factory CopyWith$Query$GetAllTimePopularAnime$Page$pageInfo(
    Query$GetAllTimePopularAnime$Page$pageInfo instance,
    TRes Function(Query$GetAllTimePopularAnime$Page$pageInfo) then,
  ) = _CopyWithImpl$Query$GetAllTimePopularAnime$Page$pageInfo;

  factory CopyWith$Query$GetAllTimePopularAnime$Page$pageInfo.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAllTimePopularAnime$Page$pageInfo;

  TRes call({
    bool? hasNextPage,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetAllTimePopularAnime$Page$pageInfo<TRes>
    implements CopyWith$Query$GetAllTimePopularAnime$Page$pageInfo<TRes> {
  _CopyWithImpl$Query$GetAllTimePopularAnime$Page$pageInfo(
    this._instance,
    this._then,
  );

  final Query$GetAllTimePopularAnime$Page$pageInfo _instance;

  final TRes Function(Query$GetAllTimePopularAnime$Page$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasNextPage = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetAllTimePopularAnime$Page$pageInfo(
        hasNextPage: hasNextPage == _undefined
            ? _instance.hasNextPage
            : (hasNextPage as bool?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetAllTimePopularAnime$Page$pageInfo<TRes>
    implements CopyWith$Query$GetAllTimePopularAnime$Page$pageInfo<TRes> {
  _CopyWithStubImpl$Query$GetAllTimePopularAnime$Page$pageInfo(this._res);

  TRes _res;

  call({
    bool? hasNextPage,
    String? $__typename,
  }) =>
      _res;
}
