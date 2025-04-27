// GENERATED FILE
// DO NOT MODIFY
// ignore_for_file: type=lint
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Mutation$ToggleFavoriteStaff {
  factory Variables$Mutation$ToggleFavoriteStaff({int? staffId}) =>
      Variables$Mutation$ToggleFavoriteStaff._({
        if (staffId != null) r'staffId': staffId,
      });

  Variables$Mutation$ToggleFavoriteStaff._(this._$data);

  factory Variables$Mutation$ToggleFavoriteStaff.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('staffId')) {
      final l$staffId = data['staffId'];
      result$data['staffId'] = (l$staffId as int?);
    }
    return Variables$Mutation$ToggleFavoriteStaff._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get staffId => (_$data['staffId'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('staffId')) {
      final l$staffId = staffId;
      result$data['staffId'] = l$staffId;
    }
    return result$data;
  }

  CopyWith$Variables$Mutation$ToggleFavoriteStaff<
          Variables$Mutation$ToggleFavoriteStaff>
      get copyWith => CopyWith$Variables$Mutation$ToggleFavoriteStaff(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$ToggleFavoriteStaff ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$staffId = staffId;
    final lOther$staffId = other.staffId;
    if (_$data.containsKey('staffId') != other._$data.containsKey('staffId')) {
      return false;
    }
    if (l$staffId != lOther$staffId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$staffId = staffId;
    return Object.hashAll(
        [_$data.containsKey('staffId') ? l$staffId : const {}]);
  }
}

abstract class CopyWith$Variables$Mutation$ToggleFavoriteStaff<TRes> {
  factory CopyWith$Variables$Mutation$ToggleFavoriteStaff(
    Variables$Mutation$ToggleFavoriteStaff instance,
    TRes Function(Variables$Mutation$ToggleFavoriteStaff) then,
  ) = _CopyWithImpl$Variables$Mutation$ToggleFavoriteStaff;

  factory CopyWith$Variables$Mutation$ToggleFavoriteStaff.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$ToggleFavoriteStaff;

  TRes call({int? staffId});
}

