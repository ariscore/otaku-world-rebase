// GENERATED FILE
// DO NOT MODIFY
// ignore_for_file: type=lint
import '../fragments.graphql.dart';
import '../schema.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$SearchMedia {
  factory Variables$Query$SearchMedia({
    int? page,
    Enum$MediaType? type,
    String? search,
  }) =>
      Variables$Query$SearchMedia._({
        if (page != null) r'page': page,
        if (type != null) r'type': type,
        if (search != null) r'search': search,
      });

  Variables$Query$SearchMedia._(this._$data);

  factory Variables$Query$SearchMedia.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('page')) {
      final l$page = data['page'];
      result$data['page'] = (l$page as int?);
    }
    if (data.containsKey('type')) {
      final l$type = data['type'];
      result$data['type'] =
          l$type == null ? null : fromJson$Enum$MediaType((l$type as String));
    }
    if (data.containsKey('search')) {
      final l$search = data['search'];
      result$data['search'] = (l$search as String?);
    }
    return Variables$Query$SearchMedia._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get page => (_$data['page'] as int?);

  Enum$MediaType? get type => (_$data['type'] as Enum$MediaType?);

  String? get search => (_$data['search'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('page')) {
      final l$page = page;
      result$data['page'] = l$page;
    }
    if (_$data.containsKey('type')) {
      final l$type = type;
      result$data['type'] =
          l$type == null ? null : toJson$Enum$MediaType(l$type);
    }
    if (_$data.containsKey('search')) {
      final l$search = search;
      result$data['search'] = l$search;
    }
    return result$data;
  }

  CopyWith$Variables$Query$SearchMedia<Variables$Query$SearchMedia>
      get copyWith => CopyWith$Variables$Query$SearchMedia(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$SearchMedia ||
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
    final l$type = type;
    final lOther$type = other.type;
    if (_$data.containsKey('type') != other._$data.containsKey('type')) {
      return false;
    }
    if (l$type != lOther$type) {
      return false;
    }
    final l$search = search;
    final lOther$search = other.search;
    if (_$data.containsKey('search') != other._$data.containsKey('search')) {
      return false;
    }
    if (l$search != lOther$search) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$page = page;
    final l$type = type;
    final l$search = search;
    return Object.hashAll([
      _$data.containsKey('page') ? l$page : const {},
      _$data.containsKey('type') ? l$type : const {},
      _$data.containsKey('search') ? l$search : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$SearchMedia<TRes> {
  factory CopyWith$Variables$Query$SearchMedia(
    Variables$Query$SearchMedia instance,
    TRes Function(Variables$Query$SearchMedia) then,
  ) = _CopyWithImpl$Variables$Query$SearchMedia;

  factory CopyWith$Variables$Query$SearchMedia.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$SearchMedia;

  TRes call({
    int? page,
    Enum$MediaType? type,
    String? search,
  });
}

class _CopyWithImpl$Variables$Query$SearchMedia<TRes>
    implements CopyWith$Variables$Query$SearchMedia<TRes> {
  _CopyWithImpl$Variables$Query$SearchMedia(
    this._instance,
    this._then,
  );

  final Variables$Query$SearchMedia _instance;

  final TRes Function(Variables$Query$SearchMedia) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? page = _undefined,
    Object? type = _undefined,
    Object? search = _undefined,
  }) =>
      _then(Variables$Query$SearchMedia._({
        ..._instance._$data,
        if (page != _undefined) 'page': (page as int?),
        if (type != _undefined) 'type': (type as Enum$MediaType?),
        if (search != _undefined) 'search': (search as String?),
      }));
}

class _CopyWithStubImpl$Variables$Query$SearchMedia<TRes>
    implements CopyWith$Variables$Query$SearchMedia<TRes> {
  _CopyWithStubImpl$Variables$Query$SearchMedia(this._res);

  TRes _res;

  call({
    int? page,
    Enum$MediaType? type,
    String? search,
  }) =>
      _res;
}

class Query$SearchMedia {
  Query$SearchMedia({
    this.Page,
    this.$__typename = 'Query',
  });

  factory Query$SearchMedia.fromJson(Map<String, dynamic> json) {
    final l$Page = json['Page'];
    final l$$__typename = json['__typename'];
    return Query$SearchMedia(
      Page: l$Page == null
          ? null
          : Query$SearchMedia$Page.fromJson((l$Page as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$SearchMedia$Page? Page;

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
    if (other is! Query$SearchMedia || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$SearchMedia on Query$SearchMedia {
  CopyWith$Query$SearchMedia<Query$SearchMedia> get copyWith =>
      CopyWith$Query$SearchMedia(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SearchMedia<TRes> {
  factory CopyWith$Query$SearchMedia(
    Query$SearchMedia instance,
    TRes Function(Query$SearchMedia) then,
  ) = _CopyWithImpl$Query$SearchMedia;

  factory CopyWith$Query$SearchMedia.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchMedia;

  TRes call({
    Query$SearchMedia$Page? Page,
    String? $__typename,
  });
  CopyWith$Query$SearchMedia$Page<TRes> get Page;
}

class _CopyWithImpl$Query$SearchMedia<TRes>
    implements CopyWith$Query$SearchMedia<TRes> {
  _CopyWithImpl$Query$SearchMedia(
    this._instance,
    this._then,
  );

  final Query$SearchMedia _instance;

  final TRes Function(Query$SearchMedia) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? Page = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$SearchMedia(
        Page: Page == _undefined
            ? _instance.Page
            : (Page as Query$SearchMedia$Page?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$SearchMedia$Page<TRes> get Page {
    final local$Page = _instance.Page;
    return local$Page == null
        ? CopyWith$Query$SearchMedia$Page.stub(_then(_instance))
        : CopyWith$Query$SearchMedia$Page(local$Page, (e) => call(Page: e));
  }
}

class _CopyWithStubImpl$Query$SearchMedia<TRes>
    implements CopyWith$Query$SearchMedia<TRes> {
  _CopyWithStubImpl$Query$SearchMedia(this._res);

  TRes _res;

  call({
    Query$SearchMedia$Page? Page,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$SearchMedia$Page<TRes> get Page =>
      CopyWith$Query$SearchMedia$Page.stub(_res);
}

const documentNodeQuerySearchMedia = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'SearchMedia'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'page')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'type')),
        type: NamedTypeNode(
          name: NameNode(value: 'MediaType'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'search')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
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
            value: IntValueNode(value: '50'),
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
                name: NameNode(value: 'search'),
                value: VariableNode(name: NameNode(value: 'search')),
              ),
              ArgumentNode(
                name: NameNode(value: 'type'),
                value: VariableNode(name: NameNode(value: 'type')),
              ),
              ArgumentNode(
                name: NameNode(value: 'sort'),
                value: ListValueNode(values: [
                  EnumValueNode(name: NameNode(value: 'SEARCH_MATCH')),
                  EnumValueNode(name: NameNode(value: 'TRENDING_DESC')),
                ]),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                name: NameNode(value: 'SearchResultMedia'),
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
  fragmentDefinitionSearchResultMedia,
]);
Query$SearchMedia _parserFn$Query$SearchMedia(Map<String, dynamic> data) =>
    Query$SearchMedia.fromJson(data);
typedef OnQueryComplete$Query$SearchMedia = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$SearchMedia?,
);

class Options$Query$SearchMedia
    extends graphql.QueryOptions<Query$SearchMedia> {
  Options$Query$SearchMedia({
    String? operationName,
    Variables$Query$SearchMedia? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$SearchMedia? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$SearchMedia? onComplete,
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
                    data == null ? null : _parserFn$Query$SearchMedia(data),
                  ),
          onError: onError,
          document: documentNodeQuerySearchMedia,
          parserFn: _parserFn$Query$SearchMedia,
        );

  final OnQueryComplete$Query$SearchMedia? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$SearchMedia
    extends graphql.WatchQueryOptions<Query$SearchMedia> {
  WatchOptions$Query$SearchMedia({
    String? operationName,
    Variables$Query$SearchMedia? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$SearchMedia? typedOptimisticResult,
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
          document: documentNodeQuerySearchMedia,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$SearchMedia,
        );
}

class FetchMoreOptions$Query$SearchMedia extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$SearchMedia({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$SearchMedia? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQuerySearchMedia,
        );
}

extension ClientExtension$Query$SearchMedia on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$SearchMedia>> query$SearchMedia(
          [Options$Query$SearchMedia? options]) async =>
      await this.query(options ?? Options$Query$SearchMedia());
  graphql.ObservableQuery<Query$SearchMedia> watchQuery$SearchMedia(
          [WatchOptions$Query$SearchMedia? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$SearchMedia());
  void writeQuery$SearchMedia({
    required Query$SearchMedia data,
    Variables$Query$SearchMedia? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQuerySearchMedia),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$SearchMedia? readQuery$SearchMedia({
    Variables$Query$SearchMedia? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQuerySearchMedia),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$SearchMedia.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$SearchMedia> useQuery$SearchMedia(
        [Options$Query$SearchMedia? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$SearchMedia());
graphql.ObservableQuery<Query$SearchMedia> useWatchQuery$SearchMedia(
        [WatchOptions$Query$SearchMedia? options]) =>
    graphql_flutter.useWatchQuery(options ?? WatchOptions$Query$SearchMedia());

class Query$SearchMedia$Widget
    extends graphql_flutter.Query<Query$SearchMedia> {
  Query$SearchMedia$Widget({
    widgets.Key? key,
    Options$Query$SearchMedia? options,
    required graphql_flutter.QueryBuilder<Query$SearchMedia> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$SearchMedia(),
          builder: builder,
        );
}

class Query$SearchMedia$Page {
  Query$SearchMedia$Page({
    this.pageInfo,
    this.media,
    this.$__typename = 'Page',
  });

  factory Query$SearchMedia$Page.fromJson(Map<String, dynamic> json) {
    final l$pageInfo = json['pageInfo'];
    final l$media = json['media'];
    final l$$__typename = json['__typename'];
    return Query$SearchMedia$Page(
      pageInfo: l$pageInfo == null
          ? null
          : Query$SearchMedia$Page$pageInfo.fromJson(
              (l$pageInfo as Map<String, dynamic>)),
      media: (l$media as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$SearchResultMedia.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$SearchMedia$Page$pageInfo? pageInfo;

  final List<Fragment$SearchResultMedia?>? media;

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
    if (other is! Query$SearchMedia$Page || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$SearchMedia$Page on Query$SearchMedia$Page {
  CopyWith$Query$SearchMedia$Page<Query$SearchMedia$Page> get copyWith =>
      CopyWith$Query$SearchMedia$Page(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SearchMedia$Page<TRes> {
  factory CopyWith$Query$SearchMedia$Page(
    Query$SearchMedia$Page instance,
    TRes Function(Query$SearchMedia$Page) then,
  ) = _CopyWithImpl$Query$SearchMedia$Page;

  factory CopyWith$Query$SearchMedia$Page.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchMedia$Page;

  TRes call({
    Query$SearchMedia$Page$pageInfo? pageInfo,
    List<Fragment$SearchResultMedia?>? media,
    String? $__typename,
  });
  CopyWith$Query$SearchMedia$Page$pageInfo<TRes> get pageInfo;
  TRes media(
      Iterable<Fragment$SearchResultMedia?>? Function(
              Iterable<
                  CopyWith$Fragment$SearchResultMedia<
                      Fragment$SearchResultMedia>?>?)
          _fn);
}

class _CopyWithImpl$Query$SearchMedia$Page<TRes>
    implements CopyWith$Query$SearchMedia$Page<TRes> {
  _CopyWithImpl$Query$SearchMedia$Page(
    this._instance,
    this._then,
  );

  final Query$SearchMedia$Page _instance;

  final TRes Function(Query$SearchMedia$Page) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pageInfo = _undefined,
    Object? media = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$SearchMedia$Page(
        pageInfo: pageInfo == _undefined
            ? _instance.pageInfo
            : (pageInfo as Query$SearchMedia$Page$pageInfo?),
        media: media == _undefined
            ? _instance.media
            : (media as List<Fragment$SearchResultMedia?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$SearchMedia$Page$pageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return local$pageInfo == null
        ? CopyWith$Query$SearchMedia$Page$pageInfo.stub(_then(_instance))
        : CopyWith$Query$SearchMedia$Page$pageInfo(
            local$pageInfo, (e) => call(pageInfo: e));
  }

  TRes media(
          Iterable<Fragment$SearchResultMedia?>? Function(
                  Iterable<
                      CopyWith$Fragment$SearchResultMedia<
                          Fragment$SearchResultMedia>?>?)
              _fn) =>
      call(
          media: _fn(_instance.media?.map((e) => e == null
              ? null
              : CopyWith$Fragment$SearchResultMedia(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$SearchMedia$Page<TRes>
    implements CopyWith$Query$SearchMedia$Page<TRes> {
  _CopyWithStubImpl$Query$SearchMedia$Page(this._res);

  TRes _res;

  call({
    Query$SearchMedia$Page$pageInfo? pageInfo,
    List<Fragment$SearchResultMedia?>? media,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$SearchMedia$Page$pageInfo<TRes> get pageInfo =>
      CopyWith$Query$SearchMedia$Page$pageInfo.stub(_res);

  media(_fn) => _res;
}

class Query$SearchMedia$Page$pageInfo {
  Query$SearchMedia$Page$pageInfo({
    this.hasNextPage,
    this.$__typename = 'PageInfo',
  });

  factory Query$SearchMedia$Page$pageInfo.fromJson(Map<String, dynamic> json) {
    final l$hasNextPage = json['hasNextPage'];
    final l$$__typename = json['__typename'];
    return Query$SearchMedia$Page$pageInfo(
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
    if (other is! Query$SearchMedia$Page$pageInfo ||
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

extension UtilityExtension$Query$SearchMedia$Page$pageInfo
    on Query$SearchMedia$Page$pageInfo {
  CopyWith$Query$SearchMedia$Page$pageInfo<Query$SearchMedia$Page$pageInfo>
      get copyWith => CopyWith$Query$SearchMedia$Page$pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$SearchMedia$Page$pageInfo<TRes> {
  factory CopyWith$Query$SearchMedia$Page$pageInfo(
    Query$SearchMedia$Page$pageInfo instance,
    TRes Function(Query$SearchMedia$Page$pageInfo) then,
  ) = _CopyWithImpl$Query$SearchMedia$Page$pageInfo;

  factory CopyWith$Query$SearchMedia$Page$pageInfo.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchMedia$Page$pageInfo;

  TRes call({
    bool? hasNextPage,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$SearchMedia$Page$pageInfo<TRes>
    implements CopyWith$Query$SearchMedia$Page$pageInfo<TRes> {
  _CopyWithImpl$Query$SearchMedia$Page$pageInfo(
    this._instance,
    this._then,
  );

  final Query$SearchMedia$Page$pageInfo _instance;

  final TRes Function(Query$SearchMedia$Page$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasNextPage = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$SearchMedia$Page$pageInfo(
        hasNextPage: hasNextPage == _undefined
            ? _instance.hasNextPage
            : (hasNextPage as bool?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$SearchMedia$Page$pageInfo<TRes>
    implements CopyWith$Query$SearchMedia$Page$pageInfo<TRes> {
  _CopyWithStubImpl$Query$SearchMedia$Page$pageInfo(this._res);

  TRes _res;

  call({
    bool? hasNextPage,
    String? $__typename,
  }) =>
      _res;
}
