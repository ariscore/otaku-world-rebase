// GENERATED FILE
// DO NOT MODIFY
// ignore_for_file: type=lint
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Mutation$ActivitySubscription {
  factory Variables$Mutation$ActivitySubscription({
    int? activityId,
    bool? subscribe,
  }) =>
      Variables$Mutation$ActivitySubscription._({
        if (activityId != null) r'activityId': activityId,
        if (subscribe != null) r'subscribe': subscribe,
      });

  Variables$Mutation$ActivitySubscription._(this._$data);

  factory Variables$Mutation$ActivitySubscription.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('activityId')) {
      final l$activityId = data['activityId'];
      result$data['activityId'] = (l$activityId as int?);
    }
    if (data.containsKey('subscribe')) {
      final l$subscribe = data['subscribe'];
      result$data['subscribe'] = (l$subscribe as bool?);
    }
    return Variables$Mutation$ActivitySubscription._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get activityId => (_$data['activityId'] as int?);

  bool? get subscribe => (_$data['subscribe'] as bool?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('activityId')) {
      final l$activityId = activityId;
      result$data['activityId'] = l$activityId;
    }
    if (_$data.containsKey('subscribe')) {
      final l$subscribe = subscribe;
      result$data['subscribe'] = l$subscribe;
    }
    return result$data;
  }

  CopyWith$Variables$Mutation$ActivitySubscription<
          Variables$Mutation$ActivitySubscription>
      get copyWith => CopyWith$Variables$Mutation$ActivitySubscription(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$ActivitySubscription) ||
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
    final l$subscribe = subscribe;
    final lOther$subscribe = other.subscribe;
    if (_$data.containsKey('subscribe') !=
        other._$data.containsKey('subscribe')) {
      return false;
    }
    if (l$subscribe != lOther$subscribe) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$activityId = activityId;
    final l$subscribe = subscribe;
    return Object.hashAll([
      _$data.containsKey('activityId') ? l$activityId : const {},
      _$data.containsKey('subscribe') ? l$subscribe : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$ActivitySubscription<TRes> {
  factory CopyWith$Variables$Mutation$ActivitySubscription(
    Variables$Mutation$ActivitySubscription instance,
    TRes Function(Variables$Mutation$ActivitySubscription) then,
  ) = _CopyWithImpl$Variables$Mutation$ActivitySubscription;

  factory CopyWith$Variables$Mutation$ActivitySubscription.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$ActivitySubscription;

  TRes call({
    int? activityId,
    bool? subscribe,
  });
}

class _CopyWithImpl$Variables$Mutation$ActivitySubscription<TRes>
    implements CopyWith$Variables$Mutation$ActivitySubscription<TRes> {
  _CopyWithImpl$Variables$Mutation$ActivitySubscription(
    this._instance,
    this._then,
  );

  final Variables$Mutation$ActivitySubscription _instance;

  final TRes Function(Variables$Mutation$ActivitySubscription) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? activityId = _undefined,
    Object? subscribe = _undefined,
  }) =>
      _then(Variables$Mutation$ActivitySubscription._({
        ..._instance._$data,
        if (activityId != _undefined) 'activityId': (activityId as int?),
        if (subscribe != _undefined) 'subscribe': (subscribe as bool?),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$ActivitySubscription<TRes>
    implements CopyWith$Variables$Mutation$ActivitySubscription<TRes> {
  _CopyWithStubImpl$Variables$Mutation$ActivitySubscription(this._res);

  TRes _res;

  call({
    int? activityId,
    bool? subscribe,
  }) =>
      _res;
}

class Mutation$ActivitySubscription {
  Mutation$ActivitySubscription({
    this.ToggleActivitySubscription,
    this.$__typename = 'Mutation',
  });

  factory Mutation$ActivitySubscription.fromJson(Map<String, dynamic> json) {
    final l$ToggleActivitySubscription = json['ToggleActivitySubscription'];
    final l$$__typename = json['__typename'];
    return Mutation$ActivitySubscription(
      ToggleActivitySubscription: l$ToggleActivitySubscription == null
          ? null
          : Mutation$ActivitySubscription$ToggleActivitySubscription.fromJson(
              (l$ToggleActivitySubscription as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$ActivitySubscription$ToggleActivitySubscription?
      ToggleActivitySubscription;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$ToggleActivitySubscription = ToggleActivitySubscription;
    _resultData['ToggleActivitySubscription'] =
        l$ToggleActivitySubscription?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$ToggleActivitySubscription = ToggleActivitySubscription;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$ToggleActivitySubscription,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$ActivitySubscription) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$ToggleActivitySubscription = ToggleActivitySubscription;
    final lOther$ToggleActivitySubscription = other.ToggleActivitySubscription;
    if (l$ToggleActivitySubscription != lOther$ToggleActivitySubscription) {
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

extension UtilityExtension$Mutation$ActivitySubscription
    on Mutation$ActivitySubscription {
  CopyWith$Mutation$ActivitySubscription<Mutation$ActivitySubscription>
      get copyWith => CopyWith$Mutation$ActivitySubscription(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$ActivitySubscription<TRes> {
  factory CopyWith$Mutation$ActivitySubscription(
    Mutation$ActivitySubscription instance,
    TRes Function(Mutation$ActivitySubscription) then,
  ) = _CopyWithImpl$Mutation$ActivitySubscription;

  factory CopyWith$Mutation$ActivitySubscription.stub(TRes res) =
      _CopyWithStubImpl$Mutation$ActivitySubscription;

  TRes call({
    Mutation$ActivitySubscription$ToggleActivitySubscription?
        ToggleActivitySubscription,
    String? $__typename,
  });
  CopyWith$Mutation$ActivitySubscription$ToggleActivitySubscription<TRes>
      get ToggleActivitySubscription;
}

class _CopyWithImpl$Mutation$ActivitySubscription<TRes>
    implements CopyWith$Mutation$ActivitySubscription<TRes> {
  _CopyWithImpl$Mutation$ActivitySubscription(
    this._instance,
    this._then,
  );

  final Mutation$ActivitySubscription _instance;

  final TRes Function(Mutation$ActivitySubscription) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? ToggleActivitySubscription = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$ActivitySubscription(
        ToggleActivitySubscription: ToggleActivitySubscription == _undefined
            ? _instance.ToggleActivitySubscription
            : (ToggleActivitySubscription
                as Mutation$ActivitySubscription$ToggleActivitySubscription?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$ActivitySubscription$ToggleActivitySubscription<TRes>
      get ToggleActivitySubscription {
    final local$ToggleActivitySubscription =
        _instance.ToggleActivitySubscription;
    return local$ToggleActivitySubscription == null
        ? CopyWith$Mutation$ActivitySubscription$ToggleActivitySubscription
            .stub(_then(_instance))
        : CopyWith$Mutation$ActivitySubscription$ToggleActivitySubscription(
            local$ToggleActivitySubscription,
            (e) => call(ToggleActivitySubscription: e));
  }
}

class _CopyWithStubImpl$Mutation$ActivitySubscription<TRes>
    implements CopyWith$Mutation$ActivitySubscription<TRes> {
  _CopyWithStubImpl$Mutation$ActivitySubscription(this._res);

  TRes _res;

  call({
    Mutation$ActivitySubscription$ToggleActivitySubscription?
        ToggleActivitySubscription,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$ActivitySubscription$ToggleActivitySubscription<TRes>
      get ToggleActivitySubscription =>
          CopyWith$Mutation$ActivitySubscription$ToggleActivitySubscription
              .stub(_res);
}

const documentNodeMutationActivitySubscription = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'ActivitySubscription'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'activityId')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'subscribe')),
        type: NamedTypeNode(
          name: NameNode(value: 'Boolean'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'ToggleActivitySubscription'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'activityId'),
            value: VariableNode(name: NameNode(value: 'activityId')),
          ),
          ArgumentNode(
            name: NameNode(value: 'subscribe'),
            value: VariableNode(name: NameNode(value: 'subscribe')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          )
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
Mutation$ActivitySubscription _parserFn$Mutation$ActivitySubscription(
        Map<String, dynamic> data) =>
    Mutation$ActivitySubscription.fromJson(data);
typedef OnMutationCompleted$Mutation$ActivitySubscription = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$ActivitySubscription?,
);

class Options$Mutation$ActivitySubscription
    extends graphql.MutationOptions<Mutation$ActivitySubscription> {
  Options$Mutation$ActivitySubscription({
    String? operationName,
    Variables$Mutation$ActivitySubscription? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$ActivitySubscription? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$ActivitySubscription? onCompleted,
    graphql.OnMutationUpdate<Mutation$ActivitySubscription>? update,
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
                        : _parserFn$Mutation$ActivitySubscription(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationActivitySubscription,
          parserFn: _parserFn$Mutation$ActivitySubscription,
        );

  final OnMutationCompleted$Mutation$ActivitySubscription?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$ActivitySubscription
    extends graphql.WatchQueryOptions<Mutation$ActivitySubscription> {
  WatchOptions$Mutation$ActivitySubscription({
    String? operationName,
    Variables$Mutation$ActivitySubscription? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$ActivitySubscription? typedOptimisticResult,
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
          document: documentNodeMutationActivitySubscription,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$ActivitySubscription,
        );
}

extension ClientExtension$Mutation$ActivitySubscription
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$ActivitySubscription>>
      mutate$ActivitySubscription(
              [Options$Mutation$ActivitySubscription? options]) async =>
          await this.mutate(options ?? Options$Mutation$ActivitySubscription());
  graphql.ObservableQuery<Mutation$ActivitySubscription>
      watchMutation$ActivitySubscription(
              [WatchOptions$Mutation$ActivitySubscription? options]) =>
          this.watchMutation(
              options ?? WatchOptions$Mutation$ActivitySubscription());
}

class Mutation$ActivitySubscription$HookResult {
  Mutation$ActivitySubscription$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$ActivitySubscription runMutation;

  final graphql.QueryResult<Mutation$ActivitySubscription> result;
}

Mutation$ActivitySubscription$HookResult useMutation$ActivitySubscription(
    [WidgetOptions$Mutation$ActivitySubscription? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$ActivitySubscription());
  return Mutation$ActivitySubscription$HookResult(
    ({variables, optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables?.toJson() ?? const {},
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$ActivitySubscription>
    useWatchMutation$ActivitySubscription(
            [WatchOptions$Mutation$ActivitySubscription? options]) =>
        graphql_flutter.useWatchMutation(
            options ?? WatchOptions$Mutation$ActivitySubscription());

class WidgetOptions$Mutation$ActivitySubscription
    extends graphql.MutationOptions<Mutation$ActivitySubscription> {
  WidgetOptions$Mutation$ActivitySubscription({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$ActivitySubscription? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$ActivitySubscription? onCompleted,
    graphql.OnMutationUpdate<Mutation$ActivitySubscription>? update,
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
                        : _parserFn$Mutation$ActivitySubscription(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationActivitySubscription,
          parserFn: _parserFn$Mutation$ActivitySubscription,
        );

  final OnMutationCompleted$Mutation$ActivitySubscription?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$ActivitySubscription
    = graphql.MultiSourceResult<Mutation$ActivitySubscription> Function({
  Variables$Mutation$ActivitySubscription? variables,
  Object? optimisticResult,
  Mutation$ActivitySubscription? typedOptimisticResult,
});
typedef Builder$Mutation$ActivitySubscription = widgets.Widget Function(
  RunMutation$Mutation$ActivitySubscription,
  graphql.QueryResult<Mutation$ActivitySubscription>?,
);

class Mutation$ActivitySubscription$Widget
    extends graphql_flutter.Mutation<Mutation$ActivitySubscription> {
  Mutation$ActivitySubscription$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$ActivitySubscription? options,
    required Builder$Mutation$ActivitySubscription builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$ActivitySubscription(),
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

class Mutation$ActivitySubscription$ToggleActivitySubscription {
  Mutation$ActivitySubscription$ToggleActivitySubscription(
      {required this.$__typename});

  factory Mutation$ActivitySubscription$ToggleActivitySubscription.fromJson(
      Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "ListActivity":
        return Mutation$ActivitySubscription$ToggleActivitySubscription$$ListActivity
            .fromJson(json);

      case "MessageActivity":
        return Mutation$ActivitySubscription$ToggleActivitySubscription$$MessageActivity
            .fromJson(json);

      case "TextActivity":
        return Mutation$ActivitySubscription$ToggleActivitySubscription$$TextActivity
            .fromJson(json);

      default:
        final l$$__typename = json['__typename'];
        return Mutation$ActivitySubscription$ToggleActivitySubscription(
            $__typename: (l$$__typename as String));
    }
  }

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    return Object.hashAll([l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$ActivitySubscription$ToggleActivitySubscription) ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Mutation$ActivitySubscription$ToggleActivitySubscription
    on Mutation$ActivitySubscription$ToggleActivitySubscription {
  CopyWith$Mutation$ActivitySubscription$ToggleActivitySubscription<
          Mutation$ActivitySubscription$ToggleActivitySubscription>
      get copyWith =>
          CopyWith$Mutation$ActivitySubscription$ToggleActivitySubscription(
            this,
            (i) => i,
          );
  _T when<_T>({
    required _T Function(
            Mutation$ActivitySubscription$ToggleActivitySubscription$$ListActivity)
        listActivity,
    required _T Function(
            Mutation$ActivitySubscription$ToggleActivitySubscription$$MessageActivity)
        messageActivity,
    required _T Function(
            Mutation$ActivitySubscription$ToggleActivitySubscription$$TextActivity)
        textActivity,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "ListActivity":
        return listActivity(this
            as Mutation$ActivitySubscription$ToggleActivitySubscription$$ListActivity);

      case "MessageActivity":
        return messageActivity(this
            as Mutation$ActivitySubscription$ToggleActivitySubscription$$MessageActivity);

      case "TextActivity":
        return textActivity(this
            as Mutation$ActivitySubscription$ToggleActivitySubscription$$TextActivity);

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(
            Mutation$ActivitySubscription$ToggleActivitySubscription$$ListActivity)?
        listActivity,
    _T Function(
            Mutation$ActivitySubscription$ToggleActivitySubscription$$MessageActivity)?
        messageActivity,
    _T Function(
            Mutation$ActivitySubscription$ToggleActivitySubscription$$TextActivity)?
        textActivity,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "ListActivity":
        if (listActivity != null) {
          return listActivity(this
              as Mutation$ActivitySubscription$ToggleActivitySubscription$$ListActivity);
        } else {
          return orElse();
        }

      case "MessageActivity":
        if (messageActivity != null) {
          return messageActivity(this
              as Mutation$ActivitySubscription$ToggleActivitySubscription$$MessageActivity);
        } else {
          return orElse();
        }

      case "TextActivity":
        if (textActivity != null) {
          return textActivity(this
              as Mutation$ActivitySubscription$ToggleActivitySubscription$$TextActivity);
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWith$Mutation$ActivitySubscription$ToggleActivitySubscription<
    TRes> {
  factory CopyWith$Mutation$ActivitySubscription$ToggleActivitySubscription(
    Mutation$ActivitySubscription$ToggleActivitySubscription instance,
    TRes Function(Mutation$ActivitySubscription$ToggleActivitySubscription)
        then,
  ) = _CopyWithImpl$Mutation$ActivitySubscription$ToggleActivitySubscription;

  factory CopyWith$Mutation$ActivitySubscription$ToggleActivitySubscription.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$ActivitySubscription$ToggleActivitySubscription;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Mutation$ActivitySubscription$ToggleActivitySubscription<
        TRes>
    implements
        CopyWith$Mutation$ActivitySubscription$ToggleActivitySubscription<
            TRes> {
  _CopyWithImpl$Mutation$ActivitySubscription$ToggleActivitySubscription(
    this._instance,
    this._then,
  );

  final Mutation$ActivitySubscription$ToggleActivitySubscription _instance;

  final TRes Function(Mutation$ActivitySubscription$ToggleActivitySubscription)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) =>
      _then(Mutation$ActivitySubscription$ToggleActivitySubscription(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Mutation$ActivitySubscription$ToggleActivitySubscription<
        TRes>
    implements
        CopyWith$Mutation$ActivitySubscription$ToggleActivitySubscription<
            TRes> {
  _CopyWithStubImpl$Mutation$ActivitySubscription$ToggleActivitySubscription(
      this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Mutation$ActivitySubscription$ToggleActivitySubscription$$ListActivity
    implements Mutation$ActivitySubscription$ToggleActivitySubscription {
  Mutation$ActivitySubscription$ToggleActivitySubscription$$ListActivity(
      {this.$__typename = 'ListActivity'});

  factory Mutation$ActivitySubscription$ToggleActivitySubscription$$ListActivity.fromJson(
      Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    return Mutation$ActivitySubscription$ToggleActivitySubscription$$ListActivity(
        $__typename: (l$$__typename as String));
  }

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    return Object.hashAll([l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Mutation$ActivitySubscription$ToggleActivitySubscription$$ListActivity) ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Mutation$ActivitySubscription$ToggleActivitySubscription$$ListActivity
    on Mutation$ActivitySubscription$ToggleActivitySubscription$$ListActivity {
  CopyWith$Mutation$ActivitySubscription$ToggleActivitySubscription$$ListActivity<
          Mutation$ActivitySubscription$ToggleActivitySubscription$$ListActivity>
      get copyWith =>
          CopyWith$Mutation$ActivitySubscription$ToggleActivitySubscription$$ListActivity(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$ActivitySubscription$ToggleActivitySubscription$$ListActivity<
    TRes> {
  factory CopyWith$Mutation$ActivitySubscription$ToggleActivitySubscription$$ListActivity(
    Mutation$ActivitySubscription$ToggleActivitySubscription$$ListActivity
        instance,
    TRes Function(
            Mutation$ActivitySubscription$ToggleActivitySubscription$$ListActivity)
        then,
  ) = _CopyWithImpl$Mutation$ActivitySubscription$ToggleActivitySubscription$$ListActivity;

  factory CopyWith$Mutation$ActivitySubscription$ToggleActivitySubscription$$ListActivity.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$ActivitySubscription$ToggleActivitySubscription$$ListActivity;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Mutation$ActivitySubscription$ToggleActivitySubscription$$ListActivity<
        TRes>
    implements
        CopyWith$Mutation$ActivitySubscription$ToggleActivitySubscription$$ListActivity<
            TRes> {
  _CopyWithImpl$Mutation$ActivitySubscription$ToggleActivitySubscription$$ListActivity(
    this._instance,
    this._then,
  );

  final Mutation$ActivitySubscription$ToggleActivitySubscription$$ListActivity
      _instance;

  final TRes Function(
          Mutation$ActivitySubscription$ToggleActivitySubscription$$ListActivity)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) => _then(
      Mutation$ActivitySubscription$ToggleActivitySubscription$$ListActivity(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Mutation$ActivitySubscription$ToggleActivitySubscription$$ListActivity<
        TRes>
    implements
        CopyWith$Mutation$ActivitySubscription$ToggleActivitySubscription$$ListActivity<
            TRes> {
  _CopyWithStubImpl$Mutation$ActivitySubscription$ToggleActivitySubscription$$ListActivity(
      this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Mutation$ActivitySubscription$ToggleActivitySubscription$$MessageActivity
    implements Mutation$ActivitySubscription$ToggleActivitySubscription {
  Mutation$ActivitySubscription$ToggleActivitySubscription$$MessageActivity(
      {this.$__typename = 'MessageActivity'});

  factory Mutation$ActivitySubscription$ToggleActivitySubscription$$MessageActivity.fromJson(
      Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    return Mutation$ActivitySubscription$ToggleActivitySubscription$$MessageActivity(
        $__typename: (l$$__typename as String));
  }

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    return Object.hashAll([l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Mutation$ActivitySubscription$ToggleActivitySubscription$$MessageActivity) ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Mutation$ActivitySubscription$ToggleActivitySubscription$$MessageActivity
    on Mutation$ActivitySubscription$ToggleActivitySubscription$$MessageActivity {
  CopyWith$Mutation$ActivitySubscription$ToggleActivitySubscription$$MessageActivity<
          Mutation$ActivitySubscription$ToggleActivitySubscription$$MessageActivity>
      get copyWith =>
          CopyWith$Mutation$ActivitySubscription$ToggleActivitySubscription$$MessageActivity(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$ActivitySubscription$ToggleActivitySubscription$$MessageActivity<
    TRes> {
  factory CopyWith$Mutation$ActivitySubscription$ToggleActivitySubscription$$MessageActivity(
    Mutation$ActivitySubscription$ToggleActivitySubscription$$MessageActivity
        instance,
    TRes Function(
            Mutation$ActivitySubscription$ToggleActivitySubscription$$MessageActivity)
        then,
  ) = _CopyWithImpl$Mutation$ActivitySubscription$ToggleActivitySubscription$$MessageActivity;

  factory CopyWith$Mutation$ActivitySubscription$ToggleActivitySubscription$$MessageActivity.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$ActivitySubscription$ToggleActivitySubscription$$MessageActivity;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Mutation$ActivitySubscription$ToggleActivitySubscription$$MessageActivity<
        TRes>
    implements
        CopyWith$Mutation$ActivitySubscription$ToggleActivitySubscription$$MessageActivity<
            TRes> {
  _CopyWithImpl$Mutation$ActivitySubscription$ToggleActivitySubscription$$MessageActivity(
    this._instance,
    this._then,
  );

  final Mutation$ActivitySubscription$ToggleActivitySubscription$$MessageActivity
      _instance;

  final TRes Function(
          Mutation$ActivitySubscription$ToggleActivitySubscription$$MessageActivity)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) => _then(
      Mutation$ActivitySubscription$ToggleActivitySubscription$$MessageActivity(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Mutation$ActivitySubscription$ToggleActivitySubscription$$MessageActivity<
        TRes>
    implements
        CopyWith$Mutation$ActivitySubscription$ToggleActivitySubscription$$MessageActivity<
            TRes> {
  _CopyWithStubImpl$Mutation$ActivitySubscription$ToggleActivitySubscription$$MessageActivity(
      this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Mutation$ActivitySubscription$ToggleActivitySubscription$$TextActivity
    implements Mutation$ActivitySubscription$ToggleActivitySubscription {
  Mutation$ActivitySubscription$ToggleActivitySubscription$$TextActivity(
      {this.$__typename = 'TextActivity'});

  factory Mutation$ActivitySubscription$ToggleActivitySubscription$$TextActivity.fromJson(
      Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    return Mutation$ActivitySubscription$ToggleActivitySubscription$$TextActivity(
        $__typename: (l$$__typename as String));
  }

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    return Object.hashAll([l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Mutation$ActivitySubscription$ToggleActivitySubscription$$TextActivity) ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Mutation$ActivitySubscription$ToggleActivitySubscription$$TextActivity
    on Mutation$ActivitySubscription$ToggleActivitySubscription$$TextActivity {
  CopyWith$Mutation$ActivitySubscription$ToggleActivitySubscription$$TextActivity<
          Mutation$ActivitySubscription$ToggleActivitySubscription$$TextActivity>
      get copyWith =>
          CopyWith$Mutation$ActivitySubscription$ToggleActivitySubscription$$TextActivity(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$ActivitySubscription$ToggleActivitySubscription$$TextActivity<
    TRes> {
  factory CopyWith$Mutation$ActivitySubscription$ToggleActivitySubscription$$TextActivity(
    Mutation$ActivitySubscription$ToggleActivitySubscription$$TextActivity
        instance,
    TRes Function(
            Mutation$ActivitySubscription$ToggleActivitySubscription$$TextActivity)
        then,
  ) = _CopyWithImpl$Mutation$ActivitySubscription$ToggleActivitySubscription$$TextActivity;

  factory CopyWith$Mutation$ActivitySubscription$ToggleActivitySubscription$$TextActivity.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$ActivitySubscription$ToggleActivitySubscription$$TextActivity;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Mutation$ActivitySubscription$ToggleActivitySubscription$$TextActivity<
        TRes>
    implements
        CopyWith$Mutation$ActivitySubscription$ToggleActivitySubscription$$TextActivity<
            TRes> {
  _CopyWithImpl$Mutation$ActivitySubscription$ToggleActivitySubscription$$TextActivity(
    this._instance,
    this._then,
  );

  final Mutation$ActivitySubscription$ToggleActivitySubscription$$TextActivity
      _instance;

  final TRes Function(
          Mutation$ActivitySubscription$ToggleActivitySubscription$$TextActivity)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) => _then(
      Mutation$ActivitySubscription$ToggleActivitySubscription$$TextActivity(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Mutation$ActivitySubscription$ToggleActivitySubscription$$TextActivity<
        TRes>
    implements
        CopyWith$Mutation$ActivitySubscription$ToggleActivitySubscription$$TextActivity<
            TRes> {
  _CopyWithStubImpl$Mutation$ActivitySubscription$ToggleActivitySubscription$$TextActivity(
      this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}
