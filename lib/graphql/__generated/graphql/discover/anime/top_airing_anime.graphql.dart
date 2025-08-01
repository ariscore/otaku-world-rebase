// GENERATED FILE
// DO NOT MODIFY
// ignore_for_file: type=lint
import '../../fragments.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$GetTopAiringAnime {
  factory Variables$Query$GetTopAiringAnime({int? page}) =>
      Variables$Query$GetTopAiringAnime._({
        if (page != null) r'page': page,
      });

  Variables$Query$GetTopAiringAnime._(this._$data);

  factory Variables$Query$GetTopAiringAnime.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('page')) {
      final l$page = data['page'];
      result$data['page'] = (l$page as int?);
    }
    return Variables$Query$GetTopAiringAnime._(result$data);
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

  CopyWith$Variables$Query$GetTopAiringAnime<Variables$Query$GetTopAiringAnime>
      get copyWith => CopyWith$Variables$Query$GetTopAiringAnime(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$GetTopAiringAnime ||
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

abstract class CopyWith$Variables$Query$GetTopAiringAnime<TRes> {
  factory CopyWith$Variables$Query$GetTopAiringAnime(
    Variables$Query$GetTopAiringAnime instance,
    TRes Function(Variables$Query$GetTopAiringAnime) then,
  ) = _CopyWithImpl$Variables$Query$GetTopAiringAnime;

  factory CopyWith$Variables$Query$GetTopAiringAnime.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetTopAiringAnime;

  TRes call({int? page});
}

class _CopyWithImpl$Variables$Query$GetTopAiringAnime<TRes>
    implements CopyWith$Variables$Query$GetTopAiringAnime<TRes> {
  _CopyWithImpl$Variables$Query$GetTopAiringAnime(
    this._instance,
    this._then,
  );

  final Variables$Query$GetTopAiringAnime _instance;

  final TRes Function(Variables$Query$GetTopAiringAnime) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? page = _undefined}) =>
      _then(Variables$Query$GetTopAiringAnime._({
        ..._instance._$data,
        if (page != _undefined) 'page': (page as int?),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetTopAiringAnime<TRes>
    implements CopyWith$Variables$Query$GetTopAiringAnime<TRes> {
  _CopyWithStubImpl$Variables$Query$GetTopAiringAnime(this._res);

  TRes _res;

  call({int? page}) => _res;
}

class Query$GetTopAiringAnime {
  Query$GetTopAiringAnime({
    this.Page,
    this.$__typename = 'Query',
  });

  factory Query$GetTopAiringAnime.fromJson(Map<String, dynamic> json) {
    final l$Page = json['Page'];
    final l$$__typename = json['__typename'];
    return Query$GetTopAiringAnime(
      Page: l$Page == null
          ? null
          : Query$GetTopAiringAnime$Page.fromJson(
              (l$Page as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetTopAiringAnime$Page? Page;

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
    if (other is! Query$GetTopAiringAnime || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$GetTopAiringAnime on Query$GetTopAiringAnime {
  CopyWith$Query$GetTopAiringAnime<Query$GetTopAiringAnime> get copyWith =>
      CopyWith$Query$GetTopAiringAnime(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetTopAiringAnime<TRes> {
  factory CopyWith$Query$GetTopAiringAnime(
    Query$GetTopAiringAnime instance,
    TRes Function(Query$GetTopAiringAnime) then,
  ) = _CopyWithImpl$Query$GetTopAiringAnime;

  factory CopyWith$Query$GetTopAiringAnime.stub(TRes res) =
      _CopyWithStubImpl$Query$GetTopAiringAnime;

  TRes call({
    Query$GetTopAiringAnime$Page? Page,
    String? $__typename,
  });
  CopyWith$Query$GetTopAiringAnime$Page<TRes> get Page;
}

class _CopyWithImpl$Query$GetTopAiringAnime<TRes>
    implements CopyWith$Query$GetTopAiringAnime<TRes> {
  _CopyWithImpl$Query$GetTopAiringAnime(
    this._instance,
    this._then,
  );

  final Query$GetTopAiringAnime _instance;

  final TRes Function(Query$GetTopAiringAnime) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? Page = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetTopAiringAnime(
        Page: Page == _undefined
            ? _instance.Page
            : (Page as Query$GetTopAiringAnime$Page?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetTopAiringAnime$Page<TRes> get Page {
    final local$Page = _instance.Page;
    return local$Page == null
        ? CopyWith$Query$GetTopAiringAnime$Page.stub(_then(_instance))
        : CopyWith$Query$GetTopAiringAnime$Page(
            local$Page, (e) => call(Page: e));
  }
}

class _CopyWithStubImpl$Query$GetTopAiringAnime<TRes>
    implements CopyWith$Query$GetTopAiringAnime<TRes> {
  _CopyWithStubImpl$Query$GetTopAiringAnime(this._res);

  TRes _res;

  call({
    Query$GetTopAiringAnime$Page? Page,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetTopAiringAnime$Page<TRes> get Page =>
      CopyWith$Query$GetTopAiringAnime$Page.stub(_res);
}

const documentNodeQueryGetTopAiringAnime = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetTopAiringAnime'),
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
                name: NameNode(value: 'status'),
                value: EnumValueNode(name: NameNode(value: 'RELEASING')),
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
  fragmentDefinitionMediaListEntry,
  fragmentDefinitionListEntryMedia,
]);
Query$GetTopAiringAnime _parserFn$Query$GetTopAiringAnime(
        Map<String, dynamic> data) =>
    Query$GetTopAiringAnime.fromJson(data);
typedef OnQueryComplete$Query$GetTopAiringAnime = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$GetTopAiringAnime?,
);

class Options$Query$GetTopAiringAnime
    extends graphql.QueryOptions<Query$GetTopAiringAnime> {
  Options$Query$GetTopAiringAnime({
    String? operationName,
    Variables$Query$GetTopAiringAnime? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetTopAiringAnime? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$GetTopAiringAnime? onComplete,
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
                        : _parserFn$Query$GetTopAiringAnime(data),
                  ),
          onError: onError,
          document: documentNodeQueryGetTopAiringAnime,
          parserFn: _parserFn$Query$GetTopAiringAnime,
        );

  final OnQueryComplete$Query$GetTopAiringAnime? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$GetTopAiringAnime
    extends graphql.WatchQueryOptions<Query$GetTopAiringAnime> {
  WatchOptions$Query$GetTopAiringAnime({
    String? operationName,
    Variables$Query$GetTopAiringAnime? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetTopAiringAnime? typedOptimisticResult,
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
          document: documentNodeQueryGetTopAiringAnime,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetTopAiringAnime,
        );
}

class FetchMoreOptions$Query$GetTopAiringAnime
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetTopAiringAnime({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$GetTopAiringAnime? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryGetTopAiringAnime,
        );
}

extension ClientExtension$Query$GetTopAiringAnime on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetTopAiringAnime>> query$GetTopAiringAnime(
          [Options$Query$GetTopAiringAnime? options]) async =>
      await this.query(options ?? Options$Query$GetTopAiringAnime());
  graphql.ObservableQuery<Query$GetTopAiringAnime> watchQuery$GetTopAiringAnime(
          [WatchOptions$Query$GetTopAiringAnime? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$GetTopAiringAnime());
  void writeQuery$GetTopAiringAnime({
    required Query$GetTopAiringAnime data,
    Variables$Query$GetTopAiringAnime? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryGetTopAiringAnime),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetTopAiringAnime? readQuery$GetTopAiringAnime({
    Variables$Query$GetTopAiringAnime? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation:
            graphql.Operation(document: documentNodeQueryGetTopAiringAnime),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$GetTopAiringAnime.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$GetTopAiringAnime>
    useQuery$GetTopAiringAnime([Options$Query$GetTopAiringAnime? options]) =>
        graphql_flutter.useQuery(options ?? Options$Query$GetTopAiringAnime());
graphql.ObservableQuery<Query$GetTopAiringAnime>
    useWatchQuery$GetTopAiringAnime(
            [WatchOptions$Query$GetTopAiringAnime? options]) =>
        graphql_flutter
            .useWatchQuery(options ?? WatchOptions$Query$GetTopAiringAnime());

class Query$GetTopAiringAnime$Widget
    extends graphql_flutter.Query<Query$GetTopAiringAnime> {
  Query$GetTopAiringAnime$Widget({
    widgets.Key? key,
    Options$Query$GetTopAiringAnime? options,
    required graphql_flutter.QueryBuilder<Query$GetTopAiringAnime> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$GetTopAiringAnime(),
          builder: builder,
        );
}

class Query$GetTopAiringAnime$Page {
  Query$GetTopAiringAnime$Page({
    this.pageInfo,
    this.media,
    this.$__typename = 'Page',
  });

  factory Query$GetTopAiringAnime$Page.fromJson(Map<String, dynamic> json) {
    final l$pageInfo = json['pageInfo'];
    final l$media = json['media'];
    final l$$__typename = json['__typename'];
    return Query$GetTopAiringAnime$Page(
      pageInfo: l$pageInfo == null
          ? null
          : Query$GetTopAiringAnime$Page$pageInfo.fromJson(
              (l$pageInfo as Map<String, dynamic>)),
      media: (l$media as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$MediaShort.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetTopAiringAnime$Page$pageInfo? pageInfo;

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
    if (other is! Query$GetTopAiringAnime$Page ||
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

extension UtilityExtension$Query$GetTopAiringAnime$Page
    on Query$GetTopAiringAnime$Page {
  CopyWith$Query$GetTopAiringAnime$Page<Query$GetTopAiringAnime$Page>
      get copyWith => CopyWith$Query$GetTopAiringAnime$Page(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetTopAiringAnime$Page<TRes> {
  factory CopyWith$Query$GetTopAiringAnime$Page(
    Query$GetTopAiringAnime$Page instance,
    TRes Function(Query$GetTopAiringAnime$Page) then,
  ) = _CopyWithImpl$Query$GetTopAiringAnime$Page;

  factory CopyWith$Query$GetTopAiringAnime$Page.stub(TRes res) =
      _CopyWithStubImpl$Query$GetTopAiringAnime$Page;

  TRes call({
    Query$GetTopAiringAnime$Page$pageInfo? pageInfo,
    List<Fragment$MediaShort?>? media,
    String? $__typename,
  });
  CopyWith$Query$GetTopAiringAnime$Page$pageInfo<TRes> get pageInfo;
  TRes media(
      Iterable<Fragment$MediaShort?>? Function(
              Iterable<CopyWith$Fragment$MediaShort<Fragment$MediaShort>?>?)
          _fn);
}

class _CopyWithImpl$Query$GetTopAiringAnime$Page<TRes>
    implements CopyWith$Query$GetTopAiringAnime$Page<TRes> {
  _CopyWithImpl$Query$GetTopAiringAnime$Page(
    this._instance,
    this._then,
  );

  final Query$GetTopAiringAnime$Page _instance;

  final TRes Function(Query$GetTopAiringAnime$Page) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pageInfo = _undefined,
    Object? media = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetTopAiringAnime$Page(
        pageInfo: pageInfo == _undefined
            ? _instance.pageInfo
            : (pageInfo as Query$GetTopAiringAnime$Page$pageInfo?),
        media: media == _undefined
            ? _instance.media
            : (media as List<Fragment$MediaShort?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetTopAiringAnime$Page$pageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return local$pageInfo == null
        ? CopyWith$Query$GetTopAiringAnime$Page$pageInfo.stub(_then(_instance))
        : CopyWith$Query$GetTopAiringAnime$Page$pageInfo(
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

class _CopyWithStubImpl$Query$GetTopAiringAnime$Page<TRes>
    implements CopyWith$Query$GetTopAiringAnime$Page<TRes> {
  _CopyWithStubImpl$Query$GetTopAiringAnime$Page(this._res);

  TRes _res;

  call({
    Query$GetTopAiringAnime$Page$pageInfo? pageInfo,
    List<Fragment$MediaShort?>? media,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetTopAiringAnime$Page$pageInfo<TRes> get pageInfo =>
      CopyWith$Query$GetTopAiringAnime$Page$pageInfo.stub(_res);

  media(_fn) => _res;
}

class Query$GetTopAiringAnime$Page$pageInfo {
  Query$GetTopAiringAnime$Page$pageInfo({
    this.hasNextPage,
    this.$__typename = 'PageInfo',
  });

  factory Query$GetTopAiringAnime$Page$pageInfo.fromJson(
      Map<String, dynamic> json) {
    final l$hasNextPage = json['hasNextPage'];
    final l$$__typename = json['__typename'];
    return Query$GetTopAiringAnime$Page$pageInfo(
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
    if (other is! Query$GetTopAiringAnime$Page$pageInfo ||
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

extension UtilityExtension$Query$GetTopAiringAnime$Page$pageInfo
    on Query$GetTopAiringAnime$Page$pageInfo {
  CopyWith$Query$GetTopAiringAnime$Page$pageInfo<
          Query$GetTopAiringAnime$Page$pageInfo>
      get copyWith => CopyWith$Query$GetTopAiringAnime$Page$pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetTopAiringAnime$Page$pageInfo<TRes> {
  factory CopyWith$Query$GetTopAiringAnime$Page$pageInfo(
    Query$GetTopAiringAnime$Page$pageInfo instance,
    TRes Function(Query$GetTopAiringAnime$Page$pageInfo) then,
  ) = _CopyWithImpl$Query$GetTopAiringAnime$Page$pageInfo;

  factory CopyWith$Query$GetTopAiringAnime$Page$pageInfo.stub(TRes res) =
      _CopyWithStubImpl$Query$GetTopAiringAnime$Page$pageInfo;

  TRes call({
    bool? hasNextPage,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetTopAiringAnime$Page$pageInfo<TRes>
    implements CopyWith$Query$GetTopAiringAnime$Page$pageInfo<TRes> {
  _CopyWithImpl$Query$GetTopAiringAnime$Page$pageInfo(
    this._instance,
    this._then,
  );

  final Query$GetTopAiringAnime$Page$pageInfo _instance;

  final TRes Function(Query$GetTopAiringAnime$Page$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasNextPage = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetTopAiringAnime$Page$pageInfo(
        hasNextPage: hasNextPage == _undefined
            ? _instance.hasNextPage
            : (hasNextPage as bool?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetTopAiringAnime$Page$pageInfo<TRes>
    implements CopyWith$Query$GetTopAiringAnime$Page$pageInfo<TRes> {
  _CopyWithStubImpl$Query$GetTopAiringAnime$Page$pageInfo(this._res);

  TRes _res;

  call({
    bool? hasNextPage,
    String? $__typename,
  }) =>
      _res;
}
