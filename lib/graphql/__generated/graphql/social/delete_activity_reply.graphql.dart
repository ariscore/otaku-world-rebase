// GENERATED FILE
// DO NOT MODIFY
// ignore_for_file: type=lint
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Mutation$DeleteActivityReply {
  factory Variables$Mutation$DeleteActivityReply({int? id}) =>
      Variables$Mutation$DeleteActivityReply._({
        if (id != null) r'id': id,
      });

  Variables$Mutation$DeleteActivityReply._(this._$data);

  factory Variables$Mutation$DeleteActivityReply.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as int?);
    }
    return Variables$Mutation$DeleteActivityReply._(result$data);
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

  CopyWith$Variables$Mutation$DeleteActivityReply<
          Variables$Mutation$DeleteActivityReply>
      get copyWith => CopyWith$Variables$Mutation$DeleteActivityReply(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$DeleteActivityReply ||
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

abstract class CopyWith$Variables$Mutation$DeleteActivityReply<TRes> {
  factory CopyWith$Variables$Mutation$DeleteActivityReply(
    Variables$Mutation$DeleteActivityReply instance,
    TRes Function(Variables$Mutation$DeleteActivityReply) then,
  ) = _CopyWithImpl$Variables$Mutation$DeleteActivityReply;

  factory CopyWith$Variables$Mutation$DeleteActivityReply.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$DeleteActivityReply;

  TRes call({int? id});
}

class _CopyWithImpl$Variables$Mutation$DeleteActivityReply<TRes>
    implements CopyWith$Variables$Mutation$DeleteActivityReply<TRes> {
  _CopyWithImpl$Variables$Mutation$DeleteActivityReply(
    this._instance,
    this._then,
  );

  final Variables$Mutation$DeleteActivityReply _instance;

  final TRes Function(Variables$Mutation$DeleteActivityReply) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) =>
      _then(Variables$Mutation$DeleteActivityReply._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as int?),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$DeleteActivityReply<TRes>
    implements CopyWith$Variables$Mutation$DeleteActivityReply<TRes> {
  _CopyWithStubImpl$Variables$Mutation$DeleteActivityReply(this._res);

  TRes _res;

  call({int? id}) => _res;
}

class Mutation$DeleteActivityReply {
  Mutation$DeleteActivityReply({
    this.DeleteActivityReply,
    this.$__typename = 'Mutation',
  });

  factory Mutation$DeleteActivityReply.fromJson(Map<String, dynamic> json) {
    final l$DeleteActivityReply = json['DeleteActivityReply'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteActivityReply(
      DeleteActivityReply: l$DeleteActivityReply == null
          ? null
          : Mutation$DeleteActivityReply$DeleteActivityReply.fromJson(
              (l$DeleteActivityReply as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$DeleteActivityReply$DeleteActivityReply? DeleteActivityReply;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$DeleteActivityReply = DeleteActivityReply;
    _resultData['DeleteActivityReply'] = l$DeleteActivityReply?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$DeleteActivityReply = DeleteActivityReply;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$DeleteActivityReply,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$DeleteActivityReply ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$DeleteActivityReply = DeleteActivityReply;
    final lOther$DeleteActivityReply = other.DeleteActivityReply;
    if (l$DeleteActivityReply != lOther$DeleteActivityReply) {
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

extension UtilityExtension$Mutation$DeleteActivityReply
    on Mutation$DeleteActivityReply {
  CopyWith$Mutation$DeleteActivityReply<Mutation$DeleteActivityReply>
      get copyWith => CopyWith$Mutation$DeleteActivityReply(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$DeleteActivityReply<TRes> {
  factory CopyWith$Mutation$DeleteActivityReply(
    Mutation$DeleteActivityReply instance,
    TRes Function(Mutation$DeleteActivityReply) then,
  ) = _CopyWithImpl$Mutation$DeleteActivityReply;

  factory CopyWith$Mutation$DeleteActivityReply.stub(TRes res) =
      _CopyWithStubImpl$Mutation$DeleteActivityReply;

  TRes call({
    Mutation$DeleteActivityReply$DeleteActivityReply? DeleteActivityReply,
    String? $__typename,
  });
  CopyWith$Mutation$DeleteActivityReply$DeleteActivityReply<TRes>
      get DeleteActivityReply;
}

class _CopyWithImpl$Mutation$DeleteActivityReply<TRes>
    implements CopyWith$Mutation$DeleteActivityReply<TRes> {
  _CopyWithImpl$Mutation$DeleteActivityReply(
    this._instance,
    this._then,
  );

  final Mutation$DeleteActivityReply _instance;

  final TRes Function(Mutation$DeleteActivityReply) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? DeleteActivityReply = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$DeleteActivityReply(
        DeleteActivityReply: DeleteActivityReply == _undefined
            ? _instance.DeleteActivityReply
            : (DeleteActivityReply
                as Mutation$DeleteActivityReply$DeleteActivityReply?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$DeleteActivityReply$DeleteActivityReply<TRes>
      get DeleteActivityReply {
    final local$DeleteActivityReply = _instance.DeleteActivityReply;
    return local$DeleteActivityReply == null
        ? CopyWith$Mutation$DeleteActivityReply$DeleteActivityReply.stub(
            _then(_instance))
        : CopyWith$Mutation$DeleteActivityReply$DeleteActivityReply(
            local$DeleteActivityReply, (e) => call(DeleteActivityReply: e));
  }
}

class _CopyWithStubImpl$Mutation$DeleteActivityReply<TRes>
    implements CopyWith$Mutation$DeleteActivityReply<TRes> {
  _CopyWithStubImpl$Mutation$DeleteActivityReply(this._res);

  TRes _res;

  call({
    Mutation$DeleteActivityReply$DeleteActivityReply? DeleteActivityReply,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$DeleteActivityReply$DeleteActivityReply<TRes>
      get DeleteActivityReply =>
          CopyWith$Mutation$DeleteActivityReply$DeleteActivityReply.stub(_res);
}

const documentNodeMutationDeleteActivityReply = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'DeleteActivityReply'),
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
        name: NameNode(value: 'DeleteActivityReply'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'id')),
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
Mutation$DeleteActivityReply _parserFn$Mutation$DeleteActivityReply(
        Map<String, dynamic> data) =>
    Mutation$DeleteActivityReply.fromJson(data);
typedef OnMutationCompleted$Mutation$DeleteActivityReply = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$DeleteActivityReply?,
);

class Options$Mutation$DeleteActivityReply
    extends graphql.MutationOptions<Mutation$DeleteActivityReply> {
  Options$Mutation$DeleteActivityReply({
    String? operationName,
    Variables$Mutation$DeleteActivityReply? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$DeleteActivityReply? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$DeleteActivityReply? onCompleted,
    graphql.OnMutationUpdate<Mutation$DeleteActivityReply>? update,
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
                        : _parserFn$Mutation$DeleteActivityReply(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationDeleteActivityReply,
          parserFn: _parserFn$Mutation$DeleteActivityReply,
        );

  final OnMutationCompleted$Mutation$DeleteActivityReply? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$DeleteActivityReply
    extends graphql.WatchQueryOptions<Mutation$DeleteActivityReply> {
  WatchOptions$Mutation$DeleteActivityReply({
    String? operationName,
    Variables$Mutation$DeleteActivityReply? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$DeleteActivityReply? typedOptimisticResult,
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
          document: documentNodeMutationDeleteActivityReply,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$DeleteActivityReply,
        );
}

extension ClientExtension$Mutation$DeleteActivityReply
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$DeleteActivityReply>>
      mutate$DeleteActivityReply(
              [Options$Mutation$DeleteActivityReply? options]) async =>
          await this.mutate(options ?? Options$Mutation$DeleteActivityReply());
  graphql.ObservableQuery<Mutation$DeleteActivityReply>
      watchMutation$DeleteActivityReply(
              [WatchOptions$Mutation$DeleteActivityReply? options]) =>
          this.watchMutation(
              options ?? WatchOptions$Mutation$DeleteActivityReply());
}

class Mutation$DeleteActivityReply$HookResult {
  Mutation$DeleteActivityReply$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$DeleteActivityReply runMutation;

  final graphql.QueryResult<Mutation$DeleteActivityReply> result;
}

Mutation$DeleteActivityReply$HookResult useMutation$DeleteActivityReply(
    [WidgetOptions$Mutation$DeleteActivityReply? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$DeleteActivityReply());
  return Mutation$DeleteActivityReply$HookResult(
    ({variables, optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables?.toJson() ?? const {},
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$DeleteActivityReply>
    useWatchMutation$DeleteActivityReply(
            [WatchOptions$Mutation$DeleteActivityReply? options]) =>
        graphql_flutter.useWatchMutation(
            options ?? WatchOptions$Mutation$DeleteActivityReply());

class WidgetOptions$Mutation$DeleteActivityReply
    extends graphql.MutationOptions<Mutation$DeleteActivityReply> {
  WidgetOptions$Mutation$DeleteActivityReply({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$DeleteActivityReply? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$DeleteActivityReply? onCompleted,
    graphql.OnMutationUpdate<Mutation$DeleteActivityReply>? update,
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
                        : _parserFn$Mutation$DeleteActivityReply(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationDeleteActivityReply,
          parserFn: _parserFn$Mutation$DeleteActivityReply,
        );

  final OnMutationCompleted$Mutation$DeleteActivityReply? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$DeleteActivityReply
    = graphql.MultiSourceResult<Mutation$DeleteActivityReply> Function({
  Variables$Mutation$DeleteActivityReply? variables,
  Object? optimisticResult,
  Mutation$DeleteActivityReply? typedOptimisticResult,
});
typedef Builder$Mutation$DeleteActivityReply = widgets.Widget Function(
  RunMutation$Mutation$DeleteActivityReply,
  graphql.QueryResult<Mutation$DeleteActivityReply>?,
);

class Mutation$DeleteActivityReply$Widget
    extends graphql_flutter.Mutation<Mutation$DeleteActivityReply> {
  Mutation$DeleteActivityReply$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$DeleteActivityReply? options,
    required Builder$Mutation$DeleteActivityReply builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$DeleteActivityReply(),
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

class Mutation$DeleteActivityReply$DeleteActivityReply {
  Mutation$DeleteActivityReply$DeleteActivityReply({
    this.deleted,
    this.$__typename = 'Deleted',
  });

  factory Mutation$DeleteActivityReply$DeleteActivityReply.fromJson(
      Map<String, dynamic> json) {
    final l$deleted = json['deleted'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteActivityReply$DeleteActivityReply(
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
    if (other is! Mutation$DeleteActivityReply$DeleteActivityReply ||
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

extension UtilityExtension$Mutation$DeleteActivityReply$DeleteActivityReply
    on Mutation$DeleteActivityReply$DeleteActivityReply {
  CopyWith$Mutation$DeleteActivityReply$DeleteActivityReply<
          Mutation$DeleteActivityReply$DeleteActivityReply>
      get copyWith => CopyWith$Mutation$DeleteActivityReply$DeleteActivityReply(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$DeleteActivityReply$DeleteActivityReply<TRes> {
  factory CopyWith$Mutation$DeleteActivityReply$DeleteActivityReply(
    Mutation$DeleteActivityReply$DeleteActivityReply instance,
    TRes Function(Mutation$DeleteActivityReply$DeleteActivityReply) then,
  ) = _CopyWithImpl$Mutation$DeleteActivityReply$DeleteActivityReply;

  factory CopyWith$Mutation$DeleteActivityReply$DeleteActivityReply.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$DeleteActivityReply$DeleteActivityReply;

  TRes call({
    bool? deleted,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$DeleteActivityReply$DeleteActivityReply<TRes>
    implements CopyWith$Mutation$DeleteActivityReply$DeleteActivityReply<TRes> {
  _CopyWithImpl$Mutation$DeleteActivityReply$DeleteActivityReply(
    this._instance,
    this._then,
  );

  final Mutation$DeleteActivityReply$DeleteActivityReply _instance;

  final TRes Function(Mutation$DeleteActivityReply$DeleteActivityReply) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? deleted = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$DeleteActivityReply$DeleteActivityReply(
        deleted: deleted == _undefined ? _instance.deleted : (deleted as bool?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$DeleteActivityReply$DeleteActivityReply<TRes>
    implements CopyWith$Mutation$DeleteActivityReply$DeleteActivityReply<TRes> {
  _CopyWithStubImpl$Mutation$DeleteActivityReply$DeleteActivityReply(this._res);

  TRes _res;

  call({
    bool? deleted,
    String? $__typename,
  }) =>
      _res;
}
