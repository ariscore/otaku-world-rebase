// GENERATED FILE
// DO NOT MODIFY
// ignore_for_file: type=lint
import '../fragments.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Mutation$SaveMessageActivity {
  factory Variables$Mutation$SaveMessageActivity({
    int? id,
    String? text,
    bool? private,
    int? recipientId,
  }) =>
      Variables$Mutation$SaveMessageActivity._({
        if (id != null) r'id': id,
        if (text != null) r'text': text,
        if (private != null) r'private': private,
        if (recipientId != null) r'recipientId': recipientId,
      });

  Variables$Mutation$SaveMessageActivity._(this._$data);

  factory Variables$Mutation$SaveMessageActivity.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as int?);
    }
    if (data.containsKey('text')) {
      final l$text = data['text'];
      result$data['text'] = (l$text as String?);
    }
    if (data.containsKey('private')) {
      final l$private = data['private'];
      result$data['private'] = (l$private as bool?);
    }
    if (data.containsKey('recipientId')) {
      final l$recipientId = data['recipientId'];
      result$data['recipientId'] = (l$recipientId as int?);
    }
    return Variables$Mutation$SaveMessageActivity._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get id => (_$data['id'] as int?);

  String? get text => (_$data['text'] as String?);

  bool? get private => (_$data['private'] as bool?);

  int? get recipientId => (_$data['recipientId'] as int?);

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
    if (_$data.containsKey('private')) {
      final l$private = private;
      result$data['private'] = l$private;
    }
    if (_$data.containsKey('recipientId')) {
      final l$recipientId = recipientId;
      result$data['recipientId'] = l$recipientId;
    }
    return result$data;
  }

  CopyWith$Variables$Mutation$SaveMessageActivity<
          Variables$Mutation$SaveMessageActivity>
      get copyWith => CopyWith$Variables$Mutation$SaveMessageActivity(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$SaveMessageActivity) ||
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
    final l$private = private;
    final lOther$private = other.private;
    if (_$data.containsKey('private') != other._$data.containsKey('private')) {
      return false;
    }
    if (l$private != lOther$private) {
      return false;
    }
    final l$recipientId = recipientId;
    final lOther$recipientId = other.recipientId;
    if (_$data.containsKey('recipientId') !=
        other._$data.containsKey('recipientId')) {
      return false;
    }
    if (l$recipientId != lOther$recipientId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$text = text;
    final l$private = private;
    final l$recipientId = recipientId;
    return Object.hashAll([
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('text') ? l$text : const {},
      _$data.containsKey('private') ? l$private : const {},
      _$data.containsKey('recipientId') ? l$recipientId : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$SaveMessageActivity<TRes> {
  factory CopyWith$Variables$Mutation$SaveMessageActivity(
    Variables$Mutation$SaveMessageActivity instance,
    TRes Function(Variables$Mutation$SaveMessageActivity) then,
  ) = _CopyWithImpl$Variables$Mutation$SaveMessageActivity;

  factory CopyWith$Variables$Mutation$SaveMessageActivity.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$SaveMessageActivity;

  TRes call({
    int? id,
    String? text,
    bool? private,
    int? recipientId,
  });
}

class _CopyWithImpl$Variables$Mutation$SaveMessageActivity<TRes>
    implements CopyWith$Variables$Mutation$SaveMessageActivity<TRes> {
  _CopyWithImpl$Variables$Mutation$SaveMessageActivity(
    this._instance,
    this._then,
  );

  final Variables$Mutation$SaveMessageActivity _instance;

  final TRes Function(Variables$Mutation$SaveMessageActivity) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? text = _undefined,
    Object? private = _undefined,
    Object? recipientId = _undefined,
  }) =>
      _then(Variables$Mutation$SaveMessageActivity._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as int?),
        if (text != _undefined) 'text': (text as String?),
        if (private != _undefined) 'private': (private as bool?),
        if (recipientId != _undefined) 'recipientId': (recipientId as int?),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$SaveMessageActivity<TRes>
    implements CopyWith$Variables$Mutation$SaveMessageActivity<TRes> {
  _CopyWithStubImpl$Variables$Mutation$SaveMessageActivity(this._res);

  TRes _res;

  call({
    int? id,
    String? text,
    bool? private,
    int? recipientId,
  }) =>
      _res;
}

class Mutation$SaveMessageActivity {
  Mutation$SaveMessageActivity({
    this.SaveMessageActivity,
    this.$__typename = 'Mutation',
  });

  factory Mutation$SaveMessageActivity.fromJson(Map<String, dynamic> json) {
    final l$SaveMessageActivity = json['SaveMessageActivity'];
    final l$$__typename = json['__typename'];
    return Mutation$SaveMessageActivity(
      SaveMessageActivity: l$SaveMessageActivity == null
          ? null
          : Fragment$MessageActivity.fromJson(
              (l$SaveMessageActivity as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$MessageActivity? SaveMessageActivity;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$SaveMessageActivity = SaveMessageActivity;
    _resultData['SaveMessageActivity'] = l$SaveMessageActivity?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$SaveMessageActivity = SaveMessageActivity;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$SaveMessageActivity,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$SaveMessageActivity) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$SaveMessageActivity = SaveMessageActivity;
    final lOther$SaveMessageActivity = other.SaveMessageActivity;
    if (l$SaveMessageActivity != lOther$SaveMessageActivity) {
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

extension UtilityExtension$Mutation$SaveMessageActivity
    on Mutation$SaveMessageActivity {
  CopyWith$Mutation$SaveMessageActivity<Mutation$SaveMessageActivity>
      get copyWith => CopyWith$Mutation$SaveMessageActivity(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$SaveMessageActivity<TRes> {
  factory CopyWith$Mutation$SaveMessageActivity(
    Mutation$SaveMessageActivity instance,
    TRes Function(Mutation$SaveMessageActivity) then,
  ) = _CopyWithImpl$Mutation$SaveMessageActivity;

  factory CopyWith$Mutation$SaveMessageActivity.stub(TRes res) =
      _CopyWithStubImpl$Mutation$SaveMessageActivity;

  TRes call({
    Fragment$MessageActivity? SaveMessageActivity,
    String? $__typename,
  });
  CopyWith$Fragment$MessageActivity<TRes> get SaveMessageActivity;
}

class _CopyWithImpl$Mutation$SaveMessageActivity<TRes>
    implements CopyWith$Mutation$SaveMessageActivity<TRes> {
  _CopyWithImpl$Mutation$SaveMessageActivity(
    this._instance,
    this._then,
  );

  final Mutation$SaveMessageActivity _instance;

  final TRes Function(Mutation$SaveMessageActivity) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? SaveMessageActivity = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$SaveMessageActivity(
        SaveMessageActivity: SaveMessageActivity == _undefined
            ? _instance.SaveMessageActivity
            : (SaveMessageActivity as Fragment$MessageActivity?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$MessageActivity<TRes> get SaveMessageActivity {
    final local$SaveMessageActivity = _instance.SaveMessageActivity;
    return local$SaveMessageActivity == null
        ? CopyWith$Fragment$MessageActivity.stub(_then(_instance))
        : CopyWith$Fragment$MessageActivity(
            local$SaveMessageActivity, (e) => call(SaveMessageActivity: e));
  }
}

class _CopyWithStubImpl$Mutation$SaveMessageActivity<TRes>
    implements CopyWith$Mutation$SaveMessageActivity<TRes> {
  _CopyWithStubImpl$Mutation$SaveMessageActivity(this._res);

  TRes _res;

  call({
    Fragment$MessageActivity? SaveMessageActivity,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$MessageActivity<TRes> get SaveMessageActivity =>
      CopyWith$Fragment$MessageActivity.stub(_res);
}

const documentNodeMutationSaveMessageActivity = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'SaveMessageActivity'),
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
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'private')),
        type: NamedTypeNode(
          name: NameNode(value: 'Boolean'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'recipientId')),
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
        name: NameNode(value: 'SaveMessageActivity'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'id')),
          ),
          ArgumentNode(
            name: NameNode(value: 'message'),
            value: VariableNode(name: NameNode(value: 'text')),
          ),
          ArgumentNode(
            name: NameNode(value: 'private'),
            value: VariableNode(name: NameNode(value: 'private')),
          ),
          ArgumentNode(
            name: NameNode(value: 'recipientId'),
            value: VariableNode(name: NameNode(value: 'recipientId')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'MessageActivity'),
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
  fragmentDefinitionMessageActivity,
]);
Mutation$SaveMessageActivity _parserFn$Mutation$SaveMessageActivity(
        Map<String, dynamic> data) =>
    Mutation$SaveMessageActivity.fromJson(data);
typedef OnMutationCompleted$Mutation$SaveMessageActivity = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$SaveMessageActivity?,
);

class Options$Mutation$SaveMessageActivity
    extends graphql.MutationOptions<Mutation$SaveMessageActivity> {
  Options$Mutation$SaveMessageActivity({
    String? operationName,
    Variables$Mutation$SaveMessageActivity? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$SaveMessageActivity? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$SaveMessageActivity? onCompleted,
    graphql.OnMutationUpdate<Mutation$SaveMessageActivity>? update,
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
                        : _parserFn$Mutation$SaveMessageActivity(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationSaveMessageActivity,
          parserFn: _parserFn$Mutation$SaveMessageActivity,
        );

  final OnMutationCompleted$Mutation$SaveMessageActivity? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$SaveMessageActivity
    extends graphql.WatchQueryOptions<Mutation$SaveMessageActivity> {
  WatchOptions$Mutation$SaveMessageActivity({
    String? operationName,
    Variables$Mutation$SaveMessageActivity? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$SaveMessageActivity? typedOptimisticResult,
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
          document: documentNodeMutationSaveMessageActivity,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$SaveMessageActivity,
        );
}

extension ClientExtension$Mutation$SaveMessageActivity
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$SaveMessageActivity>>
      mutate$SaveMessageActivity(
              [Options$Mutation$SaveMessageActivity? options]) async =>
          await this.mutate(options ?? Options$Mutation$SaveMessageActivity());
  graphql.ObservableQuery<Mutation$SaveMessageActivity>
      watchMutation$SaveMessageActivity(
              [WatchOptions$Mutation$SaveMessageActivity? options]) =>
          this.watchMutation(
              options ?? WatchOptions$Mutation$SaveMessageActivity());
}

class Mutation$SaveMessageActivity$HookResult {
  Mutation$SaveMessageActivity$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$SaveMessageActivity runMutation;

  final graphql.QueryResult<Mutation$SaveMessageActivity> result;
}

Mutation$SaveMessageActivity$HookResult useMutation$SaveMessageActivity(
    [WidgetOptions$Mutation$SaveMessageActivity? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$SaveMessageActivity());
  return Mutation$SaveMessageActivity$HookResult(
    ({variables, optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables?.toJson() ?? const {},
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$SaveMessageActivity>
    useWatchMutation$SaveMessageActivity(
            [WatchOptions$Mutation$SaveMessageActivity? options]) =>
        graphql_flutter.useWatchMutation(
            options ?? WatchOptions$Mutation$SaveMessageActivity());

class WidgetOptions$Mutation$SaveMessageActivity
    extends graphql.MutationOptions<Mutation$SaveMessageActivity> {
  WidgetOptions$Mutation$SaveMessageActivity({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$SaveMessageActivity? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$SaveMessageActivity? onCompleted,
    graphql.OnMutationUpdate<Mutation$SaveMessageActivity>? update,
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
                        : _parserFn$Mutation$SaveMessageActivity(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationSaveMessageActivity,
          parserFn: _parserFn$Mutation$SaveMessageActivity,
        );

  final OnMutationCompleted$Mutation$SaveMessageActivity? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$SaveMessageActivity
    = graphql.MultiSourceResult<Mutation$SaveMessageActivity> Function({
  Variables$Mutation$SaveMessageActivity? variables,
  Object? optimisticResult,
  Mutation$SaveMessageActivity? typedOptimisticResult,
});
typedef Builder$Mutation$SaveMessageActivity = widgets.Widget Function(
  RunMutation$Mutation$SaveMessageActivity,
  graphql.QueryResult<Mutation$SaveMessageActivity>?,
);

class Mutation$SaveMessageActivity$Widget
    extends graphql_flutter.Mutation<Mutation$SaveMessageActivity> {
  Mutation$SaveMessageActivity$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$SaveMessageActivity? options,
    required Builder$Mutation$SaveMessageActivity builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$SaveMessageActivity(),
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
