// GENERATED FILE
// DO NOT MODIFY
// ignore_for_file: type=lint
import '../fragments.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$GetRecommendedManga {
  factory Variables$Query$GetRecommendedManga({int? page}) =>
      Variables$Query$GetRecommendedManga._({
        if (page != null) r'page': page,
      });

  Variables$Query$GetRecommendedManga._(this._$data);

  factory Variables$Query$GetRecommendedManga.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('page')) {
      final l$page = data['page'];
      result$data['page'] = (l$page as int?);
    }
    return Variables$Query$GetRecommendedManga._(result$data);
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

  CopyWith$Variables$Query$GetRecommendedManga<
          Variables$Query$GetRecommendedManga>
      get copyWith => CopyWith$Variables$Query$GetRecommendedManga(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$GetRecommendedManga ||
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

abstract class CopyWith$Variables$Query$GetRecommendedManga<TRes> {
  factory CopyWith$Variables$Query$GetRecommendedManga(
    Variables$Query$GetRecommendedManga instance,
    TRes Function(Variables$Query$GetRecommendedManga) then,
  ) = _CopyWithImpl$Variables$Query$GetRecommendedManga;

  factory CopyWith$Variables$Query$GetRecommendedManga.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetRecommendedManga;

  TRes call({int? page});
}

class _CopyWithImpl$Variables$Query$GetRecommendedManga<TRes>
    implements CopyWith$Variables$Query$GetRecommendedManga<TRes> {
  _CopyWithImpl$Variables$Query$GetRecommendedManga(
    this._instance,
    this._then,
  );

  final Variables$Query$GetRecommendedManga _instance;

  final TRes Function(Variables$Query$GetRecommendedManga) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? page = _undefined}) =>
      _then(Variables$Query$GetRecommendedManga._({
        ..._instance._$data,
        if (page != _undefined) 'page': (page as int?),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetRecommendedManga<TRes>
    implements CopyWith$Variables$Query$GetRecommendedManga<TRes> {
  _CopyWithStubImpl$Variables$Query$GetRecommendedManga(this._res);

  TRes _res;

  call({int? page}) => _res;
}

class Query$GetRecommendedManga {
  Query$GetRecommendedManga({
    this.Page,
    this.$__typename = 'Query',
  });

  factory Query$GetRecommendedManga.fromJson(Map<String, dynamic> json) {
    final l$Page = json['Page'];
    final l$$__typename = json['__typename'];
    return Query$GetRecommendedManga(
      Page: l$Page == null
          ? null
          : Query$GetRecommendedManga$Page.fromJson(
              (l$Page as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetRecommendedManga$Page? Page;

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
    if (other is! Query$GetRecommendedManga ||
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

extension UtilityExtension$Query$GetRecommendedManga
    on Query$GetRecommendedManga {
  CopyWith$Query$GetRecommendedManga<Query$GetRecommendedManga> get copyWith =>
      CopyWith$Query$GetRecommendedManga(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetRecommendedManga<TRes> {
  factory CopyWith$Query$GetRecommendedManga(
    Query$GetRecommendedManga instance,
    TRes Function(Query$GetRecommendedManga) then,
  ) = _CopyWithImpl$Query$GetRecommendedManga;

  factory CopyWith$Query$GetRecommendedManga.stub(TRes res) =
      _CopyWithStubImpl$Query$GetRecommendedManga;

  TRes call({
    Query$GetRecommendedManga$Page? Page,
    String? $__typename,
  });
  CopyWith$Query$GetRecommendedManga$Page<TRes> get Page;
}

class _CopyWithImpl$Query$GetRecommendedManga<TRes>
    implements CopyWith$Query$GetRecommendedManga<TRes> {
  _CopyWithImpl$Query$GetRecommendedManga(
    this._instance,
    this._then,
  );

  final Query$GetRecommendedManga _instance;

  final TRes Function(Query$GetRecommendedManga) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? Page = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetRecommendedManga(
        Page: Page == _undefined
            ? _instance.Page
            : (Page as Query$GetRecommendedManga$Page?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetRecommendedManga$Page<TRes> get Page {
    final local$Page = _instance.Page;
    return local$Page == null
        ? CopyWith$Query$GetRecommendedManga$Page.stub(_then(_instance))
        : CopyWith$Query$GetRecommendedManga$Page(
            local$Page, (e) => call(Page: e));
  }
}

class _CopyWithStubImpl$Query$GetRecommendedManga<TRes>
    implements CopyWith$Query$GetRecommendedManga<TRes> {
  _CopyWithStubImpl$Query$GetRecommendedManga(this._res);

  TRes _res;

  call({
    Query$GetRecommendedManga$Page? Page,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetRecommendedManga$Page<TRes> get Page =>
      CopyWith$Query$GetRecommendedManga$Page.stub(_res);
}

const documentNodeQueryGetRecommendedManga = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetRecommendedManga'),
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
                  EnumValueNode(name: NameNode(value: 'POPULARITY_DESC'))
                ]),
              ),
              ArgumentNode(
                name: NameNode(value: 'type'),
                value: EnumValueNode(name: NameNode(value: 'MANGA')),
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
Query$GetRecommendedManga _parserFn$Query$GetRecommendedManga(
        Map<String, dynamic> data) =>
    Query$GetRecommendedManga.fromJson(data);
typedef OnQueryComplete$Query$GetRecommendedManga = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$GetRecommendedManga?,
);

class Options$Query$GetRecommendedManga
    extends graphql.QueryOptions<Query$GetRecommendedManga> {
  Options$Query$GetRecommendedManga({
    String? operationName,
    Variables$Query$GetRecommendedManga? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetRecommendedManga? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$GetRecommendedManga? onComplete,
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
                        : _parserFn$Query$GetRecommendedManga(data),
                  ),
          onError: onError,
          document: documentNodeQueryGetRecommendedManga,
          parserFn: _parserFn$Query$GetRecommendedManga,
        );

  final OnQueryComplete$Query$GetRecommendedManga? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$GetRecommendedManga
    extends graphql.WatchQueryOptions<Query$GetRecommendedManga> {
  WatchOptions$Query$GetRecommendedManga({
    String? operationName,
    Variables$Query$GetRecommendedManga? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetRecommendedManga? typedOptimisticResult,
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
          document: documentNodeQueryGetRecommendedManga,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetRecommendedManga,
        );
}

class FetchMoreOptions$Query$GetRecommendedManga
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetRecommendedManga({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$GetRecommendedManga? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryGetRecommendedManga,
        );
}

extension ClientExtension$Query$GetRecommendedManga on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetRecommendedManga>>
      query$GetRecommendedManga(
              [Options$Query$GetRecommendedManga? options]) async =>
          await this.query(options ?? Options$Query$GetRecommendedManga());
  graphql.ObservableQuery<Query$GetRecommendedManga>
      watchQuery$GetRecommendedManga(
              [WatchOptions$Query$GetRecommendedManga? options]) =>
          this.watchQuery(options ?? WatchOptions$Query$GetRecommendedManga());
  void writeQuery$GetRecommendedManga({
    required Query$GetRecommendedManga data,
    Variables$Query$GetRecommendedManga? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryGetRecommendedManga),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetRecommendedManga? readQuery$GetRecommendedManga({
    Variables$Query$GetRecommendedManga? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation:
            graphql.Operation(document: documentNodeQueryGetRecommendedManga),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$GetRecommendedManga.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$GetRecommendedManga>
    useQuery$GetRecommendedManga(
            [Options$Query$GetRecommendedManga? options]) =>
        graphql_flutter
            .useQuery(options ?? Options$Query$GetRecommendedManga());
graphql.ObservableQuery<Query$GetRecommendedManga>
    useWatchQuery$GetRecommendedManga(
            [WatchOptions$Query$GetRecommendedManga? options]) =>
        graphql_flutter
            .useWatchQuery(options ?? WatchOptions$Query$GetRecommendedManga());

class Query$GetRecommendedManga$Widget
    extends graphql_flutter.Query<Query$GetRecommendedManga> {
  Query$GetRecommendedManga$Widget({
    widgets.Key? key,
    Options$Query$GetRecommendedManga? options,
    required graphql_flutter.QueryBuilder<Query$GetRecommendedManga> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$GetRecommendedManga(),
          builder: builder,
        );
}

class Query$GetRecommendedManga$Page {
  Query$GetRecommendedManga$Page({
    this.pageInfo,
    this.media,
    this.$__typename = 'Page',
  });

  factory Query$GetRecommendedManga$Page.fromJson(Map<String, dynamic> json) {
    final l$pageInfo = json['pageInfo'];
    final l$media = json['media'];
    final l$$__typename = json['__typename'];
    return Query$GetRecommendedManga$Page(
      pageInfo: l$pageInfo == null
          ? null
          : Query$GetRecommendedManga$Page$pageInfo.fromJson(
              (l$pageInfo as Map<String, dynamic>)),
      media: (l$media as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$MediaShort.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetRecommendedManga$Page$pageInfo? pageInfo;

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
    if (other is! Query$GetRecommendedManga$Page ||
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

extension UtilityExtension$Query$GetRecommendedManga$Page
    on Query$GetRecommendedManga$Page {
  CopyWith$Query$GetRecommendedManga$Page<Query$GetRecommendedManga$Page>
      get copyWith => CopyWith$Query$GetRecommendedManga$Page(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetRecommendedManga$Page<TRes> {
  factory CopyWith$Query$GetRecommendedManga$Page(
    Query$GetRecommendedManga$Page instance,
    TRes Function(Query$GetRecommendedManga$Page) then,
  ) = _CopyWithImpl$Query$GetRecommendedManga$Page;

  factory CopyWith$Query$GetRecommendedManga$Page.stub(TRes res) =
      _CopyWithStubImpl$Query$GetRecommendedManga$Page;

  TRes call({
    Query$GetRecommendedManga$Page$pageInfo? pageInfo,
    List<Fragment$MediaShort?>? media,
    String? $__typename,
  });
  CopyWith$Query$GetRecommendedManga$Page$pageInfo<TRes> get pageInfo;
  TRes media(
      Iterable<Fragment$MediaShort?>? Function(
              Iterable<CopyWith$Fragment$MediaShort<Fragment$MediaShort>?>?)
          _fn);
}

class _CopyWithImpl$Query$GetRecommendedManga$Page<TRes>
    implements CopyWith$Query$GetRecommendedManga$Page<TRes> {
  _CopyWithImpl$Query$GetRecommendedManga$Page(
    this._instance,
    this._then,
  );

  final Query$GetRecommendedManga$Page _instance;

  final TRes Function(Query$GetRecommendedManga$Page) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pageInfo = _undefined,
    Object? media = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetRecommendedManga$Page(
        pageInfo: pageInfo == _undefined
            ? _instance.pageInfo
            : (pageInfo as Query$GetRecommendedManga$Page$pageInfo?),
        media: media == _undefined
            ? _instance.media
            : (media as List<Fragment$MediaShort?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetRecommendedManga$Page$pageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return local$pageInfo == null
        ? CopyWith$Query$GetRecommendedManga$Page$pageInfo.stub(
            _then(_instance))
        : CopyWith$Query$GetRecommendedManga$Page$pageInfo(
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

class _CopyWithStubImpl$Query$GetRecommendedManga$Page<TRes>
    implements CopyWith$Query$GetRecommendedManga$Page<TRes> {
  _CopyWithStubImpl$Query$GetRecommendedManga$Page(this._res);

  TRes _res;

  call({
    Query$GetRecommendedManga$Page$pageInfo? pageInfo,
    List<Fragment$MediaShort?>? media,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetRecommendedManga$Page$pageInfo<TRes> get pageInfo =>
      CopyWith$Query$GetRecommendedManga$Page$pageInfo.stub(_res);

  media(_fn) => _res;
}

class Query$GetRecommendedManga$Page$pageInfo {
  Query$GetRecommendedManga$Page$pageInfo({
    this.hasNextPage,
    this.$__typename = 'PageInfo',
  });

  factory Query$GetRecommendedManga$Page$pageInfo.fromJson(
      Map<String, dynamic> json) {
    final l$hasNextPage = json['hasNextPage'];
    final l$$__typename = json['__typename'];
    return Query$GetRecommendedManga$Page$pageInfo(
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
    if (other is! Query$GetRecommendedManga$Page$pageInfo ||
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

extension UtilityExtension$Query$GetRecommendedManga$Page$pageInfo
    on Query$GetRecommendedManga$Page$pageInfo {
  CopyWith$Query$GetRecommendedManga$Page$pageInfo<
          Query$GetRecommendedManga$Page$pageInfo>
      get copyWith => CopyWith$Query$GetRecommendedManga$Page$pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetRecommendedManga$Page$pageInfo<TRes> {
  factory CopyWith$Query$GetRecommendedManga$Page$pageInfo(
    Query$GetRecommendedManga$Page$pageInfo instance,
    TRes Function(Query$GetRecommendedManga$Page$pageInfo) then,
  ) = _CopyWithImpl$Query$GetRecommendedManga$Page$pageInfo;

  factory CopyWith$Query$GetRecommendedManga$Page$pageInfo.stub(TRes res) =
      _CopyWithStubImpl$Query$GetRecommendedManga$Page$pageInfo;

  TRes call({
    bool? hasNextPage,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetRecommendedManga$Page$pageInfo<TRes>
    implements CopyWith$Query$GetRecommendedManga$Page$pageInfo<TRes> {
  _CopyWithImpl$Query$GetRecommendedManga$Page$pageInfo(
    this._instance,
    this._then,
  );

  final Query$GetRecommendedManga$Page$pageInfo _instance;

  final TRes Function(Query$GetRecommendedManga$Page$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasNextPage = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetRecommendedManga$Page$pageInfo(
        hasNextPage: hasNextPage == _undefined
            ? _instance.hasNextPage
            : (hasNextPage as bool?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetRecommendedManga$Page$pageInfo<TRes>
    implements CopyWith$Query$GetRecommendedManga$Page$pageInfo<TRes> {
  _CopyWithStubImpl$Query$GetRecommendedManga$Page$pageInfo(this._res);

  TRes _res;

  call({
    bool? hasNextPage,
    String? $__typename,
  }) =>
      _res;
}
