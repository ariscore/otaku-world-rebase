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

class Variables$Query$GetReviews {
  factory Variables$Query$GetReviews({
    int? page,
    Enum$ReviewSort? mediaSort,
    Enum$MediaType? type,
  }) =>
      Variables$Query$GetReviews._({
        if (page != null) r'page': page,
        if (mediaSort != null) r'mediaSort': mediaSort,
        if (type != null) r'type': type,
      });

  Variables$Query$GetReviews._(this._$data);

  factory Variables$Query$GetReviews.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('page')) {
      final l$page = data['page'];
      result$data['page'] = (l$page as int?);
    }
    if (data.containsKey('mediaSort')) {
      final l$mediaSort = data['mediaSort'];
      result$data['mediaSort'] = l$mediaSort == null
          ? null
          : fromJson$Enum$ReviewSort((l$mediaSort as String));
    }
    if (data.containsKey('type')) {
      final l$type = data['type'];
      result$data['type'] =
          l$type == null ? null : fromJson$Enum$MediaType((l$type as String));
    }
    return Variables$Query$GetReviews._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get page => (_$data['page'] as int?);

  Enum$ReviewSort? get mediaSort => (_$data['mediaSort'] as Enum$ReviewSort?);

  Enum$MediaType? get type => (_$data['type'] as Enum$MediaType?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('page')) {
      final l$page = page;
      result$data['page'] = l$page;
    }
    if (_$data.containsKey('mediaSort')) {
      final l$mediaSort = mediaSort;
      result$data['mediaSort'] =
          l$mediaSort == null ? null : toJson$Enum$ReviewSort(l$mediaSort);
    }
    if (_$data.containsKey('type')) {
      final l$type = type;
      result$data['type'] =
          l$type == null ? null : toJson$Enum$MediaType(l$type);
    }
    return result$data;
  }

  CopyWith$Variables$Query$GetReviews<Variables$Query$GetReviews>
      get copyWith => CopyWith$Variables$Query$GetReviews(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GetReviews) ||
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
    final l$mediaSort = mediaSort;
    final lOther$mediaSort = other.mediaSort;
    if (_$data.containsKey('mediaSort') !=
        other._$data.containsKey('mediaSort')) {
      return false;
    }
    if (l$mediaSort != lOther$mediaSort) {
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
    return true;
  }

  @override
  int get hashCode {
    final l$page = page;
    final l$mediaSort = mediaSort;
    final l$type = type;
    return Object.hashAll([
      _$data.containsKey('page') ? l$page : const {},
      _$data.containsKey('mediaSort') ? l$mediaSort : const {},
      _$data.containsKey('type') ? l$type : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$GetReviews<TRes> {
  factory CopyWith$Variables$Query$GetReviews(
    Variables$Query$GetReviews instance,
    TRes Function(Variables$Query$GetReviews) then,
  ) = _CopyWithImpl$Variables$Query$GetReviews;

  factory CopyWith$Variables$Query$GetReviews.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetReviews;

  TRes call({
    int? page,
    Enum$ReviewSort? mediaSort,
    Enum$MediaType? type,
  });
}

class _CopyWithImpl$Variables$Query$GetReviews<TRes>
    implements CopyWith$Variables$Query$GetReviews<TRes> {
  _CopyWithImpl$Variables$Query$GetReviews(
    this._instance,
    this._then,
  );

  final Variables$Query$GetReviews _instance;

  final TRes Function(Variables$Query$GetReviews) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? page = _undefined,
    Object? mediaSort = _undefined,
    Object? type = _undefined,
  }) =>
      _then(Variables$Query$GetReviews._({
        ..._instance._$data,
        if (page != _undefined) 'page': (page as int?),
        if (mediaSort != _undefined)
          'mediaSort': (mediaSort as Enum$ReviewSort?),
        if (type != _undefined) 'type': (type as Enum$MediaType?),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetReviews<TRes>
    implements CopyWith$Variables$Query$GetReviews<TRes> {
  _CopyWithStubImpl$Variables$Query$GetReviews(this._res);

  TRes _res;

  call({
    int? page,
    Enum$ReviewSort? mediaSort,
    Enum$MediaType? type,
  }) =>
      _res;
}

class Query$GetReviews {
  Query$GetReviews({
    this.Page,
    this.$__typename = 'Query',
  });

  factory Query$GetReviews.fromJson(Map<String, dynamic> json) {
    final l$Page = json['Page'];
    final l$$__typename = json['__typename'];
    return Query$GetReviews(
      Page: l$Page == null
          ? null
          : Query$GetReviews$Page.fromJson((l$Page as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetReviews$Page? Page;

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
    if (!(other is Query$GetReviews) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$GetReviews on Query$GetReviews {
  CopyWith$Query$GetReviews<Query$GetReviews> get copyWith =>
      CopyWith$Query$GetReviews(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetReviews<TRes> {
  factory CopyWith$Query$GetReviews(
    Query$GetReviews instance,
    TRes Function(Query$GetReviews) then,
  ) = _CopyWithImpl$Query$GetReviews;

  factory CopyWith$Query$GetReviews.stub(TRes res) =
      _CopyWithStubImpl$Query$GetReviews;

  TRes call({
    Query$GetReviews$Page? Page,
    String? $__typename,
  });
  CopyWith$Query$GetReviews$Page<TRes> get Page;
}

class _CopyWithImpl$Query$GetReviews<TRes>
    implements CopyWith$Query$GetReviews<TRes> {
  _CopyWithImpl$Query$GetReviews(
    this._instance,
    this._then,
  );

  final Query$GetReviews _instance;

  final TRes Function(Query$GetReviews) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? Page = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetReviews(
        Page: Page == _undefined
            ? _instance.Page
            : (Page as Query$GetReviews$Page?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetReviews$Page<TRes> get Page {
    final local$Page = _instance.Page;
    return local$Page == null
        ? CopyWith$Query$GetReviews$Page.stub(_then(_instance))
        : CopyWith$Query$GetReviews$Page(local$Page, (e) => call(Page: e));
  }
}

class _CopyWithStubImpl$Query$GetReviews<TRes>
    implements CopyWith$Query$GetReviews<TRes> {
  _CopyWithStubImpl$Query$GetReviews(this._res);

  TRes _res;

  call({
    Query$GetReviews$Page? Page,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetReviews$Page<TRes> get Page =>
      CopyWith$Query$GetReviews$Page.stub(_res);
}

const documentNodeQueryGetReviews = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetReviews'),
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
        variable: VariableNode(name: NameNode(value: 'mediaSort')),
        type: NamedTypeNode(
          name: NameNode(value: 'ReviewSort'),
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
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'Page'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'perPage'),
            value: IntValueNode(value: '20'),
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
            name: NameNode(value: 'reviews'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'sort'),
                value: ListValueNode(
                    values: [VariableNode(name: NameNode(value: 'mediaSort'))]),
              ),
              ArgumentNode(
                name: NameNode(value: 'mediaType'),
                value: VariableNode(name: NameNode(value: 'type')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                name: NameNode(value: 'Review'),
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
  fragmentDefinitionReview,
]);
Query$GetReviews _parserFn$Query$GetReviews(Map<String, dynamic> data) =>
    Query$GetReviews.fromJson(data);
typedef OnQueryComplete$Query$GetReviews = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$GetReviews?,
);

class Options$Query$GetReviews extends graphql.QueryOptions<Query$GetReviews> {
  Options$Query$GetReviews({
    String? operationName,
    Variables$Query$GetReviews? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetReviews? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$GetReviews? onComplete,
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
                    data == null ? null : _parserFn$Query$GetReviews(data),
                  ),
          onError: onError,
          document: documentNodeQueryGetReviews,
          parserFn: _parserFn$Query$GetReviews,
        );

  final OnQueryComplete$Query$GetReviews? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$GetReviews
    extends graphql.WatchQueryOptions<Query$GetReviews> {
  WatchOptions$Query$GetReviews({
    String? operationName,
    Variables$Query$GetReviews? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetReviews? typedOptimisticResult,
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
          document: documentNodeQueryGetReviews,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetReviews,
        );
}

class FetchMoreOptions$Query$GetReviews extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetReviews({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$GetReviews? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryGetReviews,
        );
}

extension ClientExtension$Query$GetReviews on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetReviews>> query$GetReviews(
          [Options$Query$GetReviews? options]) async =>
      await this.query(options ?? Options$Query$GetReviews());
  graphql.ObservableQuery<Query$GetReviews> watchQuery$GetReviews(
          [WatchOptions$Query$GetReviews? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$GetReviews());
  void writeQuery$GetReviews({
    required Query$GetReviews data,
    Variables$Query$GetReviews? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryGetReviews),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetReviews? readQuery$GetReviews({
    Variables$Query$GetReviews? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryGetReviews),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$GetReviews.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$GetReviews> useQuery$GetReviews(
        [Options$Query$GetReviews? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$GetReviews());
graphql.ObservableQuery<Query$GetReviews> useWatchQuery$GetReviews(
        [WatchOptions$Query$GetReviews? options]) =>
    graphql_flutter.useWatchQuery(options ?? WatchOptions$Query$GetReviews());

class Query$GetReviews$Widget extends graphql_flutter.Query<Query$GetReviews> {
  Query$GetReviews$Widget({
    widgets.Key? key,
    Options$Query$GetReviews? options,
    required graphql_flutter.QueryBuilder<Query$GetReviews> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$GetReviews(),
          builder: builder,
        );
}

class Query$GetReviews$Page {
  Query$GetReviews$Page({
    this.pageInfo,
    this.reviews,
    this.$__typename = 'Page',
  });

  factory Query$GetReviews$Page.fromJson(Map<String, dynamic> json) {
    final l$pageInfo = json['pageInfo'];
    final l$reviews = json['reviews'];
    final l$$__typename = json['__typename'];
    return Query$GetReviews$Page(
      pageInfo: l$pageInfo == null
          ? null
          : Query$GetReviews$Page$pageInfo.fromJson(
              (l$pageInfo as Map<String, dynamic>)),
      reviews: (l$reviews as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$Review.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetReviews$Page$pageInfo? pageInfo;

  final List<Fragment$Review?>? reviews;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$pageInfo = pageInfo;
    _resultData['pageInfo'] = l$pageInfo?.toJson();
    final l$reviews = reviews;
    _resultData['reviews'] = l$reviews?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$pageInfo = pageInfo;
    final l$reviews = reviews;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$pageInfo,
      l$reviews == null ? null : Object.hashAll(l$reviews.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetReviews$Page) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$pageInfo = pageInfo;
    final lOther$pageInfo = other.pageInfo;
    if (l$pageInfo != lOther$pageInfo) {
      return false;
    }
    final l$reviews = reviews;
    final lOther$reviews = other.reviews;
    if (l$reviews != null && lOther$reviews != null) {
      if (l$reviews.length != lOther$reviews.length) {
        return false;
      }
      for (int i = 0; i < l$reviews.length; i++) {
        final l$reviews$entry = l$reviews[i];
        final lOther$reviews$entry = lOther$reviews[i];
        if (l$reviews$entry != lOther$reviews$entry) {
          return false;
        }
      }
    } else if (l$reviews != lOther$reviews) {
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

extension UtilityExtension$Query$GetReviews$Page on Query$GetReviews$Page {
  CopyWith$Query$GetReviews$Page<Query$GetReviews$Page> get copyWith =>
      CopyWith$Query$GetReviews$Page(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetReviews$Page<TRes> {
  factory CopyWith$Query$GetReviews$Page(
    Query$GetReviews$Page instance,
    TRes Function(Query$GetReviews$Page) then,
  ) = _CopyWithImpl$Query$GetReviews$Page;

  factory CopyWith$Query$GetReviews$Page.stub(TRes res) =
      _CopyWithStubImpl$Query$GetReviews$Page;

  TRes call({
    Query$GetReviews$Page$pageInfo? pageInfo,
    List<Fragment$Review?>? reviews,
    String? $__typename,
  });
  CopyWith$Query$GetReviews$Page$pageInfo<TRes> get pageInfo;
  TRes reviews(
      Iterable<Fragment$Review?>? Function(
              Iterable<CopyWith$Fragment$Review<Fragment$Review>?>?)
          _fn);
}

class _CopyWithImpl$Query$GetReviews$Page<TRes>
    implements CopyWith$Query$GetReviews$Page<TRes> {
  _CopyWithImpl$Query$GetReviews$Page(
    this._instance,
    this._then,
  );

  final Query$GetReviews$Page _instance;

  final TRes Function(Query$GetReviews$Page) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pageInfo = _undefined,
    Object? reviews = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetReviews$Page(
        pageInfo: pageInfo == _undefined
            ? _instance.pageInfo
            : (pageInfo as Query$GetReviews$Page$pageInfo?),
        reviews: reviews == _undefined
            ? _instance.reviews
            : (reviews as List<Fragment$Review?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetReviews$Page$pageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return local$pageInfo == null
        ? CopyWith$Query$GetReviews$Page$pageInfo.stub(_then(_instance))
        : CopyWith$Query$GetReviews$Page$pageInfo(
            local$pageInfo, (e) => call(pageInfo: e));
  }

  TRes reviews(
          Iterable<Fragment$Review?>? Function(
                  Iterable<CopyWith$Fragment$Review<Fragment$Review>?>?)
              _fn) =>
      call(
          reviews: _fn(_instance.reviews?.map((e) => e == null
              ? null
              : CopyWith$Fragment$Review(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$GetReviews$Page<TRes>
    implements CopyWith$Query$GetReviews$Page<TRes> {
  _CopyWithStubImpl$Query$GetReviews$Page(this._res);

  TRes _res;

  call({
    Query$GetReviews$Page$pageInfo? pageInfo,
    List<Fragment$Review?>? reviews,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetReviews$Page$pageInfo<TRes> get pageInfo =>
      CopyWith$Query$GetReviews$Page$pageInfo.stub(_res);

  reviews(_fn) => _res;
}

class Query$GetReviews$Page$pageInfo {
  Query$GetReviews$Page$pageInfo({
    this.hasNextPage,
    this.$__typename = 'PageInfo',
  });

  factory Query$GetReviews$Page$pageInfo.fromJson(Map<String, dynamic> json) {
    final l$hasNextPage = json['hasNextPage'];
    final l$$__typename = json['__typename'];
    return Query$GetReviews$Page$pageInfo(
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
    if (!(other is Query$GetReviews$Page$pageInfo) ||
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

extension UtilityExtension$Query$GetReviews$Page$pageInfo
    on Query$GetReviews$Page$pageInfo {
  CopyWith$Query$GetReviews$Page$pageInfo<Query$GetReviews$Page$pageInfo>
      get copyWith => CopyWith$Query$GetReviews$Page$pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetReviews$Page$pageInfo<TRes> {
  factory CopyWith$Query$GetReviews$Page$pageInfo(
    Query$GetReviews$Page$pageInfo instance,
    TRes Function(Query$GetReviews$Page$pageInfo) then,
  ) = _CopyWithImpl$Query$GetReviews$Page$pageInfo;

  factory CopyWith$Query$GetReviews$Page$pageInfo.stub(TRes res) =
      _CopyWithStubImpl$Query$GetReviews$Page$pageInfo;

  TRes call({
    bool? hasNextPage,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetReviews$Page$pageInfo<TRes>
    implements CopyWith$Query$GetReviews$Page$pageInfo<TRes> {
  _CopyWithImpl$Query$GetReviews$Page$pageInfo(
    this._instance,
    this._then,
  );

  final Query$GetReviews$Page$pageInfo _instance;

  final TRes Function(Query$GetReviews$Page$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasNextPage = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetReviews$Page$pageInfo(
        hasNextPage: hasNextPage == _undefined
            ? _instance.hasNextPage
            : (hasNextPage as bool?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetReviews$Page$pageInfo<TRes>
    implements CopyWith$Query$GetReviews$Page$pageInfo<TRes> {
  _CopyWithStubImpl$Query$GetReviews$Page$pageInfo(this._res);

  TRes _res;

  call({
    bool? hasNextPage,
    String? $__typename,
  }) =>
      _res;
}
