// GENERATED FILE
// DO NOT MODIFY
// ignore_for_file: type=lint
import '../schema.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Mutation$RateReview {
  factory Variables$Mutation$RateReview({
    int? reviewId,
    Enum$ReviewRating? rating,
  }) =>
      Variables$Mutation$RateReview._({
        if (reviewId != null) r'reviewId': reviewId,
        if (rating != null) r'rating': rating,
      });

  Variables$Mutation$RateReview._(this._$data);

  factory Variables$Mutation$RateReview.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('reviewId')) {
      final l$reviewId = data['reviewId'];
      result$data['reviewId'] = (l$reviewId as int?);
    }
    if (data.containsKey('rating')) {
      final l$rating = data['rating'];
      result$data['rating'] = l$rating == null
          ? null
          : fromJson$Enum$ReviewRating((l$rating as String));
    }
    return Variables$Mutation$RateReview._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get reviewId => (_$data['reviewId'] as int?);

  Enum$ReviewRating? get rating => (_$data['rating'] as Enum$ReviewRating?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('reviewId')) {
      final l$reviewId = reviewId;
      result$data['reviewId'] = l$reviewId;
    }
    if (_$data.containsKey('rating')) {
      final l$rating = rating;
      result$data['rating'] =
      l$rating == null ? null : toJson$Enum$ReviewRating(l$rating);
    }
    return result$data;
  }

  CopyWith$Variables$Mutation$RateReview<Variables$Mutation$RateReview>
  get copyWith =>
      CopyWith$Variables$Mutation$RateReview(
        this,
            (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$RateReview) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$reviewId = reviewId;
    final lOther$reviewId = other.reviewId;
    if (_$data.containsKey('reviewId') !=
        other._$data.containsKey('reviewId')) {
      return false;
    }
    if (l$reviewId != lOther$reviewId) {
      return false;
    }
    final l$rating = rating;
    final lOther$rating = other.rating;
    if (_$data.containsKey('rating') != other._$data.containsKey('rating')) {
      return false;
    }
    if (l$rating != lOther$rating) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$reviewId = reviewId;
    final l$rating = rating;
    return Object.hashAll([
      _$data.containsKey('reviewId') ? l$reviewId : const {},
      _$data.containsKey('rating') ? l$rating : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$RateReview<TRes> {
  factory CopyWith$Variables$Mutation$RateReview(
      Variables$Mutation$RateReview instance,
      TRes Function(Variables$Mutation$RateReview) then,) = _CopyWithImpl$Variables$Mutation$RateReview;

  factory CopyWith$Variables$Mutation$RateReview.stub(TRes res) =
  _CopyWithStubImpl$Variables$Mutation$RateReview;

  TRes call({
    int? reviewId,
    Enum$ReviewRating? rating,
  });
}

class _CopyWithImpl$Variables$Mutation$RateReview<TRes>
    implements CopyWith$Variables$Mutation$RateReview<TRes> {
  _CopyWithImpl$Variables$Mutation$RateReview(this._instance,
      this._then,);

  final Variables$Mutation$RateReview _instance;

  final TRes Function(Variables$Mutation$RateReview) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? reviewId = _undefined,
    Object? rating = _undefined,
  }) =>
      _then(Variables$Mutation$RateReview._({
        ..._instance._$data,
        if (reviewId != _undefined) 'reviewId': (reviewId as int?),
        if (rating != _undefined) 'rating': (rating as Enum$ReviewRating?),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$RateReview<TRes>
    implements CopyWith$Variables$Mutation$RateReview<TRes> {
  _CopyWithStubImpl$Variables$Mutation$RateReview(this._res);

  TRes _res;

  call({
    int? reviewId,
    Enum$ReviewRating? rating,
  }) =>
      _res;
}

class Mutation$RateReview {
  Mutation$RateReview({
    this.RateReview,
    this.$__typename = 'Mutation',
  });

  factory Mutation$RateReview.fromJson(Map<String, dynamic> json) {
    final l$RateReview = json['RateReview'];
    final l$$__typename = json['__typename'];
    return Mutation$RateReview(
      RateReview: l$RateReview == null
          ? null
          : Mutation$RateReview$RateReview.fromJson(
          (l$RateReview as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$RateReview$RateReview? RateReview;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$RateReview = RateReview;
    _resultData['RateReview'] = l$RateReview?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$RateReview = RateReview;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$RateReview,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$RateReview) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$RateReview = RateReview;
    final lOther$RateReview = other.RateReview;
    if (l$RateReview != lOther$RateReview) {
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

extension UtilityExtension$Mutation$RateReview on Mutation$RateReview {
  CopyWith$Mutation$RateReview<Mutation$RateReview> get copyWith =>
      CopyWith$Mutation$RateReview(
        this,
            (i) => i,
      );
}

abstract class CopyWith$Mutation$RateReview<TRes> {
  factory CopyWith$Mutation$RateReview(Mutation$RateReview instance,
      TRes Function(Mutation$RateReview) then,) = _CopyWithImpl$Mutation$RateReview;

  factory CopyWith$Mutation$RateReview.stub(TRes res) =
  _CopyWithStubImpl$Mutation$RateReview;

  TRes call({
    Mutation$RateReview$RateReview? RateReview,
    String? $__typename,
  });

  CopyWith$Mutation$RateReview$RateReview<TRes> get RateReview;
}

class _CopyWithImpl$Mutation$RateReview<TRes>
    implements CopyWith$Mutation$RateReview<TRes> {
  _CopyWithImpl$Mutation$RateReview(this._instance,
      this._then,);

  final Mutation$RateReview _instance;

  final TRes Function(Mutation$RateReview) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? RateReview = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$RateReview(
        RateReview: RateReview == _undefined
            ? _instance.RateReview
            : (RateReview as Mutation$RateReview$RateReview?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$RateReview$RateReview<TRes> get RateReview {
    final local$RateReview = _instance.RateReview;
    return local$RateReview == null
        ? CopyWith$Mutation$RateReview$RateReview.stub(_then(_instance))
        : CopyWith$Mutation$RateReview$RateReview(
        local$RateReview, (e) => call(RateReview: e));
  }
}

class _CopyWithStubImpl$Mutation$RateReview<TRes>
    implements CopyWith$Mutation$RateReview<TRes> {
  _CopyWithStubImpl$Mutation$RateReview(this._res);

  TRes _res;

  call({
    Mutation$RateReview$RateReview? RateReview,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$RateReview$RateReview<TRes> get RateReview =>
      CopyWith$Mutation$RateReview$RateReview.stub(_res);
}

const documentNodeMutationRateReview = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'RateReview'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'reviewId')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'rating')),
        type: NamedTypeNode(
          name: NameNode(value: 'ReviewRating'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'RateReview'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'rating'),
            value: VariableNode(name: NameNode(value: 'rating')),
          ),
          ArgumentNode(
            name: NameNode(value: 'reviewId'),
            value: VariableNode(name: NameNode(value: 'reviewId')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'userRating'),
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

Mutation$RateReview _parserFn$Mutation$RateReview(Map<String, dynamic> data) =>
    Mutation$RateReview.fromJson(data);

typedef OnMutationCompleted$Mutation$RateReview = FutureOr<void> Function(
    Map<String, dynamic>?,
    Mutation$RateReview?,
    );

class Options$Mutation$RateReview
    extends graphql.MutationOptions<Mutation$RateReview> {
  Options$Mutation$RateReview({
    String? operationName,
    Variables$Mutation$RateReview? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$RateReview? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$RateReview? onCompleted,
    graphql.OnMutationUpdate<Mutation$RateReview>? update,
    graphql.OnError? onError,
  })
      : onCompletedWithParsed = onCompleted,
        super(
        variables: variables?.toJson() ?? {},
        operationName: operationName,
        fetchPolicy: fetchPolicy,
        errorPolicy: errorPolicy,
        cacheRereadPolicy: cacheRereadPolicy,
        optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
        context: context,
        onCompleted: onCompleted == null
            ? null
            : (data) =>
            onCompleted(
              data,
              data == null ? null : _parserFn$Mutation$RateReview(data),
            ),
        update: update,
        onError: onError,
        document: documentNodeMutationRateReview,
        parserFn: _parserFn$Mutation$RateReview,
      );

  final OnMutationCompleted$Mutation$RateReview? onCompletedWithParsed;

  @override
  List<Object?> get properties =>
      [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$RateReview
    extends graphql.WatchQueryOptions<Mutation$RateReview> {
  WatchOptions$Mutation$RateReview({
    String? operationName,
    Variables$Mutation$RateReview? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$RateReview? typedOptimisticResult,
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
    document: documentNodeMutationRateReview,
    pollInterval: pollInterval,
    eagerlyFetchResults: eagerlyFetchResults,
    carryForwardDataOnException: carryForwardDataOnException,
    fetchResults: fetchResults,
    parserFn: _parserFn$Mutation$RateReview,
  );
}

extension ClientExtension$Mutation$RateReview on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$RateReview>> mutate$RateReview(
      [Options$Mutation$RateReview? options]) async =>
      await this.mutate(options ?? Options$Mutation$RateReview());

  graphql.ObservableQuery<Mutation$RateReview> watchMutation$RateReview(
      [WatchOptions$Mutation$RateReview? options]) =>
      this.watchMutation(options ?? WatchOptions$Mutation$RateReview());
}

class Mutation$RateReview$HookResult {
  Mutation$RateReview$HookResult(this.runMutation,
      this.result,);

  final RunMutation$Mutation$RateReview runMutation;

  final graphql.QueryResult<Mutation$RateReview> result;
}

Mutation$RateReview$HookResult useMutation$RateReview(
    [WidgetOptions$Mutation$RateReview? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$RateReview());
  return Mutation$RateReview$HookResult(
        ({variables, optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
          variables?.toJson() ?? const {},
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
        ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$RateReview> useWatchMutation$RateReview(
    [WatchOptions$Mutation$RateReview? options]) =>
    graphql_flutter
        .useWatchMutation(options ?? WatchOptions$Mutation$RateReview());

class WidgetOptions$Mutation$RateReview
    extends graphql.MutationOptions<Mutation$RateReview> {
  WidgetOptions$Mutation$RateReview({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$RateReview? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$RateReview? onCompleted,
    graphql.OnMutationUpdate<Mutation$RateReview>? update,
    graphql.OnError? onError,
  })
      : onCompletedWithParsed = onCompleted,
        super(
        operationName: operationName,
        fetchPolicy: fetchPolicy,
        errorPolicy: errorPolicy,
        cacheRereadPolicy: cacheRereadPolicy,
        optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
        context: context,
        onCompleted: onCompleted == null
            ? null
            : (data) =>
            onCompleted(
              data,
              data == null ? null : _parserFn$Mutation$RateReview(data),
            ),
        update: update,
        onError: onError,
        document: documentNodeMutationRateReview,
        parserFn: _parserFn$Mutation$RateReview,
      );

  final OnMutationCompleted$Mutation$RateReview? onCompletedWithParsed;

  @override
  List<Object?> get properties =>
      [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$RateReview
= graphql.MultiSourceResult<Mutation$RateReview> Function({
Variables$Mutation$RateReview? variables,
Object? optimisticResult,
Mutation$RateReview? typedOptimisticResult,
});
typedef Builder$Mutation$RateReview = widgets.Widget Function(
    RunMutation$Mutation$RateReview,
    graphql.QueryResult<Mutation$RateReview>?,
    );

class Mutation$RateReview$Widget
    extends graphql_flutter.Mutation<Mutation$RateReview> {
  Mutation$RateReview$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$RateReview? options,
    required Builder$Mutation$RateReview builder,
  }) : super(
    key: key,
    options: options ?? WidgetOptions$Mutation$RateReview(),
    builder: (run,
        result,) =>
        builder(
              ({
            variables,
            optimisticResult,
            typedOptimisticResult,
          }) =>
              run(
                variables?.toJson() ?? const {},
                optimisticResult:
                optimisticResult ?? typedOptimisticResult?.toJson(),
              ),
          result,
        ),
  );
}

class Mutation$RateReview$RateReview {
  Mutation$RateReview$RateReview({
    this.userRating,
    this.$__typename = 'Review',
  });

  factory Mutation$RateReview$RateReview.fromJson(Map<String, dynamic> json) {
    final l$userRating = json['userRating'];
    final l$$__typename = json['__typename'];
    return Mutation$RateReview$RateReview(
      userRating: l$userRating == null
          ? null
          : fromJson$Enum$ReviewRating((l$userRating as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final Enum$ReviewRating? userRating;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$userRating = userRating;
    _resultData['userRating'] =
    l$userRating == null ? null : toJson$Enum$ReviewRating(l$userRating);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$userRating = userRating;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$userRating,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$RateReview$RateReview) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$userRating = userRating;
    final lOther$userRating = other.userRating;
    if (l$userRating != lOther$userRating) {
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

extension UtilityExtension$Mutation$RateReview$RateReview
on Mutation$RateReview$RateReview {
  CopyWith$Mutation$RateReview$RateReview<Mutation$RateReview$RateReview>
  get copyWith =>
      CopyWith$Mutation$RateReview$RateReview(
        this,
            (i) => i,
      );
}

abstract class CopyWith$Mutation$RateReview$RateReview<TRes> {
  factory CopyWith$Mutation$RateReview$RateReview(
      Mutation$RateReview$RateReview instance,
      TRes Function(Mutation$RateReview$RateReview) then,) = _CopyWithImpl$Mutation$RateReview$RateReview;

  factory CopyWith$Mutation$RateReview$RateReview.stub(TRes res) =
  _CopyWithStubImpl$Mutation$RateReview$RateReview;

  TRes call({
    Enum$ReviewRating? userRating,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$RateReview$RateReview<TRes>
    implements CopyWith$Mutation$RateReview$RateReview<TRes> {
  _CopyWithImpl$Mutation$RateReview$RateReview(this._instance,
      this._then,);

  final Mutation$RateReview$RateReview _instance;

  final TRes Function(Mutation$RateReview$RateReview) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userRating = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$RateReview$RateReview(
        userRating: userRating == _undefined
            ? _instance.userRating
            : (userRating as Enum$ReviewRating?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$RateReview$RateReview<TRes>
    implements CopyWith$Mutation$RateReview$RateReview<TRes> {
  _CopyWithStubImpl$Mutation$RateReview$RateReview(this._res);

  TRes _res;

  call({
    Enum$ReviewRating? userRating,
    String? $__typename,
  }) =>
      _res;
}
