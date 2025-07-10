// GENERATED FILE
// DO NOT MODIFY
// ignore_for_file: type=lint
import '../../fragments.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$GetAllTimePopularManga {
  factory Variables$Query$GetAllTimePopularManga({int? page}) =>
      Variables$Query$GetAllTimePopularManga._({
        if (page != null) r'page': page,
      });

  Variables$Query$GetAllTimePopularManga._(this._$data);

  factory Variables$Query$GetAllTimePopularManga.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('page')) {
      final l$page = data['page'];
      result$data['page'] = (l$page as int?);
    }
    return Variables$Query$GetAllTimePopularManga._(result$data);
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

  CopyWith$Variables$Query$GetAllTimePopularManga<
          Variables$Query$GetAllTimePopularManga>
      get copyWith => CopyWith$Variables$Query$GetAllTimePopularManga(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$GetAllTimePopularManga ||
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

abstract class CopyWith$Variables$Query$GetAllTimePopularManga<TRes> {
  factory CopyWith$Variables$Query$GetAllTimePopularManga(
    Variables$Query$GetAllTimePopularManga instance,
    TRes Function(Variables$Query$GetAllTimePopularManga) then,
  ) = _CopyWithImpl$Variables$Query$GetAllTimePopularManga;

  factory CopyWith$Variables$Query$GetAllTimePopularManga.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetAllTimePopularManga;

  TRes call({int? page});
}

class _CopyWithImpl$Variables$Query$GetAllTimePopularManga<TRes>
    implements CopyWith$Variables$Query$GetAllTimePopularManga<TRes> {
  _CopyWithImpl$Variables$Query$GetAllTimePopularManga(
    this._instance,
    this._then,
  );

  final Variables$Query$GetAllTimePopularManga _instance;

  final TRes Function(Variables$Query$GetAllTimePopularManga) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? page = _undefined}) =>
      _then(Variables$Query$GetAllTimePopularManga._({
        ..._instance._$data,
        if (page != _undefined) 'page': (page as int?),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetAllTimePopularManga<TRes>
    implements CopyWith$Variables$Query$GetAllTimePopularManga<TRes> {
  _CopyWithStubImpl$Variables$Query$GetAllTimePopularManga(this._res);

  TRes _res;

  call({int? page}) => _res;
}

class Query$GetAllTimePopularManga {
  Query$GetAllTimePopularManga({
    this.Page,
    this.$__typename = 'Query',
  });

  factory Query$GetAllTimePopularManga.fromJson(Map<String, dynamic> json) {
    final l$Page = json['Page'];
    final l$$__typename = json['__typename'];
    return Query$GetAllTimePopularManga(
      Page: l$Page == null
          ? null
          : Query$GetAllTimePopularManga$Page.fromJson(
              (l$Page as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetAllTimePopularManga$Page? Page;

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
    if (other is! Query$GetAllTimePopularManga ||
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

extension UtilityExtension$Query$GetAllTimePopularManga
    on Query$GetAllTimePopularManga {
  CopyWith$Query$GetAllTimePopularManga<Query$GetAllTimePopularManga>
      get copyWith => CopyWith$Query$GetAllTimePopularManga(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetAllTimePopularManga<TRes> {
  factory CopyWith$Query$GetAllTimePopularManga(
    Query$GetAllTimePopularManga instance,
    TRes Function(Query$GetAllTimePopularManga) then,
  ) = _CopyWithImpl$Query$GetAllTimePopularManga;

  factory CopyWith$Query$GetAllTimePopularManga.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAllTimePopularManga;

  TRes call({
    Query$GetAllTimePopularManga$Page? Page,
    String? $__typename,
  });
  CopyWith$Query$GetAllTimePopularManga$Page<TRes> get Page;
}

class _CopyWithImpl$Query$GetAllTimePopularManga<TRes>
    implements CopyWith$Query$GetAllTimePopularManga<TRes> {
  _CopyWithImpl$Query$GetAllTimePopularManga(
    this._instance,
    this._then,
  );

  final Query$GetAllTimePopularManga _instance;

  final TRes Function(Query$GetAllTimePopularManga) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? Page = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetAllTimePopularManga(
        Page: Page == _undefined
            ? _instance.Page
            : (Page as Query$GetAllTimePopularManga$Page?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetAllTimePopularManga$Page<TRes> get Page {
    final local$Page = _instance.Page;
    return local$Page == null
        ? CopyWith$Query$GetAllTimePopularManga$Page.stub(_then(_instance))
        : CopyWith$Query$GetAllTimePopularManga$Page(
            local$Page, (e) => call(Page: e));
  }
}

class _CopyWithStubImpl$Query$GetAllTimePopularManga<TRes>
    implements CopyWith$Query$GetAllTimePopularManga<TRes> {
  _CopyWithStubImpl$Query$GetAllTimePopularManga(this._res);

  TRes _res;

  call({
    Query$GetAllTimePopularManga$Page? Page,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetAllTimePopularManga$Page<TRes> get Page =>
      CopyWith$Query$GetAllTimePopularManga$Page.stub(_res);
}

const documentNodeQueryGetAllTimePopularManga = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetAllTimePopularManga'),
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
Query$GetAllTimePopularManga _parserFn$Query$GetAllTimePopularManga(
        Map<String, dynamic> data) =>
    Query$GetAllTimePopularManga.fromJson(data);
typedef OnQueryComplete$Query$GetAllTimePopularManga = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$GetAllTimePopularManga?,
);

class Options$Query$GetAllTimePopularManga
    extends graphql.QueryOptions<Query$GetAllTimePopularManga> {
  Options$Query$GetAllTimePopularManga({
    String? operationName,
    Variables$Query$GetAllTimePopularManga? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetAllTimePopularManga? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$GetAllTimePopularManga? onComplete,
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
                        : _parserFn$Query$GetAllTimePopularManga(data),
                  ),
          onError: onError,
          document: documentNodeQueryGetAllTimePopularManga,
          parserFn: _parserFn$Query$GetAllTimePopularManga,
        );

  final OnQueryComplete$Query$GetAllTimePopularManga? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$GetAllTimePopularManga
    extends graphql.WatchQueryOptions<Query$GetAllTimePopularManga> {
  WatchOptions$Query$GetAllTimePopularManga({
    String? operationName,
    Variables$Query$GetAllTimePopularManga? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetAllTimePopularManga? typedOptimisticResult,
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
          document: documentNodeQueryGetAllTimePopularManga,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetAllTimePopularManga,
        );
}

class FetchMoreOptions$Query$GetAllTimePopularManga
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetAllTimePopularManga({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$GetAllTimePopularManga? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryGetAllTimePopularManga,
        );
}

extension ClientExtension$Query$GetAllTimePopularManga
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetAllTimePopularManga>>
      query$GetAllTimePopularManga(
              [Options$Query$GetAllTimePopularManga? options]) async =>
          await this.query(options ?? Options$Query$GetAllTimePopularManga());
  graphql.ObservableQuery<
      Query$GetAllTimePopularManga> watchQuery$GetAllTimePopularManga(
          [WatchOptions$Query$GetAllTimePopularManga? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$GetAllTimePopularManga());
  void writeQuery$GetAllTimePopularManga({
    required Query$GetAllTimePopularManga data,
    Variables$Query$GetAllTimePopularManga? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(
              document: documentNodeQueryGetAllTimePopularManga),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetAllTimePopularManga? readQuery$GetAllTimePopularManga({
    Variables$Query$GetAllTimePopularManga? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(
            document: documentNodeQueryGetAllTimePopularManga),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null
        ? null
        : Query$GetAllTimePopularManga.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$GetAllTimePopularManga>
    useQuery$GetAllTimePopularManga(
            [Options$Query$GetAllTimePopularManga? options]) =>
        graphql_flutter
            .useQuery(options ?? Options$Query$GetAllTimePopularManga());
graphql.ObservableQuery<Query$GetAllTimePopularManga>
    useWatchQuery$GetAllTimePopularManga(
            [WatchOptions$Query$GetAllTimePopularManga? options]) =>
        graphql_flutter.useWatchQuery(
            options ?? WatchOptions$Query$GetAllTimePopularManga());

class Query$GetAllTimePopularManga$Widget
    extends graphql_flutter.Query<Query$GetAllTimePopularManga> {
  Query$GetAllTimePopularManga$Widget({
    widgets.Key? key,
    Options$Query$GetAllTimePopularManga? options,
    required graphql_flutter.QueryBuilder<Query$GetAllTimePopularManga> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$GetAllTimePopularManga(),
          builder: builder,
        );
}

class Query$GetAllTimePopularManga$Page {
  Query$GetAllTimePopularManga$Page({
    this.pageInfo,
    this.media,
    this.$__typename = 'Page',
  });

  factory Query$GetAllTimePopularManga$Page.fromJson(
      Map<String, dynamic> json) {
    final l$pageInfo = json['pageInfo'];
    final l$media = json['media'];
    final l$$__typename = json['__typename'];
    return Query$GetAllTimePopularManga$Page(
      pageInfo: l$pageInfo == null
          ? null
          : Query$GetAllTimePopularManga$Page$pageInfo.fromJson(
              (l$pageInfo as Map<String, dynamic>)),
      media: (l$media as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$MediaShort.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetAllTimePopularManga$Page$pageInfo? pageInfo;

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
    if (other is! Query$GetAllTimePopularManga$Page ||
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

extension UtilityExtension$Query$GetAllTimePopularManga$Page
    on Query$GetAllTimePopularManga$Page {
  CopyWith$Query$GetAllTimePopularManga$Page<Query$GetAllTimePopularManga$Page>
      get copyWith => CopyWith$Query$GetAllTimePopularManga$Page(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetAllTimePopularManga$Page<TRes> {
  factory CopyWith$Query$GetAllTimePopularManga$Page(
    Query$GetAllTimePopularManga$Page instance,
    TRes Function(Query$GetAllTimePopularManga$Page) then,
  ) = _CopyWithImpl$Query$GetAllTimePopularManga$Page;

  factory CopyWith$Query$GetAllTimePopularManga$Page.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAllTimePopularManga$Page;

  TRes call({
    Query$GetAllTimePopularManga$Page$pageInfo? pageInfo,
    List<Fragment$MediaShort?>? media,
    String? $__typename,
  });
  CopyWith$Query$GetAllTimePopularManga$Page$pageInfo<TRes> get pageInfo;
  TRes media(
      Iterable<Fragment$MediaShort?>? Function(
              Iterable<CopyWith$Fragment$MediaShort<Fragment$MediaShort>?>?)
          _fn);
}

class _CopyWithImpl$Query$GetAllTimePopularManga$Page<TRes>
    implements CopyWith$Query$GetAllTimePopularManga$Page<TRes> {
  _CopyWithImpl$Query$GetAllTimePopularManga$Page(
    this._instance,
    this._then,
  );

  final Query$GetAllTimePopularManga$Page _instance;

  final TRes Function(Query$GetAllTimePopularManga$Page) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pageInfo = _undefined,
    Object? media = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetAllTimePopularManga$Page(
        pageInfo: pageInfo == _undefined
            ? _instance.pageInfo
            : (pageInfo as Query$GetAllTimePopularManga$Page$pageInfo?),
        media: media == _undefined
            ? _instance.media
            : (media as List<Fragment$MediaShort?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetAllTimePopularManga$Page$pageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return local$pageInfo == null
        ? CopyWith$Query$GetAllTimePopularManga$Page$pageInfo.stub(
            _then(_instance))
        : CopyWith$Query$GetAllTimePopularManga$Page$pageInfo(
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

class _CopyWithStubImpl$Query$GetAllTimePopularManga$Page<TRes>
    implements CopyWith$Query$GetAllTimePopularManga$Page<TRes> {
  _CopyWithStubImpl$Query$GetAllTimePopularManga$Page(this._res);

  TRes _res;

  call({
    Query$GetAllTimePopularManga$Page$pageInfo? pageInfo,
    List<Fragment$MediaShort?>? media,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetAllTimePopularManga$Page$pageInfo<TRes> get pageInfo =>
      CopyWith$Query$GetAllTimePopularManga$Page$pageInfo.stub(_res);

  media(_fn) => _res;
}

class Query$GetAllTimePopularManga$Page$pageInfo {
  Query$GetAllTimePopularManga$Page$pageInfo({
    this.hasNextPage,
    this.$__typename = 'PageInfo',
  });

  factory Query$GetAllTimePopularManga$Page$pageInfo.fromJson(
      Map<String, dynamic> json) {
    final l$hasNextPage = json['hasNextPage'];
    final l$$__typename = json['__typename'];
    return Query$GetAllTimePopularManga$Page$pageInfo(
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
    if (other is! Query$GetAllTimePopularManga$Page$pageInfo ||
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

extension UtilityExtension$Query$GetAllTimePopularManga$Page$pageInfo
    on Query$GetAllTimePopularManga$Page$pageInfo {
  CopyWith$Query$GetAllTimePopularManga$Page$pageInfo<
          Query$GetAllTimePopularManga$Page$pageInfo>
      get copyWith => CopyWith$Query$GetAllTimePopularManga$Page$pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetAllTimePopularManga$Page$pageInfo<TRes> {
  factory CopyWith$Query$GetAllTimePopularManga$Page$pageInfo(
    Query$GetAllTimePopularManga$Page$pageInfo instance,
    TRes Function(Query$GetAllTimePopularManga$Page$pageInfo) then,
  ) = _CopyWithImpl$Query$GetAllTimePopularManga$Page$pageInfo;

  factory CopyWith$Query$GetAllTimePopularManga$Page$pageInfo.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAllTimePopularManga$Page$pageInfo;

  TRes call({
    bool? hasNextPage,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetAllTimePopularManga$Page$pageInfo<TRes>
    implements CopyWith$Query$GetAllTimePopularManga$Page$pageInfo<TRes> {
  _CopyWithImpl$Query$GetAllTimePopularManga$Page$pageInfo(
    this._instance,
    this._then,
  );

  final Query$GetAllTimePopularManga$Page$pageInfo _instance;

  final TRes Function(Query$GetAllTimePopularManga$Page$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasNextPage = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetAllTimePopularManga$Page$pageInfo(
        hasNextPage: hasNextPage == _undefined
            ? _instance.hasNextPage
            : (hasNextPage as bool?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetAllTimePopularManga$Page$pageInfo<TRes>
    implements CopyWith$Query$GetAllTimePopularManga$Page$pageInfo<TRes> {
  _CopyWithStubImpl$Query$GetAllTimePopularManga$Page$pageInfo(this._res);

  TRes _res;

  call({
    bool? hasNextPage,
    String? $__typename,
  }) =>
      _res;
}
