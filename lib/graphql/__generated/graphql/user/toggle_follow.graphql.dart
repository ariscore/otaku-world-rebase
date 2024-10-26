// GENERATED FILE
// DO NOT MODIFY
// ignore_for_file: type=lint
import '../fragments.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Mutation$ToggleFollow {
  factory Variables$Mutation$ToggleFollow({int? userId}) =>
      Variables$Mutation$ToggleFollow._({
        if (userId != null) r'userId': userId,
      });

  Variables$Mutation$ToggleFollow._(this._$data);

  factory Variables$Mutation$ToggleFollow.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('userId')) {
      final l$userId = data['userId'];
      result$data['userId'] = (l$userId as int?);
    }
    return Variables$Mutation$ToggleFollow._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get userId => (_$data['userId'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('userId')) {
      final l$userId = userId;
      result$data['userId'] = l$userId;
    }
    return result$data;
  }

  CopyWith$Variables$Mutation$ToggleFollow<Variables$Mutation$ToggleFollow>
      get copyWith => CopyWith$Variables$Mutation$ToggleFollow(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$ToggleFollow) ||
        runtimeType != other.runtimeType) {
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
    final l$userId = userId;
    return Object.hashAll([_$data.containsKey('userId') ? l$userId : const {}]);
  }
}

abstract class CopyWith$Variables$Mutation$ToggleFollow<TRes> {
  factory CopyWith$Variables$Mutation$ToggleFollow(
    Variables$Mutation$ToggleFollow instance,
    TRes Function(Variables$Mutation$ToggleFollow) then,
  ) = _CopyWithImpl$Variables$Mutation$ToggleFollow;

  factory CopyWith$Variables$Mutation$ToggleFollow.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$ToggleFollow;

  TRes call({int? userId});
}

