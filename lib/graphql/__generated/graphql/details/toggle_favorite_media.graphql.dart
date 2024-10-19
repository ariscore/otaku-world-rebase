// GENERATED FILE
// DO NOT MODIFY
// ignore_for_file: type=lint
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Mutation$ToggleFavoriteMedia {
  factory Variables$Mutation$ToggleFavoriteMedia({
    int? animeId,
    int? mangaId,
  }) =>
      Variables$Mutation$ToggleFavoriteMedia._({
        if (animeId != null) r'animeId': animeId,
        if (mangaId != null) r'mangaId': mangaId,
      });

  Variables$Mutation$ToggleFavoriteMedia._(this._$data);

  factory Variables$Mutation$ToggleFavoriteMedia.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('animeId')) {
      final l$animeId = data['animeId'];
      result$data['animeId'] = (l$animeId as int?);
    }
    if (data.containsKey('mangaId')) {
      final l$mangaId = data['mangaId'];
      result$data['mangaId'] = (l$mangaId as int?);
    }
    return Variables$Mutation$ToggleFavoriteMedia._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get animeId => (_$data['animeId'] as int?);

  int? get mangaId => (_$data['mangaId'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('animeId')) {
      final l$animeId = animeId;
      result$data['animeId'] = l$animeId;
    }
    if (_$data.containsKey('mangaId')) {
      final l$mangaId = mangaId;
      result$data['mangaId'] = l$mangaId;
    }
    return result$data;
  }

  CopyWith$Variables$Mutation$ToggleFavoriteMedia<
          Variables$Mutation$ToggleFavoriteMedia>
      get copyWith => CopyWith$Variables$Mutation$ToggleFavoriteMedia(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$ToggleFavoriteMedia) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$animeId = animeId;
    final lOther$animeId = other.animeId;
    if (_$data.containsKey('animeId') != other._$data.containsKey('animeId')) {
      return false;
    }
    if (l$animeId != lOther$animeId) {
      return false;
    }
    final l$mangaId = mangaId;
    final lOther$mangaId = other.mangaId;
    if (_$data.containsKey('mangaId') != other._$data.containsKey('mangaId')) {
      return false;
    }
    if (l$mangaId != lOther$mangaId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$animeId = animeId;
    final l$mangaId = mangaId;
    return Object.hashAll([
      _$data.containsKey('animeId') ? l$animeId : const {},
      _$data.containsKey('mangaId') ? l$mangaId : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$ToggleFavoriteMedia<TRes> {
  factory CopyWith$Variables$Mutation$ToggleFavoriteMedia(
    Variables$Mutation$ToggleFavoriteMedia instance,
    TRes Function(Variables$Mutation$ToggleFavoriteMedia) then,
  ) = _CopyWithImpl$Variables$Mutation$ToggleFavoriteMedia;

  factory CopyWith$Variables$Mutation$ToggleFavoriteMedia.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$ToggleFavoriteMedia;

  TRes call({
    int? animeId,
    int? mangaId,
  });
}

class _CopyWithImpl$Variables$Mutation$ToggleFavoriteMedia<TRes>
    implements CopyWith$Variables$Mutation$ToggleFavoriteMedia<TRes> {
  _CopyWithImpl$Variables$Mutation$ToggleFavoriteMedia(
    this._instance,
    this._then,
  );

  final Variables$Mutation$ToggleFavoriteMedia _instance;

  final TRes Function(Variables$Mutation$ToggleFavoriteMedia) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? animeId = _undefined,
    Object? mangaId = _undefined,
  }) =>
      _then(Variables$Mutation$ToggleFavoriteMedia._({
        ..._instance._$data,
        if (animeId != _undefined) 'animeId': (animeId as int?),
        if (mangaId != _undefined) 'mangaId': (mangaId as int?),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$ToggleFavoriteMedia<TRes>
    implements CopyWith$Variables$Mutation$ToggleFavoriteMedia<TRes> {
  _CopyWithStubImpl$Variables$Mutation$ToggleFavoriteMedia(this._res);

  TRes _res;

  call({
    int? animeId,
    int? mangaId,
  }) =>
      _res;
}

class Mutation$ToggleFavoriteMedia {
  Mutation$ToggleFavoriteMedia({
    this.ToggleFavourite,
    this.$__typename = 'Mutation',
  });

  factory Mutation$ToggleFavoriteMedia.fromJson(Map<String, dynamic> json) {
    final l$ToggleFavourite = json['ToggleFavourite'];
    final l$$__typename = json['__typename'];
    return Mutation$ToggleFavoriteMedia(
      ToggleFavourite: l$ToggleFavourite == null
          ? null
          : Mutation$ToggleFavoriteMedia$ToggleFavourite.fromJson(
              (l$ToggleFavourite as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$ToggleFavoriteMedia$ToggleFavourite? ToggleFavourite;

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
    if (!(other is Mutation$ToggleFavoriteMedia) ||
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

extension UtilityExtension$Mutation$ToggleFavoriteMedia
    on Mutation$ToggleFavoriteMedia {
  CopyWith$Mutation$ToggleFavoriteMedia<Mutation$ToggleFavoriteMedia>
      get copyWith => CopyWith$Mutation$ToggleFavoriteMedia(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$ToggleFavoriteMedia<TRes> {
  factory CopyWith$Mutation$ToggleFavoriteMedia(
    Mutation$ToggleFavoriteMedia instance,
    TRes Function(Mutation$ToggleFavoriteMedia) then,
  ) = _CopyWithImpl$Mutation$ToggleFavoriteMedia;

  factory CopyWith$Mutation$ToggleFavoriteMedia.stub(TRes res) =
      _CopyWithStubImpl$Mutation$ToggleFavoriteMedia;

  TRes call({
    Mutation$ToggleFavoriteMedia$ToggleFavourite? ToggleFavourite,
    String? $__typename,
  });
  CopyWith$Mutation$ToggleFavoriteMedia$ToggleFavourite<TRes>
      get ToggleFavourite;
}

class _CopyWithImpl$Mutation$ToggleFavoriteMedia<TRes>
    implements CopyWith$Mutation$ToggleFavoriteMedia<TRes> {
  _CopyWithImpl$Mutation$ToggleFavoriteMedia(
    this._instance,
    this._then,
  );

  final Mutation$ToggleFavoriteMedia _instance;

  final TRes Function(Mutation$ToggleFavoriteMedia) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? ToggleFavourite = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$ToggleFavoriteMedia(
        ToggleFavourite: ToggleFavourite == _undefined
            ? _instance.ToggleFavourite
            : (ToggleFavourite
                as Mutation$ToggleFavoriteMedia$ToggleFavourite?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$ToggleFavoriteMedia$ToggleFavourite<TRes>
      get ToggleFavourite {
    final local$ToggleFavourite = _instance.ToggleFavourite;
    return local$ToggleFavourite == null
        ? CopyWith$Mutation$ToggleFavoriteMedia$ToggleFavourite.stub(
            _then(_instance))
        : CopyWith$Mutation$ToggleFavoriteMedia$ToggleFavourite(
            local$ToggleFavourite, (e) => call(ToggleFavourite: e));
  }
}

class _CopyWithStubImpl$Mutation$ToggleFavoriteMedia<TRes>
    implements CopyWith$Mutation$ToggleFavoriteMedia<TRes> {
  _CopyWithStubImpl$Mutation$ToggleFavoriteMedia(this._res);

  TRes _res;

  call({
    Mutation$ToggleFavoriteMedia$ToggleFavourite? ToggleFavourite,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$ToggleFavoriteMedia$ToggleFavourite<TRes>
      get ToggleFavourite =>
          CopyWith$Mutation$ToggleFavoriteMedia$ToggleFavourite.stub(_res);
}

const documentNodeMutationToggleFavoriteMedia = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'ToggleFavoriteMedia'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'animeId')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'mangaId')),
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
        name: NameNode(value: 'ToggleFavourite'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'animeId'),
            value: VariableNode(name: NameNode(value: 'animeId')),
          ),
          ArgumentNode(
            name: NameNode(value: 'mangaId'),
            value: VariableNode(name: NameNode(value: 'mangaId')),
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
Mutation$ToggleFavoriteMedia _parserFn$Mutation$ToggleFavoriteMedia(
        Map<String, dynamic> data) =>
    Mutation$ToggleFavoriteMedia.fromJson(data);
typedef OnMutationCompleted$Mutation$ToggleFavoriteMedia = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$ToggleFavoriteMedia?,
);

class Options$Mutation$ToggleFavoriteMedia
    extends graphql.MutationOptions<Mutation$ToggleFavoriteMedia> {
  Options$Mutation$ToggleFavoriteMedia({
    String? operationName,
    Variables$Mutation$ToggleFavoriteMedia? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$ToggleFavoriteMedia? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$ToggleFavoriteMedia? onCompleted,
    graphql.OnMutationUpdate<Mutation$ToggleFavoriteMedia>? update,
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
                        : _parserFn$Mutation$ToggleFavoriteMedia(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationToggleFavoriteMedia,
          parserFn: _parserFn$Mutation$ToggleFavoriteMedia,
        );

  final OnMutationCompleted$Mutation$ToggleFavoriteMedia? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$ToggleFavoriteMedia
    extends graphql.WatchQueryOptions<Mutation$ToggleFavoriteMedia> {
  WatchOptions$Mutation$ToggleFavoriteMedia({
    String? operationName,
    Variables$Mutation$ToggleFavoriteMedia? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$ToggleFavoriteMedia? typedOptimisticResult,
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
          document: documentNodeMutationToggleFavoriteMedia,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$ToggleFavoriteMedia,
        );
}

extension ClientExtension$Mutation$ToggleFavoriteMedia
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$ToggleFavoriteMedia>>
      mutate$ToggleFavoriteMedia(
              [Options$Mutation$ToggleFavoriteMedia? options]) async =>
          await this.mutate(options ?? Options$Mutation$ToggleFavoriteMedia());
  graphql.ObservableQuery<Mutation$ToggleFavoriteMedia>
      watchMutation$ToggleFavoriteMedia(
              [WatchOptions$Mutation$ToggleFavoriteMedia? options]) =>
          this.watchMutation(
              options ?? WatchOptions$Mutation$ToggleFavoriteMedia());
}

class Mutation$ToggleFavoriteMedia$HookResult {
  Mutation$ToggleFavoriteMedia$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$ToggleFavoriteMedia runMutation;

  final graphql.QueryResult<Mutation$ToggleFavoriteMedia> result;
}

Mutation$ToggleFavoriteMedia$HookResult useMutation$ToggleFavoriteMedia(
    [WidgetOptions$Mutation$ToggleFavoriteMedia? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$ToggleFavoriteMedia());
  return Mutation$ToggleFavoriteMedia$HookResult(
    ({variables, optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables?.toJson() ?? const {},
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$ToggleFavoriteMedia>
    useWatchMutation$ToggleFavoriteMedia(
            [WatchOptions$Mutation$ToggleFavoriteMedia? options]) =>
        graphql_flutter.useWatchMutation(
            options ?? WatchOptions$Mutation$ToggleFavoriteMedia());

class WidgetOptions$Mutation$ToggleFavoriteMedia
    extends graphql.MutationOptions<Mutation$ToggleFavoriteMedia> {
  WidgetOptions$Mutation$ToggleFavoriteMedia({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$ToggleFavoriteMedia? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$ToggleFavoriteMedia? onCompleted,
    graphql.OnMutationUpdate<Mutation$ToggleFavoriteMedia>? update,
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
                        : _parserFn$Mutation$ToggleFavoriteMedia(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationToggleFavoriteMedia,
          parserFn: _parserFn$Mutation$ToggleFavoriteMedia,
        );

  final OnMutationCompleted$Mutation$ToggleFavoriteMedia? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$ToggleFavoriteMedia
    = graphql.MultiSourceResult<Mutation$ToggleFavoriteMedia> Function({
  Variables$Mutation$ToggleFavoriteMedia? variables,
  Object? optimisticResult,
  Mutation$ToggleFavoriteMedia? typedOptimisticResult,
});
typedef Builder$Mutation$ToggleFavoriteMedia = widgets.Widget Function(
  RunMutation$Mutation$ToggleFavoriteMedia,
  graphql.QueryResult<Mutation$ToggleFavoriteMedia>?,
);

class Mutation$ToggleFavoriteMedia$Widget
    extends graphql_flutter.Mutation<Mutation$ToggleFavoriteMedia> {
  Mutation$ToggleFavoriteMedia$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$ToggleFavoriteMedia? options,
    required Builder$Mutation$ToggleFavoriteMedia builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$ToggleFavoriteMedia(),
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

class Mutation$ToggleFavoriteMedia$ToggleFavourite {
  Mutation$ToggleFavoriteMedia$ToggleFavourite(
      {this.$__typename = 'Favourites'});

  factory Mutation$ToggleFavoriteMedia$ToggleFavourite.fromJson(
      Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    return Mutation$ToggleFavoriteMedia$ToggleFavourite(
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
    if (!(other is Mutation$ToggleFavoriteMedia$ToggleFavourite) ||
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

extension UtilityExtension$Mutation$ToggleFavoriteMedia$ToggleFavourite
    on Mutation$ToggleFavoriteMedia$ToggleFavourite {
  CopyWith$Mutation$ToggleFavoriteMedia$ToggleFavourite<
          Mutation$ToggleFavoriteMedia$ToggleFavourite>
      get copyWith => CopyWith$Mutation$ToggleFavoriteMedia$ToggleFavourite(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$ToggleFavoriteMedia$ToggleFavourite<TRes> {
  factory CopyWith$Mutation$ToggleFavoriteMedia$ToggleFavourite(
    Mutation$ToggleFavoriteMedia$ToggleFavourite instance,
    TRes Function(Mutation$ToggleFavoriteMedia$ToggleFavourite) then,
  ) = _CopyWithImpl$Mutation$ToggleFavoriteMedia$ToggleFavourite;

  factory CopyWith$Mutation$ToggleFavoriteMedia$ToggleFavourite.stub(TRes res) =
      _CopyWithStubImpl$Mutation$ToggleFavoriteMedia$ToggleFavourite;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Mutation$ToggleFavoriteMedia$ToggleFavourite<TRes>
    implements CopyWith$Mutation$ToggleFavoriteMedia$ToggleFavourite<TRes> {
  _CopyWithImpl$Mutation$ToggleFavoriteMedia$ToggleFavourite(
    this._instance,
    this._then,
  );

  final Mutation$ToggleFavoriteMedia$ToggleFavourite _instance;

  final TRes Function(Mutation$ToggleFavoriteMedia$ToggleFavourite) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) =>
      _then(Mutation$ToggleFavoriteMedia$ToggleFavourite(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Mutation$ToggleFavoriteMedia$ToggleFavourite<TRes>
    implements CopyWith$Mutation$ToggleFavoriteMedia$ToggleFavourite<TRes> {
  _CopyWithStubImpl$Mutation$ToggleFavoriteMedia$ToggleFavourite(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}
