// GENERATED FILE
// DO NOT MODIFY
// ignore_for_file: type=lint
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Mutation$ToggleActivityLike {
  factory Variables$Mutation$ToggleActivityLike({int? id}) =>
      Variables$Mutation$ToggleActivityLike._({
        if (id != null) r'id': id,
      });

  Variables$Mutation$ToggleActivityLike._(this._$data);

  factory Variables$Mutation$ToggleActivityLike.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as int?);
    }
    return Variables$Mutation$ToggleActivityLike._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get id => (_$data['id'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    return result$data;
  }

  CopyWith$Variables$Mutation$ToggleActivityLike<
      Variables$Mutation$ToggleActivityLike>
  get copyWith =>
      CopyWith$Variables$Mutation$ToggleActivityLike(
        this,
            (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$ToggleActivityLike) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    return Object.hashAll([_$data.containsKey('id') ? l$id : const {}]);
  }
}

abstract class CopyWith$Variables$Mutation$ToggleActivityLike<TRes> {
  factory CopyWith$Variables$Mutation$ToggleActivityLike(
      Variables$Mutation$ToggleActivityLike instance,
      TRes Function(Variables$Mutation$ToggleActivityLike) then,) = _CopyWithImpl$Variables$Mutation$ToggleActivityLike;

  factory CopyWith$Variables$Mutation$ToggleActivityLike.stub(TRes res) =
  _CopyWithStubImpl$Variables$Mutation$ToggleActivityLike;

  TRes call({int? id});
}

class _CopyWithImpl$Variables$Mutation$ToggleActivityLike<TRes>
    implements CopyWith$Variables$Mutation$ToggleActivityLike<TRes> {
  _CopyWithImpl$Variables$Mutation$ToggleActivityLike(this._instance,
      this._then,);

  final Variables$Mutation$ToggleActivityLike _instance;

  final TRes Function(Variables$Mutation$ToggleActivityLike) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) =>
      _then(Variables$Mutation$ToggleActivityLike._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as int?),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$ToggleActivityLike<TRes>
    implements CopyWith$Variables$Mutation$ToggleActivityLike<TRes> {
  _CopyWithStubImpl$Variables$Mutation$ToggleActivityLike(this._res);

  TRes _res;

  call({int? id}) => _res;
}

class Mutation$ToggleActivityLike {
  Mutation$ToggleActivityLike({
    this.ToggleLikeV2,
    this.$__typename = 'Mutation',
  });