class _CopyWithImpl$Variables$Mutation$ToggleFollow<TRes>
    implements CopyWith$Variables$Mutation$ToggleFollow<TRes> {
  _CopyWithImpl$Variables$Mutation$ToggleFollow(
    this._instance,
    this._then,
  );

  final Variables$Mutation$ToggleFollow _instance;

  final TRes Function(Variables$Mutation$ToggleFollow) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? userId = _undefined}) =>
      _then(Variables$Mutation$ToggleFollow._({
        ..._instance._$data,
        if (userId != _undefined) 'userId': (userId as int?),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$ToggleFollow<TRes>
    implements CopyWith$Variables$Mutation$ToggleFollow<TRes> {
  _CopyWithStubImpl$Variables$Mutation$ToggleFollow(this._res);

  TRes _res;

  call({int? userId}) => _res;
}

class Mutation$ToggleFollow {
  Mutation$ToggleFollow({
    this.ToggleFollow,
    this.$__typename = 'Mutation',
  });

  factory Mutation$ToggleFollow.fromJson(Map<String, dynamic> json) {
    final l$ToggleFollow = json['ToggleFollow'];
    final l$$__typename = json['__typename'];
    return Mutation$ToggleFollow(
      ToggleFollow: l$ToggleFollow == null
          ? null
          : Fragment$User.fromJson((l$ToggleFollow as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$User? ToggleFollow;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$ToggleFollow = ToggleFollow;
    _resultData['ToggleFollow'] = l$ToggleFollow?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$ToggleFollow = ToggleFollow;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$ToggleFollow,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$ToggleFollow) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$ToggleFollow = ToggleFollow;
    final lOther$ToggleFollow = other.ToggleFollow;
    if (l$ToggleFollow != lOther$ToggleFollow) {
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

extension UtilityExtension$Mutation$ToggleFollow on Mutation$ToggleFollow {
  CopyWith$Mutation$ToggleFollow<Mutation$ToggleFollow> get copyWith =>
      CopyWith$Mutation$ToggleFollow(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ToggleFollow<TRes> {
  factory CopyWith$Mutation$ToggleFollow(
    Mutation$ToggleFollow instance,
    TRes Function(Mutation$ToggleFollow) then,
  ) = _CopyWithImpl$Mutation$ToggleFollow;

  factory CopyWith$Mutation$ToggleFollow.stub(TRes res) =
      _CopyWithStubImpl$Mutation$ToggleFollow;

  TRes call({
    Fragment$User? ToggleFollow,
    String? $__typename,
  });
  CopyWith$Fragment$User<TRes> get ToggleFollow;
}

class _CopyWithImpl$Mutation$ToggleFollow<TRes>
    implements CopyWith$Mutation$ToggleFollow<TRes> {
  _CopyWithImpl$Mutation$ToggleFollow(
    this._instance,
    this._then,
  );

  final Mutation$ToggleFollow _instance;

  final TRes Function(Mutation$ToggleFollow) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? ToggleFollow = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$ToggleFollow(
        ToggleFollow: ToggleFollow == _undefined
            ? _instance.ToggleFollow
            : (ToggleFollow as Fragment$User?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$User<TRes> get ToggleFollow {
    final local$ToggleFollow = _instance.ToggleFollow;
    return local$ToggleFollow == null
        ? CopyWith$Fragment$User.stub(_then(_instance))
        : CopyWith$Fragment$User(
            local$ToggleFollow, (e) => call(ToggleFollow: e));
  }
}

class _CopyWithStubImpl$Mutation$ToggleFollow<TRes>
    implements CopyWith$Mutation$ToggleFollow<TRes> {
  _CopyWithStubImpl$Mutation$ToggleFollow(this._res);

  TRes _res;

  call({
    Fragment$User? ToggleFollow,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$User<TRes> get ToggleFollow =>
      CopyWith$Fragment$User.stub(_res);
}

const documentNodeMutationToggleFollow = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'ToggleFollow'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'userId')),
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
        name: NameNode(value: 'ToggleFollow'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'userId'),
            value: VariableNode(name: NameNode(value: 'userId')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'User'),
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
  fragmentDefinitionUser,
]);
Mutation$ToggleFollow _parserFn$Mutation$ToggleFollow(
        Map<String, dynamic> data) =>
    Mutation$ToggleFollow.fromJson(data);
typedef OnMutationCompleted$Mutation$ToggleFollow = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$ToggleFollow?,
);

class Options$Mutation$ToggleFollow
    extends graphql.MutationOptions<Mutation$ToggleFollow> {
  Options$Mutation$ToggleFollow({
    String? operationName,
    Variables$Mutation$ToggleFollow? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$ToggleFollow? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$ToggleFollow? onCompleted,
    graphql.OnMutationUpdate<Mutation$ToggleFollow>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
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
              : (data) => onCompleted(
                    data,
                    data == null ? null : _parserFn$Mutation$ToggleFollow(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationToggleFollow,
          parserFn: _parserFn$Mutation$ToggleFollow,
        );

  final OnMutationCompleted$Mutation$ToggleFollow? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$ToggleFollow
    extends graphql.WatchQueryOptions<Mutation$ToggleFollow> {
  WatchOptions$Mutation$ToggleFollow({
    String? operationName,
    Variables$Mutation$ToggleFollow? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$ToggleFollow? typedOptimisticResult,
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
          document: documentNodeMutationToggleFollow,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$ToggleFollow,
        );
}

extension ClientExtension$Mutation$ToggleFollow on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$ToggleFollow>> mutate$ToggleFollow(
          [Options$Mutation$ToggleFollow? options]) async =>
      await this.mutate(options ?? Options$Mutation$ToggleFollow());
  graphql.ObservableQuery<Mutation$ToggleFollow> watchMutation$ToggleFollow(
          [WatchOptions$Mutation$ToggleFollow? options]) =>
      this.watchMutation(options ?? WatchOptions$Mutation$ToggleFollow());
}

class Mutation$ToggleFollow$HookResult {
  Mutation$ToggleFollow$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$ToggleFollow runMutation;

  final graphql.QueryResult<Mutation$ToggleFollow> result;
}

Mutation$ToggleFollow$HookResult useMutation$ToggleFollow(
    [WidgetOptions$Mutation$ToggleFollow? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$ToggleFollow());
  return Mutation$ToggleFollow$HookResult(
    ({variables, optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables?.toJson() ?? const {},
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$ToggleFollow> useWatchMutation$ToggleFollow(
        [WatchOptions$Mutation$ToggleFollow? options]) =>
    graphql_flutter
        .useWatchMutation(options ?? WatchOptions$Mutation$ToggleFollow());

class WidgetOptions$Mutation$ToggleFollow
    extends graphql.MutationOptions<Mutation$ToggleFollow> {
  WidgetOptions$Mutation$ToggleFollow({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$ToggleFollow? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$ToggleFollow? onCompleted,
    graphql.OnMutationUpdate<Mutation$ToggleFollow>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null ? null : _parserFn$Mutation$ToggleFollow(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationToggleFollow,
          parserFn: _parserFn$Mutation$ToggleFollow,
        );

  final OnMutationCompleted$Mutation$ToggleFollow? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$ToggleFollow
    = graphql.MultiSourceResult<Mutation$ToggleFollow> Function({
  Variables$Mutation$ToggleFollow? variables,
  Object? optimisticResult,
  Mutation$ToggleFollow? typedOptimisticResult,
});
typedef Builder$Mutation$ToggleFollow = widgets.Widget Function(
  RunMutation$Mutation$ToggleFollow,
  graphql.QueryResult<Mutation$ToggleFollow>?,
);

class Mutation$ToggleFollow$Widget
    extends graphql_flutter.Mutation<Mutation$ToggleFollow> {
  Mutation$ToggleFollow$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$ToggleFollow? options,
    required Builder$Mutation$ToggleFollow builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$ToggleFollow(),
          builder: (
            run,
            result,
          ) =>
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
