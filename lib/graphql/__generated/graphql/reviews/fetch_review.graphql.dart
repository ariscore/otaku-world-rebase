// GENERATED FILE
// DO NOT MODIFY
// ignore_for_file: type=lint
import '../schema.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$FetchReviewByUserId {
  factory Variables$Query$FetchReviewByUserId({
    int? mediaId,
    int? userId,
  }) =>
      Variables$Query$FetchReviewByUserId._({
        if (mediaId != null) r'mediaId': mediaId,
        if (userId != null) r'userId': userId,
      });

  Variables$Query$FetchReviewByUserId._(this._$data);

  factory Variables$Query$FetchReviewByUserId.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('mediaId')) {
      final l$mediaId = data['mediaId'];
      result$data['mediaId'] = (l$mediaId as int?);
    }
    if (data.containsKey('userId')) {
      final l$userId = data['userId'];
      result$data['userId'] = (l$userId as int?);
    }
    return Variables$Query$FetchReviewByUserId._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get mediaId => (_$data['mediaId'] as int?);

  int? get userId => (_$data['userId'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('mediaId')) {
      final l$mediaId = mediaId;
      result$data['mediaId'] = l$mediaId;
    }
    if (_$data.containsKey('userId')) {
      final l$userId = userId;
      result$data['userId'] = l$userId;
    }
    return result$data;
  }

  CopyWith$Variables$Query$FetchReviewByUserId<
          Variables$Query$FetchReviewByUserId>
      get copyWith => CopyWith$Variables$Query$FetchReviewByUserId(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$FetchReviewByUserId ||
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
    final l$mediaId = mediaId;
    final l$userId = userId;
    return Object.hashAll([
      _$data.containsKey('mediaId') ? l$mediaId : const {},
      _$data.containsKey('userId') ? l$userId : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$FetchReviewByUserId<TRes> {
  factory CopyWith$Variables$Query$FetchReviewByUserId(
    Variables$Query$FetchReviewByUserId instance,
    TRes Function(Variables$Query$FetchReviewByUserId) then,
  ) = _CopyWithImpl$Variables$Query$FetchReviewByUserId;

  factory CopyWith$Variables$Query$FetchReviewByUserId.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$FetchReviewByUserId;

  TRes call({
    int? mediaId,
    int? userId,
  });
}

class _CopyWithImpl$Variables$Query$FetchReviewByUserId<TRes>
    implements CopyWith$Variables$Query$FetchReviewByUserId<TRes> {
  _CopyWithImpl$Variables$Query$FetchReviewByUserId(
    this._instance,
    this._then,
  );

  final Variables$Query$FetchReviewByUserId _instance;

  final TRes Function(Variables$Query$FetchReviewByUserId) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mediaId = _undefined,
    Object? userId = _undefined,
  }) =>
      _then(Variables$Query$FetchReviewByUserId._({
        ..._instance._$data,
        if (mediaId != _undefined) 'mediaId': (mediaId as int?),
        if (userId != _undefined) 'userId': (userId as int?),
      }));
}

class _CopyWithStubImpl$Variables$Query$FetchReviewByUserId<TRes>
    implements CopyWith$Variables$Query$FetchReviewByUserId<TRes> {
  _CopyWithStubImpl$Variables$Query$FetchReviewByUserId(this._res);

  TRes _res;

  call({
    int? mediaId,
    int? userId,
  }) =>
      _res;
}

class Query$FetchReviewByUserId {
  Query$FetchReviewByUserId({
    this.Review,
    this.$__typename = 'Query',
  });

  factory Query$FetchReviewByUserId.fromJson(Map<String, dynamic> json) {
    final l$Review = json['Review'];
    final l$$__typename = json['__typename'];
    return Query$FetchReviewByUserId(
      Review: l$Review == null
          ? null
          : Query$FetchReviewByUserId$Review.fromJson(
              (l$Review as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$FetchReviewByUserId$Review? Review;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$Review = Review;
    _resultData['Review'] = l$Review?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$Review = Review;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$Review,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$FetchReviewByUserId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$Review = Review;
    final lOther$Review = other.Review;
    if (l$Review != lOther$Review) {
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

extension UtilityExtension$Query$FetchReviewByUserId
    on Query$FetchReviewByUserId {
  CopyWith$Query$FetchReviewByUserId<Query$FetchReviewByUserId> get copyWith =>
      CopyWith$Query$FetchReviewByUserId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$FetchReviewByUserId<TRes> {
  factory CopyWith$Query$FetchReviewByUserId(
    Query$FetchReviewByUserId instance,
    TRes Function(Query$FetchReviewByUserId) then,
  ) = _CopyWithImpl$Query$FetchReviewByUserId;

  factory CopyWith$Query$FetchReviewByUserId.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchReviewByUserId;

  TRes call({
    Query$FetchReviewByUserId$Review? Review,
    String? $__typename,
  });
  CopyWith$Query$FetchReviewByUserId$Review<TRes> get Review;
}

class _CopyWithImpl$Query$FetchReviewByUserId<TRes>
    implements CopyWith$Query$FetchReviewByUserId<TRes> {
  _CopyWithImpl$Query$FetchReviewByUserId(
    this._instance,
    this._then,
  );

  final Query$FetchReviewByUserId _instance;

  final TRes Function(Query$FetchReviewByUserId) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? Review = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchReviewByUserId(
        Review: Review == _undefined
            ? _instance.Review
            : (Review as Query$FetchReviewByUserId$Review?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$FetchReviewByUserId$Review<TRes> get Review {
    final local$Review = _instance.Review;
    return local$Review == null
        ? CopyWith$Query$FetchReviewByUserId$Review.stub(_then(_instance))
        : CopyWith$Query$FetchReviewByUserId$Review(
            local$Review, (e) => call(Review: e));
  }
}

class _CopyWithStubImpl$Query$FetchReviewByUserId<TRes>
    implements CopyWith$Query$FetchReviewByUserId<TRes> {
  _CopyWithStubImpl$Query$FetchReviewByUserId(this._res);

  TRes _res;

  call({
    Query$FetchReviewByUserId$Review? Review,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$FetchReviewByUserId$Review<TRes> get Review =>
      CopyWith$Query$FetchReviewByUserId$Review.stub(_res);
}

const documentNodeQueryFetchReviewByUserId = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'FetchReviewByUserId'),
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
        name: NameNode(value: 'Review'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'mediaId'),
            value: VariableNode(name: NameNode(value: 'mediaId')),
          ),
          ArgumentNode(
            name: NameNode(value: 'userId'),
            value: VariableNode(name: NameNode(value: 'userId')),
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
            name: NameNode(value: 'body'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'private'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'score'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'userRating'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'summary'),
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
]);
Query$FetchReviewByUserId _parserFn$Query$FetchReviewByUserId(
        Map<String, dynamic> data) =>
    Query$FetchReviewByUserId.fromJson(data);
typedef OnQueryComplete$Query$FetchReviewByUserId = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$FetchReviewByUserId?,
);

class Options$Query$FetchReviewByUserId
    extends graphql.QueryOptions<Query$FetchReviewByUserId> {
  Options$Query$FetchReviewByUserId({
    String? operationName,
    Variables$Query$FetchReviewByUserId? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$FetchReviewByUserId? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$FetchReviewByUserId? onComplete,
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
                        : _parserFn$Query$FetchReviewByUserId(data),
                  ),
          onError: onError,
          document: documentNodeQueryFetchReviewByUserId,
          parserFn: _parserFn$Query$FetchReviewByUserId,
        );

  final OnQueryComplete$Query$FetchReviewByUserId? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$FetchReviewByUserId
    extends graphql.WatchQueryOptions<Query$FetchReviewByUserId> {
  WatchOptions$Query$FetchReviewByUserId({
    String? operationName,
    Variables$Query$FetchReviewByUserId? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$FetchReviewByUserId? typedOptimisticResult,
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
          document: documentNodeQueryFetchReviewByUserId,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$FetchReviewByUserId,
        );
}

class FetchMoreOptions$Query$FetchReviewByUserId
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$FetchReviewByUserId({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$FetchReviewByUserId? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryFetchReviewByUserId,
        );
}

extension ClientExtension$Query$FetchReviewByUserId on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$FetchReviewByUserId>>
      query$FetchReviewByUserId(
              [Options$Query$FetchReviewByUserId? options]) async =>
          await this.query(options ?? Options$Query$FetchReviewByUserId());
  graphql.ObservableQuery<Query$FetchReviewByUserId>
      watchQuery$FetchReviewByUserId(
              [WatchOptions$Query$FetchReviewByUserId? options]) =>
          this.watchQuery(options ?? WatchOptions$Query$FetchReviewByUserId());
  void writeQuery$FetchReviewByUserId({
    required Query$FetchReviewByUserId data,
    Variables$Query$FetchReviewByUserId? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryFetchReviewByUserId),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$FetchReviewByUserId? readQuery$FetchReviewByUserId({
    Variables$Query$FetchReviewByUserId? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation:
            graphql.Operation(document: documentNodeQueryFetchReviewByUserId),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$FetchReviewByUserId.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$FetchReviewByUserId>
    useQuery$FetchReviewByUserId(
            [Options$Query$FetchReviewByUserId? options]) =>
        graphql_flutter
            .useQuery(options ?? Options$Query$FetchReviewByUserId());
graphql.ObservableQuery<Query$FetchReviewByUserId>
    useWatchQuery$FetchReviewByUserId(
            [WatchOptions$Query$FetchReviewByUserId? options]) =>
        graphql_flutter
            .useWatchQuery(options ?? WatchOptions$Query$FetchReviewByUserId());

class Query$FetchReviewByUserId$Widget
    extends graphql_flutter.Query<Query$FetchReviewByUserId> {
  Query$FetchReviewByUserId$Widget({
    widgets.Key? key,
    Options$Query$FetchReviewByUserId? options,
    required graphql_flutter.QueryBuilder<Query$FetchReviewByUserId> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$FetchReviewByUserId(),
          builder: builder,
        );
}

class Query$FetchReviewByUserId$Review {
  Query$FetchReviewByUserId$Review({
    required this.id,
    this.body,
    this.private,
    this.score,
    this.userRating,
    this.summary,
    this.$__typename = 'Review',
  });

  factory Query$FetchReviewByUserId$Review.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$body = json['body'];
    final l$private = json['private'];
    final l$score = json['score'];
    final l$userRating = json['userRating'];
    final l$summary = json['summary'];
    final l$$__typename = json['__typename'];
    return Query$FetchReviewByUserId$Review(
      id: (l$id as int),
      body: (l$body as String?),
      private: (l$private as bool?),
      score: (l$score as int?),
      userRating: l$userRating == null
          ? null
          : fromJson$Enum$ReviewRating((l$userRating as String)),
      summary: (l$summary as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String? body;

  final bool? private;

  final int? score;

  final Enum$ReviewRating? userRating;

  final String? summary;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$body = body;
    _resultData['body'] = l$body;
    final l$private = private;
    _resultData['private'] = l$private;
    final l$score = score;
    _resultData['score'] = l$score;
    final l$userRating = userRating;
    _resultData['userRating'] =
        l$userRating == null ? null : toJson$Enum$ReviewRating(l$userRating);
    final l$summary = summary;
    _resultData['summary'] = l$summary;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$body = body;
    final l$private = private;
    final l$score = score;
    final l$userRating = userRating;
    final l$summary = summary;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$body,
      l$private,
      l$score,
      l$userRating,
      l$summary,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$FetchReviewByUserId$Review ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$body = body;
    final lOther$body = other.body;
    if (l$body != lOther$body) {
      return false;
    }
    final l$private = private;
    final lOther$private = other.private;
    if (l$private != lOther$private) {
      return false;
    }
    final l$score = score;
    final lOther$score = other.score;
    if (l$score != lOther$score) {
      return false;
    }
    final l$userRating = userRating;
    final lOther$userRating = other.userRating;
    if (l$userRating != lOther$userRating) {
      return false;
    }
    final l$summary = summary;
    final lOther$summary = other.summary;
    if (l$summary != lOther$summary) {
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

extension UtilityExtension$Query$FetchReviewByUserId$Review
    on Query$FetchReviewByUserId$Review {
  CopyWith$Query$FetchReviewByUserId$Review<Query$FetchReviewByUserId$Review>
      get copyWith => CopyWith$Query$FetchReviewByUserId$Review(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchReviewByUserId$Review<TRes> {
  factory CopyWith$Query$FetchReviewByUserId$Review(
    Query$FetchReviewByUserId$Review instance,
    TRes Function(Query$FetchReviewByUserId$Review) then,
  ) = _CopyWithImpl$Query$FetchReviewByUserId$Review;

  factory CopyWith$Query$FetchReviewByUserId$Review.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchReviewByUserId$Review;

  TRes call({
    int? id,
    String? body,
    bool? private,
    int? score,
    Enum$ReviewRating? userRating,
    String? summary,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FetchReviewByUserId$Review<TRes>
    implements CopyWith$Query$FetchReviewByUserId$Review<TRes> {
  _CopyWithImpl$Query$FetchReviewByUserId$Review(
    this._instance,
    this._then,
  );

  final Query$FetchReviewByUserId$Review _instance;

  final TRes Function(Query$FetchReviewByUserId$Review) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? body = _undefined,
    Object? private = _undefined,
    Object? score = _undefined,
    Object? userRating = _undefined,
    Object? summary = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchReviewByUserId$Review(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        body: body == _undefined ? _instance.body : (body as String?),
        private: private == _undefined ? _instance.private : (private as bool?),
        score: score == _undefined ? _instance.score : (score as int?),
        userRating: userRating == _undefined
            ? _instance.userRating
            : (userRating as Enum$ReviewRating?),
        summary:
            summary == _undefined ? _instance.summary : (summary as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FetchReviewByUserId$Review<TRes>
    implements CopyWith$Query$FetchReviewByUserId$Review<TRes> {
  _CopyWithStubImpl$Query$FetchReviewByUserId$Review(this._res);

  TRes _res;

  call({
    int? id,
    String? body,
    bool? private,
    int? score,
    Enum$ReviewRating? userRating,
    String? summary,
    String? $__typename,
  }) =>
      _res;
}
