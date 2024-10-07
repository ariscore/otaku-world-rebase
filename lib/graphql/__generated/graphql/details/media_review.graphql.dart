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

class Variables$Query$MediaReviews {
  factory Variables$Query$MediaReviews({
    int? mediaId,
    int? page,
    Enum$ReviewSort? reviewSort,
  }) =>
      Variables$Query$MediaReviews._({
        if (mediaId != null) r'mediaId': mediaId,
        if (page != null) r'page': page,
        if (reviewSort != null) r'reviewSort': reviewSort,
      });

  Variables$Query$MediaReviews._(this._$data);

  factory Variables$Query$MediaReviews.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('mediaId')) {
      final l$mediaId = data['mediaId'];
      result$data['mediaId'] = (l$mediaId as int?);
    }
    if (data.containsKey('page')) {
      final l$page = data['page'];
      result$data['page'] = (l$page as int?);
    }
    if (data.containsKey('reviewSort')) {
      final l$reviewSort = data['reviewSort'];
      result$data['reviewSort'] = l$reviewSort == null
          ? null
          : fromJson$Enum$ReviewSort((l$reviewSort as String));
    }
    return Variables$Query$MediaReviews._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get mediaId => (_$data['mediaId'] as int?);

  int? get page => (_$data['page'] as int?);

  Enum$ReviewSort? get reviewSort => (_$data['reviewSort'] as Enum$ReviewSort?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('mediaId')) {
      final l$mediaId = mediaId;
      result$data['mediaId'] = l$mediaId;
    }
    if (_$data.containsKey('page')) {
      final l$page = page;
      result$data['page'] = l$page;
    }
    if (_$data.containsKey('reviewSort')) {
      final l$reviewSort = reviewSort;
      result$data['reviewSort'] =
      l$reviewSort == null ? null : toJson$Enum$ReviewSort(l$reviewSort);
    }
    return result$data;
  }

  CopyWith$Variables$Query$MediaReviews<Variables$Query$MediaReviews>
  get copyWith =>
      CopyWith$Variables$Query$MediaReviews(
        this,
            (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$MediaReviews) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mediaId = mediaId;
    final lOther$mediaId = other.mediaId;
    if (_$data.containsKey('mediaId') != other._$data.containsKey('mediaId')) {
      return false;
    }
    if (l$mediaId != lOther$mediaId) {
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
    final l$reviewSort = reviewSort;
    final lOther$reviewSort = other.reviewSort;
    if (_$data.containsKey('reviewSort') !=
        other._$data.containsKey('reviewSort')) {
      return false;
    }
    if (l$reviewSort != lOther$reviewSort) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$mediaId = mediaId;
    final l$page = page;
    final l$reviewSort = reviewSort;
    return Object.hashAll([
      _$data.containsKey('mediaId') ? l$mediaId : const {},
      _$data.containsKey('page') ? l$page : const {},
      _$data.containsKey('reviewSort') ? l$reviewSort : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$MediaReviews<TRes> {
  factory CopyWith$Variables$Query$MediaReviews(
      Variables$Query$MediaReviews instance,
      TRes Function(Variables$Query$MediaReviews) then,) = _CopyWithImpl$Variables$Query$MediaReviews;

  factory CopyWith$Variables$Query$MediaReviews.stub(TRes res) =
  _CopyWithStubImpl$Variables$Query$MediaReviews;

  TRes call({
    int? mediaId,
    int? page,
    Enum$ReviewSort? reviewSort,
  });
}

class _CopyWithImpl$Variables$Query$MediaReviews<TRes>
    implements CopyWith$Variables$Query$MediaReviews<TRes> {
  _CopyWithImpl$Variables$Query$MediaReviews(this._instance,
      this._then,);

  final Variables$Query$MediaReviews _instance;

  final TRes Function(Variables$Query$MediaReviews) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mediaId = _undefined,
    Object? page = _undefined,
    Object? reviewSort = _undefined,
  }) =>
      _then(Variables$Query$MediaReviews._({
        ..._instance._$data,
        if (mediaId != _undefined) 'mediaId': (mediaId as int?),
        if (page != _undefined) 'page': (page as int?),
        if (reviewSort != _undefined)
          'reviewSort': (reviewSort as Enum$ReviewSort?),
      }));
}

class _CopyWithStubImpl$Variables$Query$MediaReviews<TRes>
    implements CopyWith$Variables$Query$MediaReviews<TRes> {
  _CopyWithStubImpl$Variables$Query$MediaReviews(this._res);

  TRes _res;

  call({
    int? mediaId,
    int? page,
    Enum$ReviewSort? reviewSort,
  }) =>
      _res;
}

class Query$MediaReviews {
  Query$MediaReviews({
    this.Media,
    this.$__typename = 'Query',
  });

  factory Query$MediaReviews.fromJson(Map<String, dynamic> json) {
    final l$Media = json['Media'];
    final l$$__typename = json['__typename'];
    return Query$MediaReviews(
      Media: l$Media == null
          ? null
          : Query$MediaReviews$Media.fromJson(
          (l$Media as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$MediaReviews$Media? Media;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$Media = Media;
    _resultData['Media'] = l$Media?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$Media = Media;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$Media,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$MediaReviews) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$Media = Media;
    final lOther$Media = other.Media;
    if (l$Media != lOther$Media) {
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

extension UtilityExtension$Query$MediaReviews on Query$MediaReviews {
  CopyWith$Query$MediaReviews<Query$MediaReviews> get copyWith =>
      CopyWith$Query$MediaReviews(
        this,
            (i) => i,
      );
}

abstract class CopyWith$Query$MediaReviews<TRes> {
  factory CopyWith$Query$MediaReviews(Query$MediaReviews instance,
      TRes Function(Query$MediaReviews) then,) = _CopyWithImpl$Query$MediaReviews;

  factory CopyWith$Query$MediaReviews.stub(TRes res) =
  _CopyWithStubImpl$Query$MediaReviews;

  TRes call({
    Query$MediaReviews$Media? Media,
    String? $__typename,
  });

  CopyWith$Query$MediaReviews$Media<TRes> get Media;
}

class _CopyWithImpl$Query$MediaReviews<TRes>
    implements CopyWith$Query$MediaReviews<TRes> {
  _CopyWithImpl$Query$MediaReviews(this._instance,
      this._then,);

  final Query$MediaReviews _instance;

  final TRes Function(Query$MediaReviews) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? Media = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$MediaReviews(
        Media: Media == _undefined
            ? _instance.Media
            : (Media as Query$MediaReviews$Media?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$MediaReviews$Media<TRes> get Media {
    final local$Media = _instance.Media;
    return local$Media == null
        ? CopyWith$Query$MediaReviews$Media.stub(_then(_instance))
        : CopyWith$Query$MediaReviews$Media(local$Media, (e) => call(Media: e));
  }
}

class _CopyWithStubImpl$Query$MediaReviews<TRes>
    implements CopyWith$Query$MediaReviews<TRes> {
  _CopyWithStubImpl$Query$MediaReviews(this._res);

  TRes _res;

  call({
    Query$MediaReviews$Media? Media,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$MediaReviews$Media<TRes> get Media =>
      CopyWith$Query$MediaReviews$Media.stub(_res);
}

const documentNodeQueryMediaReviews = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'MediaReviews'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'mediaId')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
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
        variable: VariableNode(name: NameNode(value: 'reviewSort')),
        type: NamedTypeNode(
          name: NameNode(value: 'ReviewSort'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'Media'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'mediaId')),
          )
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
            name: NameNode(value: 'reviews'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'page'),
                value: VariableNode(name: NameNode(value: 'page')),
              ),
              ArgumentNode(
                name: NameNode(value: 'sort'),
                value: ListValueNode(values: [
                  VariableNode(name: NameNode(value: 'reviewSort'))
                ]),
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
                  FragmentSpreadNode(
                    name: NameNode(value: 'PageInfo'),
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
                name: NameNode(value: 'nodes'),
                alias: null,
                arguments: [],
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
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
  fragmentDefinitionPageInfo,
  fragmentDefinitionReview,
]);

Query$MediaReviews _parserFn$Query$MediaReviews(Map<String, dynamic> data) =>
    Query$MediaReviews.fromJson(data);

typedef OnQueryComplete$Query$MediaReviews = FutureOr<void> Function(
    Map<String, dynamic>?,
    Query$MediaReviews?,
    );

class Options$Query$MediaReviews
    extends graphql.QueryOptions<Query$MediaReviews> {
  Options$Query$MediaReviews({
    String? operationName,
    Variables$Query$MediaReviews? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$MediaReviews? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$MediaReviews? onComplete,
    graphql.OnQueryError? onError,
  })
      : onCompleteWithParsed = onComplete,
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
            : (data) =>
            onComplete(
              data,
              data == null ? null : _parserFn$Query$MediaReviews(data),
            ),
        onError: onError,
        document: documentNodeQueryMediaReviews,
        parserFn: _parserFn$Query$MediaReviews,
      );

  final OnQueryComplete$Query$MediaReviews? onCompleteWithParsed;

  @override
  List<Object?> get properties =>
      [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$MediaReviews
    extends graphql.WatchQueryOptions<Query$MediaReviews> {
  WatchOptions$Query$MediaReviews({
    String? operationName,
    Variables$Query$MediaReviews? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$MediaReviews? typedOptimisticResult,
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
    document: documentNodeQueryMediaReviews,
    pollInterval: pollInterval,
    eagerlyFetchResults: eagerlyFetchResults,
    carryForwardDataOnException: carryForwardDataOnException,
    fetchResults: fetchResults,
    parserFn: _parserFn$Query$MediaReviews,
  );
}

class FetchMoreOptions$Query$MediaReviews extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$MediaReviews({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$MediaReviews? variables,
  }) : super(
    updateQuery: updateQuery,
    variables: variables?.toJson() ?? {},
    document: documentNodeQueryMediaReviews,
  );
}

extension ClientExtension$Query$MediaReviews on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$MediaReviews>> query$MediaReviews(
      [Options$Query$MediaReviews? options]) async =>
      await this.query(options ?? Options$Query$MediaReviews());

  graphql.ObservableQuery<Query$MediaReviews> watchQuery$MediaReviews(
      [WatchOptions$Query$MediaReviews? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$MediaReviews());

  void writeQuery$MediaReviews({
    required Query$MediaReviews data,
    Variables$Query$MediaReviews? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryMediaReviews),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );

  Query$MediaReviews? readQuery$MediaReviews({
    Variables$Query$MediaReviews? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryMediaReviews),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$MediaReviews.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$MediaReviews> useQuery$MediaReviews(
    [Options$Query$MediaReviews? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$MediaReviews());

graphql.ObservableQuery<Query$MediaReviews> useWatchQuery$MediaReviews(
    [WatchOptions$Query$MediaReviews? options]) =>
    graphql_flutter.useWatchQuery(options ?? WatchOptions$Query$MediaReviews());

class Query$MediaReviews$Widget
    extends graphql_flutter.Query<Query$MediaReviews> {
  Query$MediaReviews$Widget({
    widgets.Key? key,
    Options$Query$MediaReviews? options,
    required graphql_flutter.QueryBuilder<Query$MediaReviews> builder,
  }) : super(
    key: key,
    options: options ?? Options$Query$MediaReviews(),
    builder: builder,
  );
}

class Query$MediaReviews$Media {
  Query$MediaReviews$Media({
    required this.id,
    this.reviews,
    this.$__typename = 'Media',
  });

  factory Query$MediaReviews$Media.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$reviews = json['reviews'];
    final l$$__typename = json['__typename'];
    return Query$MediaReviews$Media(
      id: (l$id as int),
      reviews: l$reviews == null
          ? null
          : Query$MediaReviews$Media$reviews.fromJson(
          (l$reviews as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final Query$MediaReviews$Media$reviews? reviews;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$reviews = reviews;
    _resultData['reviews'] = l$reviews?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$reviews = reviews;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$reviews,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$MediaReviews$Media) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$reviews = reviews;
    final lOther$reviews = other.reviews;
    if (l$reviews != lOther$reviews) {
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

extension UtilityExtension$Query$MediaReviews$Media
on Query$MediaReviews$Media {
  CopyWith$Query$MediaReviews$Media<Query$MediaReviews$Media> get copyWith =>
      CopyWith$Query$MediaReviews$Media(
        this,
            (i) => i,
      );
}

abstract class CopyWith$Query$MediaReviews$Media<TRes> {
  factory CopyWith$Query$MediaReviews$Media(Query$MediaReviews$Media instance,
      TRes Function(Query$MediaReviews$Media) then,) = _CopyWithImpl$Query$MediaReviews$Media;

  factory CopyWith$Query$MediaReviews$Media.stub(TRes res) =
  _CopyWithStubImpl$Query$MediaReviews$Media;

  TRes call({
    int? id,
    Query$MediaReviews$Media$reviews? reviews,
    String? $__typename,
  });

  CopyWith$Query$MediaReviews$Media$reviews<TRes> get reviews;
}

class _CopyWithImpl$Query$MediaReviews$Media<TRes>
    implements CopyWith$Query$MediaReviews$Media<TRes> {
  _CopyWithImpl$Query$MediaReviews$Media(this._instance,
      this._then,);

  final Query$MediaReviews$Media _instance;

  final TRes Function(Query$MediaReviews$Media) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? reviews = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$MediaReviews$Media(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        reviews: reviews == _undefined
            ? _instance.reviews
            : (reviews as Query$MediaReviews$Media$reviews?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$MediaReviews$Media$reviews<TRes> get reviews {
    final local$reviews = _instance.reviews;
    return local$reviews == null
        ? CopyWith$Query$MediaReviews$Media$reviews.stub(_then(_instance))
        : CopyWith$Query$MediaReviews$Media$reviews(
        local$reviews, (e) => call(reviews: e));
  }
}

class _CopyWithStubImpl$Query$MediaReviews$Media<TRes>
    implements CopyWith$Query$MediaReviews$Media<TRes> {
  _CopyWithStubImpl$Query$MediaReviews$Media(this._res);

  TRes _res;

  call({
    int? id,
    Query$MediaReviews$Media$reviews? reviews,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$MediaReviews$Media$reviews<TRes> get reviews =>
      CopyWith$Query$MediaReviews$Media$reviews.stub(_res);
}

class Query$MediaReviews$Media$reviews {
  Query$MediaReviews$Media$reviews({
    this.pageInfo,
    this.nodes,
    this.$__typename = 'ReviewConnection',
  });

  factory Query$MediaReviews$Media$reviews.fromJson(Map<String, dynamic> json) {
    final l$pageInfo = json['pageInfo'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$MediaReviews$Media$reviews(
      pageInfo: l$pageInfo == null
          ? null
          : Fragment$PageInfo.fromJson((l$pageInfo as Map<String, dynamic>)),
      nodes: (l$nodes as List<dynamic>?)
          ?.map((e) =>
      e == null
          ? null
          : Fragment$Review.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$PageInfo? pageInfo;

  final List<Fragment$Review?>? nodes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$pageInfo = pageInfo;
    _resultData['pageInfo'] = l$pageInfo?.toJson();
    final l$nodes = nodes;
    _resultData['nodes'] = l$nodes?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$pageInfo = pageInfo;
    final l$nodes = nodes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$pageInfo,
      l$nodes == null ? null : Object.hashAll(l$nodes.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$MediaReviews$Media$reviews) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$pageInfo = pageInfo;
    final lOther$pageInfo = other.pageInfo;
    if (l$pageInfo != lOther$pageInfo) {
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

extension UtilityExtension$Query$MediaReviews$Media$reviews
on Query$MediaReviews$Media$reviews {
  CopyWith$Query$MediaReviews$Media$reviews<Query$MediaReviews$Media$reviews>
  get copyWith =>
      CopyWith$Query$MediaReviews$Media$reviews(
        this,
            (i) => i,
      );
}

abstract class CopyWith$Query$MediaReviews$Media$reviews<TRes> {
  factory CopyWith$Query$MediaReviews$Media$reviews(
      Query$MediaReviews$Media$reviews instance,
      TRes Function(Query$MediaReviews$Media$reviews) then,) = _CopyWithImpl$Query$MediaReviews$Media$reviews;

  factory CopyWith$Query$MediaReviews$Media$reviews.stub(TRes res) =
  _CopyWithStubImpl$Query$MediaReviews$Media$reviews;

  TRes call({
    Fragment$PageInfo? pageInfo,
    List<Fragment$Review?>? nodes,
    String? $__typename,
  });

  CopyWith$Fragment$PageInfo<TRes> get pageInfo;

  TRes nodes(Iterable<Fragment$Review?>? Function(
      Iterable<CopyWith$Fragment$Review<Fragment$Review>?>?)
  _fn);
}

class _CopyWithImpl$Query$MediaReviews$Media$reviews<TRes>
    implements CopyWith$Query$MediaReviews$Media$reviews<TRes> {
  _CopyWithImpl$Query$MediaReviews$Media$reviews(this._instance,
      this._then,);

  final Query$MediaReviews$Media$reviews _instance;

  final TRes Function(Query$MediaReviews$Media$reviews) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pageInfo = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$MediaReviews$Media$reviews(
        pageInfo: pageInfo == _undefined
            ? _instance.pageInfo
            : (pageInfo as Fragment$PageInfo?),
        nodes: nodes == _undefined
            ? _instance.nodes
            : (nodes as List<Fragment$Review?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$PageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return local$pageInfo == null
        ? CopyWith$Fragment$PageInfo.stub(_then(_instance))
        : CopyWith$Fragment$PageInfo(local$pageInfo, (e) => call(pageInfo: e));
  }

  TRes nodes(Iterable<Fragment$Review?>? Function(
      Iterable<CopyWith$Fragment$Review<Fragment$Review>?>?)
  _fn) =>
      call(
          nodes: _fn(_instance.nodes?.map((e) =>
          e == null
              ? null
              : CopyWith$Fragment$Review(
            e,
                (i) => i,
          )))?.toList());
}

class _CopyWithStubImpl$Query$MediaReviews$Media$reviews<TRes>
    implements CopyWith$Query$MediaReviews$Media$reviews<TRes> {
  _CopyWithStubImpl$Query$MediaReviews$Media$reviews(this._res);

  TRes _res;

  call({
    Fragment$PageInfo? pageInfo,
    List<Fragment$Review?>? nodes,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$PageInfo<TRes> get pageInfo =>
      CopyWith$Fragment$PageInfo.stub(_res);

  nodes(_fn) => _res;
}
