// GENERATED FILE
// DO NOT MODIFY
// ignore_for_file: type=lint
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Mutation$ToggleFavoriteStudio {
  factory Variables$Mutation$ToggleFavoriteStudio({int? studioId}) =>
      Variables$Mutation$ToggleFavoriteStudio._({
        if (studioId != null) r'studioId': studioId,
      });

  Variables$Mutation$ToggleFavoriteStudio._(this._$data);

  factory Variables$Mutation$ToggleFavoriteStudio.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('studioId')) {
      final l$studioId = data['studioId'];
      result$data['studioId'] = (l$studioId as int?);
    }
    return Variables$Mutation$ToggleFavoriteStudio._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get studioId => (_$data['studioId'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('studioId')) {
      final l$studioId = studioId;
      result$data['studioId'] = l$studioId;
    }
    return result$data;
  }

  CopyWith$Variables$Mutation$ToggleFavoriteStudio<
          Variables$Mutation$ToggleFavoriteStudio>
      get copyWith => CopyWith$Variables$Mutation$ToggleFavoriteStudio(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$ToggleFavoriteStudio ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$studioId = studioId;
    final lOther$studioId = other.studioId;
    if (_$data.containsKey('studioId') !=
        other._$data.containsKey('studioId')) {
      return false;
    }
    if (l$studioId != lOther$studioId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$studioId = studioId;
    return Object.hashAll(
        [_$data.containsKey('studioId') ? l$studioId : const {}]);
  }
}

abstract class CopyWith$Variables$Mutation$ToggleFavoriteStudio<TRes> {
  factory CopyWith$Variables$Mutation$ToggleFavoriteStudio(
    Variables$Mutation$ToggleFavoriteStudio instance,
    TRes Function(Variables$Mutation$ToggleFavoriteStudio) then,
  ) = _CopyWithImpl$Variables$Mutation$ToggleFavoriteStudio;

  factory CopyWith$Variables$Mutation$ToggleFavoriteStudio.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$ToggleFavoriteStudio;

  TRes call({int? studioId});
}

