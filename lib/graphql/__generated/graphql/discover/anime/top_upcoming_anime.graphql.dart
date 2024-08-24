// GENERATED FILE
// DO NOT MODIFY
// ignore_for_file: type=lint
import 'dart:async';

import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

import '../../fragments.graphql.dart';

class Variables$Query$GetTopUpcomingAnime {
  factory Variables$Query$GetTopUpcomingAnime({int? page}) =>
      Variables$Query$GetTopUpcomingAnime._({
        if (page != null) r'page': page,
      });

  Variables$Query$GetTopUpcomingAnime._(this._$data);

  factory Variables$Query$GetTopUpcomingAnime.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('page')) {
      final l$page = data['page'];
      result$data['page'] = (l$page as int?);
    }
    return Variables$Query$GetTopUpcomingAnime._(result$data);
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

  CopyWith$Variables$Query$GetTopUpcomingAnime<
          Variables$Query$GetTopUpcomingAnime>
      get copyWith => CopyWith$Variables$Query$GetTopUpcomingAnime(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GetTopUpcomingAnime) ||
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

abstract class CopyWith$Variables$Query$GetTopUpcomingAnime<TRes> {
  factory CopyWith$Variables$Query$GetTopUpcomingAnime(
    Variables$Query$GetTopUpcomingAnime instance,
    TRes Function(Variables$Query$GetTopUpcomingAnime) then,
  ) = _CopyWithImpl$Variables$Query$GetTopUpcomingAnime;

  factory CopyWith$Variables$Query$GetTopUpcomingAnime.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetTopUpcomingAnime;

  TRes call({int? page});
}