  factory Mutation$ToggleActivityLike.fromJson(Map<String, dynamic> json) {
    final l$ToggleLikeV2 = json['ToggleLikeV2'];
    final l$$__typename = json['__typename'];
    return Mutation$ToggleActivityLike(
      ToggleLikeV2: l$ToggleLikeV2 == null
          ? null
          : Mutation$ToggleActivityLike$ToggleLikeV2.fromJson(
          (l$ToggleLikeV2 as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$ToggleActivityLike$ToggleLikeV2? ToggleLikeV2;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$ToggleLikeV2 = ToggleLikeV2;
    _resultData['ToggleLikeV2'] = l$ToggleLikeV2?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$ToggleLikeV2 = ToggleLikeV2;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$ToggleLikeV2,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$ToggleActivityLike) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$ToggleLikeV2 = ToggleLikeV2;
    final lOther$ToggleLikeV2 = other.ToggleLikeV2;
    if (l$ToggleLikeV2 != lOther$ToggleLikeV2) {
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

extension UtilityExtension$Mutation$ToggleActivityLike
on Mutation$ToggleActivityLike {
  CopyWith$Mutation$ToggleActivityLike<Mutation$ToggleActivityLike>
  get copyWith =>
      CopyWith$Mutation$ToggleActivityLike(
        this,
            (i) => i,
      );
}

abstract class CopyWith$Mutation$ToggleActivityLike<TRes> {
  factory CopyWith$Mutation$ToggleActivityLike(
      Mutation$ToggleActivityLike instance,
      TRes Function(Mutation$ToggleActivityLike) then,) = _CopyWithImpl$Mutation$ToggleActivityLike;

  factory CopyWith$Mutation$ToggleActivityLike.stub(TRes res) =
  _CopyWithStubImpl$Mutation$ToggleActivityLike;

  TRes call({
    Mutation$ToggleActivityLike$ToggleLikeV2? ToggleLikeV2,
    String? $__typename,
  });

  CopyWith$Mutation$ToggleActivityLike$ToggleLikeV2<TRes> get ToggleLikeV2;
}

class _CopyWithImpl$Mutation$ToggleActivityLike<TRes>
    implements CopyWith$Mutation$ToggleActivityLike<TRes> {
  _CopyWithImpl$Mutation$ToggleActivityLike(this._instance,
      this._then,);

  final Mutation$ToggleActivityLike _instance;

  final TRes Function(Mutation$ToggleActivityLike) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? ToggleLikeV2 = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$ToggleActivityLike(
        ToggleLikeV2: ToggleLikeV2 == _undefined
            ? _instance.ToggleLikeV2
            : (ToggleLikeV2 as Mutation$ToggleActivityLike$ToggleLikeV2?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$ToggleActivityLike$ToggleLikeV2<TRes> get ToggleLikeV2 {
    final local$ToggleLikeV2 = _instance.ToggleLikeV2;
    return local$ToggleLikeV2 == null
        ? CopyWith$Mutation$ToggleActivityLike$ToggleLikeV2.stub(
        _then(_instance))
        : CopyWith$Mutation$ToggleActivityLike$ToggleLikeV2(
        local$ToggleLikeV2, (e) => call(ToggleLikeV2: e));
  }
}

class _CopyWithStubImpl$Mutation$ToggleActivityLike<TRes>
    implements CopyWith$Mutation$ToggleActivityLike<TRes> {
  _CopyWithStubImpl$Mutation$ToggleActivityLike(this._res);

  TRes _res;

  call({
    Mutation$ToggleActivityLike$ToggleLikeV2? ToggleLikeV2,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$ToggleActivityLike$ToggleLikeV2<TRes> get ToggleLikeV2 =>
      CopyWith$Mutation$ToggleActivityLike$ToggleLikeV2.stub(_res);
}

const documentNodeMutationToggleActivityLike = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'ToggleActivityLike'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'id')),
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
        name: NameNode(value: 'ToggleLikeV2'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'id')),
          ),
          ArgumentNode(
            name: NameNode(value: 'type'),
            value: EnumValueNode(name: NameNode(value: 'ACTIVITY')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          InlineFragmentNode(
            typeCondition: TypeConditionNode(
                on: NamedTypeNode(
                  name: NameNode(value: 'ListActivity'),
                  isNonNull: false,
                )),
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'isLiked'),
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
          InlineFragmentNode(
            typeCondition: TypeConditionNode(
                on: NamedTypeNode(
                  name: NameNode(value: 'MessageActivity'),
                  isNonNull: false,
                )),
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'isLiked'),
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
          InlineFragmentNode(
            typeCondition: TypeConditionNode(
                on: NamedTypeNode(
                  name: NameNode(value: 'TextActivity'),
                  isNonNull: false,
                )),
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'isLiked'),
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
]);

Mutation$ToggleActivityLike _parserFn$Mutation$ToggleActivityLike(
    Map<String, dynamic> data) =>
    Mutation$ToggleActivityLike.fromJson(data);

typedef OnMutationCompleted$Mutation$ToggleActivityLike = FutureOr<void>
Function(
    Map<String, dynamic>?,
    Mutation$ToggleActivityLike?,
    );

class Options$Mutation$ToggleActivityLike
    extends graphql.MutationOptions<Mutation$ToggleActivityLike> {
  Options$Mutation$ToggleActivityLike({
    String? operationName,
    Variables$Mutation$ToggleActivityLike? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$ToggleActivityLike? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$ToggleActivityLike? onCompleted,
    graphql.OnMutationUpdate<Mutation$ToggleActivityLike>? update,
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
              data == null
                  ? null
                  : _parserFn$Mutation$ToggleActivityLike(data),
            ),
        update: update,
        onError: onError,
        document: documentNodeMutationToggleActivityLike,
        parserFn: _parserFn$Mutation$ToggleActivityLike,
      );

  final OnMutationCompleted$Mutation$ToggleActivityLike? onCompletedWithParsed;

  @override
  List<Object?> get properties =>
      [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$ToggleActivityLike
    extends graphql.WatchQueryOptions<Mutation$ToggleActivityLike> {
  WatchOptions$Mutation$ToggleActivityLike({
    String? operationName,
    Variables$Mutation$ToggleActivityLike? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$ToggleActivityLike? typedOptimisticResult,
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
    document: documentNodeMutationToggleActivityLike,
    pollInterval: pollInterval,
    eagerlyFetchResults: eagerlyFetchResults,
    carryForwardDataOnException: carryForwardDataOnException,
    fetchResults: fetchResults,
    parserFn: _parserFn$Mutation$ToggleActivityLike,
  );
}

extension ClientExtension$Mutation$ToggleActivityLike on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$ToggleActivityLike>>
  mutate$ToggleActivityLike(
      [Options$Mutation$ToggleActivityLike? options]) async =>
      await this.mutate(options ?? Options$Mutation$ToggleActivityLike());

  graphql.ObservableQuery<
      Mutation$ToggleActivityLike> watchMutation$ToggleActivityLike(
      [WatchOptions$Mutation$ToggleActivityLike? options]) =>
      this.watchMutation(options ?? WatchOptions$Mutation$ToggleActivityLike());
}

class Mutation$ToggleActivityLike$HookResult {
  Mutation$ToggleActivityLike$HookResult(this.runMutation,
      this.result,);

  final RunMutation$Mutation$ToggleActivityLike runMutation;

  final graphql.QueryResult<Mutation$ToggleActivityLike> result;
}

Mutation$ToggleActivityLike$HookResult useMutation$ToggleActivityLike(
    [WidgetOptions$Mutation$ToggleActivityLike? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$ToggleActivityLike());
  return Mutation$ToggleActivityLike$HookResult(
        ({variables, optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
          variables?.toJson() ?? const {},
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
        ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$ToggleActivityLike>
useWatchMutation$ToggleActivityLike(
    [WatchOptions$Mutation$ToggleActivityLike? options]) =>
    graphql_flutter.useWatchMutation(
        options ?? WatchOptions$Mutation$ToggleActivityLike());

class WidgetOptions$Mutation$ToggleActivityLike
    extends graphql.MutationOptions<Mutation$ToggleActivityLike> {
  WidgetOptions$Mutation$ToggleActivityLike({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$ToggleActivityLike? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$ToggleActivityLike? onCompleted,
    graphql.OnMutationUpdate<Mutation$ToggleActivityLike>? update,
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
              data == null
                  ? null
                  : _parserFn$Mutation$ToggleActivityLike(data),
            ),
        update: update,
        onError: onError,
        document: documentNodeMutationToggleActivityLike,
        parserFn: _parserFn$Mutation$ToggleActivityLike,
      );

  final OnMutationCompleted$Mutation$ToggleActivityLike? onCompletedWithParsed;

  @override
  List<Object?> get properties =>
      [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$ToggleActivityLike
= graphql.MultiSourceResult<Mutation$ToggleActivityLike> Function({
Variables$Mutation$ToggleActivityLike? variables,
Object? optimisticResult,
Mutation$ToggleActivityLike? typedOptimisticResult,
});
typedef Builder$Mutation$ToggleActivityLike = widgets.Widget Function(
    RunMutation$Mutation$ToggleActivityLike,
    graphql.QueryResult<Mutation$ToggleActivityLike>?,
    );

class Mutation$ToggleActivityLike$Widget
    extends graphql_flutter.Mutation<Mutation$ToggleActivityLike> {
  Mutation$ToggleActivityLike$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$ToggleActivityLike? options,
    required Builder$Mutation$ToggleActivityLike builder,
  }) : super(
    key: key,
    options: options ?? WidgetOptions$Mutation$ToggleActivityLike(),
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

class Mutation$ToggleActivityLike$ToggleLikeV2 {
  Mutation$ToggleActivityLike$ToggleLikeV2({required this.$__typename});

  factory Mutation$ToggleActivityLike$ToggleLikeV2.fromJson(
      Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "ListActivity":
        return Mutation$ToggleActivityLike$ToggleLikeV2$$ListActivity.fromJson(
            json);

      case "MessageActivity":
        return Mutation$ToggleActivityLike$ToggleLikeV2$$MessageActivity
            .fromJson(json);

      case "TextActivity":
        return Mutation$ToggleActivityLike$ToggleLikeV2$$TextActivity.fromJson(
            json);

      case "ActivityReply":
        return Mutation$ToggleActivityLike$ToggleLikeV2$$ActivityReply.fromJson(
            json);

      case "Thread":
        return Mutation$ToggleActivityLike$ToggleLikeV2$$Thread.fromJson(json);

      case "ThreadComment":
        return Mutation$ToggleActivityLike$ToggleLikeV2$$ThreadComment.fromJson(
            json);

      default:
        final l$$__typename = json['__typename'];
        return Mutation$ToggleActivityLike$ToggleLikeV2(
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
    if (!(other is Mutation$ToggleActivityLike$ToggleLikeV2) ||
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

extension UtilityExtension$Mutation$ToggleActivityLike$ToggleLikeV2
on Mutation$ToggleActivityLike$ToggleLikeV2 {
  CopyWith$Mutation$ToggleActivityLike$ToggleLikeV2<
      Mutation$ToggleActivityLike$ToggleLikeV2>
  get copyWith =>
      CopyWith$Mutation$ToggleActivityLike$ToggleLikeV2(
        this,
            (i) => i,
      );

  _T when<_T>({
    required _T Function(Mutation$ToggleActivityLike$ToggleLikeV2$$ListActivity)
    listActivity,
    required _T Function(
        Mutation$ToggleActivityLike$ToggleLikeV2$$MessageActivity)
    messageActivity,
    required _T Function(Mutation$ToggleActivityLike$ToggleLikeV2$$TextActivity)
    textActivity,
    required _T Function(
        Mutation$ToggleActivityLike$ToggleLikeV2$$ActivityReply)
    activityReply,
    required _T Function(Mutation$ToggleActivityLike$ToggleLikeV2$$Thread)
    thread,
    required _T Function(
        Mutation$ToggleActivityLike$ToggleLikeV2$$ThreadComment)
    threadComment,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "ListActivity":
        return listActivity(
            this as Mutation$ToggleActivityLike$ToggleLikeV2$$ListActivity);

      case "MessageActivity":
        return messageActivity(
            this as Mutation$ToggleActivityLike$ToggleLikeV2$$MessageActivity);

      case "TextActivity":
        return textActivity(
            this as Mutation$ToggleActivityLike$ToggleLikeV2$$TextActivity);

      case "ActivityReply":
        return activityReply(
            this as Mutation$ToggleActivityLike$ToggleLikeV2$$ActivityReply);

      case "Thread":
        return thread(this as Mutation$ToggleActivityLike$ToggleLikeV2$$Thread);

      case "ThreadComment":
        return threadComment(
            this as Mutation$ToggleActivityLike$ToggleLikeV2$$ThreadComment);

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(Mutation$ToggleActivityLike$ToggleLikeV2$$ListActivity)?
    listActivity,
    _T Function(Mutation$ToggleActivityLike$ToggleLikeV2$$MessageActivity)?
    messageActivity,
    _T Function(Mutation$ToggleActivityLike$ToggleLikeV2$$TextActivity)?
    textActivity,
    _T Function(Mutation$ToggleActivityLike$ToggleLikeV2$$ActivityReply)?
    activityReply,
    _T Function(Mutation$ToggleActivityLike$ToggleLikeV2$$Thread)? thread,
    _T Function(Mutation$ToggleActivityLike$ToggleLikeV2$$ThreadComment)?
    threadComment,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "ListActivity":
        if (listActivity != null) {
          return listActivity(
              this as Mutation$ToggleActivityLike$ToggleLikeV2$$ListActivity);
        } else {
          return orElse();
        }

      case "MessageActivity":
        if (messageActivity != null) {
          return messageActivity(this
          as Mutation$ToggleActivityLike$ToggleLikeV2$$MessageActivity);
        } else {
          return orElse();
        }

      case "TextActivity":
        if (textActivity != null) {
          return textActivity(
              this as Mutation$ToggleActivityLike$ToggleLikeV2$$TextActivity);
        } else {
          return orElse();
        }

      case "ActivityReply":
        if (activityReply != null) {
          return activityReply(
              this as Mutation$ToggleActivityLike$ToggleLikeV2$$ActivityReply);
        } else {
          return orElse();
        }

      case "Thread":
        if (thread != null) {
          return thread(
              this as Mutation$ToggleActivityLike$ToggleLikeV2$$Thread);
        } else {
          return orElse();
        }

      case "ThreadComment":
        if (threadComment != null) {
          return threadComment(
              this as Mutation$ToggleActivityLike$ToggleLikeV2$$ThreadComment);
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWith$Mutation$ToggleActivityLike$ToggleLikeV2<TRes> {
  factory CopyWith$Mutation$ToggleActivityLike$ToggleLikeV2(
      Mutation$ToggleActivityLike$ToggleLikeV2 instance,
      TRes Function(Mutation$ToggleActivityLike$ToggleLikeV2) then,) = _CopyWithImpl$Mutation$ToggleActivityLike$ToggleLikeV2;

  factory CopyWith$Mutation$ToggleActivityLike$ToggleLikeV2.stub(TRes res) =
  _CopyWithStubImpl$Mutation$ToggleActivityLike$ToggleLikeV2;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Mutation$ToggleActivityLike$ToggleLikeV2<TRes>
    implements CopyWith$Mutation$ToggleActivityLike$ToggleLikeV2<TRes> {
  _CopyWithImpl$Mutation$ToggleActivityLike$ToggleLikeV2(this._instance,
      this._then,);

  final Mutation$ToggleActivityLike$ToggleLikeV2 _instance;

  final TRes Function(Mutation$ToggleActivityLike$ToggleLikeV2) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) =>
      _then(Mutation$ToggleActivityLike$ToggleLikeV2(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Mutation$ToggleActivityLike$ToggleLikeV2<TRes>
    implements CopyWith$Mutation$ToggleActivityLike$ToggleLikeV2<TRes> {
  _CopyWithStubImpl$Mutation$ToggleActivityLike$ToggleLikeV2(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Mutation$ToggleActivityLike$ToggleLikeV2$$ListActivity
    implements Mutation$ToggleActivityLike$ToggleLikeV2 {
  Mutation$ToggleActivityLike$ToggleLikeV2$$ListActivity({
    this.isLiked,
    this.$__typename = 'ListActivity',
  });

  factory Mutation$ToggleActivityLike$ToggleLikeV2$$ListActivity.fromJson(
      Map<String, dynamic> json) {
    final l$isLiked = json['isLiked'];
    final l$$__typename = json['__typename'];
    return Mutation$ToggleActivityLike$ToggleLikeV2$$ListActivity(
      isLiked: (l$isLiked as bool?),
      $__typename: (l$$__typename as String),
    );
  }

  final bool? isLiked;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$isLiked = isLiked;
    _resultData['isLiked'] = l$isLiked;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$isLiked = isLiked;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$isLiked,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$ToggleActivityLike$ToggleLikeV2$$ListActivity) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$isLiked = isLiked;
    final lOther$isLiked = other.isLiked;
    if (l$isLiked != lOther$isLiked) {
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

extension UtilityExtension$Mutation$ToggleActivityLike$ToggleLikeV2$$ListActivity
on Mutation$ToggleActivityLike$ToggleLikeV2$$ListActivity {
  CopyWith$Mutation$ToggleActivityLike$ToggleLikeV2$$ListActivity<
      Mutation$ToggleActivityLike$ToggleLikeV2$$ListActivity>
  get copyWith =>
      CopyWith$Mutation$ToggleActivityLike$ToggleLikeV2$$ListActivity(
        this,
            (i) => i,
      );
}

abstract class CopyWith$Mutation$ToggleActivityLike$ToggleLikeV2$$ListActivity<
TRes> {
  factory CopyWith$Mutation$ToggleActivityLike$ToggleLikeV2$$ListActivity(
      Mutation$ToggleActivityLike$ToggleLikeV2$$ListActivity instance,
      TRes Function(Mutation$ToggleActivityLike$ToggleLikeV2$$ListActivity) then,) = _CopyWithImpl$Mutation$ToggleActivityLike$ToggleLikeV2$$ListActivity;

  factory CopyWith$Mutation$ToggleActivityLike$ToggleLikeV2$$ListActivity.stub(
      TRes res) =
  _CopyWithStubImpl$Mutation$ToggleActivityLike$ToggleLikeV2$$ListActivity;

  TRes call({
    bool? isLiked,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$ToggleActivityLike$ToggleLikeV2$$ListActivity<TRes>
    implements
        CopyWith$Mutation$ToggleActivityLike$ToggleLikeV2$$ListActivity<TRes> {
  _CopyWithImpl$Mutation$ToggleActivityLike$ToggleLikeV2$$ListActivity(
      this._instance,
      this._then,);

  final Mutation$ToggleActivityLike$ToggleLikeV2$$ListActivity _instance;

  final TRes Function(Mutation$ToggleActivityLike$ToggleLikeV2$$ListActivity)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? isLiked = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$ToggleActivityLike$ToggleLikeV2$$ListActivity(
        isLiked: isLiked == _undefined ? _instance.isLiked : (isLiked as bool?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$ToggleActivityLike$ToggleLikeV2$$ListActivity<
TRes>
    implements
        CopyWith$Mutation$ToggleActivityLike$ToggleLikeV2$$ListActivity<TRes> {
  _CopyWithStubImpl$Mutation$ToggleActivityLike$ToggleLikeV2$$ListActivity(
      this._res);

  TRes _res;

  call({
    bool? isLiked,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$ToggleActivityLike$ToggleLikeV2$$MessageActivity
    implements Mutation$ToggleActivityLike$ToggleLikeV2 {
  Mutation$ToggleActivityLike$ToggleLikeV2$$MessageActivity({
    this.isLiked,
    this.$__typename = 'MessageActivity',
  });

  factory Mutation$ToggleActivityLike$ToggleLikeV2$$MessageActivity.fromJson(
      Map<String, dynamic> json) {
    final l$isLiked = json['isLiked'];
    final l$$__typename = json['__typename'];
    return Mutation$ToggleActivityLike$ToggleLikeV2$$MessageActivity(
      isLiked: (l$isLiked as bool?),
      $__typename: (l$$__typename as String),
    );
  }

  final bool? isLiked;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$isLiked = isLiked;
    _resultData['isLiked'] = l$isLiked;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$isLiked = isLiked;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$isLiked,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$ToggleActivityLike$ToggleLikeV2$$MessageActivity) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$isLiked = isLiked;
    final lOther$isLiked = other.isLiked;
    if (l$isLiked != lOther$isLiked) {
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

extension UtilityExtension$Mutation$ToggleActivityLike$ToggleLikeV2$$MessageActivity
on Mutation$ToggleActivityLike$ToggleLikeV2$$MessageActivity {
  CopyWith$Mutation$ToggleActivityLike$ToggleLikeV2$$MessageActivity<
      Mutation$ToggleActivityLike$ToggleLikeV2$$MessageActivity>
  get copyWith =>
      CopyWith$Mutation$ToggleActivityLike$ToggleLikeV2$$MessageActivity(
        this,
            (i) => i,
      );
}

abstract class CopyWith$Mutation$ToggleActivityLike$ToggleLikeV2$$MessageActivity<
TRes> {
  factory CopyWith$Mutation$ToggleActivityLike$ToggleLikeV2$$MessageActivity(
      Mutation$ToggleActivityLike$ToggleLikeV2$$MessageActivity instance,
      TRes Function(Mutation$ToggleActivityLike$ToggleLikeV2$$MessageActivity)
      then,) = _CopyWithImpl$Mutation$ToggleActivityLike$ToggleLikeV2$$MessageActivity;

  factory CopyWith$Mutation$ToggleActivityLike$ToggleLikeV2$$MessageActivity.stub(
      TRes res) =
  _CopyWithStubImpl$Mutation$ToggleActivityLike$ToggleLikeV2$$MessageActivity;

  TRes call({
    bool? isLiked,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$ToggleActivityLike$ToggleLikeV2$$MessageActivity<
TRes>
    implements
        CopyWith$Mutation$ToggleActivityLike$ToggleLikeV2$$MessageActivity<
            TRes> {
  _CopyWithImpl$Mutation$ToggleActivityLike$ToggleLikeV2$$MessageActivity(
      this._instance,
      this._then,);

  final Mutation$ToggleActivityLike$ToggleLikeV2$$MessageActivity _instance;

  final TRes Function(Mutation$ToggleActivityLike$ToggleLikeV2$$MessageActivity)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? isLiked = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$ToggleActivityLike$ToggleLikeV2$$MessageActivity(
        isLiked: isLiked == _undefined ? _instance.isLiked : (isLiked as bool?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$ToggleActivityLike$ToggleLikeV2$$MessageActivity<
TRes>
    implements
        CopyWith$Mutation$ToggleActivityLike$ToggleLikeV2$$MessageActivity<
            TRes> {
  _CopyWithStubImpl$Mutation$ToggleActivityLike$ToggleLikeV2$$MessageActivity(
      this._res);

  TRes _res;

  call({
    bool? isLiked,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$ToggleActivityLike$ToggleLikeV2$$TextActivity
    implements Mutation$ToggleActivityLike$ToggleLikeV2 {
  Mutation$ToggleActivityLike$ToggleLikeV2$$TextActivity({
    this.isLiked,
    this.$__typename = 'TextActivity',
  });

  factory Mutation$ToggleActivityLike$ToggleLikeV2$$TextActivity.fromJson(
      Map<String, dynamic> json) {
    final l$isLiked = json['isLiked'];
    final l$$__typename = json['__typename'];
    return Mutation$ToggleActivityLike$ToggleLikeV2$$TextActivity(
      isLiked: (l$isLiked as bool?),
      $__typename: (l$$__typename as String),
    );
  }

  final bool? isLiked;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$isLiked = isLiked;
    _resultData['isLiked'] = l$isLiked;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$isLiked = isLiked;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$isLiked,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$ToggleActivityLike$ToggleLikeV2$$TextActivity) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$isLiked = isLiked;
    final lOther$isLiked = other.isLiked;
    if (l$isLiked != lOther$isLiked) {
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

extension UtilityExtension$Mutation$ToggleActivityLike$ToggleLikeV2$$TextActivity
on Mutation$ToggleActivityLike$ToggleLikeV2$$TextActivity {
  CopyWith$Mutation$ToggleActivityLike$ToggleLikeV2$$TextActivity<
      Mutation$ToggleActivityLike$ToggleLikeV2$$TextActivity>
  get copyWith =>
      CopyWith$Mutation$ToggleActivityLike$ToggleLikeV2$$TextActivity(
        this,
            (i) => i,
      );
}

abstract class CopyWith$Mutation$ToggleActivityLike$ToggleLikeV2$$TextActivity<
TRes> {
  factory CopyWith$Mutation$ToggleActivityLike$ToggleLikeV2$$TextActivity(
      Mutation$ToggleActivityLike$ToggleLikeV2$$TextActivity instance,
      TRes Function(Mutation$ToggleActivityLike$ToggleLikeV2$$TextActivity) then,) = _CopyWithImpl$Mutation$ToggleActivityLike$ToggleLikeV2$$TextActivity;

  factory CopyWith$Mutation$ToggleActivityLike$ToggleLikeV2$$TextActivity.stub(
      TRes res) =
  _CopyWithStubImpl$Mutation$ToggleActivityLike$ToggleLikeV2$$TextActivity;

  TRes call({
    bool? isLiked,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$ToggleActivityLike$ToggleLikeV2$$TextActivity<TRes>
    implements
        CopyWith$Mutation$ToggleActivityLike$ToggleLikeV2$$TextActivity<TRes> {
  _CopyWithImpl$Mutation$ToggleActivityLike$ToggleLikeV2$$TextActivity(
      this._instance,
      this._then,);

  final Mutation$ToggleActivityLike$ToggleLikeV2$$TextActivity _instance;

  final TRes Function(Mutation$ToggleActivityLike$ToggleLikeV2$$TextActivity)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? isLiked = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$ToggleActivityLike$ToggleLikeV2$$TextActivity(
        isLiked: isLiked == _undefined ? _instance.isLiked : (isLiked as bool?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$ToggleActivityLike$ToggleLikeV2$$TextActivity<
TRes>
    implements
        CopyWith$Mutation$ToggleActivityLike$ToggleLikeV2$$TextActivity<TRes> {
  _CopyWithStubImpl$Mutation$ToggleActivityLike$ToggleLikeV2$$TextActivity(
      this._res);

  TRes _res;

  call({
    bool? isLiked,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$ToggleActivityLike$ToggleLikeV2$$ActivityReply
    implements Mutation$ToggleActivityLike$ToggleLikeV2 {
  Mutation$ToggleActivityLike$ToggleLikeV2$$ActivityReply(
      {this.$__typename = 'ActivityReply'});

  factory Mutation$ToggleActivityLike$ToggleLikeV2$$ActivityReply.fromJson(
      Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    return Mutation$ToggleActivityLike$ToggleLikeV2$$ActivityReply(
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
    if (!(other is Mutation$ToggleActivityLike$ToggleLikeV2$$ActivityReply) ||
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

extension UtilityExtension$Mutation$ToggleActivityLike$ToggleLikeV2$$ActivityReply
on Mutation$ToggleActivityLike$ToggleLikeV2$$ActivityReply {
  CopyWith$Mutation$ToggleActivityLike$ToggleLikeV2$$ActivityReply<
      Mutation$ToggleActivityLike$ToggleLikeV2$$ActivityReply>
  get copyWith =>
      CopyWith$Mutation$ToggleActivityLike$ToggleLikeV2$$ActivityReply(
        this,
            (i) => i,
      );
}

abstract class CopyWith$Mutation$ToggleActivityLike$ToggleLikeV2$$ActivityReply<
TRes> {
  factory CopyWith$Mutation$ToggleActivityLike$ToggleLikeV2$$ActivityReply(
      Mutation$ToggleActivityLike$ToggleLikeV2$$ActivityReply instance,
      TRes Function(Mutation$ToggleActivityLike$ToggleLikeV2$$ActivityReply) then,) = _CopyWithImpl$Mutation$ToggleActivityLike$ToggleLikeV2$$ActivityReply;

  factory CopyWith$Mutation$ToggleActivityLike$ToggleLikeV2$$ActivityReply.stub(
      TRes res) =
  _CopyWithStubImpl$Mutation$ToggleActivityLike$ToggleLikeV2$$ActivityReply;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Mutation$ToggleActivityLike$ToggleLikeV2$$ActivityReply<
TRes>
    implements
        CopyWith$Mutation$ToggleActivityLike$ToggleLikeV2$$ActivityReply<TRes> {
  _CopyWithImpl$Mutation$ToggleActivityLike$ToggleLikeV2$$ActivityReply(
      this._instance,
      this._then,);

  final Mutation$ToggleActivityLike$ToggleLikeV2$$ActivityReply _instance;

  final TRes Function(Mutation$ToggleActivityLike$ToggleLikeV2$$ActivityReply)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) =>
      _then(Mutation$ToggleActivityLike$ToggleLikeV2$$ActivityReply(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Mutation$ToggleActivityLike$ToggleLikeV2$$ActivityReply<
TRes>
    implements
        CopyWith$Mutation$ToggleActivityLike$ToggleLikeV2$$ActivityReply<TRes> {
  _CopyWithStubImpl$Mutation$ToggleActivityLike$ToggleLikeV2$$ActivityReply(
      this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Mutation$ToggleActivityLike$ToggleLikeV2$$Thread
    implements Mutation$ToggleActivityLike$ToggleLikeV2 {
  Mutation$ToggleActivityLike$ToggleLikeV2$$Thread(
      {this.$__typename = 'Thread'});

  factory Mutation$ToggleActivityLike$ToggleLikeV2$$Thread.fromJson(
      Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    return Mutation$ToggleActivityLike$ToggleLikeV2$$Thread(
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
    if (!(other is Mutation$ToggleActivityLike$ToggleLikeV2$$Thread) ||
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

extension UtilityExtension$Mutation$ToggleActivityLike$ToggleLikeV2$$Thread
on Mutation$ToggleActivityLike$ToggleLikeV2$$Thread {
  CopyWith$Mutation$ToggleActivityLike$ToggleLikeV2$$Thread<
      Mutation$ToggleActivityLike$ToggleLikeV2$$Thread>
  get copyWith =>
      CopyWith$Mutation$ToggleActivityLike$ToggleLikeV2$$Thread(
        this,
            (i) => i,
      );
}

abstract class CopyWith$Mutation$ToggleActivityLike$ToggleLikeV2$$Thread<TRes> {
  factory CopyWith$Mutation$ToggleActivityLike$ToggleLikeV2$$Thread(
      Mutation$ToggleActivityLike$ToggleLikeV2$$Thread instance,
      TRes Function(Mutation$ToggleActivityLike$ToggleLikeV2$$Thread) then,) = _CopyWithImpl$Mutation$ToggleActivityLike$ToggleLikeV2$$Thread;

  factory CopyWith$Mutation$ToggleActivityLike$ToggleLikeV2$$Thread.stub(
      TRes res) =
  _CopyWithStubImpl$Mutation$ToggleActivityLike$ToggleLikeV2$$Thread;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Mutation$ToggleActivityLike$ToggleLikeV2$$Thread<TRes>
    implements CopyWith$Mutation$ToggleActivityLike$ToggleLikeV2$$Thread<TRes> {
  _CopyWithImpl$Mutation$ToggleActivityLike$ToggleLikeV2$$Thread(this._instance,
      this._then,);

  final Mutation$ToggleActivityLike$ToggleLikeV2$$Thread _instance;

  final TRes Function(Mutation$ToggleActivityLike$ToggleLikeV2$$Thread) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) =>
      _then(Mutation$ToggleActivityLike$ToggleLikeV2$$Thread(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Mutation$ToggleActivityLike$ToggleLikeV2$$Thread<TRes>
    implements CopyWith$Mutation$ToggleActivityLike$ToggleLikeV2$$Thread<TRes> {
  _CopyWithStubImpl$Mutation$ToggleActivityLike$ToggleLikeV2$$Thread(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Mutation$ToggleActivityLike$ToggleLikeV2$$ThreadComment
    implements Mutation$ToggleActivityLike$ToggleLikeV2 {
  Mutation$ToggleActivityLike$ToggleLikeV2$$ThreadComment(
      {this.$__typename = 'ThreadComment'});

  factory Mutation$ToggleActivityLike$ToggleLikeV2$$ThreadComment.fromJson(
      Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    return Mutation$ToggleActivityLike$ToggleLikeV2$$ThreadComment(
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
    if (!(other is Mutation$ToggleActivityLike$ToggleLikeV2$$ThreadComment) ||
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

extension UtilityExtension$Mutation$ToggleActivityLike$ToggleLikeV2$$ThreadComment
on Mutation$ToggleActivityLike$ToggleLikeV2$$ThreadComment {
  CopyWith$Mutation$ToggleActivityLike$ToggleLikeV2$$ThreadComment<
      Mutation$ToggleActivityLike$ToggleLikeV2$$ThreadComment>
  get copyWith =>
      CopyWith$Mutation$ToggleActivityLike$ToggleLikeV2$$ThreadComment(
        this,
            (i) => i,
      );
}

abstract class CopyWith$Mutation$ToggleActivityLike$ToggleLikeV2$$ThreadComment<
TRes> {
  factory CopyWith$Mutation$ToggleActivityLike$ToggleLikeV2$$ThreadComment(
      Mutation$ToggleActivityLike$ToggleLikeV2$$ThreadComment instance,
      TRes Function(Mutation$ToggleActivityLike$ToggleLikeV2$$ThreadComment) then,) = _CopyWithImpl$Mutation$ToggleActivityLike$ToggleLikeV2$$ThreadComment;

  factory CopyWith$Mutation$ToggleActivityLike$ToggleLikeV2$$ThreadComment.stub(
      TRes res) =
  _CopyWithStubImpl$Mutation$ToggleActivityLike$ToggleLikeV2$$ThreadComment;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Mutation$ToggleActivityLike$ToggleLikeV2$$ThreadComment<
TRes>
    implements
        CopyWith$Mutation$ToggleActivityLike$ToggleLikeV2$$ThreadComment<TRes> {
  _CopyWithImpl$Mutation$ToggleActivityLike$ToggleLikeV2$$ThreadComment(
      this._instance,
      this._then,);

  final Mutation$ToggleActivityLike$ToggleLikeV2$$ThreadComment _instance;

  final TRes Function(Mutation$ToggleActivityLike$ToggleLikeV2$$ThreadComment)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) =>
      _then(Mutation$ToggleActivityLike$ToggleLikeV2$$ThreadComment(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Mutation$ToggleActivityLike$ToggleLikeV2$$ThreadComment<
TRes>
    implements
        CopyWith$Mutation$ToggleActivityLike$ToggleLikeV2$$ThreadComment<TRes> {
  _CopyWithStubImpl$Mutation$ToggleActivityLike$ToggleLikeV2$$ThreadComment(
      this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}
