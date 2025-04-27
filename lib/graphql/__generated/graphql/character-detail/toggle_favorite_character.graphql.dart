// GENERATED FILE
// DO NOT MODIFY
// ignore_for_file: type=lint
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Mutation$ToggleFavoriteCharacter {
  factory Variables$Mutation$ToggleFavoriteCharacter({int? characterId}) =>
      Variables$Mutation$ToggleFavoriteCharacter._({
        if (characterId != null) r'characterId': characterId,
      });

  Variables$Mutation$ToggleFavoriteCharacter._(this._$data);

  factory Variables$Mutation$ToggleFavoriteCharacter.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('characterId')) {
      final l$characterId = data['characterId'];
      result$data['characterId'] = (l$characterId as int?);
    }
    return Variables$Mutation$ToggleFavoriteCharacter._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get characterId => (_$data['characterId'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('characterId')) {
      final l$characterId = characterId;
      result$data['characterId'] = l$characterId;
    }
    return result$data;
  }

  CopyWith$Variables$Mutation$ToggleFavoriteCharacter<
          Variables$Mutation$ToggleFavoriteCharacter>
      get copyWith => CopyWith$Variables$Mutation$ToggleFavoriteCharacter(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$ToggleFavoriteCharacter ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$characterId = characterId;
    final lOther$characterId = other.characterId;
    if (_$data.containsKey('characterId') !=
        other._$data.containsKey('characterId')) {
      return false;
    }
    if (l$characterId != lOther$characterId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$characterId = characterId;
    return Object.hashAll(
        [_$data.containsKey('characterId') ? l$characterId : const {}]);
  }
}

abstract class CopyWith$Variables$Mutation$ToggleFavoriteCharacter<TRes> {
  factory CopyWith$Variables$Mutation$ToggleFavoriteCharacter(
    Variables$Mutation$ToggleFavoriteCharacter instance,
    TRes Function(Variables$Mutation$ToggleFavoriteCharacter) then,
  ) = _CopyWithImpl$Variables$Mutation$ToggleFavoriteCharacter;

  factory CopyWith$Variables$Mutation$ToggleFavoriteCharacter.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$ToggleFavoriteCharacter;

  TRes call({int? characterId});
}

