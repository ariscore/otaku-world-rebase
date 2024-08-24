// GENERATED FILE
// DO NOT MODIFY
// ignore_for_file: type=lint
import 'dart:async';

import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

import '../../fragments.graphql.dart';

class Variables$Query$GetPopularManhwa {
  factory Variables$Query$GetPopularManhwa({int? page}) =>
      Variables$Query$GetPopularManhwa._({
        if (page != null) r'page': page,
      });

  Variables$Query$GetPopularManhwa._(this._$data);

  factory Variables$Query$GetPopularManhwa.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('page')) {
      final l$page = data['page'];
      result$data['page'] = (l$page as int?);
    }
    return Variables$Query$GetPopularManhwa._(result$data);
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

  CopyWith$Variables$Query$GetPopularManhwa<Variables$Query$GetPopularManhwa>
      get copyWith => CopyWith$Variables$Query$GetPopularManhwa(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GetPopularManhwa) ||
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

abstract class CopyWith$Variables$Query$GetPopularManhwa<TRes> {
  factory CopyWith$Variables$Query$GetPopularManhwa(
    Variables$Query$GetPopularManhwa instance,
    TRes Function(Variables$Query$GetPopularManhwa) then,
  ) = _CopyWithImpl$Variables$Query$GetPopularManhwa;

  factory CopyWith$Variables$Query$GetPopularManhwa.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetPopularManhwa;

  TRes call({int? page});
}

