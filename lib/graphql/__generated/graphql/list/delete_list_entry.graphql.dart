// GENERATED FILE
// DO NOT MODIFY
// ignore_for_file: type=lint
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Mutation$DeleteListEntry {
  factory Variables$Mutation$DeleteListEntry({int? id}) =>
      Variables$Mutation$DeleteListEntry._({
        if (id != null) r'id': id,
      });

  Variables$Mutation$DeleteListEntry._(this._$data);

  factory Variables$Mutation$DeleteListEntry.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as int?);
    }
    return Variables$Mutation$DeleteListEntry._(result$data);
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

  CopyWith$Variables$Mutation$DeleteListEntry<
          Variables$Mutation$DeleteListEntry>
      get copyWith => CopyWith$Variables$Mutation$DeleteListEntry(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$DeleteListEntry ||
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

abstract class CopyWith$Variables$Mutation$DeleteListEntry<TRes> {
  factory CopyWith$Variables$Mutation$DeleteListEntry(
    Variables$Mutation$DeleteListEntry instance,
    TRes Function(Variables$Mutation$DeleteListEntry) then,
  ) = _CopyWithImpl$Variables$Mutation$DeleteListEntry;

  factory CopyWith$Variables$Mutation$DeleteListEntry.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$DeleteListEntry;

  TRes call({int? id});
}

class _CopyWithImpl$Variables$Mutation$DeleteListEntry<TRes>
    implements CopyWith$Variables$Mutation$DeleteListEntry<TRes> {
  _CopyWithImpl$Variables$Mutation$DeleteListEntry(
    this._instance,
    this._then,
  );

  final Variables$Mutation$DeleteListEntry _instance;

  final TRes Function(Variables$Mutation$DeleteListEntry) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) =>
      _then(Variables$Mutation$DeleteListEntry._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as int?),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$DeleteListEntry<TRes>
    implements CopyWith$Variables$Mutation$DeleteListEntry<TRes> {
  _CopyWithStubImpl$Variables$Mutation$DeleteListEntry(this._res);

  TRes _res;

  call({int? id}) => _res;
}

class Mutation$DeleteListEntry {
  Mutation$DeleteListEntry({
    this.DeleteMediaListEntry,
    this.$__typename = 'Mutation',
  });

  factory Mutation$DeleteListEntry.fromJson(Map<String, dynamic> json) {
    final l$DeleteMediaListEntry = json['DeleteMediaListEntry'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteListEntry(
      DeleteMediaListEntry: l$DeleteMediaListEntry == null
          ? null
          : Mutation$DeleteListEntry$DeleteMediaListEntry.fromJson(
              (l$DeleteMediaListEntry as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$DeleteListEntry$DeleteMediaListEntry? DeleteMediaListEntry;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$DeleteMediaListEntry = DeleteMediaListEntry;
    _resultData['DeleteMediaListEntry'] = l$DeleteMediaListEntry?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$DeleteMediaListEntry = DeleteMediaListEntry;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$DeleteMediaListEntry,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$DeleteListEntry ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$DeleteMediaListEntry = DeleteMediaListEntry;
    final lOther$DeleteMediaListEntry = other.DeleteMediaListEntry;
    if (l$DeleteMediaListEntry != lOther$DeleteMediaListEntry) {
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

extension UtilityExtension$Mutation$DeleteListEntry
    on Mutation$DeleteListEntry {
  CopyWith$Mutation$DeleteListEntry<Mutation$DeleteListEntry> get copyWith =>
      CopyWith$Mutation$DeleteListEntry(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$DeleteListEntry<TRes> {
  factory CopyWith$Mutation$DeleteListEntry(
    Mutation$DeleteListEntry instance,
    TRes Function(Mutation$DeleteListEntry) then,
  ) = _CopyWithImpl$Mutation$DeleteListEntry;

  factory CopyWith$Mutation$DeleteListEntry.stub(TRes res) =
      _CopyWithStubImpl$Mutation$DeleteListEntry;

  TRes call({
    Mutation$DeleteListEntry$DeleteMediaListEntry? DeleteMediaListEntry,
    String? $__typename,
  });
  CopyWith$Mutation$DeleteListEntry$DeleteMediaListEntry<TRes>
      get DeleteMediaListEntry;
}

class _CopyWithImpl$Mutation$DeleteListEntry<TRes>
    implements CopyWith$Mutation$DeleteListEntry<TRes> {
  _CopyWithImpl$Mutation$DeleteListEntry(
    this._instance,
    this._then,
  );

  final Mutation$DeleteListEntry _instance;

  final TRes Function(Mutation$DeleteListEntry) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? DeleteMediaListEntry = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$DeleteListEntry(
        DeleteMediaListEntry: DeleteMediaListEntry == _undefined
            ? _instance.DeleteMediaListEntry
            : (DeleteMediaListEntry
                as Mutation$DeleteListEntry$DeleteMediaListEntry?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$DeleteListEntry$DeleteMediaListEntry<TRes>
      get DeleteMediaListEntry {
    final local$DeleteMediaListEntry = _instance.DeleteMediaListEntry;
    return local$DeleteMediaListEntry == null
        ? CopyWith$Mutation$DeleteListEntry$DeleteMediaListEntry.stub(
            _then(_instance))
        : CopyWith$Mutation$DeleteListEntry$DeleteMediaListEntry(
            local$DeleteMediaListEntry, (e) => call(DeleteMediaListEntry: e));
  }
}

class _CopyWithStubImpl$Mutation$DeleteListEntry<TRes>
    implements CopyWith$Mutation$DeleteListEntry<TRes> {
  _CopyWithStubImpl$Mutation$DeleteListEntry(this._res);

  TRes _res;

  call({
    Mutation$DeleteListEntry$DeleteMediaListEntry? DeleteMediaListEntry,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$DeleteListEntry$DeleteMediaListEntry<TRes>
      get DeleteMediaListEntry =>
          CopyWith$Mutation$DeleteListEntry$DeleteMediaListEntry.stub(_res);
}

const documentNodeMutationDeleteListEntry = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'DeleteListEntry'),
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
        name: NameNode(value: 'DeleteMediaListEntry'),
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
Mutation$DeleteListEntry _parserFn$Mutation$DeleteListEntry(
        Map<String, dynamic> data) =>
    Mutation$DeleteListEntry.fromJson(data);
typedef OnMutationCompleted$Mutation$DeleteListEntry = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$DeleteListEntry?,
);

class Options$Mutation$DeleteListEntry
    extends graphql.MutationOptions<Mutation$DeleteListEntry> {
  Options$Mutation$DeleteListEntry({
    String? operationName,
    Variables$Mutation$DeleteListEntry? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$DeleteListEntry? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$DeleteListEntry? onCompleted,
    graphql.OnMutationUpdate<Mutation$DeleteListEntry>? update,
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
                        : _parserFn$Mutation$DeleteListEntry(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationDeleteListEntry,
          parserFn: _parserFn$Mutation$DeleteListEntry,
        );

  final OnMutationCompleted$Mutation$DeleteListEntry? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$DeleteListEntry
    extends graphql.WatchQueryOptions<Mutation$DeleteListEntry> {
  WatchOptions$Mutation$DeleteListEntry({
    String? operationName,
    Variables$Mutation$DeleteListEntry? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$DeleteListEntry? typedOptimisticResult,
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
          document: documentNodeMutationDeleteListEntry,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$DeleteListEntry,
        );
}

extension ClientExtension$Mutation$DeleteListEntry on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$DeleteListEntry>> mutate$DeleteListEntry(
          [Options$Mutation$DeleteListEntry? options]) async =>
      await this.mutate(options ?? Options$Mutation$DeleteListEntry());
  graphql.ObservableQuery<
      Mutation$DeleteListEntry> watchMutation$DeleteListEntry(
          [WatchOptions$Mutation$DeleteListEntry? options]) =>
      this.watchMutation(options ?? WatchOptions$Mutation$DeleteListEntry());
}

class Mutation$DeleteListEntry$HookResult {
  Mutation$DeleteListEntry$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$DeleteListEntry runMutation;

  final graphql.QueryResult<Mutation$DeleteListEntry> result;
}

Mutation$DeleteListEntry$HookResult useMutation$DeleteListEntry(
    [WidgetOptions$Mutation$DeleteListEntry? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$DeleteListEntry());
  return Mutation$DeleteListEntry$HookResult(
    ({variables, optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables?.toJson() ?? const {},
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$DeleteListEntry>
    useWatchMutation$DeleteListEntry(
            [WatchOptions$Mutation$DeleteListEntry? options]) =>
        graphql_flutter.useWatchMutation(
            options ?? WatchOptions$Mutation$DeleteListEntry());

class WidgetOptions$Mutation$DeleteListEntry
    extends graphql.MutationOptions<Mutation$DeleteListEntry> {
  WidgetOptions$Mutation$DeleteListEntry({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$DeleteListEntry? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$DeleteListEntry? onCompleted,
    graphql.OnMutationUpdate<Mutation$DeleteListEntry>? update,
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
                        : _parserFn$Mutation$DeleteListEntry(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationDeleteListEntry,
          parserFn: _parserFn$Mutation$DeleteListEntry,
        );

  final OnMutationCompleted$Mutation$DeleteListEntry? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$DeleteListEntry
    = graphql.MultiSourceResult<Mutation$DeleteListEntry> Function({
  Variables$Mutation$DeleteListEntry? variables,
  Object? optimisticResult,
  Mutation$DeleteListEntry? typedOptimisticResult,
});
typedef Builder$Mutation$DeleteListEntry = widgets.Widget Function(
  RunMutation$Mutation$DeleteListEntry,
  graphql.QueryResult<Mutation$DeleteListEntry>?,
);

class Mutation$DeleteListEntry$Widget
    extends graphql_flutter.Mutation<Mutation$DeleteListEntry> {
  Mutation$DeleteListEntry$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$DeleteListEntry? options,
    required Builder$Mutation$DeleteListEntry builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$DeleteListEntry(),
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

class Mutation$DeleteListEntry$DeleteMediaListEntry {
  Mutation$DeleteListEntry$DeleteMediaListEntry({
    this.deleted,
    this.$__typename = 'Deleted',
  });

  factory Mutation$DeleteListEntry$DeleteMediaListEntry.fromJson(
      Map<String, dynamic> json) {
    final l$deleted = json['deleted'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteListEntry$DeleteMediaListEntry(
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
    if (other is! Mutation$DeleteListEntry$DeleteMediaListEntry ||
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

extension UtilityExtension$Mutation$DeleteListEntry$DeleteMediaListEntry
    on Mutation$DeleteListEntry$DeleteMediaListEntry {
  CopyWith$Mutation$DeleteListEntry$DeleteMediaListEntry<
          Mutation$DeleteListEntry$DeleteMediaListEntry>
      get copyWith => CopyWith$Mutation$DeleteListEntry$DeleteMediaListEntry(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$DeleteListEntry$DeleteMediaListEntry<TRes> {
  factory CopyWith$Mutation$DeleteListEntry$DeleteMediaListEntry(
    Mutation$DeleteListEntry$DeleteMediaListEntry instance,
    TRes Function(Mutation$DeleteListEntry$DeleteMediaListEntry) then,
  ) = _CopyWithImpl$Mutation$DeleteListEntry$DeleteMediaListEntry;

  factory CopyWith$Mutation$DeleteListEntry$DeleteMediaListEntry.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$DeleteListEntry$DeleteMediaListEntry;

  TRes call({
    bool? deleted,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$DeleteListEntry$DeleteMediaListEntry<TRes>
    implements CopyWith$Mutation$DeleteListEntry$DeleteMediaListEntry<TRes> {
  _CopyWithImpl$Mutation$DeleteListEntry$DeleteMediaListEntry(
    this._instance,
    this._then,
  );

  final Mutation$DeleteListEntry$DeleteMediaListEntry _instance;

  final TRes Function(Mutation$DeleteListEntry$DeleteMediaListEntry) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? deleted = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$DeleteListEntry$DeleteMediaListEntry(
        deleted: deleted == _undefined ? _instance.deleted : (deleted as bool?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$DeleteListEntry$DeleteMediaListEntry<TRes>
    implements CopyWith$Mutation$DeleteListEntry$DeleteMediaListEntry<TRes> {
  _CopyWithStubImpl$Mutation$DeleteListEntry$DeleteMediaListEntry(this._res);

  TRes _res;

  call({
    bool? deleted,
    String? $__typename,
  }) =>
      _res;
}
