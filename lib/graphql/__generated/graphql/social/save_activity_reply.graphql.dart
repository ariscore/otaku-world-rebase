// GENERATED FILE
// DO NOT MODIFY
// ignore_for_file: type=lint
import '../fragments.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Mutation$SaveActivityReply {
  factory Variables$Mutation$SaveActivityReply({
    int? id,
    int? activityId,
    String? text,
  }) =>
      Variables$Mutation$SaveActivityReply._({
        if (id != null) r'id': id,
        if (activityId != null) r'activityId': activityId,
        if (text != null) r'text': text,
      });

  Variables$Mutation$SaveActivityReply._(this._$data);

  factory Variables$Mutation$SaveActivityReply.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as int?);
    }
    if (data.containsKey('activityId')) {
      final l$activityId = data['activityId'];
      result$data['activityId'] = (l$activityId as int?);
    }
    if (data.containsKey('text')) {
      final l$text = data['text'];
      result$data['text'] = (l$text as String?);
    }
    return Variables$Mutation$SaveActivityReply._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get id => (_$data['id'] as int?);

  int? get activityId => (_$data['activityId'] as int?);

  String? get text => (_$data['text'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    if (_$data.containsKey('activityId')) {
      final l$activityId = activityId;
      result$data['activityId'] = l$activityId;
    }
    if (_$data.containsKey('text')) {
      final l$text = text;
      result$data['text'] = l$text;
    }
    return result$data;
  }

  CopyWith$Variables$Mutation$SaveActivityReply<
          Variables$Mutation$SaveActivityReply>
      get copyWith => CopyWith$Variables$Mutation$SaveActivityReply(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$SaveActivityReply ||
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
    final l$activityId = activityId;
    final lOther$activityId = other.activityId;
    if (_$data.containsKey('activityId') !=
        other._$data.containsKey('activityId')) {
      return false;
    }
    if (l$activityId != lOther$activityId) {
      return false;
    }
    final l$text = text;
    final lOther$text = other.text;
    if (_$data.containsKey('text') != other._$data.containsKey('text')) {
      return false;
    }
    if (l$text != lOther$text) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$activityId = activityId;
    final l$text = text;
    return Object.hashAll([
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('activityId') ? l$activityId : const {},
      _$data.containsKey('text') ? l$text : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$SaveActivityReply<TRes> {
  factory CopyWith$Variables$Mutation$SaveActivityReply(
    Variables$Mutation$SaveActivityReply instance,
    TRes Function(Variables$Mutation$SaveActivityReply) then,
  ) = _CopyWithImpl$Variables$Mutation$SaveActivityReply;

  factory CopyWith$Variables$Mutation$SaveActivityReply.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$SaveActivityReply;

  TRes call({
    int? id,
    int? activityId,
    String? text,
  });
}

class _CopyWithImpl$Variables$Mutation$SaveActivityReply<TRes>
    implements CopyWith$Variables$Mutation$SaveActivityReply<TRes> {
  _CopyWithImpl$Variables$Mutation$SaveActivityReply(
    this._instance,
    this._then,
  );

  final Variables$Mutation$SaveActivityReply _instance;

  final TRes Function(Variables$Mutation$SaveActivityReply) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? activityId = _undefined,
    Object? text = _undefined,
  }) =>
      _then(Variables$Mutation$SaveActivityReply._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as int?),
        if (activityId != _undefined) 'activityId': (activityId as int?),
        if (text != _undefined) 'text': (text as String?),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$SaveActivityReply<TRes>
    implements CopyWith$Variables$Mutation$SaveActivityReply<TRes> {
  _CopyWithStubImpl$Variables$Mutation$SaveActivityReply(this._res);

  TRes _res;

  call({
    int? id,
    int? activityId,
    String? text,
  }) =>
      _res;
}

class Mutation$SaveActivityReply {
  Mutation$SaveActivityReply({
    this.SaveActivityReply,
    this.$__typename = 'Mutation',
  });

  factory Mutation$SaveActivityReply.fromJson(Map<String, dynamic> json) {
    final l$SaveActivityReply = json['SaveActivityReply'];
    final l$$__typename = json['__typename'];
    return Mutation$SaveActivityReply(
      SaveActivityReply: l$SaveActivityReply == null
          ? null
          : Fragment$ActivityReply.fromJson(
              (l$SaveActivityReply as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$ActivityReply? SaveActivityReply;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$SaveActivityReply = SaveActivityReply;
    _resultData['SaveActivityReply'] = l$SaveActivityReply?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$SaveActivityReply = SaveActivityReply;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$SaveActivityReply,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$SaveActivityReply ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$SaveActivityReply = SaveActivityReply;
    final lOther$SaveActivityReply = other.SaveActivityReply;
    if (l$SaveActivityReply != lOther$SaveActivityReply) {
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

extension UtilityExtension$Mutation$SaveActivityReply
    on Mutation$SaveActivityReply {
  CopyWith$Mutation$SaveActivityReply<Mutation$SaveActivityReply>
      get copyWith => CopyWith$Mutation$SaveActivityReply(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$SaveActivityReply<TRes> {
  factory CopyWith$Mutation$SaveActivityReply(
    Mutation$SaveActivityReply instance,
    TRes Function(Mutation$SaveActivityReply) then,
  ) = _CopyWithImpl$Mutation$SaveActivityReply;

  factory CopyWith$Mutation$SaveActivityReply.stub(TRes res) =
      _CopyWithStubImpl$Mutation$SaveActivityReply;

  TRes call({
    Fragment$ActivityReply? SaveActivityReply,
    String? $__typename,
  });
  CopyWith$Fragment$ActivityReply<TRes> get SaveActivityReply;
}

class _CopyWithImpl$Mutation$SaveActivityReply<TRes>
    implements CopyWith$Mutation$SaveActivityReply<TRes> {
  _CopyWithImpl$Mutation$SaveActivityReply(
    this._instance,
    this._then,
  );

  final Mutation$SaveActivityReply _instance;

  final TRes Function(Mutation$SaveActivityReply) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? SaveActivityReply = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$SaveActivityReply(
        SaveActivityReply: SaveActivityReply == _undefined
            ? _instance.SaveActivityReply
            : (SaveActivityReply as Fragment$ActivityReply?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$ActivityReply<TRes> get SaveActivityReply {
    final local$SaveActivityReply = _instance.SaveActivityReply;
    return local$SaveActivityReply == null
        ? CopyWith$Fragment$ActivityReply.stub(_then(_instance))
        : CopyWith$Fragment$ActivityReply(
            local$SaveActivityReply, (e) => call(SaveActivityReply: e));
  }
}

class _CopyWithStubImpl$Mutation$SaveActivityReply<TRes>
    implements CopyWith$Mutation$SaveActivityReply<TRes> {
  _CopyWithStubImpl$Mutation$SaveActivityReply(this._res);

  TRes _res;

  call({
    Fragment$ActivityReply? SaveActivityReply,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$ActivityReply<TRes> get SaveActivityReply =>
      CopyWith$Fragment$ActivityReply.stub(_res);
}

const documentNodeMutationSaveActivityReply = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'SaveActivityReply'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'id')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
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
        variable: VariableNode(name: NameNode(value: 'text')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'SaveActivityReply'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'id')),
          ),
          ArgumentNode(
            name: NameNode(value: 'activityId'),
            value: VariableNode(name: NameNode(value: 'activityId')),
          ),
          ArgumentNode(
            name: NameNode(value: 'text'),
            value: VariableNode(name: NameNode(value: 'text')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'ActivityReply'),
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
  fragmentDefinitionActivityReply,
]);
Mutation$SaveActivityReply _parserFn$Mutation$SaveActivityReply(
        Map<String, dynamic> data) =>
    Mutation$SaveActivityReply.fromJson(data);
typedef OnMutationCompleted$Mutation$SaveActivityReply = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$SaveActivityReply?,
);

class Options$Mutation$SaveActivityReply
    extends graphql.MutationOptions<Mutation$SaveActivityReply> {
  Options$Mutation$SaveActivityReply({
    String? operationName,
    Variables$Mutation$SaveActivityReply? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$SaveActivityReply? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$SaveActivityReply? onCompleted,
    graphql.OnMutationUpdate<Mutation$SaveActivityReply>? update,
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
                        : _parserFn$Mutation$SaveActivityReply(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationSaveActivityReply,
          parserFn: _parserFn$Mutation$SaveActivityReply,
        );

  final OnMutationCompleted$Mutation$SaveActivityReply? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$SaveActivityReply
    extends graphql.WatchQueryOptions<Mutation$SaveActivityReply> {
  WatchOptions$Mutation$SaveActivityReply({
    String? operationName,
    Variables$Mutation$SaveActivityReply? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$SaveActivityReply? typedOptimisticResult,
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
          document: documentNodeMutationSaveActivityReply,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$SaveActivityReply,
        );
}

extension ClientExtension$Mutation$SaveActivityReply on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$SaveActivityReply>>
      mutate$SaveActivityReply(
              [Options$Mutation$SaveActivityReply? options]) async =>
          await this.mutate(options ?? Options$Mutation$SaveActivityReply());
  graphql.ObservableQuery<
      Mutation$SaveActivityReply> watchMutation$SaveActivityReply(
          [WatchOptions$Mutation$SaveActivityReply? options]) =>
      this.watchMutation(options ?? WatchOptions$Mutation$SaveActivityReply());
}

class Mutation$SaveActivityReply$HookResult {
  Mutation$SaveActivityReply$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$SaveActivityReply runMutation;

  final graphql.QueryResult<Mutation$SaveActivityReply> result;
}

Mutation$SaveActivityReply$HookResult useMutation$SaveActivityReply(
    [WidgetOptions$Mutation$SaveActivityReply? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$SaveActivityReply());
  return Mutation$SaveActivityReply$HookResult(
    ({variables, optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables?.toJson() ?? const {},
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$SaveActivityReply>
    useWatchMutation$SaveActivityReply(
            [WatchOptions$Mutation$SaveActivityReply? options]) =>
        graphql_flutter.useWatchMutation(
            options ?? WatchOptions$Mutation$SaveActivityReply());

class WidgetOptions$Mutation$SaveActivityReply
    extends graphql.MutationOptions<Mutation$SaveActivityReply> {
  WidgetOptions$Mutation$SaveActivityReply({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$SaveActivityReply? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$SaveActivityReply? onCompleted,
    graphql.OnMutationUpdate<Mutation$SaveActivityReply>? update,
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
                        : _parserFn$Mutation$SaveActivityReply(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationSaveActivityReply,
          parserFn: _parserFn$Mutation$SaveActivityReply,
        );

  final OnMutationCompleted$Mutation$SaveActivityReply? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$SaveActivityReply
    = graphql.MultiSourceResult<Mutation$SaveActivityReply> Function({
  Variables$Mutation$SaveActivityReply? variables,
  Object? optimisticResult,
  Mutation$SaveActivityReply? typedOptimisticResult,
});
typedef Builder$Mutation$SaveActivityReply = widgets.Widget Function(
  RunMutation$Mutation$SaveActivityReply,
  graphql.QueryResult<Mutation$SaveActivityReply>?,
);

class Mutation$SaveActivityReply$Widget
    extends graphql_flutter.Mutation<Mutation$SaveActivityReply> {
  Mutation$SaveActivityReply$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$SaveActivityReply? options,
    required Builder$Mutation$SaveActivityReply builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$SaveActivityReply(),
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
