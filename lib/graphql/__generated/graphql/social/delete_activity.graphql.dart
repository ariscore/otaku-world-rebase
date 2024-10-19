// GENERATED FILE
// DO NOT MODIFY
// ignore_for_file: type=lint
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Mutation$DeleteActivity {
  factory Variables$Mutation$DeleteActivity({int? activityId}) =>
      Variables$Mutation$DeleteActivity._({
        if (activityId != null) r'activityId': activityId,
      });

  Variables$Mutation$DeleteActivity._(this._$data);

  factory Variables$Mutation$DeleteActivity.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('activityId')) {
      final l$activityId = data['activityId'];
      result$data['activityId'] = (l$activityId as int?);
    }
    return Variables$Mutation$DeleteActivity._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get activityId => (_$data['activityId'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('activityId')) {
      final l$activityId = activityId;
      result$data['activityId'] = l$activityId;
    }
    return result$data;
  }

  CopyWith$Variables$Mutation$DeleteActivity<Variables$Mutation$DeleteActivity>
      get copyWith => CopyWith$Variables$Mutation$DeleteActivity(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$DeleteActivity) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$activityId = activityId;
    final lOther$activityId = other.activityId;
    if (_$data.containsKey('activityId') !=
        other._$data.containsKey('activityId')) {
      return false;
    }
    if (l$activityId != lOther$activityId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$activityId = activityId;
    return Object.hashAll(
        [_$data.containsKey('activityId') ? l$activityId : const {}]);
  }
}

abstract class CopyWith$Variables$Mutation$DeleteActivity<TRes> {
  factory CopyWith$Variables$Mutation$DeleteActivity(
    Variables$Mutation$DeleteActivity instance,
    TRes Function(Variables$Mutation$DeleteActivity) then,
  ) = _CopyWithImpl$Variables$Mutation$DeleteActivity;

  factory CopyWith$Variables$Mutation$DeleteActivity.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$DeleteActivity;

  TRes call({int? activityId});
}