class _CopyWithImpl$Variables$Mutation$ToggleFavoriteStudio<TRes>
    implements CopyWith$Variables$Mutation$ToggleFavoriteStudio<TRes> {
  _CopyWithImpl$Variables$Mutation$ToggleFavoriteStudio(
    this._instance,
    this._then,
  );

  final Variables$Mutation$ToggleFavoriteStudio _instance;

  final TRes Function(Variables$Mutation$ToggleFavoriteStudio) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? studioId = _undefined}) =>
      _then(Variables$Mutation$ToggleFavoriteStudio._({
        ..._instance._$data,
        if (studioId != _undefined) 'studioId': (studioId as int?),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$ToggleFavoriteStudio<TRes>
    implements CopyWith$Variables$Mutation$ToggleFavoriteStudio<TRes> {
  _CopyWithStubImpl$Variables$Mutation$ToggleFavoriteStudio(this._res);

  TRes _res;

  call({int? studioId}) => _res;
}

class Mutation$ToggleFavoriteStudio {
  Mutation$ToggleFavoriteStudio({
    this.ToggleFavourite,
    this.$__typename = 'Mutation',
  });

  factory Mutation$ToggleFavoriteStudio.fromJson(Map<String, dynamic> json) {
    final l$ToggleFavourite = json['ToggleFavourite'];
    final l$$__typename = json['__typename'];
    return Mutation$ToggleFavoriteStudio(
      ToggleFavourite: l$ToggleFavourite == null
          ? null
          : Mutation$ToggleFavoriteStudio$ToggleFavourite.fromJson(
              (l$ToggleFavourite as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$ToggleFavoriteStudio$ToggleFavourite? ToggleFavourite;

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
    if (other is! Mutation$ToggleFavoriteStudio ||
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

extension UtilityExtension$Mutation$ToggleFavoriteStudio
    on Mutation$ToggleFavoriteStudio {
  CopyWith$Mutation$ToggleFavoriteStudio<Mutation$ToggleFavoriteStudio>
      get copyWith => CopyWith$Mutation$ToggleFavoriteStudio(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$ToggleFavoriteStudio<TRes> {
  factory CopyWith$Mutation$ToggleFavoriteStudio(
    Mutation$ToggleFavoriteStudio instance,
    TRes Function(Mutation$ToggleFavoriteStudio) then,
  ) = _CopyWithImpl$Mutation$ToggleFavoriteStudio;

  factory CopyWith$Mutation$ToggleFavoriteStudio.stub(TRes res) =
      _CopyWithStubImpl$Mutation$ToggleFavoriteStudio;

  TRes call({
    Mutation$ToggleFavoriteStudio$ToggleFavourite? ToggleFavourite,
    String? $__typename,
  });
  CopyWith$Mutation$ToggleFavoriteStudio$ToggleFavourite<TRes>
      get ToggleFavourite;
}

class _CopyWithImpl$Mutation$ToggleFavoriteStudio<TRes>
    implements CopyWith$Mutation$ToggleFavoriteStudio<TRes> {
  _CopyWithImpl$Mutation$ToggleFavoriteStudio(
    this._instance,
    this._then,
  );

  final Mutation$ToggleFavoriteStudio _instance;

  final TRes Function(Mutation$ToggleFavoriteStudio) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? ToggleFavourite = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$ToggleFavoriteStudio(
        ToggleFavourite: ToggleFavourite == _undefined
            ? _instance.ToggleFavourite
            : (ToggleFavourite
                as Mutation$ToggleFavoriteStudio$ToggleFavourite?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$ToggleFavoriteStudio$ToggleFavourite<TRes>
      get ToggleFavourite {
    final local$ToggleFavourite = _instance.ToggleFavourite;
    return local$ToggleFavourite == null
        ? CopyWith$Mutation$ToggleFavoriteStudio$ToggleFavourite.stub(
            _then(_instance))
        : CopyWith$Mutation$ToggleFavoriteStudio$ToggleFavourite(
            local$ToggleFavourite, (e) => call(ToggleFavourite: e));
  }
}

class _CopyWithStubImpl$Mutation$ToggleFavoriteStudio<TRes>
    implements CopyWith$Mutation$ToggleFavoriteStudio<TRes> {
  _CopyWithStubImpl$Mutation$ToggleFavoriteStudio(this._res);

  TRes _res;

  call({
    Mutation$ToggleFavoriteStudio$ToggleFavourite? ToggleFavourite,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$ToggleFavoriteStudio$ToggleFavourite<TRes>
      get ToggleFavourite =>
          CopyWith$Mutation$ToggleFavoriteStudio$ToggleFavourite.stub(_res);
}

const documentNodeMutationToggleFavoriteStudio = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'ToggleFavoriteStudio'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'studioId')),
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
            name: NameNode(value: 'studioId'),
            value: VariableNode(name: NameNode(value: 'studioId')),
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
Mutation$ToggleFavoriteStudio _parserFn$Mutation$ToggleFavoriteStudio(
        Map<String, dynamic> data) =>
    Mutation$ToggleFavoriteStudio.fromJson(data);
typedef OnMutationCompleted$Mutation$ToggleFavoriteStudio = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$ToggleFavoriteStudio?,
);

class Options$Mutation$ToggleFavoriteStudio
    extends graphql.MutationOptions<Mutation$ToggleFavoriteStudio> {
  Options$Mutation$ToggleFavoriteStudio({
    String? operationName,
    Variables$Mutation$ToggleFavoriteStudio? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$ToggleFavoriteStudio? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$ToggleFavoriteStudio? onCompleted,
    graphql.OnMutationUpdate<Mutation$ToggleFavoriteStudio>? update,
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
                        : _parserFn$Mutation$ToggleFavoriteStudio(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationToggleFavoriteStudio,
          parserFn: _parserFn$Mutation$ToggleFavoriteStudio,
        );

  final OnMutationCompleted$Mutation$ToggleFavoriteStudio?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$ToggleFavoriteStudio
    extends graphql.WatchQueryOptions<Mutation$ToggleFavoriteStudio> {
  WatchOptions$Mutation$ToggleFavoriteStudio({
    String? operationName,
    Variables$Mutation$ToggleFavoriteStudio? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$ToggleFavoriteStudio? typedOptimisticResult,
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
          document: documentNodeMutationToggleFavoriteStudio,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$ToggleFavoriteStudio,
        );
}

extension ClientExtension$Mutation$ToggleFavoriteStudio
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$ToggleFavoriteStudio>>
      mutate$ToggleFavoriteStudio(
              [Options$Mutation$ToggleFavoriteStudio? options]) async =>
          await this.mutate(options ?? Options$Mutation$ToggleFavoriteStudio());
  graphql.ObservableQuery<Mutation$ToggleFavoriteStudio>
      watchMutation$ToggleFavoriteStudio(
              [WatchOptions$Mutation$ToggleFavoriteStudio? options]) =>
          this.watchMutation(
              options ?? WatchOptions$Mutation$ToggleFavoriteStudio());
}

class Mutation$ToggleFavoriteStudio$HookResult {
  Mutation$ToggleFavoriteStudio$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$ToggleFavoriteStudio runMutation;

  final graphql.QueryResult<Mutation$ToggleFavoriteStudio> result;
}

Mutation$ToggleFavoriteStudio$HookResult useMutation$ToggleFavoriteStudio(
    [WidgetOptions$Mutation$ToggleFavoriteStudio? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$ToggleFavoriteStudio());
  return Mutation$ToggleFavoriteStudio$HookResult(
    ({variables, optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables?.toJson() ?? const {},
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$ToggleFavoriteStudio>
    useWatchMutation$ToggleFavoriteStudio(
            [WatchOptions$Mutation$ToggleFavoriteStudio? options]) =>
        graphql_flutter.useWatchMutation(
            options ?? WatchOptions$Mutation$ToggleFavoriteStudio());

class WidgetOptions$Mutation$ToggleFavoriteStudio
    extends graphql.MutationOptions<Mutation$ToggleFavoriteStudio> {
  WidgetOptions$Mutation$ToggleFavoriteStudio({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$ToggleFavoriteStudio? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$ToggleFavoriteStudio? onCompleted,
    graphql.OnMutationUpdate<Mutation$ToggleFavoriteStudio>? update,
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
                        : _parserFn$Mutation$ToggleFavoriteStudio(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationToggleFavoriteStudio,
          parserFn: _parserFn$Mutation$ToggleFavoriteStudio,
        );

  final OnMutationCompleted$Mutation$ToggleFavoriteStudio?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$ToggleFavoriteStudio
    = graphql.MultiSourceResult<Mutation$ToggleFavoriteStudio> Function({
  Variables$Mutation$ToggleFavoriteStudio? variables,
  Object? optimisticResult,
  Mutation$ToggleFavoriteStudio? typedOptimisticResult,
});
typedef Builder$Mutation$ToggleFavoriteStudio = widgets.Widget Function(
  RunMutation$Mutation$ToggleFavoriteStudio,
  graphql.QueryResult<Mutation$ToggleFavoriteStudio>?,
);

class Mutation$ToggleFavoriteStudio$Widget
    extends graphql_flutter.Mutation<Mutation$ToggleFavoriteStudio> {
  Mutation$ToggleFavoriteStudio$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$ToggleFavoriteStudio? options,
    required Builder$Mutation$ToggleFavoriteStudio builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$ToggleFavoriteStudio(),
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

class Mutation$ToggleFavoriteStudio$ToggleFavourite {
  Mutation$ToggleFavoriteStudio$ToggleFavourite(
      {this.$__typename = 'Favourites'});

  factory Mutation$ToggleFavoriteStudio$ToggleFavourite.fromJson(
      Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    return Mutation$ToggleFavoriteStudio$ToggleFavourite(
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
    if (other is! Mutation$ToggleFavoriteStudio$ToggleFavourite ||
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

extension UtilityExtension$Mutation$ToggleFavoriteStudio$ToggleFavourite
    on Mutation$ToggleFavoriteStudio$ToggleFavourite {
  CopyWith$Mutation$ToggleFavoriteStudio$ToggleFavourite<
          Mutation$ToggleFavoriteStudio$ToggleFavourite>
      get copyWith => CopyWith$Mutation$ToggleFavoriteStudio$ToggleFavourite(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$ToggleFavoriteStudio$ToggleFavourite<TRes> {
  factory CopyWith$Mutation$ToggleFavoriteStudio$ToggleFavourite(
    Mutation$ToggleFavoriteStudio$ToggleFavourite instance,
    TRes Function(Mutation$ToggleFavoriteStudio$ToggleFavourite) then,
  ) = _CopyWithImpl$Mutation$ToggleFavoriteStudio$ToggleFavourite;

  factory CopyWith$Mutation$ToggleFavoriteStudio$ToggleFavourite.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$ToggleFavoriteStudio$ToggleFavourite;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Mutation$ToggleFavoriteStudio$ToggleFavourite<TRes>
    implements CopyWith$Mutation$ToggleFavoriteStudio$ToggleFavourite<TRes> {
  _CopyWithImpl$Mutation$ToggleFavoriteStudio$ToggleFavourite(
    this._instance,
    this._then,
  );

  final Mutation$ToggleFavoriteStudio$ToggleFavourite _instance;

  final TRes Function(Mutation$ToggleFavoriteStudio$ToggleFavourite) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) =>
      _then(Mutation$ToggleFavoriteStudio$ToggleFavourite(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Mutation$ToggleFavoriteStudio$ToggleFavourite<TRes>
    implements CopyWith$Mutation$ToggleFavoriteStudio$ToggleFavourite<TRes> {
  _CopyWithStubImpl$Mutation$ToggleFavoriteStudio$ToggleFavourite(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}
