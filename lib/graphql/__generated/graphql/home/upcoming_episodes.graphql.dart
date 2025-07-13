// GENERATED FILE
// DO NOT MODIFY
// ignore_for_file: type=lint
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$GetUpcomingEpisodes {
  factory Variables$Query$GetUpcomingEpisodes({int? page}) =>
      Variables$Query$GetUpcomingEpisodes._({
        if (page != null) r'page': page,
      });

  Variables$Query$GetUpcomingEpisodes._(this._$data);

  factory Variables$Query$GetUpcomingEpisodes.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('page')) {
      final l$page = data['page'];
      result$data['page'] = (l$page as int?);
    }
    return Variables$Query$GetUpcomingEpisodes._(result$data);
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

  CopyWith$Variables$Query$GetUpcomingEpisodes<
          Variables$Query$GetUpcomingEpisodes>
      get copyWith => CopyWith$Variables$Query$GetUpcomingEpisodes(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$GetUpcomingEpisodes ||
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

abstract class CopyWith$Variables$Query$GetUpcomingEpisodes<TRes> {
  factory CopyWith$Variables$Query$GetUpcomingEpisodes(
    Variables$Query$GetUpcomingEpisodes instance,
    TRes Function(Variables$Query$GetUpcomingEpisodes) then,
  ) = _CopyWithImpl$Variables$Query$GetUpcomingEpisodes;

  factory CopyWith$Variables$Query$GetUpcomingEpisodes.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetUpcomingEpisodes;

  TRes call({int? page});
}

class _CopyWithImpl$Variables$Query$GetUpcomingEpisodes<TRes>
    implements CopyWith$Variables$Query$GetUpcomingEpisodes<TRes> {
  _CopyWithImpl$Variables$Query$GetUpcomingEpisodes(
    this._instance,
    this._then,
  );

  final Variables$Query$GetUpcomingEpisodes _instance;

  final TRes Function(Variables$Query$GetUpcomingEpisodes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? page = _undefined}) =>
      _then(Variables$Query$GetUpcomingEpisodes._({
        ..._instance._$data,
        if (page != _undefined) 'page': (page as int?),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetUpcomingEpisodes<TRes>
    implements CopyWith$Variables$Query$GetUpcomingEpisodes<TRes> {
  _CopyWithStubImpl$Variables$Query$GetUpcomingEpisodes(this._res);

  TRes _res;

  call({int? page}) => _res;
}

class Query$GetUpcomingEpisodes {
  Query$GetUpcomingEpisodes({
    this.Page,
    this.$__typename = 'Query',
  });

  factory Query$GetUpcomingEpisodes.fromJson(Map<String, dynamic> json) {
    final l$Page = json['Page'];
    final l$$__typename = json['__typename'];
    return Query$GetUpcomingEpisodes(
      Page: l$Page == null
          ? null
          : Query$GetUpcomingEpisodes$Page.fromJson(
              (l$Page as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetUpcomingEpisodes$Page? Page;

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
    if (other is! Query$GetUpcomingEpisodes ||
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

extension UtilityExtension$Query$GetUpcomingEpisodes
    on Query$GetUpcomingEpisodes {
  CopyWith$Query$GetUpcomingEpisodes<Query$GetUpcomingEpisodes> get copyWith =>
      CopyWith$Query$GetUpcomingEpisodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetUpcomingEpisodes<TRes> {
  factory CopyWith$Query$GetUpcomingEpisodes(
    Query$GetUpcomingEpisodes instance,
    TRes Function(Query$GetUpcomingEpisodes) then,
  ) = _CopyWithImpl$Query$GetUpcomingEpisodes;

  factory CopyWith$Query$GetUpcomingEpisodes.stub(TRes res) =
      _CopyWithStubImpl$Query$GetUpcomingEpisodes;

  TRes call({
    Query$GetUpcomingEpisodes$Page? Page,
    String? $__typename,
  });
  CopyWith$Query$GetUpcomingEpisodes$Page<TRes> get Page;
}

class _CopyWithImpl$Query$GetUpcomingEpisodes<TRes>
    implements CopyWith$Query$GetUpcomingEpisodes<TRes> {
  _CopyWithImpl$Query$GetUpcomingEpisodes(
    this._instance,
    this._then,
  );

  final Query$GetUpcomingEpisodes _instance;

  final TRes Function(Query$GetUpcomingEpisodes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? Page = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetUpcomingEpisodes(
        Page: Page == _undefined
            ? _instance.Page
            : (Page as Query$GetUpcomingEpisodes$Page?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetUpcomingEpisodes$Page<TRes> get Page {
    final local$Page = _instance.Page;
    return local$Page == null
        ? CopyWith$Query$GetUpcomingEpisodes$Page.stub(_then(_instance))
        : CopyWith$Query$GetUpcomingEpisodes$Page(
            local$Page, (e) => call(Page: e));
  }
}

class _CopyWithStubImpl$Query$GetUpcomingEpisodes<TRes>
    implements CopyWith$Query$GetUpcomingEpisodes<TRes> {
  _CopyWithStubImpl$Query$GetUpcomingEpisodes(this._res);

  TRes _res;

  call({
    Query$GetUpcomingEpisodes$Page? Page,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetUpcomingEpisodes$Page<TRes> get Page =>
      CopyWith$Query$GetUpcomingEpisodes$Page.stub(_res);
}

const documentNodeQueryGetUpcomingEpisodes = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetUpcomingEpisodes'),
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
            value: IntValueNode(value: '10'),
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
                name: NameNode(value: 'status'),
                value: EnumValueNode(name: NameNode(value: 'RELEASING')),
              ),
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
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'id'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'title'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'userPreferred'),
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
                name: NameNode(value: 'coverImage'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'large'),
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
                name: NameNode(value: 'airingSchedule'),
                alias: null,
                arguments: [
                  ArgumentNode(
                    name: NameNode(value: 'notYetAired'),
                    value: BooleanValueNode(value: true),
                  ),
                  ArgumentNode(
                    name: NameNode(value: 'perPage'),
                    value: IntValueNode(value: '1'),
                  ),
                ],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'nodes'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                        name: NameNode(value: 'timeUntilAiring'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'episode'),
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
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);
Query$GetUpcomingEpisodes _parserFn$Query$GetUpcomingEpisodes(
        Map<String, dynamic> data) =>
    Query$GetUpcomingEpisodes.fromJson(data);
typedef OnQueryComplete$Query$GetUpcomingEpisodes = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$GetUpcomingEpisodes?,
);

class Options$Query$GetUpcomingEpisodes
    extends graphql.QueryOptions<Query$GetUpcomingEpisodes> {
  Options$Query$GetUpcomingEpisodes({
    String? operationName,
    Variables$Query$GetUpcomingEpisodes? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetUpcomingEpisodes? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$GetUpcomingEpisodes? onComplete,
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
                        : _parserFn$Query$GetUpcomingEpisodes(data),
                  ),
          onError: onError,
          document: documentNodeQueryGetUpcomingEpisodes,
          parserFn: _parserFn$Query$GetUpcomingEpisodes,
        );

  final OnQueryComplete$Query$GetUpcomingEpisodes? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$GetUpcomingEpisodes
    extends graphql.WatchQueryOptions<Query$GetUpcomingEpisodes> {
  WatchOptions$Query$GetUpcomingEpisodes({
    String? operationName,
    Variables$Query$GetUpcomingEpisodes? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetUpcomingEpisodes? typedOptimisticResult,
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
          document: documentNodeQueryGetUpcomingEpisodes,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetUpcomingEpisodes,
        );
}

class FetchMoreOptions$Query$GetUpcomingEpisodes
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetUpcomingEpisodes({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$GetUpcomingEpisodes? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryGetUpcomingEpisodes,
        );
}

extension ClientExtension$Query$GetUpcomingEpisodes on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetUpcomingEpisodes>>
      query$GetUpcomingEpisodes(
              [Options$Query$GetUpcomingEpisodes? options]) async =>
          await this.query(options ?? Options$Query$GetUpcomingEpisodes());
  graphql.ObservableQuery<Query$GetUpcomingEpisodes>
      watchQuery$GetUpcomingEpisodes(
              [WatchOptions$Query$GetUpcomingEpisodes? options]) =>
          this.watchQuery(options ?? WatchOptions$Query$GetUpcomingEpisodes());
  void writeQuery$GetUpcomingEpisodes({
    required Query$GetUpcomingEpisodes data,
    Variables$Query$GetUpcomingEpisodes? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryGetUpcomingEpisodes),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetUpcomingEpisodes? readQuery$GetUpcomingEpisodes({
    Variables$Query$GetUpcomingEpisodes? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation:
            graphql.Operation(document: documentNodeQueryGetUpcomingEpisodes),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$GetUpcomingEpisodes.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$GetUpcomingEpisodes>
    useQuery$GetUpcomingEpisodes(
            [Options$Query$GetUpcomingEpisodes? options]) =>
        graphql_flutter
            .useQuery(options ?? Options$Query$GetUpcomingEpisodes());
graphql.ObservableQuery<Query$GetUpcomingEpisodes>
    useWatchQuery$GetUpcomingEpisodes(
            [WatchOptions$Query$GetUpcomingEpisodes? options]) =>
        graphql_flutter
            .useWatchQuery(options ?? WatchOptions$Query$GetUpcomingEpisodes());

class Query$GetUpcomingEpisodes$Widget
    extends graphql_flutter.Query<Query$GetUpcomingEpisodes> {
  Query$GetUpcomingEpisodes$Widget({
    widgets.Key? key,
    Options$Query$GetUpcomingEpisodes? options,
    required graphql_flutter.QueryBuilder<Query$GetUpcomingEpisodes> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$GetUpcomingEpisodes(),
          builder: builder,
        );
}

class Query$GetUpcomingEpisodes$Page {
  Query$GetUpcomingEpisodes$Page({
    this.pageInfo,
    this.media,
    this.$__typename = 'Page',
  });

  factory Query$GetUpcomingEpisodes$Page.fromJson(Map<String, dynamic> json) {
    final l$pageInfo = json['pageInfo'];
    final l$media = json['media'];
    final l$$__typename = json['__typename'];
    return Query$GetUpcomingEpisodes$Page(
      pageInfo: l$pageInfo == null
          ? null
          : Query$GetUpcomingEpisodes$Page$pageInfo.fromJson(
              (l$pageInfo as Map<String, dynamic>)),
      media: (l$media as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$GetUpcomingEpisodes$Page$media.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetUpcomingEpisodes$Page$pageInfo? pageInfo;

  final List<Query$GetUpcomingEpisodes$Page$media?>? media;

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
    if (other is! Query$GetUpcomingEpisodes$Page ||
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

extension UtilityExtension$Query$GetUpcomingEpisodes$Page
    on Query$GetUpcomingEpisodes$Page {
  CopyWith$Query$GetUpcomingEpisodes$Page<Query$GetUpcomingEpisodes$Page>
      get copyWith => CopyWith$Query$GetUpcomingEpisodes$Page(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetUpcomingEpisodes$Page<TRes> {
  factory CopyWith$Query$GetUpcomingEpisodes$Page(
    Query$GetUpcomingEpisodes$Page instance,
    TRes Function(Query$GetUpcomingEpisodes$Page) then,
  ) = _CopyWithImpl$Query$GetUpcomingEpisodes$Page;

  factory CopyWith$Query$GetUpcomingEpisodes$Page.stub(TRes res) =
      _CopyWithStubImpl$Query$GetUpcomingEpisodes$Page;

  TRes call({
    Query$GetUpcomingEpisodes$Page$pageInfo? pageInfo,
    List<Query$GetUpcomingEpisodes$Page$media?>? media,
    String? $__typename,
  });
  CopyWith$Query$GetUpcomingEpisodes$Page$pageInfo<TRes> get pageInfo;
  TRes media(
      Iterable<Query$GetUpcomingEpisodes$Page$media?>? Function(
              Iterable<
                  CopyWith$Query$GetUpcomingEpisodes$Page$media<
                      Query$GetUpcomingEpisodes$Page$media>?>?)
          _fn);
}

class _CopyWithImpl$Query$GetUpcomingEpisodes$Page<TRes>
    implements CopyWith$Query$GetUpcomingEpisodes$Page<TRes> {
  _CopyWithImpl$Query$GetUpcomingEpisodes$Page(
    this._instance,
    this._then,
  );

  final Query$GetUpcomingEpisodes$Page _instance;

  final TRes Function(Query$GetUpcomingEpisodes$Page) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pageInfo = _undefined,
    Object? media = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetUpcomingEpisodes$Page(
        pageInfo: pageInfo == _undefined
            ? _instance.pageInfo
            : (pageInfo as Query$GetUpcomingEpisodes$Page$pageInfo?),
        media: media == _undefined
            ? _instance.media
            : (media as List<Query$GetUpcomingEpisodes$Page$media?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetUpcomingEpisodes$Page$pageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return local$pageInfo == null
        ? CopyWith$Query$GetUpcomingEpisodes$Page$pageInfo.stub(
            _then(_instance))
        : CopyWith$Query$GetUpcomingEpisodes$Page$pageInfo(
            local$pageInfo, (e) => call(pageInfo: e));
  }

  TRes media(
          Iterable<Query$GetUpcomingEpisodes$Page$media?>? Function(
                  Iterable<
                      CopyWith$Query$GetUpcomingEpisodes$Page$media<
                          Query$GetUpcomingEpisodes$Page$media>?>?)
              _fn) =>
      call(
          media: _fn(_instance.media?.map((e) => e == null
              ? null
              : CopyWith$Query$GetUpcomingEpisodes$Page$media(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$GetUpcomingEpisodes$Page<TRes>
    implements CopyWith$Query$GetUpcomingEpisodes$Page<TRes> {
  _CopyWithStubImpl$Query$GetUpcomingEpisodes$Page(this._res);

  TRes _res;

  call({
    Query$GetUpcomingEpisodes$Page$pageInfo? pageInfo,
    List<Query$GetUpcomingEpisodes$Page$media?>? media,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetUpcomingEpisodes$Page$pageInfo<TRes> get pageInfo =>
      CopyWith$Query$GetUpcomingEpisodes$Page$pageInfo.stub(_res);

  media(_fn) => _res;
}

class Query$GetUpcomingEpisodes$Page$pageInfo {
  Query$GetUpcomingEpisodes$Page$pageInfo({
    this.hasNextPage,
    this.$__typename = 'PageInfo',
  });

  factory Query$GetUpcomingEpisodes$Page$pageInfo.fromJson(
      Map<String, dynamic> json) {
    final l$hasNextPage = json['hasNextPage'];
    final l$$__typename = json['__typename'];
    return Query$GetUpcomingEpisodes$Page$pageInfo(
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
    if (other is! Query$GetUpcomingEpisodes$Page$pageInfo ||
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

extension UtilityExtension$Query$GetUpcomingEpisodes$Page$pageInfo
    on Query$GetUpcomingEpisodes$Page$pageInfo {
  CopyWith$Query$GetUpcomingEpisodes$Page$pageInfo<
          Query$GetUpcomingEpisodes$Page$pageInfo>
      get copyWith => CopyWith$Query$GetUpcomingEpisodes$Page$pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetUpcomingEpisodes$Page$pageInfo<TRes> {
  factory CopyWith$Query$GetUpcomingEpisodes$Page$pageInfo(
    Query$GetUpcomingEpisodes$Page$pageInfo instance,
    TRes Function(Query$GetUpcomingEpisodes$Page$pageInfo) then,
  ) = _CopyWithImpl$Query$GetUpcomingEpisodes$Page$pageInfo;

  factory CopyWith$Query$GetUpcomingEpisodes$Page$pageInfo.stub(TRes res) =
      _CopyWithStubImpl$Query$GetUpcomingEpisodes$Page$pageInfo;

  TRes call({
    bool? hasNextPage,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetUpcomingEpisodes$Page$pageInfo<TRes>
    implements CopyWith$Query$GetUpcomingEpisodes$Page$pageInfo<TRes> {
  _CopyWithImpl$Query$GetUpcomingEpisodes$Page$pageInfo(
    this._instance,
    this._then,
  );

  final Query$GetUpcomingEpisodes$Page$pageInfo _instance;

  final TRes Function(Query$GetUpcomingEpisodes$Page$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasNextPage = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetUpcomingEpisodes$Page$pageInfo(
        hasNextPage: hasNextPage == _undefined
            ? _instance.hasNextPage
            : (hasNextPage as bool?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetUpcomingEpisodes$Page$pageInfo<TRes>
    implements CopyWith$Query$GetUpcomingEpisodes$Page$pageInfo<TRes> {
  _CopyWithStubImpl$Query$GetUpcomingEpisodes$Page$pageInfo(this._res);

  TRes _res;

  call({
    bool? hasNextPage,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetUpcomingEpisodes$Page$media {
  Query$GetUpcomingEpisodes$Page$media({
    required this.id,
    this.title,
    this.coverImage,
    this.airingSchedule,
    this.$__typename = 'Media',
  });

  factory Query$GetUpcomingEpisodes$Page$media.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$coverImage = json['coverImage'];
    final l$airingSchedule = json['airingSchedule'];
    final l$$__typename = json['__typename'];
    return Query$GetUpcomingEpisodes$Page$media(
      id: (l$id as int),
      title: l$title == null
          ? null
          : Query$GetUpcomingEpisodes$Page$media$title.fromJson(
              (l$title as Map<String, dynamic>)),
      coverImage: l$coverImage == null
          ? null
          : Query$GetUpcomingEpisodes$Page$media$coverImage.fromJson(
              (l$coverImage as Map<String, dynamic>)),
      airingSchedule: l$airingSchedule == null
          ? null
          : Query$GetUpcomingEpisodes$Page$media$airingSchedule.fromJson(
              (l$airingSchedule as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final Query$GetUpcomingEpisodes$Page$media$title? title;

  final Query$GetUpcomingEpisodes$Page$media$coverImage? coverImage;

  final Query$GetUpcomingEpisodes$Page$media$airingSchedule? airingSchedule;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$title = title;
    _resultData['title'] = l$title?.toJson();
    final l$coverImage = coverImage;
    _resultData['coverImage'] = l$coverImage?.toJson();
    final l$airingSchedule = airingSchedule;
    _resultData['airingSchedule'] = l$airingSchedule?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$title = title;
    final l$coverImage = coverImage;
    final l$airingSchedule = airingSchedule;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$title,
      l$coverImage,
      l$airingSchedule,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetUpcomingEpisodes$Page$media ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
      return false;
    }
    final l$coverImage = coverImage;
    final lOther$coverImage = other.coverImage;
    if (l$coverImage != lOther$coverImage) {
      return false;
    }
    final l$airingSchedule = airingSchedule;
    final lOther$airingSchedule = other.airingSchedule;
    if (l$airingSchedule != lOther$airingSchedule) {
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

extension UtilityExtension$Query$GetUpcomingEpisodes$Page$media
    on Query$GetUpcomingEpisodes$Page$media {
  CopyWith$Query$GetUpcomingEpisodes$Page$media<
          Query$GetUpcomingEpisodes$Page$media>
      get copyWith => CopyWith$Query$GetUpcomingEpisodes$Page$media(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetUpcomingEpisodes$Page$media<TRes> {
  factory CopyWith$Query$GetUpcomingEpisodes$Page$media(
    Query$GetUpcomingEpisodes$Page$media instance,
    TRes Function(Query$GetUpcomingEpisodes$Page$media) then,
  ) = _CopyWithImpl$Query$GetUpcomingEpisodes$Page$media;

  factory CopyWith$Query$GetUpcomingEpisodes$Page$media.stub(TRes res) =
      _CopyWithStubImpl$Query$GetUpcomingEpisodes$Page$media;

  TRes call({
    int? id,
    Query$GetUpcomingEpisodes$Page$media$title? title,
    Query$GetUpcomingEpisodes$Page$media$coverImage? coverImage,
    Query$GetUpcomingEpisodes$Page$media$airingSchedule? airingSchedule,
    String? $__typename,
  });
  CopyWith$Query$GetUpcomingEpisodes$Page$media$title<TRes> get title;
  CopyWith$Query$GetUpcomingEpisodes$Page$media$coverImage<TRes> get coverImage;
  CopyWith$Query$GetUpcomingEpisodes$Page$media$airingSchedule<TRes>
      get airingSchedule;
}

class _CopyWithImpl$Query$GetUpcomingEpisodes$Page$media<TRes>
    implements CopyWith$Query$GetUpcomingEpisodes$Page$media<TRes> {
  _CopyWithImpl$Query$GetUpcomingEpisodes$Page$media(
    this._instance,
    this._then,
  );

  final Query$GetUpcomingEpisodes$Page$media _instance;

  final TRes Function(Query$GetUpcomingEpisodes$Page$media) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? coverImage = _undefined,
    Object? airingSchedule = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetUpcomingEpisodes$Page$media(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        title: title == _undefined
            ? _instance.title
            : (title as Query$GetUpcomingEpisodes$Page$media$title?),
        coverImage: coverImage == _undefined
            ? _instance.coverImage
            : (coverImage as Query$GetUpcomingEpisodes$Page$media$coverImage?),
        airingSchedule: airingSchedule == _undefined
            ? _instance.airingSchedule
            : (airingSchedule
                as Query$GetUpcomingEpisodes$Page$media$airingSchedule?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetUpcomingEpisodes$Page$media$title<TRes> get title {
    final local$title = _instance.title;
    return local$title == null
        ? CopyWith$Query$GetUpcomingEpisodes$Page$media$title.stub(
            _then(_instance))
        : CopyWith$Query$GetUpcomingEpisodes$Page$media$title(
            local$title, (e) => call(title: e));
  }

  CopyWith$Query$GetUpcomingEpisodes$Page$media$coverImage<TRes>
      get coverImage {
    final local$coverImage = _instance.coverImage;
    return local$coverImage == null
        ? CopyWith$Query$GetUpcomingEpisodes$Page$media$coverImage.stub(
            _then(_instance))
        : CopyWith$Query$GetUpcomingEpisodes$Page$media$coverImage(
            local$coverImage, (e) => call(coverImage: e));
  }

  CopyWith$Query$GetUpcomingEpisodes$Page$media$airingSchedule<TRes>
      get airingSchedule {
    final local$airingSchedule = _instance.airingSchedule;
    return local$airingSchedule == null
        ? CopyWith$Query$GetUpcomingEpisodes$Page$media$airingSchedule.stub(
            _then(_instance))
        : CopyWith$Query$GetUpcomingEpisodes$Page$media$airingSchedule(
            local$airingSchedule, (e) => call(airingSchedule: e));
  }
}

class _CopyWithStubImpl$Query$GetUpcomingEpisodes$Page$media<TRes>
    implements CopyWith$Query$GetUpcomingEpisodes$Page$media<TRes> {
  _CopyWithStubImpl$Query$GetUpcomingEpisodes$Page$media(this._res);

  TRes _res;

  call({
    int? id,
    Query$GetUpcomingEpisodes$Page$media$title? title,
    Query$GetUpcomingEpisodes$Page$media$coverImage? coverImage,
    Query$GetUpcomingEpisodes$Page$media$airingSchedule? airingSchedule,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetUpcomingEpisodes$Page$media$title<TRes> get title =>
      CopyWith$Query$GetUpcomingEpisodes$Page$media$title.stub(_res);

  CopyWith$Query$GetUpcomingEpisodes$Page$media$coverImage<TRes>
      get coverImage =>
          CopyWith$Query$GetUpcomingEpisodes$Page$media$coverImage.stub(_res);

  CopyWith$Query$GetUpcomingEpisodes$Page$media$airingSchedule<TRes>
      get airingSchedule =>
          CopyWith$Query$GetUpcomingEpisodes$Page$media$airingSchedule.stub(
              _res);
}

class Query$GetUpcomingEpisodes$Page$media$title {
  Query$GetUpcomingEpisodes$Page$media$title({
    this.userPreferred,
    this.$__typename = 'MediaTitle',
  });

  factory Query$GetUpcomingEpisodes$Page$media$title.fromJson(
      Map<String, dynamic> json) {
    final l$userPreferred = json['userPreferred'];
    final l$$__typename = json['__typename'];
    return Query$GetUpcomingEpisodes$Page$media$title(
      userPreferred: (l$userPreferred as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? userPreferred;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$userPreferred = userPreferred;
    _resultData['userPreferred'] = l$userPreferred;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$userPreferred = userPreferred;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$userPreferred,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetUpcomingEpisodes$Page$media$title ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$userPreferred = userPreferred;
    final lOther$userPreferred = other.userPreferred;
    if (l$userPreferred != lOther$userPreferred) {
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

extension UtilityExtension$Query$GetUpcomingEpisodes$Page$media$title
    on Query$GetUpcomingEpisodes$Page$media$title {
  CopyWith$Query$GetUpcomingEpisodes$Page$media$title<
          Query$GetUpcomingEpisodes$Page$media$title>
      get copyWith => CopyWith$Query$GetUpcomingEpisodes$Page$media$title(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetUpcomingEpisodes$Page$media$title<TRes> {
  factory CopyWith$Query$GetUpcomingEpisodes$Page$media$title(
    Query$GetUpcomingEpisodes$Page$media$title instance,
    TRes Function(Query$GetUpcomingEpisodes$Page$media$title) then,
  ) = _CopyWithImpl$Query$GetUpcomingEpisodes$Page$media$title;

  factory CopyWith$Query$GetUpcomingEpisodes$Page$media$title.stub(TRes res) =
      _CopyWithStubImpl$Query$GetUpcomingEpisodes$Page$media$title;

  TRes call({
    String? userPreferred,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetUpcomingEpisodes$Page$media$title<TRes>
    implements CopyWith$Query$GetUpcomingEpisodes$Page$media$title<TRes> {
  _CopyWithImpl$Query$GetUpcomingEpisodes$Page$media$title(
    this._instance,
    this._then,
  );

  final Query$GetUpcomingEpisodes$Page$media$title _instance;

  final TRes Function(Query$GetUpcomingEpisodes$Page$media$title) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userPreferred = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetUpcomingEpisodes$Page$media$title(
        userPreferred: userPreferred == _undefined
            ? _instance.userPreferred
            : (userPreferred as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetUpcomingEpisodes$Page$media$title<TRes>
    implements CopyWith$Query$GetUpcomingEpisodes$Page$media$title<TRes> {
  _CopyWithStubImpl$Query$GetUpcomingEpisodes$Page$media$title(this._res);

  TRes _res;

  call({
    String? userPreferred,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetUpcomingEpisodes$Page$media$coverImage {
  Query$GetUpcomingEpisodes$Page$media$coverImage({
    this.large,
    this.$__typename = 'MediaCoverImage',
  });

  factory Query$GetUpcomingEpisodes$Page$media$coverImage.fromJson(
      Map<String, dynamic> json) {
    final l$large = json['large'];
    final l$$__typename = json['__typename'];
    return Query$GetUpcomingEpisodes$Page$media$coverImage(
      large: (l$large as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? large;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$large = large;
    _resultData['large'] = l$large;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$large = large;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$large,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetUpcomingEpisodes$Page$media$coverImage ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$large = large;
    final lOther$large = other.large;
    if (l$large != lOther$large) {
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

extension UtilityExtension$Query$GetUpcomingEpisodes$Page$media$coverImage
    on Query$GetUpcomingEpisodes$Page$media$coverImage {
  CopyWith$Query$GetUpcomingEpisodes$Page$media$coverImage<
          Query$GetUpcomingEpisodes$Page$media$coverImage>
      get copyWith => CopyWith$Query$GetUpcomingEpisodes$Page$media$coverImage(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetUpcomingEpisodes$Page$media$coverImage<TRes> {
  factory CopyWith$Query$GetUpcomingEpisodes$Page$media$coverImage(
    Query$GetUpcomingEpisodes$Page$media$coverImage instance,
    TRes Function(Query$GetUpcomingEpisodes$Page$media$coverImage) then,
  ) = _CopyWithImpl$Query$GetUpcomingEpisodes$Page$media$coverImage;

  factory CopyWith$Query$GetUpcomingEpisodes$Page$media$coverImage.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetUpcomingEpisodes$Page$media$coverImage;

  TRes call({
    String? large,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetUpcomingEpisodes$Page$media$coverImage<TRes>
    implements CopyWith$Query$GetUpcomingEpisodes$Page$media$coverImage<TRes> {
  _CopyWithImpl$Query$GetUpcomingEpisodes$Page$media$coverImage(
    this._instance,
    this._then,
  );

  final Query$GetUpcomingEpisodes$Page$media$coverImage _instance;

  final TRes Function(Query$GetUpcomingEpisodes$Page$media$coverImage) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? large = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetUpcomingEpisodes$Page$media$coverImage(
        large: large == _undefined ? _instance.large : (large as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetUpcomingEpisodes$Page$media$coverImage<TRes>
    implements CopyWith$Query$GetUpcomingEpisodes$Page$media$coverImage<TRes> {
  _CopyWithStubImpl$Query$GetUpcomingEpisodes$Page$media$coverImage(this._res);

  TRes _res;

  call({
    String? large,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetUpcomingEpisodes$Page$media$airingSchedule {
  Query$GetUpcomingEpisodes$Page$media$airingSchedule({
    this.nodes,
    this.$__typename = 'AiringScheduleConnection',
  });

  factory Query$GetUpcomingEpisodes$Page$media$airingSchedule.fromJson(
      Map<String, dynamic> json) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$GetUpcomingEpisodes$Page$media$airingSchedule(
      nodes: (l$nodes as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$GetUpcomingEpisodes$Page$media$airingSchedule$nodes
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$GetUpcomingEpisodes$Page$media$airingSchedule$nodes?>? nodes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$nodes = nodes;
    _resultData['nodes'] = l$nodes?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$nodes = nodes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$nodes == null ? null : Object.hashAll(l$nodes.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetUpcomingEpisodes$Page$media$airingSchedule ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$nodes = nodes;
    final lOther$nodes = other.nodes;
    if (l$nodes != null && lOther$nodes != null) {
      if (l$nodes.length != lOther$nodes.length) {
        return false;
      }
      for (int i = 0; i < l$nodes.length; i++) {
        final l$nodes$entry = l$nodes[i];
        final lOther$nodes$entry = lOther$nodes[i];
        if (l$nodes$entry != lOther$nodes$entry) {
          return false;
        }
      }
    } else if (l$nodes != lOther$nodes) {
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

extension UtilityExtension$Query$GetUpcomingEpisodes$Page$media$airingSchedule
    on Query$GetUpcomingEpisodes$Page$media$airingSchedule {
  CopyWith$Query$GetUpcomingEpisodes$Page$media$airingSchedule<
          Query$GetUpcomingEpisodes$Page$media$airingSchedule>
      get copyWith =>
          CopyWith$Query$GetUpcomingEpisodes$Page$media$airingSchedule(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetUpcomingEpisodes$Page$media$airingSchedule<
    TRes> {
  factory CopyWith$Query$GetUpcomingEpisodes$Page$media$airingSchedule(
    Query$GetUpcomingEpisodes$Page$media$airingSchedule instance,
    TRes Function(Query$GetUpcomingEpisodes$Page$media$airingSchedule) then,
  ) = _CopyWithImpl$Query$GetUpcomingEpisodes$Page$media$airingSchedule;

  factory CopyWith$Query$GetUpcomingEpisodes$Page$media$airingSchedule.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetUpcomingEpisodes$Page$media$airingSchedule;

  TRes call({
    List<Query$GetUpcomingEpisodes$Page$media$airingSchedule$nodes?>? nodes,
    String? $__typename,
  });
  TRes nodes(
      Iterable<Query$GetUpcomingEpisodes$Page$media$airingSchedule$nodes?>? Function(
              Iterable<
                  CopyWith$Query$GetUpcomingEpisodes$Page$media$airingSchedule$nodes<
                      Query$GetUpcomingEpisodes$Page$media$airingSchedule$nodes>?>?)
          _fn);
}

class _CopyWithImpl$Query$GetUpcomingEpisodes$Page$media$airingSchedule<TRes>
    implements
        CopyWith$Query$GetUpcomingEpisodes$Page$media$airingSchedule<TRes> {
  _CopyWithImpl$Query$GetUpcomingEpisodes$Page$media$airingSchedule(
    this._instance,
    this._then,
  );

  final Query$GetUpcomingEpisodes$Page$media$airingSchedule _instance;

  final TRes Function(Query$GetUpcomingEpisodes$Page$media$airingSchedule)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetUpcomingEpisodes$Page$media$airingSchedule(
        nodes: nodes == _undefined
            ? _instance.nodes
            : (nodes as List<
                Query$GetUpcomingEpisodes$Page$media$airingSchedule$nodes?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes nodes(
          Iterable<Query$GetUpcomingEpisodes$Page$media$airingSchedule$nodes?>? Function(
                  Iterable<
                      CopyWith$Query$GetUpcomingEpisodes$Page$media$airingSchedule$nodes<
                          Query$GetUpcomingEpisodes$Page$media$airingSchedule$nodes>?>?)
              _fn) =>
      call(
          nodes: _fn(_instance.nodes?.map((e) => e == null
              ? null
              : CopyWith$Query$GetUpcomingEpisodes$Page$media$airingSchedule$nodes(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$GetUpcomingEpisodes$Page$media$airingSchedule<
        TRes>
    implements
        CopyWith$Query$GetUpcomingEpisodes$Page$media$airingSchedule<TRes> {
  _CopyWithStubImpl$Query$GetUpcomingEpisodes$Page$media$airingSchedule(
      this._res);

  TRes _res;

  call({
    List<Query$GetUpcomingEpisodes$Page$media$airingSchedule$nodes?>? nodes,
    String? $__typename,
  }) =>
      _res;

  nodes(_fn) => _res;
}

class Query$GetUpcomingEpisodes$Page$media$airingSchedule$nodes {
  Query$GetUpcomingEpisodes$Page$media$airingSchedule$nodes({
    required this.timeUntilAiring,
    required this.episode,
    this.$__typename = 'AiringSchedule',
  });

  factory Query$GetUpcomingEpisodes$Page$media$airingSchedule$nodes.fromJson(
      Map<String, dynamic> json) {
    final l$timeUntilAiring = json['timeUntilAiring'];
    final l$episode = json['episode'];
    final l$$__typename = json['__typename'];
    return Query$GetUpcomingEpisodes$Page$media$airingSchedule$nodes(
      timeUntilAiring: (l$timeUntilAiring as int),
      episode: (l$episode as int),
      $__typename: (l$$__typename as String),
    );
  }

  final int timeUntilAiring;

  final int episode;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$timeUntilAiring = timeUntilAiring;
    _resultData['timeUntilAiring'] = l$timeUntilAiring;
    final l$episode = episode;
    _resultData['episode'] = l$episode;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$timeUntilAiring = timeUntilAiring;
    final l$episode = episode;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$timeUntilAiring,
      l$episode,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetUpcomingEpisodes$Page$media$airingSchedule$nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$timeUntilAiring = timeUntilAiring;
    final lOther$timeUntilAiring = other.timeUntilAiring;
    if (l$timeUntilAiring != lOther$timeUntilAiring) {
      return false;
    }
    final l$episode = episode;
    final lOther$episode = other.episode;
    if (l$episode != lOther$episode) {
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

extension UtilityExtension$Query$GetUpcomingEpisodes$Page$media$airingSchedule$nodes
    on Query$GetUpcomingEpisodes$Page$media$airingSchedule$nodes {
  CopyWith$Query$GetUpcomingEpisodes$Page$media$airingSchedule$nodes<
          Query$GetUpcomingEpisodes$Page$media$airingSchedule$nodes>
      get copyWith =>
          CopyWith$Query$GetUpcomingEpisodes$Page$media$airingSchedule$nodes(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetUpcomingEpisodes$Page$media$airingSchedule$nodes<
    TRes> {
  factory CopyWith$Query$GetUpcomingEpisodes$Page$media$airingSchedule$nodes(
    Query$GetUpcomingEpisodes$Page$media$airingSchedule$nodes instance,
    TRes Function(Query$GetUpcomingEpisodes$Page$media$airingSchedule$nodes)
        then,
  ) = _CopyWithImpl$Query$GetUpcomingEpisodes$Page$media$airingSchedule$nodes;

  factory CopyWith$Query$GetUpcomingEpisodes$Page$media$airingSchedule$nodes.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetUpcomingEpisodes$Page$media$airingSchedule$nodes;

  TRes call({
    int? timeUntilAiring,
    int? episode,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetUpcomingEpisodes$Page$media$airingSchedule$nodes<
        TRes>
    implements
        CopyWith$Query$GetUpcomingEpisodes$Page$media$airingSchedule$nodes<
            TRes> {
  _CopyWithImpl$Query$GetUpcomingEpisodes$Page$media$airingSchedule$nodes(
    this._instance,
    this._then,
  );

  final Query$GetUpcomingEpisodes$Page$media$airingSchedule$nodes _instance;

  final TRes Function(Query$GetUpcomingEpisodes$Page$media$airingSchedule$nodes)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? timeUntilAiring = _undefined,
    Object? episode = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetUpcomingEpisodes$Page$media$airingSchedule$nodes(
        timeUntilAiring:
            timeUntilAiring == _undefined || timeUntilAiring == null
                ? _instance.timeUntilAiring
                : (timeUntilAiring as int),
        episode: episode == _undefined || episode == null
            ? _instance.episode
            : (episode as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetUpcomingEpisodes$Page$media$airingSchedule$nodes<
        TRes>
    implements
        CopyWith$Query$GetUpcomingEpisodes$Page$media$airingSchedule$nodes<
            TRes> {
  _CopyWithStubImpl$Query$GetUpcomingEpisodes$Page$media$airingSchedule$nodes(
      this._res);

  TRes _res;

  call({
    int? timeUntilAiring,
    int? episode,
    String? $__typename,
  }) =>
      _res;
}