class _CopyWithImpl$Variables$Query$GetPopularManhwa<TRes>
    implements CopyWith$Variables$Query$GetPopularManhwa<TRes> {
  _CopyWithImpl$Variables$Query$GetPopularManhwa(
    this._instance,
    this._then,
  );

  final Variables$Query$GetPopularManhwa _instance;

  final TRes Function(Variables$Query$GetPopularManhwa) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? page = _undefined}) =>
      _then(Variables$Query$GetPopularManhwa._({
        ..._instance._$data,
        if (page != _undefined) 'page': (page as int?),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetPopularManhwa<TRes>
    implements CopyWith$Variables$Query$GetPopularManhwa<TRes> {
  _CopyWithStubImpl$Variables$Query$GetPopularManhwa(this._res);

  TRes _res;

  call({int? page}) => _res;
}

class Query$GetPopularManhwa {
  Query$GetPopularManhwa({
    this.Page,
    this.$__typename = 'Query',
  });

  factory Query$GetPopularManhwa.fromJson(Map<String, dynamic> json) {
    final l$Page = json['Page'];
    final l$$__typename = json['__typename'];
    return Query$GetPopularManhwa(
      Page: l$Page == null
          ? null
          : Query$GetPopularManhwa$Page.fromJson(
              (l$Page as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetPopularManhwa$Page? Page;

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
    if (!(other is Query$GetPopularManhwa) ||
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

extension UtilityExtension$Query$GetPopularManhwa on Query$GetPopularManhwa {
  CopyWith$Query$GetPopularManhwa<Query$GetPopularManhwa> get copyWith =>
      CopyWith$Query$GetPopularManhwa(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetPopularManhwa<TRes> {
  factory CopyWith$Query$GetPopularManhwa(
    Query$GetPopularManhwa instance,
    TRes Function(Query$GetPopularManhwa) then,
  ) = _CopyWithImpl$Query$GetPopularManhwa;

  factory CopyWith$Query$GetPopularManhwa.stub(TRes res) =
      _CopyWithStubImpl$Query$GetPopularManhwa;

  TRes call({
    Query$GetPopularManhwa$Page? Page,
    String? $__typename,
  });
  CopyWith$Query$GetPopularManhwa$Page<TRes> get Page;
}

class _CopyWithImpl$Query$GetPopularManhwa<TRes>
    implements CopyWith$Query$GetPopularManhwa<TRes> {
  _CopyWithImpl$Query$GetPopularManhwa(
    this._instance,
    this._then,
  );

  final Query$GetPopularManhwa _instance;

  final TRes Function(Query$GetPopularManhwa) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? Page = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetPopularManhwa(
        Page: Page == _undefined
            ? _instance.Page
            : (Page as Query$GetPopularManhwa$Page?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetPopularManhwa$Page<TRes> get Page {
    final local$Page = _instance.Page;
    return local$Page == null
        ? CopyWith$Query$GetPopularManhwa$Page.stub(_then(_instance))
        : CopyWith$Query$GetPopularManhwa$Page(
            local$Page, (e) => call(Page: e));
  }
}

class _CopyWithStubImpl$Query$GetPopularManhwa<TRes>
    implements CopyWith$Query$GetPopularManhwa<TRes> {
  _CopyWithStubImpl$Query$GetPopularManhwa(this._res);

  TRes _res;

  call({
    Query$GetPopularManhwa$Page? Page,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetPopularManhwa$Page<TRes> get Page =>
      CopyWith$Query$GetPopularManhwa$Page.stub(_res);
}

const documentNodeQueryGetPopularManhwa = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetPopularManhwa'),
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
              ArgumentNode(
                name: NameNode(value: 'isAdult'),
                value: BooleanValueNode(value: false),
              ),
              ArgumentNode(
                name: NameNode(value: 'countryOfOrigin'),
                value: StringValueNode(
                  value: 'KR',
                  isBlock: false,
                ),
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
Query$GetPopularManhwa _parserFn$Query$GetPopularManhwa(
        Map<String, dynamic> data) =>
    Query$GetPopularManhwa.fromJson(data);
typedef OnQueryComplete$Query$GetPopularManhwa = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$GetPopularManhwa?,
);

class Options$Query$GetPopularManhwa
    extends graphql.QueryOptions<Query$GetPopularManhwa> {
  Options$Query$GetPopularManhwa({
    String? operationName,
    Variables$Query$GetPopularManhwa? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetPopularManhwa? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$GetPopularManhwa? onComplete,
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
                        : _parserFn$Query$GetPopularManhwa(data),
                  ),
          onError: onError,
          document: documentNodeQueryGetPopularManhwa,
          parserFn: _parserFn$Query$GetPopularManhwa,
        );

  final OnQueryComplete$Query$GetPopularManhwa? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$GetPopularManhwa
    extends graphql.WatchQueryOptions<Query$GetPopularManhwa> {
  WatchOptions$Query$GetPopularManhwa({
    String? operationName,
    Variables$Query$GetPopularManhwa? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetPopularManhwa? typedOptimisticResult,
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
          document: documentNodeQueryGetPopularManhwa,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetPopularManhwa,
        );
}

class FetchMoreOptions$Query$GetPopularManhwa extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetPopularManhwa({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$GetPopularManhwa? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryGetPopularManhwa,
        );
}

extension ClientExtension$Query$GetPopularManhwa on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetPopularManhwa>> query$GetPopularManhwa(
          [Options$Query$GetPopularManhwa? options]) async =>
      await this.query(options ?? Options$Query$GetPopularManhwa());
  graphql.ObservableQuery<Query$GetPopularManhwa> watchQuery$GetPopularManhwa(
          [WatchOptions$Query$GetPopularManhwa? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$GetPopularManhwa());
  void writeQuery$GetPopularManhwa({
    required Query$GetPopularManhwa data,
    Variables$Query$GetPopularManhwa? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryGetPopularManhwa),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetPopularManhwa? readQuery$GetPopularManhwa({
    Variables$Query$GetPopularManhwa? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation:
            graphql.Operation(document: documentNodeQueryGetPopularManhwa),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$GetPopularManhwa.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$GetPopularManhwa>
    useQuery$GetPopularManhwa([Options$Query$GetPopularManhwa? options]) =>
        graphql_flutter.useQuery(options ?? Options$Query$GetPopularManhwa());
graphql.ObservableQuery<Query$GetPopularManhwa> useWatchQuery$GetPopularManhwa(
        [WatchOptions$Query$GetPopularManhwa? options]) =>
    graphql_flutter
        .useWatchQuery(options ?? WatchOptions$Query$GetPopularManhwa());

class Query$GetPopularManhwa$Widget
    extends graphql_flutter.Query<Query$GetPopularManhwa> {
  Query$GetPopularManhwa$Widget({
    widgets.Key? key,
    Options$Query$GetPopularManhwa? options,
    required graphql_flutter.QueryBuilder<Query$GetPopularManhwa> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$GetPopularManhwa(),
          builder: builder,
        );
}

class Query$GetPopularManhwa$Page {
  Query$GetPopularManhwa$Page({
    this.pageInfo,
    this.media,
    this.$__typename = 'Page',
  });

  factory Query$GetPopularManhwa$Page.fromJson(Map<String, dynamic> json) {
    final l$pageInfo = json['pageInfo'];
    final l$media = json['media'];
    final l$$__typename = json['__typename'];
    return Query$GetPopularManhwa$Page(
      pageInfo: l$pageInfo == null
          ? null
          : Query$GetPopularManhwa$Page$pageInfo.fromJson(
              (l$pageInfo as Map<String, dynamic>)),
      media: (l$media as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$MediaShort.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetPopularManhwa$Page$pageInfo? pageInfo;

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
    if (!(other is Query$GetPopularManhwa$Page) ||
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

extension UtilityExtension$Query$GetPopularManhwa$Page
    on Query$GetPopularManhwa$Page {
  CopyWith$Query$GetPopularManhwa$Page<Query$GetPopularManhwa$Page>
      get copyWith => CopyWith$Query$GetPopularManhwa$Page(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetPopularManhwa$Page<TRes> {
  factory CopyWith$Query$GetPopularManhwa$Page(
    Query$GetPopularManhwa$Page instance,
    TRes Function(Query$GetPopularManhwa$Page) then,
  ) = _CopyWithImpl$Query$GetPopularManhwa$Page;

  factory CopyWith$Query$GetPopularManhwa$Page.stub(TRes res) =
      _CopyWithStubImpl$Query$GetPopularManhwa$Page;

  TRes call({
    Query$GetPopularManhwa$Page$pageInfo? pageInfo,
    List<Fragment$MediaShort?>? media,
    String? $__typename,
  });
  CopyWith$Query$GetPopularManhwa$Page$pageInfo<TRes> get pageInfo;
  TRes media(
      Iterable<Fragment$MediaShort?>? Function(
              Iterable<CopyWith$Fragment$MediaShort<Fragment$MediaShort>?>?)
          _fn);
}

class _CopyWithImpl$Query$GetPopularManhwa$Page<TRes>
    implements CopyWith$Query$GetPopularManhwa$Page<TRes> {
  _CopyWithImpl$Query$GetPopularManhwa$Page(
    this._instance,
    this._then,
  );

  final Query$GetPopularManhwa$Page _instance;

  final TRes Function(Query$GetPopularManhwa$Page) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pageInfo = _undefined,
    Object? media = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetPopularManhwa$Page(
        pageInfo: pageInfo == _undefined
            ? _instance.pageInfo
            : (pageInfo as Query$GetPopularManhwa$Page$pageInfo?),
        media: media == _undefined
            ? _instance.media
            : (media as List<Fragment$MediaShort?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetPopularManhwa$Page$pageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return local$pageInfo == null
        ? CopyWith$Query$GetPopularManhwa$Page$pageInfo.stub(_then(_instance))
        : CopyWith$Query$GetPopularManhwa$Page$pageInfo(
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

class _CopyWithStubImpl$Query$GetPopularManhwa$Page<TRes>
    implements CopyWith$Query$GetPopularManhwa$Page<TRes> {
  _CopyWithStubImpl$Query$GetPopularManhwa$Page(this._res);

  TRes _res;

  call({
    Query$GetPopularManhwa$Page$pageInfo? pageInfo,
    List<Fragment$MediaShort?>? media,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetPopularManhwa$Page$pageInfo<TRes> get pageInfo =>
      CopyWith$Query$GetPopularManhwa$Page$pageInfo.stub(_res);

  media(_fn) => _res;
}

class Query$GetPopularManhwa$Page$pageInfo {
  Query$GetPopularManhwa$Page$pageInfo({
    this.hasNextPage,
    this.$__typename = 'PageInfo',
  });

  factory Query$GetPopularManhwa$Page$pageInfo.fromJson(
      Map<String, dynamic> json) {
    final l$hasNextPage = json['hasNextPage'];
    final l$$__typename = json['__typename'];
    return Query$GetPopularManhwa$Page$pageInfo(
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
    if (!(other is Query$GetPopularManhwa$Page$pageInfo) ||
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

extension UtilityExtension$Query$GetPopularManhwa$Page$pageInfo
    on Query$GetPopularManhwa$Page$pageInfo {
  CopyWith$Query$GetPopularManhwa$Page$pageInfo<
          Query$GetPopularManhwa$Page$pageInfo>
      get copyWith => CopyWith$Query$GetPopularManhwa$Page$pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetPopularManhwa$Page$pageInfo<TRes> {
  factory CopyWith$Query$GetPopularManhwa$Page$pageInfo(
    Query$GetPopularManhwa$Page$pageInfo instance,
    TRes Function(Query$GetPopularManhwa$Page$pageInfo) then,
  ) = _CopyWithImpl$Query$GetPopularManhwa$Page$pageInfo;

  factory CopyWith$Query$GetPopularManhwa$Page$pageInfo.stub(TRes res) =
      _CopyWithStubImpl$Query$GetPopularManhwa$Page$pageInfo;

  TRes call({
    bool? hasNextPage,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetPopularManhwa$Page$pageInfo<TRes>
    implements CopyWith$Query$GetPopularManhwa$Page$pageInfo<TRes> {
  _CopyWithImpl$Query$GetPopularManhwa$Page$pageInfo(
    this._instance,
    this._then,
  );

  final Query$GetPopularManhwa$Page$pageInfo _instance;

  final TRes Function(Query$GetPopularManhwa$Page$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasNextPage = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetPopularManhwa$Page$pageInfo(
        hasNextPage: hasNextPage == _undefined
            ? _instance.hasNextPage
            : (hasNextPage as bool?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetPopularManhwa$Page$pageInfo<TRes>
    implements CopyWith$Query$GetPopularManhwa$Page$pageInfo<TRes> {
  _CopyWithStubImpl$Query$GetPopularManhwa$Page$pageInfo(this._res);

  TRes _res;

  call({
    bool? hasNextPage,
    String? $__typename,
  }) =>
      _res;
}