class _CopyWithImpl$Variables$Query$GetTopUpcomingAnime<TRes>
    implements CopyWith$Variables$Query$GetTopUpcomingAnime<TRes> {
  _CopyWithImpl$Variables$Query$GetTopUpcomingAnime(
    this._instance,
    this._then,
  );

  final Variables$Query$GetTopUpcomingAnime _instance;

  final TRes Function(Variables$Query$GetTopUpcomingAnime) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? page = _undefined}) =>
      _then(Variables$Query$GetTopUpcomingAnime._({
        ..._instance._$data,
        if (page != _undefined) 'page': (page as int?),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetTopUpcomingAnime<TRes>
    implements CopyWith$Variables$Query$GetTopUpcomingAnime<TRes> {
  _CopyWithStubImpl$Variables$Query$GetTopUpcomingAnime(this._res);

  TRes _res;

  call({int? page}) => _res;
}

class Query$GetTopUpcomingAnime {
  Query$GetTopUpcomingAnime({
    this.Page,
    this.$__typename = 'Query',
  });

  factory Query$GetTopUpcomingAnime.fromJson(Map<String, dynamic> json) {
    final l$Page = json['Page'];
    final l$$__typename = json['__typename'];
    return Query$GetTopUpcomingAnime(
      Page: l$Page == null
          ? null
          : Query$GetTopUpcomingAnime$Page.fromJson(
              (l$Page as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetTopUpcomingAnime$Page? Page;

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
    if (!(other is Query$GetTopUpcomingAnime) ||
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

extension UtilityExtension$Query$GetTopUpcomingAnime
    on Query$GetTopUpcomingAnime {
  CopyWith$Query$GetTopUpcomingAnime<Query$GetTopUpcomingAnime> get copyWith =>
      CopyWith$Query$GetTopUpcomingAnime(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetTopUpcomingAnime<TRes> {
  factory CopyWith$Query$GetTopUpcomingAnime(
    Query$GetTopUpcomingAnime instance,
    TRes Function(Query$GetTopUpcomingAnime) then,
  ) = _CopyWithImpl$Query$GetTopUpcomingAnime;

  factory CopyWith$Query$GetTopUpcomingAnime.stub(TRes res) =
      _CopyWithStubImpl$Query$GetTopUpcomingAnime;

  TRes call({
    Query$GetTopUpcomingAnime$Page? Page,
    String? $__typename,
  });
  CopyWith$Query$GetTopUpcomingAnime$Page<TRes> get Page;
}

class _CopyWithImpl$Query$GetTopUpcomingAnime<TRes>
    implements CopyWith$Query$GetTopUpcomingAnime<TRes> {
  _CopyWithImpl$Query$GetTopUpcomingAnime(
    this._instance,
    this._then,
  );

  final Query$GetTopUpcomingAnime _instance;

  final TRes Function(Query$GetTopUpcomingAnime) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? Page = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetTopUpcomingAnime(
        Page: Page == _undefined
            ? _instance.Page
            : (Page as Query$GetTopUpcomingAnime$Page?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetTopUpcomingAnime$Page<TRes> get Page {
    final local$Page = _instance.Page;
    return local$Page == null
        ? CopyWith$Query$GetTopUpcomingAnime$Page.stub(_then(_instance))
        : CopyWith$Query$GetTopUpcomingAnime$Page(
            local$Page, (e) => call(Page: e));
  }
}

class _CopyWithStubImpl$Query$GetTopUpcomingAnime<TRes>
    implements CopyWith$Query$GetTopUpcomingAnime<TRes> {
  _CopyWithStubImpl$Query$GetTopUpcomingAnime(this._res);

  TRes _res;

  call({
    Query$GetTopUpcomingAnime$Page? Page,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetTopUpcomingAnime$Page<TRes> get Page =>
      CopyWith$Query$GetTopUpcomingAnime$Page.stub(_res);
}

const documentNodeQueryGetTopUpcomingAnime = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetTopUpcomingAnime'),
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
              ArgumentNode(
                name: NameNode(value: 'status'),
                value: EnumValueNode(name: NameNode(value: 'NOT_YET_RELEASED')),
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
Query$GetTopUpcomingAnime _parserFn$Query$GetTopUpcomingAnime(
        Map<String, dynamic> data) =>
    Query$GetTopUpcomingAnime.fromJson(data);
typedef OnQueryComplete$Query$GetTopUpcomingAnime = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$GetTopUpcomingAnime?,
);

class Options$Query$GetTopUpcomingAnime
    extends graphql.QueryOptions<Query$GetTopUpcomingAnime> {
  Options$Query$GetTopUpcomingAnime({
    String? operationName,
    Variables$Query$GetTopUpcomingAnime? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetTopUpcomingAnime? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$GetTopUpcomingAnime? onComplete,
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
                        : _parserFn$Query$GetTopUpcomingAnime(data),
                  ),
          onError: onError,
          document: documentNodeQueryGetTopUpcomingAnime,
          parserFn: _parserFn$Query$GetTopUpcomingAnime,
        );

  final OnQueryComplete$Query$GetTopUpcomingAnime? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$GetTopUpcomingAnime
    extends graphql.WatchQueryOptions<Query$GetTopUpcomingAnime> {
  WatchOptions$Query$GetTopUpcomingAnime({
    String? operationName,
    Variables$Query$GetTopUpcomingAnime? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetTopUpcomingAnime? typedOptimisticResult,
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
          document: documentNodeQueryGetTopUpcomingAnime,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetTopUpcomingAnime,
        );
}

class FetchMoreOptions$Query$GetTopUpcomingAnime
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetTopUpcomingAnime({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$GetTopUpcomingAnime? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryGetTopUpcomingAnime,
        );
}

extension ClientExtension$Query$GetTopUpcomingAnime on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetTopUpcomingAnime>>
      query$GetTopUpcomingAnime(
              [Options$Query$GetTopUpcomingAnime? options]) async =>
          await this.query(options ?? Options$Query$GetTopUpcomingAnime());
  graphql.ObservableQuery<Query$GetTopUpcomingAnime>
      watchQuery$GetTopUpcomingAnime(
              [WatchOptions$Query$GetTopUpcomingAnime? options]) =>
          this.watchQuery(options ?? WatchOptions$Query$GetTopUpcomingAnime());
  void writeQuery$GetTopUpcomingAnime({
    required Query$GetTopUpcomingAnime data,
    Variables$Query$GetTopUpcomingAnime? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryGetTopUpcomingAnime),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetTopUpcomingAnime? readQuery$GetTopUpcomingAnime({
    Variables$Query$GetTopUpcomingAnime? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation:
            graphql.Operation(document: documentNodeQueryGetTopUpcomingAnime),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$GetTopUpcomingAnime.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$GetTopUpcomingAnime>
    useQuery$GetTopUpcomingAnime(
            [Options$Query$GetTopUpcomingAnime? options]) =>
        graphql_flutter
            .useQuery(options ?? Options$Query$GetTopUpcomingAnime());
graphql.ObservableQuery<Query$GetTopUpcomingAnime>
    useWatchQuery$GetTopUpcomingAnime(
            [WatchOptions$Query$GetTopUpcomingAnime? options]) =>
        graphql_flutter
            .useWatchQuery(options ?? WatchOptions$Query$GetTopUpcomingAnime());

class Query$GetTopUpcomingAnime$Widget
    extends graphql_flutter.Query<Query$GetTopUpcomingAnime> {
  Query$GetTopUpcomingAnime$Widget({
    widgets.Key? key,
    Options$Query$GetTopUpcomingAnime? options,
    required graphql_flutter.QueryBuilder<Query$GetTopUpcomingAnime> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$GetTopUpcomingAnime(),
          builder: builder,
        );
}

class Query$GetTopUpcomingAnime$Page {
  Query$GetTopUpcomingAnime$Page({
    this.pageInfo,
    this.media,
    this.$__typename = 'Page',
  });

  factory Query$GetTopUpcomingAnime$Page.fromJson(Map<String, dynamic> json) {
    final l$pageInfo = json['pageInfo'];
    final l$media = json['media'];
    final l$$__typename = json['__typename'];
    return Query$GetTopUpcomingAnime$Page(
      pageInfo: l$pageInfo == null
          ? null
          : Query$GetTopUpcomingAnime$Page$pageInfo.fromJson(
              (l$pageInfo as Map<String, dynamic>)),
      media: (l$media as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$MediaShort.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetTopUpcomingAnime$Page$pageInfo? pageInfo;

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
    if (!(other is Query$GetTopUpcomingAnime$Page) ||
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

extension UtilityExtension$Query$GetTopUpcomingAnime$Page
    on Query$GetTopUpcomingAnime$Page {
  CopyWith$Query$GetTopUpcomingAnime$Page<Query$GetTopUpcomingAnime$Page>
      get copyWith => CopyWith$Query$GetTopUpcomingAnime$Page(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetTopUpcomingAnime$Page<TRes> {
  factory CopyWith$Query$GetTopUpcomingAnime$Page(
    Query$GetTopUpcomingAnime$Page instance,
    TRes Function(Query$GetTopUpcomingAnime$Page) then,
  ) = _CopyWithImpl$Query$GetTopUpcomingAnime$Page;

  factory CopyWith$Query$GetTopUpcomingAnime$Page.stub(TRes res) =
      _CopyWithStubImpl$Query$GetTopUpcomingAnime$Page;

  TRes call({
    Query$GetTopUpcomingAnime$Page$pageInfo? pageInfo,
    List<Fragment$MediaShort?>? media,
    String? $__typename,
  });
  CopyWith$Query$GetTopUpcomingAnime$Page$pageInfo<TRes> get pageInfo;
  TRes media(
      Iterable<Fragment$MediaShort?>? Function(
              Iterable<CopyWith$Fragment$MediaShort<Fragment$MediaShort>?>?)
          _fn);
}

class _CopyWithImpl$Query$GetTopUpcomingAnime$Page<TRes>
    implements CopyWith$Query$GetTopUpcomingAnime$Page<TRes> {
  _CopyWithImpl$Query$GetTopUpcomingAnime$Page(
    this._instance,
    this._then,
  );

  final Query$GetTopUpcomingAnime$Page _instance;

  final TRes Function(Query$GetTopUpcomingAnime$Page) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pageInfo = _undefined,
    Object? media = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetTopUpcomingAnime$Page(
        pageInfo: pageInfo == _undefined
            ? _instance.pageInfo
            : (pageInfo as Query$GetTopUpcomingAnime$Page$pageInfo?),
        media: media == _undefined
            ? _instance.media
            : (media as List<Fragment$MediaShort?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetTopUpcomingAnime$Page$pageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return local$pageInfo == null
        ? CopyWith$Query$GetTopUpcomingAnime$Page$pageInfo.stub(
            _then(_instance))
        : CopyWith$Query$GetTopUpcomingAnime$Page$pageInfo(
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

class _CopyWithStubImpl$Query$GetTopUpcomingAnime$Page<TRes>
    implements CopyWith$Query$GetTopUpcomingAnime$Page<TRes> {
  _CopyWithStubImpl$Query$GetTopUpcomingAnime$Page(this._res);

  TRes _res;

  call({
    Query$GetTopUpcomingAnime$Page$pageInfo? pageInfo,
    List<Fragment$MediaShort?>? media,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetTopUpcomingAnime$Page$pageInfo<TRes> get pageInfo =>
      CopyWith$Query$GetTopUpcomingAnime$Page$pageInfo.stub(_res);

  media(_fn) => _res;
}

class Query$GetTopUpcomingAnime$Page$pageInfo {
  Query$GetTopUpcomingAnime$Page$pageInfo({
    this.hasNextPage,
    this.$__typename = 'PageInfo',
  });

  factory Query$GetTopUpcomingAnime$Page$pageInfo.fromJson(
      Map<String, dynamic> json) {
    final l$hasNextPage = json['hasNextPage'];
    final l$$__typename = json['__typename'];
    return Query$GetTopUpcomingAnime$Page$pageInfo(
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
    if (!(other is Query$GetTopUpcomingAnime$Page$pageInfo) ||
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

extension UtilityExtension$Query$GetTopUpcomingAnime$Page$pageInfo
    on Query$GetTopUpcomingAnime$Page$pageInfo {
  CopyWith$Query$GetTopUpcomingAnime$Page$pageInfo<
          Query$GetTopUpcomingAnime$Page$pageInfo>
      get copyWith => CopyWith$Query$GetTopUpcomingAnime$Page$pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetTopUpcomingAnime$Page$pageInfo<TRes> {
  factory CopyWith$Query$GetTopUpcomingAnime$Page$pageInfo(
    Query$GetTopUpcomingAnime$Page$pageInfo instance,
    TRes Function(Query$GetTopUpcomingAnime$Page$pageInfo) then,
  ) = _CopyWithImpl$Query$GetTopUpcomingAnime$Page$pageInfo;

  factory CopyWith$Query$GetTopUpcomingAnime$Page$pageInfo.stub(TRes res) =
      _CopyWithStubImpl$Query$GetTopUpcomingAnime$Page$pageInfo;

  TRes call({
    bool? hasNextPage,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetTopUpcomingAnime$Page$pageInfo<TRes>
    implements CopyWith$Query$GetTopUpcomingAnime$Page$pageInfo<TRes> {
  _CopyWithImpl$Query$GetTopUpcomingAnime$Page$pageInfo(
    this._instance,
    this._then,
  );

  final Query$GetTopUpcomingAnime$Page$pageInfo _instance;

  final TRes Function(Query$GetTopUpcomingAnime$Page$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasNextPage = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetTopUpcomingAnime$Page$pageInfo(
        hasNextPage: hasNextPage == _undefined
            ? _instance.hasNextPage
            : (hasNextPage as bool?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetTopUpcomingAnime$Page$pageInfo<TRes>
    implements CopyWith$Query$GetTopUpcomingAnime$Page$pageInfo<TRes> {
  _CopyWithStubImpl$Query$GetTopUpcomingAnime$Page$pageInfo(this._res);

  TRes _res;

  call({
    bool? hasNextPage,
    String? $__typename,
  }) =>
      _res;
}
