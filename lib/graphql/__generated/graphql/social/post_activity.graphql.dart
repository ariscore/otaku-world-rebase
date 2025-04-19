// GENERATED FILE
// DO NOT MODIFY
// ignore_for_file: type=lint
import '../fragments.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Mutation$PostActivity {
  factory Variables$Mutation$PostActivity({
    int? id,
    String? text,
  }) =>
      Variables$Mutation$PostActivity._({
        if (id != null) r'id': id,
        if (text != null) r'text': text,
      });

  Variables$Mutation$PostActivity._(this._$data);

  factory Variables$Mutation$PostActivity.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as int?);
    }
    if (data.containsKey('text')) {
      final l$text = data['text'];
      result$data['text'] = (l$text as String?);
    }
    return Variables$Mutation$PostActivity._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get id => (_$data['id'] as int?);

  String? get text => (_$data['text'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    if (_$data.containsKey('text')) {
      final l$text = text;
      result$data['text'] = l$text;
    }
    return result$data;
  }

  CopyWith$Variables$Mutation$PostActivity<Variables$Mutation$PostActivity>
      get copyWith => CopyWith$Variables$Mutation$PostActivity(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$PostActivity ||
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
    final l$text = text;
    return Object.hashAll([
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('text') ? l$text : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$PostActivity<TRes> {
  factory CopyWith$Variables$Mutation$PostActivity(
    Variables$Mutation$PostActivity instance,
    TRes Function(Variables$Mutation$PostActivity) then,
  ) = _CopyWithImpl$Variables$Mutation$PostActivity;

  factory CopyWith$Variables$Mutation$PostActivity.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$PostActivity;

  TRes call({
    int? id,
    String? text,
  });
}

class _CopyWithImpl$Variables$Mutation$PostActivity<TRes>
    implements CopyWith$Variables$Mutation$PostActivity<TRes> {
  _CopyWithImpl$Variables$Mutation$PostActivity(
    this._instance,
    this._then,
  );

  final Variables$Mutation$PostActivity _instance;

  final TRes Function(Variables$Mutation$PostActivity) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? text = _undefined,
  }) =>
      _then(Variables$Mutation$PostActivity._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as int?),
        if (text != _undefined) 'text': (text as String?),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$PostActivity<TRes>
    implements CopyWith$Variables$Mutation$PostActivity<TRes> {
  _CopyWithStubImpl$Variables$Mutation$PostActivity(this._res);

  TRes _res;

  call({
    int? id,
    String? text,
  }) =>
      _res;
}

class Mutation$PostActivity {
  Mutation$PostActivity({
    this.SaveTextActivity,
    this.$__typename = 'Mutation',
  });

  factory Mutation$PostActivity.fromJson(Map<String, dynamic> json) {
    final l$SaveTextActivity = json['SaveTextActivity'];
    final l$$__typename = json['__typename'];
    return Mutation$PostActivity(
      SaveTextActivity: l$SaveTextActivity == null
          ? null
          : Fragment$TextActivity.fromJson(
              (l$SaveTextActivity as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$TextActivity? SaveTextActivity;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$SaveTextActivity = SaveTextActivity;
    _resultData['SaveTextActivity'] = l$SaveTextActivity?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$SaveTextActivity = SaveTextActivity;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$SaveTextActivity,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$PostActivity || runtimeType != other.runtimeType) {
      return false;
    }
    final l$SaveTextActivity = SaveTextActivity;
    final lOther$SaveTextActivity = other.SaveTextActivity;
    if (l$SaveTextActivity != lOther$SaveTextActivity) {
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

extension UtilityExtension$Mutation$PostActivity on Mutation$PostActivity {
  CopyWith$Mutation$PostActivity<Mutation$PostActivity> get copyWith =>
      CopyWith$Mutation$PostActivity(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$PostActivity<TRes> {
  factory CopyWith$Mutation$PostActivity(
    Mutation$PostActivity instance,
    TRes Function(Mutation$PostActivity) then,
  ) = _CopyWithImpl$Mutation$PostActivity;

  factory CopyWith$Mutation$PostActivity.stub(TRes res) =
      _CopyWithStubImpl$Mutation$PostActivity;

  TRes call({
    Fragment$TextActivity? SaveTextActivity,
    String? $__typename,
  });
  CopyWith$Fragment$TextActivity<TRes> get SaveTextActivity;
}

class _CopyWithImpl$Mutation$PostActivity<TRes>
    implements CopyWith$Mutation$PostActivity<TRes> {
  _CopyWithImpl$Mutation$PostActivity(
    this._instance,
    this._then,
  );

  final Mutation$PostActivity _instance;

  final TRes Function(Mutation$PostActivity) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? SaveTextActivity = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$PostActivity(
        SaveTextActivity: SaveTextActivity == _undefined
            ? _instance.SaveTextActivity
            : (SaveTextActivity as Fragment$TextActivity?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$TextActivity<TRes> get SaveTextActivity {
    final local$SaveTextActivity = _instance.SaveTextActivity;
    return local$SaveTextActivity == null
        ? CopyWith$Fragment$TextActivity.stub(_then(_instance))
        : CopyWith$Fragment$TextActivity(
            local$SaveTextActivity, (e) => call(SaveTextActivity: e));
  }
}

class _CopyWithStubImpl$Mutation$PostActivity<TRes>
    implements CopyWith$Mutation$PostActivity<TRes> {
  _CopyWithStubImpl$Mutation$PostActivity(this._res);

  TRes _res;

  call({
    Fragment$TextActivity? SaveTextActivity,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$TextActivity<TRes> get SaveTextActivity =>
      CopyWith$Fragment$TextActivity.stub(_res);
}

const documentNodeMutationPostActivity = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'PostActivity'),
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
        name: NameNode(value: 'SaveTextActivity'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'id')),
          ),
          ArgumentNode(
            name: NameNode(value: 'text'),
            value: VariableNode(name: NameNode(value: 'text')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'TextActivity'),
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
  fragmentDefinitionTextActivity,
]);
Mutation$PostActivity _parserFn$Mutation$PostActivity(
        Map<String, dynamic> data) =>
    Mutation$PostActivity.fromJson(data);
typedef OnMutationCompleted$Mutation$PostActivity = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$PostActivity?,
);

class Options$Mutation$PostActivity
    extends graphql.MutationOptions<Mutation$PostActivity> {
  Options$Mutation$PostActivity({
    String? operationName,
    Variables$Mutation$PostActivity? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$PostActivity? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$PostActivity? onCompleted,
    graphql.OnMutationUpdate<Mutation$PostActivity>? update,
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
                    data == null ? null : _parserFn$Mutation$PostActivity(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationPostActivity,
          parserFn: _parserFn$Mutation$PostActivity,
        );

  final OnMutationCompleted$Mutation$PostActivity? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$PostActivity
    extends graphql.WatchQueryOptions<Mutation$PostActivity> {
  WatchOptions$Mutation$PostActivity({
    String? operationName,
    Variables$Mutation$PostActivity? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$PostActivity? typedOptimisticResult,
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
          document: documentNodeMutationPostActivity,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$PostActivity,
        );
}

extension ClientExtension$Mutation$PostActivity on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$PostActivity>> mutate$PostActivity(
          [Options$Mutation$PostActivity? options]) async =>
      await this.mutate(options ?? Options$Mutation$PostActivity());
  graphql.ObservableQuery<Mutation$PostActivity> watchMutation$PostActivity(
          [WatchOptions$Mutation$PostActivity? options]) =>
      this.watchMutation(options ?? WatchOptions$Mutation$PostActivity());
}

class Mutation$PostActivity$HookResult {
  Mutation$PostActivity$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$PostActivity runMutation;

  final graphql.QueryResult<Mutation$PostActivity> result;
}

Mutation$PostActivity$HookResult useMutation$PostActivity(
    [WidgetOptions$Mutation$PostActivity? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$PostActivity());
  return Mutation$PostActivity$HookResult(
    ({variables, optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables?.toJson() ?? const {},
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$PostActivity> useWatchMutation$PostActivity(
        [WatchOptions$Mutation$PostActivity? options]) =>
    graphql_flutter
        .useWatchMutation(options ?? WatchOptions$Mutation$PostActivity());

class WidgetOptions$Mutation$PostActivity
    extends graphql.MutationOptions<Mutation$PostActivity> {
  WidgetOptions$Mutation$PostActivity({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$PostActivity? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$PostActivity? onCompleted,
    graphql.OnMutationUpdate<Mutation$PostActivity>? update,
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
                    data == null ? null : _parserFn$Mutation$PostActivity(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationPostActivity,
          parserFn: _parserFn$Mutation$PostActivity,
        );

  final OnMutationCompleted$Mutation$PostActivity? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$PostActivity
    = graphql.MultiSourceResult<Mutation$PostActivity> Function({
  Variables$Mutation$PostActivity? variables,
  Object? optimisticResult,
  Mutation$PostActivity? typedOptimisticResult,
});
typedef Builder$Mutation$PostActivity = widgets.Widget Function(
  RunMutation$Mutation$PostActivity,
  graphql.QueryResult<Mutation$PostActivity>?,
);

class Mutation$PostActivity$Widget
    extends graphql_flutter.Mutation<Mutation$PostActivity> {
  Mutation$PostActivity$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$PostActivity? options,
    required Builder$Mutation$PostActivity builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$PostActivity(),
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