class _CopyWithImpl$Variables$Mutation$ToggleFavoriteCharacter<TRes>
    implements CopyWith$Variables$Mutation$ToggleFavoriteCharacter<TRes> {
  _CopyWithImpl$Variables$Mutation$ToggleFavoriteCharacter(
    this._instance,
    this._then,
  );

  final Variables$Mutation$ToggleFavoriteCharacter _instance;

  final TRes Function(Variables$Mutation$ToggleFavoriteCharacter) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? characterId = _undefined}) =>
      _then(Variables$Mutation$ToggleFavoriteCharacter._({
        ..._instance._$data,
        if (characterId != _undefined) 'characterId': (characterId as int?),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$ToggleFavoriteCharacter<TRes>
    implements CopyWith$Variables$Mutation$ToggleFavoriteCharacter<TRes> {
  _CopyWithStubImpl$Variables$Mutation$ToggleFavoriteCharacter(this._res);

  TRes _res;

  call({int? characterId}) => _res;
}

class Mutation$ToggleFavoriteCharacter {
  Mutation$ToggleFavoriteCharacter({
    this.ToggleFavourite,
    this.$__typename = 'Mutation',
  });

  factory Mutation$ToggleFavoriteCharacter.fromJson(Map<String, dynamic> json) {
    final l$ToggleFavourite = json['ToggleFavourite'];
    final l$$__typename = json['__typename'];
    return Mutation$ToggleFavoriteCharacter(
      ToggleFavourite: l$ToggleFavourite == null
          ? null
          : Mutation$ToggleFavoriteCharacter$ToggleFavourite.fromJson(
              (l$ToggleFavourite as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$ToggleFavoriteCharacter$ToggleFavourite? ToggleFavourite;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$ToggleFavourite = ToggleFavourite;
    _resultData['ToggleFavourite'] = l$ToggleFavourite?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$ToggleFavourite = ToggleFavourite;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$ToggleFavourite,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$ToggleFavoriteCharacter ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$ToggleFavourite = ToggleFavourite;
    final lOther$ToggleFavourite = other.ToggleFavourite;
    if (l$ToggleFavourite != lOther$ToggleFavourite) {
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

extension UtilityExtension$Mutation$ToggleFavoriteCharacter
    on Mutation$ToggleFavoriteCharacter {
  CopyWith$Mutation$ToggleFavoriteCharacter<Mutation$ToggleFavoriteCharacter>
      get copyWith => CopyWith$Mutation$ToggleFavoriteCharacter(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$ToggleFavoriteCharacter<TRes> {
  factory CopyWith$Mutation$ToggleFavoriteCharacter(
    Mutation$ToggleFavoriteCharacter instance,
    TRes Function(Mutation$ToggleFavoriteCharacter) then,
  ) = _CopyWithImpl$Mutation$ToggleFavoriteCharacter;

  factory CopyWith$Mutation$ToggleFavoriteCharacter.stub(TRes res) =
      _CopyWithStubImpl$Mutation$ToggleFavoriteCharacter;

  TRes call({
    Mutation$ToggleFavoriteCharacter$ToggleFavourite? ToggleFavourite,
    String? $__typename,
  });
  CopyWith$Mutation$ToggleFavoriteCharacter$ToggleFavourite<TRes>
      get ToggleFavourite;
}

class _CopyWithImpl$Mutation$ToggleFavoriteCharacter<TRes>
    implements CopyWith$Mutation$ToggleFavoriteCharacter<TRes> {
  _CopyWithImpl$Mutation$ToggleFavoriteCharacter(
    this._instance,
    this._then,
  );

  final Mutation$ToggleFavoriteCharacter _instance;

  final TRes Function(Mutation$ToggleFavoriteCharacter) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? ToggleFavourite = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$ToggleFavoriteCharacter(
        ToggleFavourite: ToggleFavourite == _undefined
            ? _instance.ToggleFavourite
            : (ToggleFavourite
                as Mutation$ToggleFavoriteCharacter$ToggleFavourite?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$ToggleFavoriteCharacter$ToggleFavourite<TRes>
      get ToggleFavourite {
    final local$ToggleFavourite = _instance.ToggleFavourite;
    return local$ToggleFavourite == null
        ? CopyWith$Mutation$ToggleFavoriteCharacter$ToggleFavourite.stub(
            _then(_instance))
        : CopyWith$Mutation$ToggleFavoriteCharacter$ToggleFavourite(
            local$ToggleFavourite, (e) => call(ToggleFavourite: e));
  }
}

class _CopyWithStubImpl$Mutation$ToggleFavoriteCharacter<TRes>
    implements CopyWith$Mutation$ToggleFavoriteCharacter<TRes> {
  _CopyWithStubImpl$Mutation$ToggleFavoriteCharacter(this._res);

  TRes _res;

  call({
    Mutation$ToggleFavoriteCharacter$ToggleFavourite? ToggleFavourite,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$ToggleFavoriteCharacter$ToggleFavourite<TRes>
      get ToggleFavourite =>
          CopyWith$Mutation$ToggleFavoriteCharacter$ToggleFavourite.stub(_res);
}

const documentNodeMutationToggleFavoriteCharacter = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'ToggleFavoriteCharacter'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'characterId')),
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
        name: NameNode(value: 'ToggleFavourite'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'characterId'),
            value: VariableNode(name: NameNode(value: 'characterId')),
          )
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
Mutation$ToggleFavoriteCharacter _parserFn$Mutation$ToggleFavoriteCharacter(
        Map<String, dynamic> data) =>
    Mutation$ToggleFavoriteCharacter.fromJson(data);
typedef OnMutationCompleted$Mutation$ToggleFavoriteCharacter = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$ToggleFavoriteCharacter?,
);

class Options$Mutation$ToggleFavoriteCharacter
    extends graphql.MutationOptions<Mutation$ToggleFavoriteCharacter> {
  Options$Mutation$ToggleFavoriteCharacter({
    String? operationName,
    Variables$Mutation$ToggleFavoriteCharacter? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$ToggleFavoriteCharacter? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$ToggleFavoriteCharacter? onCompleted,
    graphql.OnMutationUpdate<Mutation$ToggleFavoriteCharacter>? update,
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
                        : _parserFn$Mutation$ToggleFavoriteCharacter(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationToggleFavoriteCharacter,
          parserFn: _parserFn$Mutation$ToggleFavoriteCharacter,
        );

  final OnMutationCompleted$Mutation$ToggleFavoriteCharacter?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$ToggleFavoriteCharacter
    extends graphql.WatchQueryOptions<Mutation$ToggleFavoriteCharacter> {
  WatchOptions$Mutation$ToggleFavoriteCharacter({
    String? operationName,
    Variables$Mutation$ToggleFavoriteCharacter? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$ToggleFavoriteCharacter? typedOptimisticResult,
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
          document: documentNodeMutationToggleFavoriteCharacter,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$ToggleFavoriteCharacter,
        );
}

extension ClientExtension$Mutation$ToggleFavoriteCharacter
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$ToggleFavoriteCharacter>>
      mutate$ToggleFavoriteCharacter(
              [Options$Mutation$ToggleFavoriteCharacter? options]) async =>
          await this
              .mutate(options ?? Options$Mutation$ToggleFavoriteCharacter());
  graphql.ObservableQuery<Mutation$ToggleFavoriteCharacter>
      watchMutation$ToggleFavoriteCharacter(
              [WatchOptions$Mutation$ToggleFavoriteCharacter? options]) =>
          this.watchMutation(
              options ?? WatchOptions$Mutation$ToggleFavoriteCharacter());
}

class Mutation$ToggleFavoriteCharacter$HookResult {
  Mutation$ToggleFavoriteCharacter$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$ToggleFavoriteCharacter runMutation;

  final graphql.QueryResult<Mutation$ToggleFavoriteCharacter> result;
}

Mutation$ToggleFavoriteCharacter$HookResult useMutation$ToggleFavoriteCharacter(
    [WidgetOptions$Mutation$ToggleFavoriteCharacter? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$ToggleFavoriteCharacter());
  return Mutation$ToggleFavoriteCharacter$HookResult(
    ({variables, optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables?.toJson() ?? const {},
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$ToggleFavoriteCharacter>
    useWatchMutation$ToggleFavoriteCharacter(
            [WatchOptions$Mutation$ToggleFavoriteCharacter? options]) =>
        graphql_flutter.useWatchMutation(
            options ?? WatchOptions$Mutation$ToggleFavoriteCharacter());

class WidgetOptions$Mutation$ToggleFavoriteCharacter
    extends graphql.MutationOptions<Mutation$ToggleFavoriteCharacter> {
  WidgetOptions$Mutation$ToggleFavoriteCharacter({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$ToggleFavoriteCharacter? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$ToggleFavoriteCharacter? onCompleted,
    graphql.OnMutationUpdate<Mutation$ToggleFavoriteCharacter>? update,
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
                        : _parserFn$Mutation$ToggleFavoriteCharacter(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationToggleFavoriteCharacter,
          parserFn: _parserFn$Mutation$ToggleFavoriteCharacter,
        );

  final OnMutationCompleted$Mutation$ToggleFavoriteCharacter?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$ToggleFavoriteCharacter
    = graphql.MultiSourceResult<Mutation$ToggleFavoriteCharacter> Function({
  Variables$Mutation$ToggleFavoriteCharacter? variables,
  Object? optimisticResult,
  Mutation$ToggleFavoriteCharacter? typedOptimisticResult,
});
typedef Builder$Mutation$ToggleFavoriteCharacter = widgets.Widget Function(
  RunMutation$Mutation$ToggleFavoriteCharacter,
  graphql.QueryResult<Mutation$ToggleFavoriteCharacter>?,
);

class Mutation$ToggleFavoriteCharacter$Widget
    extends graphql_flutter.Mutation<Mutation$ToggleFavoriteCharacter> {
  Mutation$ToggleFavoriteCharacter$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$ToggleFavoriteCharacter? options,
    required Builder$Mutation$ToggleFavoriteCharacter builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$ToggleFavoriteCharacter(),
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

class Mutation$ToggleFavoriteCharacter$ToggleFavourite {
  Mutation$ToggleFavoriteCharacter$ToggleFavourite(
      {this.$__typename = 'Favourites'});

  factory Mutation$ToggleFavoriteCharacter$ToggleFavourite.fromJson(
      Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    return Mutation$ToggleFavoriteCharacter$ToggleFavourite(
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
    if (other is! Mutation$ToggleFavoriteCharacter$ToggleFavourite ||
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

extension UtilityExtension$Mutation$ToggleFavoriteCharacter$ToggleFavourite
    on Mutation$ToggleFavoriteCharacter$ToggleFavourite {
  CopyWith$Mutation$ToggleFavoriteCharacter$ToggleFavourite<
          Mutation$ToggleFavoriteCharacter$ToggleFavourite>
      get copyWith => CopyWith$Mutation$ToggleFavoriteCharacter$ToggleFavourite(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$ToggleFavoriteCharacter$ToggleFavourite<TRes> {
  factory CopyWith$Mutation$ToggleFavoriteCharacter$ToggleFavourite(
    Mutation$ToggleFavoriteCharacter$ToggleFavourite instance,
    TRes Function(Mutation$ToggleFavoriteCharacter$ToggleFavourite) then,
  ) = _CopyWithImpl$Mutation$ToggleFavoriteCharacter$ToggleFavourite;

  factory CopyWith$Mutation$ToggleFavoriteCharacter$ToggleFavourite.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$ToggleFavoriteCharacter$ToggleFavourite;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Mutation$ToggleFavoriteCharacter$ToggleFavourite<TRes>
    implements CopyWith$Mutation$ToggleFavoriteCharacter$ToggleFavourite<TRes> {
  _CopyWithImpl$Mutation$ToggleFavoriteCharacter$ToggleFavourite(
    this._instance,
    this._then,
  );

  final Mutation$ToggleFavoriteCharacter$ToggleFavourite _instance;

  final TRes Function(Mutation$ToggleFavoriteCharacter$ToggleFavourite) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) =>
      _then(Mutation$ToggleFavoriteCharacter$ToggleFavourite(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Mutation$ToggleFavoriteCharacter$ToggleFavourite<TRes>
    implements CopyWith$Mutation$ToggleFavoriteCharacter$ToggleFavourite<TRes> {
  _CopyWithStubImpl$Mutation$ToggleFavoriteCharacter$ToggleFavourite(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}
