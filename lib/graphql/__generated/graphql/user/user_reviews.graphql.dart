// GENERATED FILE
// DO NOT MODIFY
// ignore_for_file: type=lint
import '../fragments.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$UserReviews {
  factory Variables$Query$UserReviews({
    int? page,
    int? userId,
  }) =>
      Variables$Query$UserReviews._({
        if (page != null) r'page': page,
        if (userId != null) r'userId': userId,
      });

  Variables$Query$UserReviews._(this._$data);

  factory Variables$Query$UserReviews.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('page')) {
      final l$page = data['page'];
      result$data['page'] = (l$page as int?);
    }
    if (data.containsKey('userId')) {
      final l$userId = data['userId'];
      result$data['userId'] = (l$userId as int?);
    }
    return Variables$Query$UserReviews._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get page => (_$data['page'] as int?);

  int? get userId => (_$data['userId'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('page')) {
      final l$page = page;
      result$data['page'] = l$page;
    }
    if (_$data.containsKey('userId')) {
      final l$userId = userId;
      result$data['userId'] = l$userId;
    }
    return result$data;
  }

  CopyWith$Variables$Query$UserReviews<Variables$Query$UserReviews>
      get copyWith => CopyWith$Variables$Query$UserReviews(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$UserReviews) ||
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
    final l$userId = userId;
    final lOther$userId = other.userId;
    if (_$data.containsKey('userId') != other._$data.containsKey('userId')) {
      return false;
    }
    if (l$userId != lOther$userId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$page = page;
    final l$userId = userId;
    return Object.hashAll([
      _$data.containsKey('page') ? l$page : const {},
      _$data.containsKey('userId') ? l$userId : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$UserReviews<TRes> {
  factory CopyWith$Variables$Query$UserReviews(
    Variables$Query$UserReviews instance,
    TRes Function(Variables$Query$UserReviews) then,
  ) = _CopyWithImpl$Variables$Query$UserReviews;

  factory CopyWith$Variables$Query$UserReviews.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$UserReviews;

  TRes call({
    int? page,
    int? userId,
  });
}

class _CopyWithImpl$Variables$Query$UserReviews<TRes>
    implements CopyWith$Variables$Query$UserReviews<TRes> {
  _CopyWithImpl$Variables$Query$UserReviews(
    this._instance,
    this._then,
  );

  final Variables$Query$UserReviews _instance;

  final TRes Function(Variables$Query$UserReviews) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? page = _undefined,
    Object? userId = _undefined,
  }) =>
      _then(Variables$Query$UserReviews._({
        ..._instance._$data,
        if (page != _undefined) 'page': (page as int?),
        if (userId != _undefined) 'userId': (userId as int?),
      }));
}

class _CopyWithStubImpl$Variables$Query$UserReviews<TRes>
    implements CopyWith$Variables$Query$UserReviews<TRes> {
  _CopyWithStubImpl$Variables$Query$UserReviews(this._res);

  TRes _res;

  call({
    int? page,
    int? userId,
  }) =>
      _res;
}

class Query$UserReviews {
  Query$UserReviews({
    this.Page,
    this.$__typename = 'Query',
  });

  factory Query$UserReviews.fromJson(Map<String, dynamic> json) {
    final l$Page = json['Page'];
    final l$$__typename = json['__typename'];
    return Query$UserReviews(
      Page: l$Page == null
          ? null
          : Query$UserReviews$Page.fromJson((l$Page as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$UserReviews$Page? Page;

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
    if (!(other is Query$UserReviews) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$UserReviews on Query$UserReviews {
  CopyWith$Query$UserReviews<Query$UserReviews> get copyWith =>
      CopyWith$Query$UserReviews(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$UserReviews<TRes> {
  factory CopyWith$Query$UserReviews(
    Query$UserReviews instance,
    TRes Function(Query$UserReviews) then,
  ) = _CopyWithImpl$Query$UserReviews;

  factory CopyWith$Query$UserReviews.stub(TRes res) =
      _CopyWithStubImpl$Query$UserReviews;

  TRes call({
    Query$UserReviews$Page? Page,
    String? $__typename,
  });
  CopyWith$Query$UserReviews$Page<TRes> get Page;
}

class _CopyWithImpl$Query$UserReviews<TRes>
    implements CopyWith$Query$UserReviews<TRes> {
  _CopyWithImpl$Query$UserReviews(
    this._instance,
    this._then,
  );

  final Query$UserReviews _instance;

  final TRes Function(Query$UserReviews) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? Page = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$UserReviews(
        Page: Page == _undefined
            ? _instance.Page
            : (Page as Query$UserReviews$Page?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$UserReviews$Page<TRes> get Page {
    final local$Page = _instance.Page;
    return local$Page == null
        ? CopyWith$Query$UserReviews$Page.stub(_then(_instance))
        : CopyWith$Query$UserReviews$Page(local$Page, (e) => call(Page: e));
  }
}

class _CopyWithStubImpl$Query$UserReviews<TRes>
    implements CopyWith$Query$UserReviews<TRes> {
  _CopyWithStubImpl$Query$UserReviews(this._res);

  TRes _res;

  call({
    Query$UserReviews$Page? Page,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$UserReviews$Page<TRes> get Page =>
      CopyWith$Query$UserReviews$Page.stub(_res);
}

const documentNodeQueryUserReviews = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'UserReviews'),
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
        variable: VariableNode(name: NameNode(value: 'userId')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
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
            value: IntValueNode(value: '20'),
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
                name: NameNode(value: 'userId'),
                value: VariableNode(name: NameNode(value: 'userId')),
              ),
              ArgumentNode(
                name: NameNode(value: 'sort'),
                value: ListValueNode(values: [
                  EnumValueNode(name: NameNode(value: 'CREATED_AT_DESC'))
                ]),
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
Query$UserReviews _parserFn$Query$UserReviews(Map<String, dynamic> data) =>
    Query$UserReviews.fromJson(data);
typedef OnQueryComplete$Query$UserReviews = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$UserReviews?,
);

class Options$Query$UserReviews
    extends graphql.QueryOptions<Query$UserReviews> {
  Options$Query$UserReviews({
    String? operationName,
    Variables$Query$UserReviews? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$UserReviews? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$UserReviews? onComplete,
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
                    data == null ? null : _parserFn$Query$UserReviews(data),
                  ),
          onError: onError,
          document: documentNodeQueryUserReviews,
          parserFn: _parserFn$Query$UserReviews,
        );

  final OnQueryComplete$Query$UserReviews? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$UserReviews
    extends graphql.WatchQueryOptions<Query$UserReviews> {
  WatchOptions$Query$UserReviews({
    String? operationName,
    Variables$Query$UserReviews? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$UserReviews? typedOptimisticResult,
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
          document: documentNodeQueryUserReviews,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$UserReviews,
        );
}

class FetchMoreOptions$Query$UserReviews extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$UserReviews({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$UserReviews? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryUserReviews,
        );
}

extension ClientExtension$Query$UserReviews on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$UserReviews>> query$UserReviews(
          [Options$Query$UserReviews? options]) async =>
      await this.query(options ?? Options$Query$UserReviews());
  graphql.ObservableQuery<Query$UserReviews> watchQuery$UserReviews(
          [WatchOptions$Query$UserReviews? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$UserReviews());
  void writeQuery$UserReviews({
    required Query$UserReviews data,
    Variables$Query$UserReviews? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryUserReviews),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$UserReviews? readQuery$UserReviews({
    Variables$Query$UserReviews? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryUserReviews),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$UserReviews.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$UserReviews> useQuery$UserReviews(
        [Options$Query$UserReviews? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$UserReviews());
graphql.ObservableQuery<Query$UserReviews> useWatchQuery$UserReviews(
        [WatchOptions$Query$UserReviews? options]) =>
    graphql_flutter.useWatchQuery(options ?? WatchOptions$Query$UserReviews());

class Query$UserReviews$Widget
    extends graphql_flutter.Query<Query$UserReviews> {
  Query$UserReviews$Widget({
    widgets.Key? key,
    Options$Query$UserReviews? options,
    required graphql_flutter.QueryBuilder<Query$UserReviews> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$UserReviews(),
          builder: builder,
        );
}

class Query$UserReviews$Page {
  Query$UserReviews$Page({
    this.pageInfo,
    this.reviews,
    this.$__typename = 'Page',
  });

  factory Query$UserReviews$Page.fromJson(Map<String, dynamic> json) {
    final l$pageInfo = json['pageInfo'];
    final l$reviews = json['reviews'];
    final l$$__typename = json['__typename'];
    return Query$UserReviews$Page(
      pageInfo: l$pageInfo == null
          ? null
          : Query$UserReviews$Page$pageInfo.fromJson(
              (l$pageInfo as Map<String, dynamic>)),
      reviews: (l$reviews as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$Review.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$UserReviews$Page$pageInfo? pageInfo;

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
    if (!(other is Query$UserReviews$Page) ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$UserReviews$Page on Query$UserReviews$Page {
  CopyWith$Query$UserReviews$Page<Query$UserReviews$Page> get copyWith =>
      CopyWith$Query$UserReviews$Page(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$UserReviews$Page<TRes> {
  factory CopyWith$Query$UserReviews$Page(
    Query$UserReviews$Page instance,
    TRes Function(Query$UserReviews$Page) then,
  ) = _CopyWithImpl$Query$UserReviews$Page;

  factory CopyWith$Query$UserReviews$Page.stub(TRes res) =
      _CopyWithStubImpl$Query$UserReviews$Page;

  TRes call({
    Query$UserReviews$Page$pageInfo? pageInfo,
    List<Fragment$Review?>? reviews,
    String? $__typename,
  });
  CopyWith$Query$UserReviews$Page$pageInfo<TRes> get pageInfo;
  TRes reviews(
      Iterable<Fragment$Review?>? Function(
              Iterable<CopyWith$Fragment$Review<Fragment$Review>?>?)
          _fn);
}

class _CopyWithImpl$Query$UserReviews$Page<TRes>
    implements CopyWith$Query$UserReviews$Page<TRes> {
  _CopyWithImpl$Query$UserReviews$Page(
    this._instance,
    this._then,
  );

  final Query$UserReviews$Page _instance;

  final TRes Function(Query$UserReviews$Page) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pageInfo = _undefined,
    Object? reviews = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$UserReviews$Page(
        pageInfo: pageInfo == _undefined
            ? _instance.pageInfo
            : (pageInfo as Query$UserReviews$Page$pageInfo?),
        reviews: reviews == _undefined
            ? _instance.reviews
            : (reviews as List<Fragment$Review?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$UserReviews$Page$pageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return local$pageInfo == null
        ? CopyWith$Query$UserReviews$Page$pageInfo.stub(_then(_instance))
        : CopyWith$Query$UserReviews$Page$pageInfo(
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

class _CopyWithStubImpl$Query$UserReviews$Page<TRes>
    implements CopyWith$Query$UserReviews$Page<TRes> {
  _CopyWithStubImpl$Query$UserReviews$Page(this._res);

  TRes _res;

  call({
    Query$UserReviews$Page$pageInfo? pageInfo,
    List<Fragment$Review?>? reviews,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$UserReviews$Page$pageInfo<TRes> get pageInfo =>
      CopyWith$Query$UserReviews$Page$pageInfo.stub(_res);

  reviews(_fn) => _res;
}

class Query$UserReviews$Page$pageInfo {
  Query$UserReviews$Page$pageInfo({
    this.hasNextPage,
    this.$__typename = 'PageInfo',
  });

  factory Query$UserReviews$Page$pageInfo.fromJson(Map<String, dynamic> json) {
    final l$hasNextPage = json['hasNextPage'];
    final l$$__typename = json['__typename'];
    return Query$UserReviews$Page$pageInfo(
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
    if (!(other is Query$UserReviews$Page$pageInfo) ||
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

extension UtilityExtension$Query$UserReviews$Page$pageInfo
    on Query$UserReviews$Page$pageInfo {
  CopyWith$Query$UserReviews$Page$pageInfo<Query$UserReviews$Page$pageInfo>
      get copyWith => CopyWith$Query$UserReviews$Page$pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$UserReviews$Page$pageInfo<TRes> {
  factory CopyWith$Query$UserReviews$Page$pageInfo(
    Query$UserReviews$Page$pageInfo instance,
    TRes Function(Query$UserReviews$Page$pageInfo) then,
  ) = _CopyWithImpl$Query$UserReviews$Page$pageInfo;

  factory CopyWith$Query$UserReviews$Page$pageInfo.stub(TRes res) =
      _CopyWithStubImpl$Query$UserReviews$Page$pageInfo;

  TRes call({
    bool? hasNextPage,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$UserReviews$Page$pageInfo<TRes>
    implements CopyWith$Query$UserReviews$Page$pageInfo<TRes> {
  _CopyWithImpl$Query$UserReviews$Page$pageInfo(
    this._instance,
    this._then,
  );

  final Query$UserReviews$Page$pageInfo _instance;

  final TRes Function(Query$UserReviews$Page$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasNextPage = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$UserReviews$Page$pageInfo(
        hasNextPage: hasNextPage == _undefined
            ? _instance.hasNextPage
            : (hasNextPage as bool?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$UserReviews$Page$pageInfo<TRes>
    implements CopyWith$Query$UserReviews$Page$pageInfo<TRes> {
  _CopyWithStubImpl$Query$UserReviews$Page$pageInfo(this._res);

  TRes _res;

  call({
    bool? hasNextPage,
    String? $__typename,
  }) =>
      _res;
}