class _CopyWithImpl$Variables$Mutation$DeleteActivity<TRes>
    implements CopyWith$Variables$Mutation$DeleteActivity<TRes> {
  _CopyWithImpl$Variables$Mutation$DeleteActivity(
    this._instance,
    this._then,
  );

  final Variables$Mutation$DeleteActivity _instance;

  final TRes Function(Variables$Mutation$DeleteActivity) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? activityId = _undefined}) =>
      _then(Variables$Mutation$DeleteActivity._({
        ..._instance._$data,
        if (activityId != _undefined) 'activityId': (activityId as int?),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$DeleteActivity<TRes>
    implements CopyWith$Variables$Mutation$DeleteActivity<TRes> {
  _CopyWithStubImpl$Variables$Mutation$DeleteActivity(this._res);

  TRes _res;

  call({int? activityId}) => _res;
}

class Mutation$DeleteActivity {
  Mutation$DeleteActivity({
    this.DeleteActivity,
    this.$__typename = 'Mutation',
  });

  factory Mutation$DeleteActivity.fromJson(Map<String, dynamic> json) {
    final l$DeleteActivity = json['DeleteActivity'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteActivity(
      DeleteActivity: l$DeleteActivity == null
          ? null
          : Mutation$DeleteActivity$DeleteActivity.fromJson(
              (l$DeleteActivity as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$DeleteActivity$DeleteActivity? DeleteActivity;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$DeleteActivity = DeleteActivity;
    _resultData['DeleteActivity'] = l$DeleteActivity?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$DeleteActivity = DeleteActivity;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$DeleteActivity,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$DeleteActivity) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$DeleteActivity = DeleteActivity;
    final lOther$DeleteActivity = other.DeleteActivity;
    if (l$DeleteActivity != lOther$DeleteActivity) {
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

extension UtilityExtension$Mutation$DeleteActivity on Mutation$DeleteActivity {
  CopyWith$Mutation$DeleteActivity<Mutation$DeleteActivity> get copyWith =>
      CopyWith$Mutation$DeleteActivity(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$DeleteActivity<TRes> {
  factory CopyWith$Mutation$DeleteActivity(
    Mutation$DeleteActivity instance,
    TRes Function(Mutation$DeleteActivity) then,
  ) = _CopyWithImpl$Mutation$DeleteActivity;

  factory CopyWith$Mutation$DeleteActivity.stub(TRes res) =
      _CopyWithStubImpl$Mutation$DeleteActivity;

  TRes call({
    Mutation$DeleteActivity$DeleteActivity? DeleteActivity,
    String? $__typename,
  });
  CopyWith$Mutation$DeleteActivity$DeleteActivity<TRes> get DeleteActivity;
}

class _CopyWithImpl$Mutation$DeleteActivity<TRes>
    implements CopyWith$Mutation$DeleteActivity<TRes> {
  _CopyWithImpl$Mutation$DeleteActivity(
    this._instance,
    this._then,
  );

  final Mutation$DeleteActivity _instance;

  final TRes Function(Mutation$DeleteActivity) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? DeleteActivity = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$DeleteActivity(
        DeleteActivity: DeleteActivity == _undefined
            ? _instance.DeleteActivity
            : (DeleteActivity as Mutation$DeleteActivity$DeleteActivity?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$DeleteActivity$DeleteActivity<TRes> get DeleteActivity {
    final local$DeleteActivity = _instance.DeleteActivity;
    return local$DeleteActivity == null
        ? CopyWith$Mutation$DeleteActivity$DeleteActivity.stub(_then(_instance))
        : CopyWith$Mutation$DeleteActivity$DeleteActivity(
            local$DeleteActivity, (e) => call(DeleteActivity: e));
  }
}

class _CopyWithStubImpl$Mutation$DeleteActivity<TRes>
    implements CopyWith$Mutation$DeleteActivity<TRes> {
  _CopyWithStubImpl$Mutation$DeleteActivity(this._res);

  TRes _res;

  call({
    Mutation$DeleteActivity$DeleteActivity? DeleteActivity,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$DeleteActivity$DeleteActivity<TRes> get DeleteActivity =>
      CopyWith$Mutation$DeleteActivity$DeleteActivity.stub(_res);
}

const documentNodeMutationDeleteActivity = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'DeleteActivity'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'activityId')),
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
        name: NameNode(value: 'DeleteActivity'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'activityId')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'deleted'),
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
Mutation$DeleteActivity _parserFn$Mutation$DeleteActivity(
        Map<String, dynamic> data) =>
    Mutation$DeleteActivity.fromJson(data);
typedef OnMutationCompleted$Mutation$DeleteActivity = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$DeleteActivity?,
);

class Options$Mutation$DeleteActivity
    extends graphql.MutationOptions<Mutation$DeleteActivity> {
  Options$Mutation$DeleteActivity({
    String? operationName,
    Variables$Mutation$DeleteActivity? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$DeleteActivity? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$DeleteActivity? onCompleted,
    graphql.OnMutationUpdate<Mutation$DeleteActivity>? update,
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
                    data == null
                        ? null
                        : _parserFn$Mutation$DeleteActivity(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationDeleteActivity,
          parserFn: _parserFn$Mutation$DeleteActivity,
        );

  final OnMutationCompleted$Mutation$DeleteActivity? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$DeleteActivity
    extends graphql.WatchQueryOptions<Mutation$DeleteActivity> {
  WatchOptions$Mutation$DeleteActivity({
    String? operationName,
    Variables$Mutation$DeleteActivity? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$DeleteActivity? typedOptimisticResult,
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
          document: documentNodeMutationDeleteActivity,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$DeleteActivity,
        );
}

extension ClientExtension$Mutation$DeleteActivity on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$DeleteActivity>> mutate$DeleteActivity(
          [Options$Mutation$DeleteActivity? options]) async =>
      await this.mutate(options ?? Options$Mutation$DeleteActivity());
  graphql.ObservableQuery<Mutation$DeleteActivity> watchMutation$DeleteActivity(
          [WatchOptions$Mutation$DeleteActivity? options]) =>
      this.watchMutation(options ?? WatchOptions$Mutation$DeleteActivity());
}

class Mutation$DeleteActivity$HookResult {
  Mutation$DeleteActivity$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$DeleteActivity runMutation;

  final graphql.QueryResult<Mutation$DeleteActivity> result;
}

Mutation$DeleteActivity$HookResult useMutation$DeleteActivity(
    [WidgetOptions$Mutation$DeleteActivity? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$DeleteActivity());
  return Mutation$DeleteActivity$HookResult(
    ({variables, optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables?.toJson() ?? const {},
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$DeleteActivity>
    useWatchMutation$DeleteActivity(
            [WatchOptions$Mutation$DeleteActivity? options]) =>
        graphql_flutter.useWatchMutation(
            options ?? WatchOptions$Mutation$DeleteActivity());

class WidgetOptions$Mutation$DeleteActivity
    extends graphql.MutationOptions<Mutation$DeleteActivity> {
  WidgetOptions$Mutation$DeleteActivity({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$DeleteActivity? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$DeleteActivity? onCompleted,
    graphql.OnMutationUpdate<Mutation$DeleteActivity>? update,
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
                    data == null
                        ? null
                        : _parserFn$Mutation$DeleteActivity(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationDeleteActivity,
          parserFn: _parserFn$Mutation$DeleteActivity,
        );

  final OnMutationCompleted$Mutation$DeleteActivity? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$DeleteActivity
    = graphql.MultiSourceResult<Mutation$DeleteActivity> Function({
  Variables$Mutation$DeleteActivity? variables,
  Object? optimisticResult,
  Mutation$DeleteActivity? typedOptimisticResult,
});
typedef Builder$Mutation$DeleteActivity = widgets.Widget Function(
  RunMutation$Mutation$DeleteActivity,
  graphql.QueryResult<Mutation$DeleteActivity>?,
);

class Mutation$DeleteActivity$Widget
    extends graphql_flutter.Mutation<Mutation$DeleteActivity> {
  Mutation$DeleteActivity$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$DeleteActivity? options,
    required Builder$Mutation$DeleteActivity builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$DeleteActivity(),
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

class Mutation$DeleteActivity$DeleteActivity {
  Mutation$DeleteActivity$DeleteActivity({
    this.deleted,
    this.$__typename = 'Deleted',
  });

  factory Mutation$DeleteActivity$DeleteActivity.fromJson(
      Map<String, dynamic> json) {
    final l$deleted = json['deleted'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteActivity$DeleteActivity(
      deleted: (l$deleted as bool?),
      $__typename: (l$$__typename as String),
    );
  }

  final bool? deleted;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$deleted = deleted;
    _resultData['deleted'] = l$deleted;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$deleted = deleted;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$deleted,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$DeleteActivity$DeleteActivity) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$deleted = deleted;
    final lOther$deleted = other.deleted;
    if (l$deleted != lOther$deleted) {
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

extension UtilityExtension$Mutation$DeleteActivity$DeleteActivity
    on Mutation$DeleteActivity$DeleteActivity {
  CopyWith$Mutation$DeleteActivity$DeleteActivity<
          Mutation$DeleteActivity$DeleteActivity>
      get copyWith => CopyWith$Mutation$DeleteActivity$DeleteActivity(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$DeleteActivity$DeleteActivity<TRes> {
  factory CopyWith$Mutation$DeleteActivity$DeleteActivity(
    Mutation$DeleteActivity$DeleteActivity instance,
    TRes Function(Mutation$DeleteActivity$DeleteActivity) then,
  ) = _CopyWithImpl$Mutation$DeleteActivity$DeleteActivity;

  factory CopyWith$Mutation$DeleteActivity$DeleteActivity.stub(TRes res) =
      _CopyWithStubImpl$Mutation$DeleteActivity$DeleteActivity;

  TRes call({
    bool? deleted,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$DeleteActivity$DeleteActivity<TRes>
    implements CopyWith$Mutation$DeleteActivity$DeleteActivity<TRes> {
  _CopyWithImpl$Mutation$DeleteActivity$DeleteActivity(
    this._instance,
    this._then,
  );

  final Mutation$DeleteActivity$DeleteActivity _instance;

  final TRes Function(Mutation$DeleteActivity$DeleteActivity) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? deleted = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$DeleteActivity$DeleteActivity(
        deleted: deleted == _undefined ? _instance.deleted : (deleted as bool?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$DeleteActivity$DeleteActivity<TRes>
    implements CopyWith$Mutation$DeleteActivity$DeleteActivity<TRes> {
  _CopyWithStubImpl$Mutation$DeleteActivity$DeleteActivity(this._res);

  TRes _res;

  call({
    bool? deleted,
    String? $__typename,
  }) =>
      _res;
}