class _CopyWithImpl$Variables$Mutation$ToggleFavoriteStaff<TRes>
    implements CopyWith$Variables$Mutation$ToggleFavoriteStaff<TRes> {
  _CopyWithImpl$Variables$Mutation$ToggleFavoriteStaff(
    this._instance,
    this._then,
  );

  final Variables$Mutation$ToggleFavoriteStaff _instance;

  final TRes Function(Variables$Mutation$ToggleFavoriteStaff) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? staffId = _undefined}) =>
      _then(Variables$Mutation$ToggleFavoriteStaff._({
        ..._instance._$data,
        if (staffId != _undefined) 'staffId': (staffId as int?),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$ToggleFavoriteStaff<TRes>
    implements CopyWith$Variables$Mutation$ToggleFavoriteStaff<TRes> {
  _CopyWithStubImpl$Variables$Mutation$ToggleFavoriteStaff(this._res);

  TRes _res;

  call({int? staffId}) => _res;
}

class Mutation$ToggleFavoriteStaff {
  Mutation$ToggleFavoriteStaff({
    this.ToggleFavourite,
    this.$__typename = 'Mutation',
  });

  factory Mutation$ToggleFavoriteStaff.fromJson(Map<String, dynamic> json) {
    final l$ToggleFavourite = json['ToggleFavourite'];
    final l$$__typename = json['__typename'];
    return Mutation$ToggleFavoriteStaff(
      ToggleFavourite: l$ToggleFavourite == null
          ? null
          : Mutation$ToggleFavoriteStaff$ToggleFavourite.fromJson(
              (l$ToggleFavourite as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$ToggleFavoriteStaff$ToggleFavourite? ToggleFavourite;

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
    if (other is! Mutation$ToggleFavoriteStaff ||
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

extension UtilityExtension$Mutation$ToggleFavoriteStaff
    on Mutation$ToggleFavoriteStaff {
  CopyWith$Mutation$ToggleFavoriteStaff<Mutation$ToggleFavoriteStaff>
      get copyWith => CopyWith$Mutation$ToggleFavoriteStaff(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$ToggleFavoriteStaff<TRes> {
  factory CopyWith$Mutation$ToggleFavoriteStaff(
    Mutation$ToggleFavoriteStaff instance,
    TRes Function(Mutation$ToggleFavoriteStaff) then,
  ) = _CopyWithImpl$Mutation$ToggleFavoriteStaff;

  factory CopyWith$Mutation$ToggleFavoriteStaff.stub(TRes res) =
      _CopyWithStubImpl$Mutation$ToggleFavoriteStaff;

  TRes call({
    Mutation$ToggleFavoriteStaff$ToggleFavourite? ToggleFavourite,
    String? $__typename,
  });
  CopyWith$Mutation$ToggleFavoriteStaff$ToggleFavourite<TRes>
      get ToggleFavourite;
}

class _CopyWithImpl$Mutation$ToggleFavoriteStaff<TRes>
    implements CopyWith$Mutation$ToggleFavoriteStaff<TRes> {
  _CopyWithImpl$Mutation$ToggleFavoriteStaff(
    this._instance,
    this._then,
  );

  final Mutation$ToggleFavoriteStaff _instance;

  final TRes Function(Mutation$ToggleFavoriteStaff) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? ToggleFavourite = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$ToggleFavoriteStaff(
        ToggleFavourite: ToggleFavourite == _undefined
            ? _instance.ToggleFavourite
            : (ToggleFavourite
                as Mutation$ToggleFavoriteStaff$ToggleFavourite?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$ToggleFavoriteStaff$ToggleFavourite<TRes>
      get ToggleFavourite {
    final local$ToggleFavourite = _instance.ToggleFavourite;
    return local$ToggleFavourite == null
        ? CopyWith$Mutation$ToggleFavoriteStaff$ToggleFavourite.stub(
            _then(_instance))
        : CopyWith$Mutation$ToggleFavoriteStaff$ToggleFavourite(
            local$ToggleFavourite, (e) => call(ToggleFavourite: e));
  }
}

class _CopyWithStubImpl$Mutation$ToggleFavoriteStaff<TRes>
    implements CopyWith$Mutation$ToggleFavoriteStaff<TRes> {
  _CopyWithStubImpl$Mutation$ToggleFavoriteStaff(this._res);

  TRes _res;

  call({
    Mutation$ToggleFavoriteStaff$ToggleFavourite? ToggleFavourite,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$ToggleFavoriteStaff$ToggleFavourite<TRes>
      get ToggleFavourite =>
          CopyWith$Mutation$ToggleFavoriteStaff$ToggleFavourite.stub(_res);
}

const documentNodeMutationToggleFavoriteStaff = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'ToggleFavoriteStaff'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'staffId')),
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
            name: NameNode(value: 'staffId'),
            value: VariableNode(name: NameNode(value: 'staffId')),
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
Mutation$ToggleFavoriteStaff _parserFn$Mutation$ToggleFavoriteStaff(
        Map<String, dynamic> data) =>
    Mutation$ToggleFavoriteStaff.fromJson(data);
typedef OnMutationCompleted$Mutation$ToggleFavoriteStaff = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$ToggleFavoriteStaff?,
);

class Options$Mutation$ToggleFavoriteStaff
    extends graphql.MutationOptions<Mutation$ToggleFavoriteStaff> {
  Options$Mutation$ToggleFavoriteStaff({
    String? operationName,
    Variables$Mutation$ToggleFavoriteStaff? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$ToggleFavoriteStaff? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$ToggleFavoriteStaff? onCompleted,
    graphql.OnMutationUpdate<Mutation$ToggleFavoriteStaff>? update,
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
                        : _parserFn$Mutation$ToggleFavoriteStaff(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationToggleFavoriteStaff,
          parserFn: _parserFn$Mutation$ToggleFavoriteStaff,
        );

  final OnMutationCompleted$Mutation$ToggleFavoriteStaff? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$ToggleFavoriteStaff
    extends graphql.WatchQueryOptions<Mutation$ToggleFavoriteStaff> {
  WatchOptions$Mutation$ToggleFavoriteStaff({
    String? operationName,
    Variables$Mutation$ToggleFavoriteStaff? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$ToggleFavoriteStaff? typedOptimisticResult,
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
          document: documentNodeMutationToggleFavoriteStaff,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$ToggleFavoriteStaff,
        );
}

extension ClientExtension$Mutation$ToggleFavoriteStaff
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$ToggleFavoriteStaff>>
      mutate$ToggleFavoriteStaff(
              [Options$Mutation$ToggleFavoriteStaff? options]) async =>
          await this.mutate(options ?? Options$Mutation$ToggleFavoriteStaff());
  graphql.ObservableQuery<Mutation$ToggleFavoriteStaff>
      watchMutation$ToggleFavoriteStaff(
              [WatchOptions$Mutation$ToggleFavoriteStaff? options]) =>
          this.watchMutation(
              options ?? WatchOptions$Mutation$ToggleFavoriteStaff());
}

class Mutation$ToggleFavoriteStaff$HookResult {
  Mutation$ToggleFavoriteStaff$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$ToggleFavoriteStaff runMutation;

  final graphql.QueryResult<Mutation$ToggleFavoriteStaff> result;
}

Mutation$ToggleFavoriteStaff$HookResult useMutation$ToggleFavoriteStaff(
    [WidgetOptions$Mutation$ToggleFavoriteStaff? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$ToggleFavoriteStaff());
  return Mutation$ToggleFavoriteStaff$HookResult(
    ({variables, optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables?.toJson() ?? const {},
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$ToggleFavoriteStaff>
    useWatchMutation$ToggleFavoriteStaff(
            [WatchOptions$Mutation$ToggleFavoriteStaff? options]) =>
        graphql_flutter.useWatchMutation(
            options ?? WatchOptions$Mutation$ToggleFavoriteStaff());

class WidgetOptions$Mutation$ToggleFavoriteStaff
    extends graphql.MutationOptions<Mutation$ToggleFavoriteStaff> {
  WidgetOptions$Mutation$ToggleFavoriteStaff({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$ToggleFavoriteStaff? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$ToggleFavoriteStaff? onCompleted,
    graphql.OnMutationUpdate<Mutation$ToggleFavoriteStaff>? update,
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
                        : _parserFn$Mutation$ToggleFavoriteStaff(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationToggleFavoriteStaff,
          parserFn: _parserFn$Mutation$ToggleFavoriteStaff,
        );

  final OnMutationCompleted$Mutation$ToggleFavoriteStaff? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$ToggleFavoriteStaff
    = graphql.MultiSourceResult<Mutation$ToggleFavoriteStaff> Function({
  Variables$Mutation$ToggleFavoriteStaff? variables,
  Object? optimisticResult,
  Mutation$ToggleFavoriteStaff? typedOptimisticResult,
});
typedef Builder$Mutation$ToggleFavoriteStaff = widgets.Widget Function(
  RunMutation$Mutation$ToggleFavoriteStaff,
  graphql.QueryResult<Mutation$ToggleFavoriteStaff>?,
);

class Mutation$ToggleFavoriteStaff$Widget
    extends graphql_flutter.Mutation<Mutation$ToggleFavoriteStaff> {
  Mutation$ToggleFavoriteStaff$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$ToggleFavoriteStaff? options,
    required Builder$Mutation$ToggleFavoriteStaff builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$ToggleFavoriteStaff(),
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

class Mutation$ToggleFavoriteStaff$ToggleFavourite {
  Mutation$ToggleFavoriteStaff$ToggleFavourite(
      {this.$__typename = 'Favourites'});

  factory Mutation$ToggleFavoriteStaff$ToggleFavourite.fromJson(
      Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    return Mutation$ToggleFavoriteStaff$ToggleFavourite(
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
    if (other is! Mutation$ToggleFavoriteStaff$ToggleFavourite ||
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

extension UtilityExtension$Mutation$ToggleFavoriteStaff$ToggleFavourite
    on Mutation$ToggleFavoriteStaff$ToggleFavourite {
  CopyWith$Mutation$ToggleFavoriteStaff$ToggleFavourite<
          Mutation$ToggleFavoriteStaff$ToggleFavourite>
      get copyWith => CopyWith$Mutation$ToggleFavoriteStaff$ToggleFavourite(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$ToggleFavoriteStaff$ToggleFavourite<TRes> {
  factory CopyWith$Mutation$ToggleFavoriteStaff$ToggleFavourite(
    Mutation$ToggleFavoriteStaff$ToggleFavourite instance,
    TRes Function(Mutation$ToggleFavoriteStaff$ToggleFavourite) then,
  ) = _CopyWithImpl$Mutation$ToggleFavoriteStaff$ToggleFavourite;

  factory CopyWith$Mutation$ToggleFavoriteStaff$ToggleFavourite.stub(TRes res) =
      _CopyWithStubImpl$Mutation$ToggleFavoriteStaff$ToggleFavourite;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Mutation$ToggleFavoriteStaff$ToggleFavourite<TRes>
    implements CopyWith$Mutation$ToggleFavoriteStaff$ToggleFavourite<TRes> {
  _CopyWithImpl$Mutation$ToggleFavoriteStaff$ToggleFavourite(
    this._instance,
    this._then,
  );

  final Mutation$ToggleFavoriteStaff$ToggleFavourite _instance;

  final TRes Function(Mutation$ToggleFavoriteStaff$ToggleFavourite) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) =>
      _then(Mutation$ToggleFavoriteStaff$ToggleFavourite(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Mutation$ToggleFavoriteStaff$ToggleFavourite<TRes>
    implements CopyWith$Mutation$ToggleFavoriteStaff$ToggleFavourite<TRes> {
  _CopyWithStubImpl$Mutation$ToggleFavoriteStaff$ToggleFavourite(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}
