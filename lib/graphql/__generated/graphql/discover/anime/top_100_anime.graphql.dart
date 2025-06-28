// GENERATED FILE
// DO NOT MODIFY
// ignore_for_file: type=lint
import '../../fragments.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$GetTop100Anime {
  factory Variables$Query$GetTop100Anime({int? page}) =>
      Variables$Query$GetTop100Anime._({
        if (page != null) r'page': page,
      });

  Variables$Query$GetTop100Anime._(this._$data);

  factory Variables$Query$GetTop100Anime.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('page')) {
      final l$page = data['page'];
      result$data['page'] = (l$page as int?);
    }
    return Variables$Query$GetTop100Anime._(result$data);
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

  CopyWith$Variables$Query$GetTop100Anime<Variables$Query$GetTop100Anime>
      get copyWith => CopyWith$Variables$Query$GetTop100Anime(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$GetTop100Anime ||
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

abstract class CopyWith$Variables$Query$GetTop100Anime<TRes> {
  factory CopyWith$Variables$Query$GetTop100Anime(
    Variables$Query$GetTop100Anime instance,
    TRes Function(Variables$Query$GetTop100Anime) then,
  ) = _CopyWithImpl$Variables$Query$GetTop100Anime;

  factory CopyWith$Variables$Query$GetTop100Anime.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetTop100Anime;

  TRes call({int? page});
}

class _CopyWithImpl$Variables$Query$GetTop100Anime<TRes>
    implements CopyWith$Variables$Query$GetTop100Anime<TRes> {
  _CopyWithImpl$Variables$Query$GetTop100Anime(
    this._instance,
    this._then,
  );

  final Variables$Query$GetTop100Anime _instance;

  final TRes Function(Variables$Query$GetTop100Anime) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? page = _undefined}) =>
      _then(Variables$Query$GetTop100Anime._({
        ..._instance._$data,
        if (page != _undefined) 'page': (page as int?),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetTop100Anime<TRes>
    implements CopyWith$Variables$Query$GetTop100Anime<TRes> {
  _CopyWithStubImpl$Variables$Query$GetTop100Anime(this._res);

  TRes _res;

  call({int? page}) => _res;
}

class Query$GetTop100Anime {
  Query$GetTop100Anime({
    this.Page,
    this.$__typename = 'Query',
  });

  factory Query$GetTop100Anime.fromJson(Map<String, dynamic> json) {
    final l$Page = json['Page'];
    final l$$__typename = json['__typename'];
    return Query$GetTop100Anime(
      Page: l$Page == null
          ? null
          : Query$GetTop100Anime$Page.fromJson(
              (l$Page as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetTop100Anime$Page? Page;

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
    if (other is! Query$GetTop100Anime || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$GetTop100Anime on Query$GetTop100Anime {
  CopyWith$Query$GetTop100Anime<Query$GetTop100Anime> get copyWith =>
      CopyWith$Query$GetTop100Anime(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetTop100Anime<TRes> {
  factory CopyWith$Query$GetTop100Anime(
    Query$GetTop100Anime instance,
    TRes Function(Query$GetTop100Anime) then,
  ) = _CopyWithImpl$Query$GetTop100Anime;

  factory CopyWith$Query$GetTop100Anime.stub(TRes res) =
      _CopyWithStubImpl$Query$GetTop100Anime;

  TRes call({
    Query$GetTop100Anime$Page? Page,
    String? $__typename,
  });
  CopyWith$Query$GetTop100Anime$Page<TRes> get Page;
}

class _CopyWithImpl$Query$GetTop100Anime<TRes>
    implements CopyWith$Query$GetTop100Anime<TRes> {
  _CopyWithImpl$Query$GetTop100Anime(
    this._instance,
    this._then,
  );

  final Query$GetTop100Anime _instance;

  final TRes Function(Query$GetTop100Anime) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? Page = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetTop100Anime(
        Page: Page == _undefined
            ? _instance.Page
            : (Page as Query$GetTop100Anime$Page?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetTop100Anime$Page<TRes> get Page {
    final local$Page = _instance.Page;
    return local$Page == null
        ? CopyWith$Query$GetTop100Anime$Page.stub(_then(_instance))
        : CopyWith$Query$GetTop100Anime$Page(local$Page, (e) => call(Page: e));
  }
}

class _CopyWithStubImpl$Query$GetTop100Anime<TRes>
    implements CopyWith$Query$GetTop100Anime<TRes> {
  _CopyWithStubImpl$Query$GetTop100Anime(this._res);

  TRes _res;

  call({
    Query$GetTop100Anime$Page? Page,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetTop100Anime$Page<TRes> get Page =>
      CopyWith$Query$GetTop100Anime$Page.stub(_res);
}

const documentNodeQueryGetTop100Anime = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetTop100Anime'),
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
                  EnumValueNode(name: NameNode(value: 'SCORE_DESC'))
                ]),
              ),
              ArgumentNode(
                name: NameNode(value: 'type'),
                value: EnumValueNode(name: NameNode(value: 'ANIME')),
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
Query$GetTop100Anime _parserFn$Query$GetTop100Anime(
        Map<String, dynamic> data) =>
    Query$GetTop100Anime.fromJson(data);
typedef OnQueryComplete$Query$GetTop100Anime = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$GetTop100Anime?,
);

class Options$Query$GetTop100Anime
    extends graphql.QueryOptions<Query$GetTop100Anime> {
  Options$Query$GetTop100Anime({
    String? operationName,
    Variables$Query$GetTop100Anime? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetTop100Anime? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$GetTop100Anime? onComplete,
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
                    data == null ? null : _parserFn$Query$GetTop100Anime(data),
                  ),
          onError: onError,
          document: documentNodeQueryGetTop100Anime,
          parserFn: _parserFn$Query$GetTop100Anime,
        );

  final OnQueryComplete$Query$GetTop100Anime? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$GetTop100Anime
    extends graphql.WatchQueryOptions<Query$GetTop100Anime> {
  WatchOptions$Query$GetTop100Anime({
    String? operationName,
    Variables$Query$GetTop100Anime? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetTop100Anime? typedOptimisticResult,
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
          document: documentNodeQueryGetTop100Anime,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetTop100Anime,
        );
}

class FetchMoreOptions$Query$GetTop100Anime extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetTop100Anime({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$GetTop100Anime? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryGetTop100Anime,
        );
}

extension ClientExtension$Query$GetTop100Anime on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetTop100Anime>> query$GetTop100Anime(
          [Options$Query$GetTop100Anime? options]) async =>
      await this.query(options ?? Options$Query$GetTop100Anime());
  graphql.ObservableQuery<Query$GetTop100Anime> watchQuery$GetTop100Anime(
          [WatchOptions$Query$GetTop100Anime? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$GetTop100Anime());
  void writeQuery$GetTop100Anime({
    required Query$GetTop100Anime data,
    Variables$Query$GetTop100Anime? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryGetTop100Anime),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetTop100Anime? readQuery$GetTop100Anime({
    Variables$Query$GetTop100Anime? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryGetTop100Anime),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$GetTop100Anime.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$GetTop100Anime> useQuery$GetTop100Anime(
        [Options$Query$GetTop100Anime? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$GetTop100Anime());
graphql.ObservableQuery<Query$GetTop100Anime> useWatchQuery$GetTop100Anime(
        [WatchOptions$Query$GetTop100Anime? options]) =>
    graphql_flutter
        .useWatchQuery(options ?? WatchOptions$Query$GetTop100Anime());

class Query$GetTop100Anime$Widget
    extends graphql_flutter.Query<Query$GetTop100Anime> {
  Query$GetTop100Anime$Widget({
    widgets.Key? key,
    Options$Query$GetTop100Anime? options,
    required graphql_flutter.QueryBuilder<Query$GetTop100Anime> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$GetTop100Anime(),
          builder: builder,
        );
}

class Query$GetTop100Anime$Page {
  Query$GetTop100Anime$Page({
    this.pageInfo,
    this.media,
    this.$__typename = 'Page',
  });

  factory Query$GetTop100Anime$Page.fromJson(Map<String, dynamic> json) {
    final l$pageInfo = json['pageInfo'];
    final l$media = json['media'];
    final l$$__typename = json['__typename'];
    return Query$GetTop100Anime$Page(
      pageInfo: l$pageInfo == null
          ? null
          : Query$GetTop100Anime$Page$pageInfo.fromJson(
              (l$pageInfo as Map<String, dynamic>)),
      media: (l$media as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$MediaShort.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetTop100Anime$Page$pageInfo? pageInfo;

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
    if (other is! Query$GetTop100Anime$Page ||
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

extension UtilityExtension$Query$GetTop100Anime$Page
    on Query$GetTop100Anime$Page {
  CopyWith$Query$GetTop100Anime$Page<Query$GetTop100Anime$Page> get copyWith =>
      CopyWith$Query$GetTop100Anime$Page(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetTop100Anime$Page<TRes> {
  factory CopyWith$Query$GetTop100Anime$Page(
    Query$GetTop100Anime$Page instance,
    TRes Function(Query$GetTop100Anime$Page) then,
  ) = _CopyWithImpl$Query$GetTop100Anime$Page;

  factory CopyWith$Query$GetTop100Anime$Page.stub(TRes res) =
      _CopyWithStubImpl$Query$GetTop100Anime$Page;

  TRes call({
    Query$GetTop100Anime$Page$pageInfo? pageInfo,
    List<Fragment$MediaShort?>? media,
    String? $__typename,
  });
  CopyWith$Query$GetTop100Anime$Page$pageInfo<TRes> get pageInfo;
  TRes media(
      Iterable<Fragment$MediaShort?>? Function(
              Iterable<CopyWith$Fragment$MediaShort<Fragment$MediaShort>?>?)
          _fn);
}

class _CopyWithImpl$Query$GetTop100Anime$Page<TRes>
    implements CopyWith$Query$GetTop100Anime$Page<TRes> {
  _CopyWithImpl$Query$GetTop100Anime$Page(
    this._instance,
    this._then,
  );

  final Query$GetTop100Anime$Page _instance;

  final TRes Function(Query$GetTop100Anime$Page) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pageInfo = _undefined,
    Object? media = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetTop100Anime$Page(
        pageInfo: pageInfo == _undefined
            ? _instance.pageInfo
            : (pageInfo as Query$GetTop100Anime$Page$pageInfo?),
        media: media == _undefined
            ? _instance.media
            : (media as List<Fragment$MediaShort?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetTop100Anime$Page$pageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return local$pageInfo == null
        ? CopyWith$Query$GetTop100Anime$Page$pageInfo.stub(_then(_instance))
        : CopyWith$Query$GetTop100Anime$Page$pageInfo(
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

class _CopyWithStubImpl$Query$GetTop100Anime$Page<TRes>
    implements CopyWith$Query$GetTop100Anime$Page<TRes> {
  _CopyWithStubImpl$Query$GetTop100Anime$Page(this._res);

  TRes _res;

  call({
    Query$GetTop100Anime$Page$pageInfo? pageInfo,
    List<Fragment$MediaShort?>? media,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetTop100Anime$Page$pageInfo<TRes> get pageInfo =>
      CopyWith$Query$GetTop100Anime$Page$pageInfo.stub(_res);

  media(_fn) => _res;
}

class Query$GetTop100Anime$Page$pageInfo {
  Query$GetTop100Anime$Page$pageInfo({
    this.hasNextPage,
    this.$__typename = 'PageInfo',
  });

  factory Query$GetTop100Anime$Page$pageInfo.fromJson(
      Map<String, dynamic> json) {
    final l$hasNextPage = json['hasNextPage'];
    final l$$__typename = json['__typename'];
    return Query$GetTop100Anime$Page$pageInfo(
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
    if (other is! Query$GetTop100Anime$Page$pageInfo ||
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

extension UtilityExtension$Query$GetTop100Anime$Page$pageInfo
    on Query$GetTop100Anime$Page$pageInfo {
  CopyWith$Query$GetTop100Anime$Page$pageInfo<
          Query$GetTop100Anime$Page$pageInfo>
      get copyWith => CopyWith$Query$GetTop100Anime$Page$pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetTop100Anime$Page$pageInfo<TRes> {
  factory CopyWith$Query$GetTop100Anime$Page$pageInfo(
    Query$GetTop100Anime$Page$pageInfo instance,
    TRes Function(Query$GetTop100Anime$Page$pageInfo) then,
  ) = _CopyWithImpl$Query$GetTop100Anime$Page$pageInfo;

  factory CopyWith$Query$GetTop100Anime$Page$pageInfo.stub(TRes res) =
      _CopyWithStubImpl$Query$GetTop100Anime$Page$pageInfo;

  TRes call({
    bool? hasNextPage,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetTop100Anime$Page$pageInfo<TRes>
    implements CopyWith$Query$GetTop100Anime$Page$pageInfo<TRes> {
  _CopyWithImpl$Query$GetTop100Anime$Page$pageInfo(
    this._instance,
    this._then,
  );

  final Query$GetTop100Anime$Page$pageInfo _instance;

  final TRes Function(Query$GetTop100Anime$Page$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasNextPage = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetTop100Anime$Page$pageInfo(
        hasNextPage: hasNextPage == _undefined
            ? _instance.hasNextPage
            : (hasNextPage as bool?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetTop100Anime$Page$pageInfo<TRes>
    implements CopyWith$Query$GetTop100Anime$Page$pageInfo<TRes> {
  _CopyWithStubImpl$Query$GetTop100Anime$Page$pageInfo(this._res);

  TRes _res;

  call({
    bool? hasNextPage,
    String? $__typename,
  }) =>
      _res;
}
