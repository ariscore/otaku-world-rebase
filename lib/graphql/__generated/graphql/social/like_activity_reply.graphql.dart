// GENERATED FILE
// DO NOT MODIFY
// ignore_for_file: type=lint
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Mutation$ToggleActivityReply {
  factory Variables$Mutation$ToggleActivityReply({int? id}) =>
      Variables$Mutation$ToggleActivityReply._({
        if (id != null) r'id': id,
      });

  Variables$Mutation$ToggleActivityReply._(this._$data);

  factory Variables$Mutation$ToggleActivityReply.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as int?);
    }
    return Variables$Mutation$ToggleActivityReply._(result$data);
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

  CopyWith$Variables$Mutation$ToggleActivityReply<
          Variables$Mutation$ToggleActivityReply>
      get copyWith => CopyWith$Variables$Mutation$ToggleActivityReply(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$ToggleActivityReply ||
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

abstract class CopyWith$Variables$Mutation$ToggleActivityReply<TRes> {
  factory CopyWith$Variables$Mutation$ToggleActivityReply(
    Variables$Mutation$ToggleActivityReply instance,
    TRes Function(Variables$Mutation$ToggleActivityReply) then,
  ) = _CopyWithImpl$Variables$Mutation$ToggleActivityReply;

  factory CopyWith$Variables$Mutation$ToggleActivityReply.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$ToggleActivityReply;

  TRes call({int? id});
}

class _CopyWithImpl$Variables$Mutation$ToggleActivityReply<TRes>
    implements CopyWith$Variables$Mutation$ToggleActivityReply<TRes> {
  _CopyWithImpl$Variables$Mutation$ToggleActivityReply(
    this._instance,
    this._then,
  );

  final Variables$Mutation$ToggleActivityReply _instance;

  final TRes Function(Variables$Mutation$ToggleActivityReply) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) =>
      _then(Variables$Mutation$ToggleActivityReply._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as int?),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$ToggleActivityReply<TRes>
    implements CopyWith$Variables$Mutation$ToggleActivityReply<TRes> {
  _CopyWithStubImpl$Variables$Mutation$ToggleActivityReply(this._res);

  TRes _res;

  call({int? id}) => _res;
}

class Mutation$ToggleActivityReply {
  Mutation$ToggleActivityReply({
    this.ToggleLikeV2,
    this.$__typename = 'Mutation',
  });

  factory Mutation$ToggleActivityReply.fromJson(Map<String, dynamic> json) {
    final l$ToggleLikeV2 = json['ToggleLikeV2'];
    final l$$__typename = json['__typename'];
    return Mutation$ToggleActivityReply(
      ToggleLikeV2: l$ToggleLikeV2 == null
          ? null
          : Mutation$ToggleActivityReply$ToggleLikeV2.fromJson(
              (l$ToggleLikeV2 as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$ToggleActivityReply$ToggleLikeV2? ToggleLikeV2;

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
    if (other is! Mutation$ToggleActivityReply ||
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

extension UtilityExtension$Mutation$ToggleActivityReply
    on Mutation$ToggleActivityReply {
  CopyWith$Mutation$ToggleActivityReply<Mutation$ToggleActivityReply>
      get copyWith => CopyWith$Mutation$ToggleActivityReply(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$ToggleActivityReply<TRes> {
  factory CopyWith$Mutation$ToggleActivityReply(
    Mutation$ToggleActivityReply instance,
    TRes Function(Mutation$ToggleActivityReply) then,
  ) = _CopyWithImpl$Mutation$ToggleActivityReply;

  factory CopyWith$Mutation$ToggleActivityReply.stub(TRes res) =
      _CopyWithStubImpl$Mutation$ToggleActivityReply;

  TRes call({
    Mutation$ToggleActivityReply$ToggleLikeV2? ToggleLikeV2,
    String? $__typename,
  });
  CopyWith$Mutation$ToggleActivityReply$ToggleLikeV2<TRes> get ToggleLikeV2;
}

class _CopyWithImpl$Mutation$ToggleActivityReply<TRes>
    implements CopyWith$Mutation$ToggleActivityReply<TRes> {
  _CopyWithImpl$Mutation$ToggleActivityReply(
    this._instance,
    this._then,
  );

  final Mutation$ToggleActivityReply _instance;

  final TRes Function(Mutation$ToggleActivityReply) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? ToggleLikeV2 = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$ToggleActivityReply(
        ToggleLikeV2: ToggleLikeV2 == _undefined
            ? _instance.ToggleLikeV2
            : (ToggleLikeV2 as Mutation$ToggleActivityReply$ToggleLikeV2?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$ToggleActivityReply$ToggleLikeV2<TRes> get ToggleLikeV2 {
    final local$ToggleLikeV2 = _instance.ToggleLikeV2;
    return local$ToggleLikeV2 == null
        ? CopyWith$Mutation$ToggleActivityReply$ToggleLikeV2.stub(
            _then(_instance))
        : CopyWith$Mutation$ToggleActivityReply$ToggleLikeV2(
            local$ToggleLikeV2, (e) => call(ToggleLikeV2: e));
  }
}

class _CopyWithStubImpl$Mutation$ToggleActivityReply<TRes>
    implements CopyWith$Mutation$ToggleActivityReply<TRes> {
  _CopyWithStubImpl$Mutation$ToggleActivityReply(this._res);

  TRes _res;

  call({
    Mutation$ToggleActivityReply$ToggleLikeV2? ToggleLikeV2,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$ToggleActivityReply$ToggleLikeV2<TRes> get ToggleLikeV2 =>
      CopyWith$Mutation$ToggleActivityReply$ToggleLikeV2.stub(_res);
}

const documentNodeMutationToggleActivityReply = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'ToggleActivityReply'),
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
            value: EnumValueNode(name: NameNode(value: 'ACTIVITY_REPLY')),
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
          ),
          InlineFragmentNode(
            typeCondition: TypeConditionNode(
                on: NamedTypeNode(
              name: NameNode(value: 'ActivityReply'),
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
Mutation$ToggleActivityReply _parserFn$Mutation$ToggleActivityReply(
        Map<String, dynamic> data) =>
    Mutation$ToggleActivityReply.fromJson(data);
typedef OnMutationCompleted$Mutation$ToggleActivityReply = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$ToggleActivityReply?,
);

class Options$Mutation$ToggleActivityReply
    extends graphql.MutationOptions<Mutation$ToggleActivityReply> {
  Options$Mutation$ToggleActivityReply({
    String? operationName,
    Variables$Mutation$ToggleActivityReply? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$ToggleActivityReply? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$ToggleActivityReply? onCompleted,
    graphql.OnMutationUpdate<Mutation$ToggleActivityReply>? update,
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
                        : _parserFn$Mutation$ToggleActivityReply(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationToggleActivityReply,
          parserFn: _parserFn$Mutation$ToggleActivityReply,
        );

  final OnMutationCompleted$Mutation$ToggleActivityReply? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$ToggleActivityReply
    extends graphql.WatchQueryOptions<Mutation$ToggleActivityReply> {
  WatchOptions$Mutation$ToggleActivityReply({
    String? operationName,
    Variables$Mutation$ToggleActivityReply? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$ToggleActivityReply? typedOptimisticResult,
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
          document: documentNodeMutationToggleActivityReply,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$ToggleActivityReply,
        );
}

extension ClientExtension$Mutation$ToggleActivityReply
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$ToggleActivityReply>>
      mutate$ToggleActivityReply(
              [Options$Mutation$ToggleActivityReply? options]) async =>
          await this.mutate(options ?? Options$Mutation$ToggleActivityReply());
  graphql.ObservableQuery<Mutation$ToggleActivityReply>
      watchMutation$ToggleActivityReply(
              [WatchOptions$Mutation$ToggleActivityReply? options]) =>
          this.watchMutation(
              options ?? WatchOptions$Mutation$ToggleActivityReply());
}

class Mutation$ToggleActivityReply$HookResult {
  Mutation$ToggleActivityReply$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$ToggleActivityReply runMutation;

  final graphql.QueryResult<Mutation$ToggleActivityReply> result;
}

Mutation$ToggleActivityReply$HookResult useMutation$ToggleActivityReply(
    [WidgetOptions$Mutation$ToggleActivityReply? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$ToggleActivityReply());
  return Mutation$ToggleActivityReply$HookResult(
    ({variables, optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables?.toJson() ?? const {},
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$ToggleActivityReply>
    useWatchMutation$ToggleActivityReply(
            [WatchOptions$Mutation$ToggleActivityReply? options]) =>
        graphql_flutter.useWatchMutation(
            options ?? WatchOptions$Mutation$ToggleActivityReply());

class WidgetOptions$Mutation$ToggleActivityReply
    extends graphql.MutationOptions<Mutation$ToggleActivityReply> {
  WidgetOptions$Mutation$ToggleActivityReply({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$ToggleActivityReply? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$ToggleActivityReply? onCompleted,
    graphql.OnMutationUpdate<Mutation$ToggleActivityReply>? update,
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
                        : _parserFn$Mutation$ToggleActivityReply(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationToggleActivityReply,
          parserFn: _parserFn$Mutation$ToggleActivityReply,
        );

  final OnMutationCompleted$Mutation$ToggleActivityReply? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$ToggleActivityReply
    = graphql.MultiSourceResult<Mutation$ToggleActivityReply> Function({
  Variables$Mutation$ToggleActivityReply? variables,
  Object? optimisticResult,
  Mutation$ToggleActivityReply? typedOptimisticResult,
});
typedef Builder$Mutation$ToggleActivityReply = widgets.Widget Function(
  RunMutation$Mutation$ToggleActivityReply,
  graphql.QueryResult<Mutation$ToggleActivityReply>?,
);

class Mutation$ToggleActivityReply$Widget
    extends graphql_flutter.Mutation<Mutation$ToggleActivityReply> {
  Mutation$ToggleActivityReply$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$ToggleActivityReply? options,
    required Builder$Mutation$ToggleActivityReply builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$ToggleActivityReply(),
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

class Mutation$ToggleActivityReply$ToggleLikeV2 {
  Mutation$ToggleActivityReply$ToggleLikeV2({required this.$__typename});

  factory Mutation$ToggleActivityReply$ToggleLikeV2.fromJson(
      Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "ActivityReply":
        return Mutation$ToggleActivityReply$ToggleLikeV2$$ActivityReply
            .fromJson(json);

      case "ListActivity":
        return Mutation$ToggleActivityReply$ToggleLikeV2$$ListActivity.fromJson(
            json);

      case "MessageActivity":
        return Mutation$ToggleActivityReply$ToggleLikeV2$$MessageActivity
            .fromJson(json);

      case "TextActivity":
        return Mutation$ToggleActivityReply$ToggleLikeV2$$TextActivity.fromJson(
            json);

      case "Thread":
        return Mutation$ToggleActivityReply$ToggleLikeV2$$Thread.fromJson(json);

      case "ThreadComment":
        return Mutation$ToggleActivityReply$ToggleLikeV2$$ThreadComment
            .fromJson(json);

      default:
        final l$$__typename = json['__typename'];
        return Mutation$ToggleActivityReply$ToggleLikeV2(
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
    if (other is! Mutation$ToggleActivityReply$ToggleLikeV2 ||
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

extension UtilityExtension$Mutation$ToggleActivityReply$ToggleLikeV2
    on Mutation$ToggleActivityReply$ToggleLikeV2 {
  CopyWith$Mutation$ToggleActivityReply$ToggleLikeV2<
          Mutation$ToggleActivityReply$ToggleLikeV2>
      get copyWith => CopyWith$Mutation$ToggleActivityReply$ToggleLikeV2(
            this,
            (i) => i,
          );
  _T when<_T>({
    required _T Function(
            Mutation$ToggleActivityReply$ToggleLikeV2$$ActivityReply)
        activityReply,
    required _T Function(
            Mutation$ToggleActivityReply$ToggleLikeV2$$ListActivity)
        listActivity,
    required _T Function(
            Mutation$ToggleActivityReply$ToggleLikeV2$$MessageActivity)
        messageActivity,
    required _T Function(
            Mutation$ToggleActivityReply$ToggleLikeV2$$TextActivity)
        textActivity,
    required _T Function(Mutation$ToggleActivityReply$ToggleLikeV2$$Thread)
        thread,
    required _T Function(
            Mutation$ToggleActivityReply$ToggleLikeV2$$ThreadComment)
        threadComment,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "ActivityReply":
        return activityReply(
            this as Mutation$ToggleActivityReply$ToggleLikeV2$$ActivityReply);

      case "ListActivity":
        return listActivity(
            this as Mutation$ToggleActivityReply$ToggleLikeV2$$ListActivity);

      case "MessageActivity":
        return messageActivity(
            this as Mutation$ToggleActivityReply$ToggleLikeV2$$MessageActivity);

      case "TextActivity":
        return textActivity(
            this as Mutation$ToggleActivityReply$ToggleLikeV2$$TextActivity);

      case "Thread":
        return thread(
            this as Mutation$ToggleActivityReply$ToggleLikeV2$$Thread);

      case "ThreadComment":
        return threadComment(
            this as Mutation$ToggleActivityReply$ToggleLikeV2$$ThreadComment);

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(Mutation$ToggleActivityReply$ToggleLikeV2$$ActivityReply)?
        activityReply,
    _T Function(Mutation$ToggleActivityReply$ToggleLikeV2$$ListActivity)?
        listActivity,
    _T Function(Mutation$ToggleActivityReply$ToggleLikeV2$$MessageActivity)?
        messageActivity,
    _T Function(Mutation$ToggleActivityReply$ToggleLikeV2$$TextActivity)?
        textActivity,
    _T Function(Mutation$ToggleActivityReply$ToggleLikeV2$$Thread)? thread,
    _T Function(Mutation$ToggleActivityReply$ToggleLikeV2$$ThreadComment)?
        threadComment,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "ActivityReply":
        if (activityReply != null) {
          return activityReply(
              this as Mutation$ToggleActivityReply$ToggleLikeV2$$ActivityReply);
        } else {
          return orElse();
        }

      case "ListActivity":
        if (listActivity != null) {
          return listActivity(
              this as Mutation$ToggleActivityReply$ToggleLikeV2$$ListActivity);
        } else {
          return orElse();
        }

      case "MessageActivity":
        if (messageActivity != null) {
          return messageActivity(this
              as Mutation$ToggleActivityReply$ToggleLikeV2$$MessageActivity);
        } else {
          return orElse();
        }

      case "TextActivity":
        if (textActivity != null) {
          return textActivity(
              this as Mutation$ToggleActivityReply$ToggleLikeV2$$TextActivity);
        } else {
          return orElse();
        }

      case "Thread":
        if (thread != null) {
          return thread(
              this as Mutation$ToggleActivityReply$ToggleLikeV2$$Thread);
        } else {
          return orElse();
        }

      case "ThreadComment":
        if (threadComment != null) {
          return threadComment(
              this as Mutation$ToggleActivityReply$ToggleLikeV2$$ThreadComment);
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWith$Mutation$ToggleActivityReply$ToggleLikeV2<TRes> {
  factory CopyWith$Mutation$ToggleActivityReply$ToggleLikeV2(
    Mutation$ToggleActivityReply$ToggleLikeV2 instance,
    TRes Function(Mutation$ToggleActivityReply$ToggleLikeV2) then,
  ) = _CopyWithImpl$Mutation$ToggleActivityReply$ToggleLikeV2;

  factory CopyWith$Mutation$ToggleActivityReply$ToggleLikeV2.stub(TRes res) =
      _CopyWithStubImpl$Mutation$ToggleActivityReply$ToggleLikeV2;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Mutation$ToggleActivityReply$ToggleLikeV2<TRes>
    implements CopyWith$Mutation$ToggleActivityReply$ToggleLikeV2<TRes> {
  _CopyWithImpl$Mutation$ToggleActivityReply$ToggleLikeV2(
    this._instance,
    this._then,
  );

  final Mutation$ToggleActivityReply$ToggleLikeV2 _instance;

  final TRes Function(Mutation$ToggleActivityReply$ToggleLikeV2) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) =>
      _then(Mutation$ToggleActivityReply$ToggleLikeV2(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Mutation$ToggleActivityReply$ToggleLikeV2<TRes>
    implements CopyWith$Mutation$ToggleActivityReply$ToggleLikeV2<TRes> {
  _CopyWithStubImpl$Mutation$ToggleActivityReply$ToggleLikeV2(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Mutation$ToggleActivityReply$ToggleLikeV2$$ActivityReply
    implements Mutation$ToggleActivityReply$ToggleLikeV2 {
  Mutation$ToggleActivityReply$ToggleLikeV2$$ActivityReply({
    this.isLiked,
    this.$__typename = 'ActivityReply',
  });

  factory Mutation$ToggleActivityReply$ToggleLikeV2$$ActivityReply.fromJson(
      Map<String, dynamic> json) {
    final l$isLiked = json['isLiked'];
    final l$$__typename = json['__typename'];
    return Mutation$ToggleActivityReply$ToggleLikeV2$$ActivityReply(
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
    if (other is! Mutation$ToggleActivityReply$ToggleLikeV2$$ActivityReply ||
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

extension UtilityExtension$Mutation$ToggleActivityReply$ToggleLikeV2$$ActivityReply
    on Mutation$ToggleActivityReply$ToggleLikeV2$$ActivityReply {
  CopyWith$Mutation$ToggleActivityReply$ToggleLikeV2$$ActivityReply<
          Mutation$ToggleActivityReply$ToggleLikeV2$$ActivityReply>
      get copyWith =>
          CopyWith$Mutation$ToggleActivityReply$ToggleLikeV2$$ActivityReply(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$ToggleActivityReply$ToggleLikeV2$$ActivityReply<
    TRes> {
  factory CopyWith$Mutation$ToggleActivityReply$ToggleLikeV2$$ActivityReply(
    Mutation$ToggleActivityReply$ToggleLikeV2$$ActivityReply instance,
    TRes Function(Mutation$ToggleActivityReply$ToggleLikeV2$$ActivityReply)
        then,
  ) = _CopyWithImpl$Mutation$ToggleActivityReply$ToggleLikeV2$$ActivityReply;

  factory CopyWith$Mutation$ToggleActivityReply$ToggleLikeV2$$ActivityReply.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$ToggleActivityReply$ToggleLikeV2$$ActivityReply;

  TRes call({
    bool? isLiked,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$ToggleActivityReply$ToggleLikeV2$$ActivityReply<
        TRes>
    implements
        CopyWith$Mutation$ToggleActivityReply$ToggleLikeV2$$ActivityReply<
            TRes> {
  _CopyWithImpl$Mutation$ToggleActivityReply$ToggleLikeV2$$ActivityReply(
    this._instance,
    this._then,
  );

  final Mutation$ToggleActivityReply$ToggleLikeV2$$ActivityReply _instance;

  final TRes Function(Mutation$ToggleActivityReply$ToggleLikeV2$$ActivityReply)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? isLiked = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$ToggleActivityReply$ToggleLikeV2$$ActivityReply(
        isLiked: isLiked == _undefined ? _instance.isLiked : (isLiked as bool?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$ToggleActivityReply$ToggleLikeV2$$ActivityReply<
        TRes>
    implements
        CopyWith$Mutation$ToggleActivityReply$ToggleLikeV2$$ActivityReply<
            TRes> {
  _CopyWithStubImpl$Mutation$ToggleActivityReply$ToggleLikeV2$$ActivityReply(
      this._res);

  TRes _res;

  call({
    bool? isLiked,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$ToggleActivityReply$ToggleLikeV2$$ListActivity
    implements Mutation$ToggleActivityReply$ToggleLikeV2 {
  Mutation$ToggleActivityReply$ToggleLikeV2$$ListActivity(
      {this.$__typename = 'ListActivity'});

  factory Mutation$ToggleActivityReply$ToggleLikeV2$$ListActivity.fromJson(
      Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    return Mutation$ToggleActivityReply$ToggleLikeV2$$ListActivity(
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
    if (other is! Mutation$ToggleActivityReply$ToggleLikeV2$$ListActivity ||
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

extension UtilityExtension$Mutation$ToggleActivityReply$ToggleLikeV2$$ListActivity
    on Mutation$ToggleActivityReply$ToggleLikeV2$$ListActivity {
  CopyWith$Mutation$ToggleActivityReply$ToggleLikeV2$$ListActivity<
          Mutation$ToggleActivityReply$ToggleLikeV2$$ListActivity>
      get copyWith =>
          CopyWith$Mutation$ToggleActivityReply$ToggleLikeV2$$ListActivity(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$ToggleActivityReply$ToggleLikeV2$$ListActivity<
    TRes> {
  factory CopyWith$Mutation$ToggleActivityReply$ToggleLikeV2$$ListActivity(
    Mutation$ToggleActivityReply$ToggleLikeV2$$ListActivity instance,
    TRes Function(Mutation$ToggleActivityReply$ToggleLikeV2$$ListActivity) then,
  ) = _CopyWithImpl$Mutation$ToggleActivityReply$ToggleLikeV2$$ListActivity;

  factory CopyWith$Mutation$ToggleActivityReply$ToggleLikeV2$$ListActivity.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$ToggleActivityReply$ToggleLikeV2$$ListActivity;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Mutation$ToggleActivityReply$ToggleLikeV2$$ListActivity<
        TRes>
    implements
        CopyWith$Mutation$ToggleActivityReply$ToggleLikeV2$$ListActivity<TRes> {
  _CopyWithImpl$Mutation$ToggleActivityReply$ToggleLikeV2$$ListActivity(
    this._instance,
    this._then,
  );

  final Mutation$ToggleActivityReply$ToggleLikeV2$$ListActivity _instance;

  final TRes Function(Mutation$ToggleActivityReply$ToggleLikeV2$$ListActivity)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) =>
      _then(Mutation$ToggleActivityReply$ToggleLikeV2$$ListActivity(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Mutation$ToggleActivityReply$ToggleLikeV2$$ListActivity<
        TRes>
    implements
        CopyWith$Mutation$ToggleActivityReply$ToggleLikeV2$$ListActivity<TRes> {
  _CopyWithStubImpl$Mutation$ToggleActivityReply$ToggleLikeV2$$ListActivity(
      this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Mutation$ToggleActivityReply$ToggleLikeV2$$MessageActivity
    implements Mutation$ToggleActivityReply$ToggleLikeV2 {
  Mutation$ToggleActivityReply$ToggleLikeV2$$MessageActivity(
      {this.$__typename = 'MessageActivity'});

  factory Mutation$ToggleActivityReply$ToggleLikeV2$$MessageActivity.fromJson(
      Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    return Mutation$ToggleActivityReply$ToggleLikeV2$$MessageActivity(
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
    if (other is! Mutation$ToggleActivityReply$ToggleLikeV2$$MessageActivity ||
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

extension UtilityExtension$Mutation$ToggleActivityReply$ToggleLikeV2$$MessageActivity
    on Mutation$ToggleActivityReply$ToggleLikeV2$$MessageActivity {
  CopyWith$Mutation$ToggleActivityReply$ToggleLikeV2$$MessageActivity<
          Mutation$ToggleActivityReply$ToggleLikeV2$$MessageActivity>
      get copyWith =>
          CopyWith$Mutation$ToggleActivityReply$ToggleLikeV2$$MessageActivity(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$ToggleActivityReply$ToggleLikeV2$$MessageActivity<
    TRes> {
  factory CopyWith$Mutation$ToggleActivityReply$ToggleLikeV2$$MessageActivity(
    Mutation$ToggleActivityReply$ToggleLikeV2$$MessageActivity instance,
    TRes Function(Mutation$ToggleActivityReply$ToggleLikeV2$$MessageActivity)
        then,
  ) = _CopyWithImpl$Mutation$ToggleActivityReply$ToggleLikeV2$$MessageActivity;

  factory CopyWith$Mutation$ToggleActivityReply$ToggleLikeV2$$MessageActivity.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$ToggleActivityReply$ToggleLikeV2$$MessageActivity;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Mutation$ToggleActivityReply$ToggleLikeV2$$MessageActivity<
        TRes>
    implements
        CopyWith$Mutation$ToggleActivityReply$ToggleLikeV2$$MessageActivity<
            TRes> {
  _CopyWithImpl$Mutation$ToggleActivityReply$ToggleLikeV2$$MessageActivity(
    this._instance,
    this._then,
  );

  final Mutation$ToggleActivityReply$ToggleLikeV2$$MessageActivity _instance;

  final TRes Function(
      Mutation$ToggleActivityReply$ToggleLikeV2$$MessageActivity) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) =>
      _then(Mutation$ToggleActivityReply$ToggleLikeV2$$MessageActivity(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Mutation$ToggleActivityReply$ToggleLikeV2$$MessageActivity<
        TRes>
    implements
        CopyWith$Mutation$ToggleActivityReply$ToggleLikeV2$$MessageActivity<
            TRes> {
  _CopyWithStubImpl$Mutation$ToggleActivityReply$ToggleLikeV2$$MessageActivity(
      this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Mutation$ToggleActivityReply$ToggleLikeV2$$TextActivity
    implements Mutation$ToggleActivityReply$ToggleLikeV2 {
  Mutation$ToggleActivityReply$ToggleLikeV2$$TextActivity(
      {this.$__typename = 'TextActivity'});

  factory Mutation$ToggleActivityReply$ToggleLikeV2$$TextActivity.fromJson(
      Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    return Mutation$ToggleActivityReply$ToggleLikeV2$$TextActivity(
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
    if (other is! Mutation$ToggleActivityReply$ToggleLikeV2$$TextActivity ||
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

extension UtilityExtension$Mutation$ToggleActivityReply$ToggleLikeV2$$TextActivity
    on Mutation$ToggleActivityReply$ToggleLikeV2$$TextActivity {
  CopyWith$Mutation$ToggleActivityReply$ToggleLikeV2$$TextActivity<
          Mutation$ToggleActivityReply$ToggleLikeV2$$TextActivity>
      get copyWith =>
          CopyWith$Mutation$ToggleActivityReply$ToggleLikeV2$$TextActivity(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$ToggleActivityReply$ToggleLikeV2$$TextActivity<
    TRes> {
  factory CopyWith$Mutation$ToggleActivityReply$ToggleLikeV2$$TextActivity(
    Mutation$ToggleActivityReply$ToggleLikeV2$$TextActivity instance,
    TRes Function(Mutation$ToggleActivityReply$ToggleLikeV2$$TextActivity) then,
  ) = _CopyWithImpl$Mutation$ToggleActivityReply$ToggleLikeV2$$TextActivity;

  factory CopyWith$Mutation$ToggleActivityReply$ToggleLikeV2$$TextActivity.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$ToggleActivityReply$ToggleLikeV2$$TextActivity;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Mutation$ToggleActivityReply$ToggleLikeV2$$TextActivity<
        TRes>
    implements
        CopyWith$Mutation$ToggleActivityReply$ToggleLikeV2$$TextActivity<TRes> {
  _CopyWithImpl$Mutation$ToggleActivityReply$ToggleLikeV2$$TextActivity(
    this._instance,
    this._then,
  );

  final Mutation$ToggleActivityReply$ToggleLikeV2$$TextActivity _instance;

  final TRes Function(Mutation$ToggleActivityReply$ToggleLikeV2$$TextActivity)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) =>
      _then(Mutation$ToggleActivityReply$ToggleLikeV2$$TextActivity(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Mutation$ToggleActivityReply$ToggleLikeV2$$TextActivity<
        TRes>
    implements
        CopyWith$Mutation$ToggleActivityReply$ToggleLikeV2$$TextActivity<TRes> {
  _CopyWithStubImpl$Mutation$ToggleActivityReply$ToggleLikeV2$$TextActivity(
      this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Mutation$ToggleActivityReply$ToggleLikeV2$$Thread
    implements Mutation$ToggleActivityReply$ToggleLikeV2 {
  Mutation$ToggleActivityReply$ToggleLikeV2$$Thread(
      {this.$__typename = 'Thread'});

  factory Mutation$ToggleActivityReply$ToggleLikeV2$$Thread.fromJson(
      Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    return Mutation$ToggleActivityReply$ToggleLikeV2$$Thread(
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
    if (other is! Mutation$ToggleActivityReply$ToggleLikeV2$$Thread ||
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

extension UtilityExtension$Mutation$ToggleActivityReply$ToggleLikeV2$$Thread
    on Mutation$ToggleActivityReply$ToggleLikeV2$$Thread {
  CopyWith$Mutation$ToggleActivityReply$ToggleLikeV2$$Thread<
          Mutation$ToggleActivityReply$ToggleLikeV2$$Thread>
      get copyWith =>
          CopyWith$Mutation$ToggleActivityReply$ToggleLikeV2$$Thread(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$ToggleActivityReply$ToggleLikeV2$$Thread<
    TRes> {
  factory CopyWith$Mutation$ToggleActivityReply$ToggleLikeV2$$Thread(
    Mutation$ToggleActivityReply$ToggleLikeV2$$Thread instance,
    TRes Function(Mutation$ToggleActivityReply$ToggleLikeV2$$Thread) then,
  ) = _CopyWithImpl$Mutation$ToggleActivityReply$ToggleLikeV2$$Thread;

  factory CopyWith$Mutation$ToggleActivityReply$ToggleLikeV2$$Thread.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$ToggleActivityReply$ToggleLikeV2$$Thread;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Mutation$ToggleActivityReply$ToggleLikeV2$$Thread<TRes>
    implements
        CopyWith$Mutation$ToggleActivityReply$ToggleLikeV2$$Thread<TRes> {
  _CopyWithImpl$Mutation$ToggleActivityReply$ToggleLikeV2$$Thread(
    this._instance,
    this._then,
  );

  final Mutation$ToggleActivityReply$ToggleLikeV2$$Thread _instance;

  final TRes Function(Mutation$ToggleActivityReply$ToggleLikeV2$$Thread) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) =>
      _then(Mutation$ToggleActivityReply$ToggleLikeV2$$Thread(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Mutation$ToggleActivityReply$ToggleLikeV2$$Thread<TRes>
    implements
        CopyWith$Mutation$ToggleActivityReply$ToggleLikeV2$$Thread<TRes> {
  _CopyWithStubImpl$Mutation$ToggleActivityReply$ToggleLikeV2$$Thread(
      this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Mutation$ToggleActivityReply$ToggleLikeV2$$ThreadComment
    implements Mutation$ToggleActivityReply$ToggleLikeV2 {
  Mutation$ToggleActivityReply$ToggleLikeV2$$ThreadComment(
      {this.$__typename = 'ThreadComment'});

  factory Mutation$ToggleActivityReply$ToggleLikeV2$$ThreadComment.fromJson(
      Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    return Mutation$ToggleActivityReply$ToggleLikeV2$$ThreadComment(
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
    if (other is! Mutation$ToggleActivityReply$ToggleLikeV2$$ThreadComment ||
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

extension UtilityExtension$Mutation$ToggleActivityReply$ToggleLikeV2$$ThreadComment
    on Mutation$ToggleActivityReply$ToggleLikeV2$$ThreadComment {
  CopyWith$Mutation$ToggleActivityReply$ToggleLikeV2$$ThreadComment<
          Mutation$ToggleActivityReply$ToggleLikeV2$$ThreadComment>
      get copyWith =>
          CopyWith$Mutation$ToggleActivityReply$ToggleLikeV2$$ThreadComment(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$ToggleActivityReply$ToggleLikeV2$$ThreadComment<
    TRes> {
  factory CopyWith$Mutation$ToggleActivityReply$ToggleLikeV2$$ThreadComment(
    Mutation$ToggleActivityReply$ToggleLikeV2$$ThreadComment instance,
    TRes Function(Mutation$ToggleActivityReply$ToggleLikeV2$$ThreadComment)
        then,
  ) = _CopyWithImpl$Mutation$ToggleActivityReply$ToggleLikeV2$$ThreadComment;

  factory CopyWith$Mutation$ToggleActivityReply$ToggleLikeV2$$ThreadComment.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$ToggleActivityReply$ToggleLikeV2$$ThreadComment;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Mutation$ToggleActivityReply$ToggleLikeV2$$ThreadComment<
        TRes>
    implements
        CopyWith$Mutation$ToggleActivityReply$ToggleLikeV2$$ThreadComment<
            TRes> {
  _CopyWithImpl$Mutation$ToggleActivityReply$ToggleLikeV2$$ThreadComment(
    this._instance,
    this._then,
  );

  final Mutation$ToggleActivityReply$ToggleLikeV2$$ThreadComment _instance;

  final TRes Function(Mutation$ToggleActivityReply$ToggleLikeV2$$ThreadComment)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) =>
      _then(Mutation$ToggleActivityReply$ToggleLikeV2$$ThreadComment(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Mutation$ToggleActivityReply$ToggleLikeV2$$ThreadComment<
        TRes>
    implements
        CopyWith$Mutation$ToggleActivityReply$ToggleLikeV2$$ThreadComment<
            TRes> {
  _CopyWithStubImpl$Mutation$ToggleActivityReply$ToggleLikeV2$$ThreadComment(
      this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}
