// GENERATED FILE
// DO NOT MODIFY
// ignore_for_file: type=lint
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Query$GetGenres {
  Query$GetGenres({
    this.GenreCollection,
    this.$__typename = 'Query',
  });

  factory Query$GetGenres.fromJson(Map<String, dynamic> json) {
    final l$GenreCollection = json['GenreCollection'];
    final l$$__typename = json['__typename'];
    return Query$GetGenres(
      GenreCollection: (l$GenreCollection as List<dynamic>?)
          ?.map((e) => (e as String?))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<String?>? GenreCollection;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$GenreCollection = GenreCollection;
    _resultData['GenreCollection'] = l$GenreCollection?.map((e) => e).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$GenreCollection = GenreCollection;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$GenreCollection == null
          ? null
          : Object.hashAll(l$GenreCollection.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetGenres || runtimeType != other.runtimeType) {
      return false;
    }
    final l$GenreCollection = GenreCollection;
    final lOther$GenreCollection = other.GenreCollection;
    if (l$GenreCollection != null && lOther$GenreCollection != null) {
      if (l$GenreCollection.length != lOther$GenreCollection.length) {
        return false;
      }
      for (int i = 0; i < l$GenreCollection.length; i++) {
        final l$GenreCollection$entry = l$GenreCollection[i];
        final lOther$GenreCollection$entry = lOther$GenreCollection[i];
        if (l$GenreCollection$entry != lOther$GenreCollection$entry) {
          return false;
        }
      }
    } else if (l$GenreCollection != lOther$GenreCollection) {
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

extension UtilityExtension$Query$GetGenres on Query$GetGenres {
  CopyWith$Query$GetGenres<Query$GetGenres> get copyWith =>
      CopyWith$Query$GetGenres(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetGenres<TRes> {
  factory CopyWith$Query$GetGenres(
    Query$GetGenres instance,
    TRes Function(Query$GetGenres) then,
  ) = _CopyWithImpl$Query$GetGenres;

  factory CopyWith$Query$GetGenres.stub(TRes res) =
      _CopyWithStubImpl$Query$GetGenres;

  TRes call({
    List<String?>? GenreCollection,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetGenres<TRes>
    implements CopyWith$Query$GetGenres<TRes> {
  _CopyWithImpl$Query$GetGenres(
    this._instance,
    this._then,
  );

  final Query$GetGenres _instance;

  final TRes Function(Query$GetGenres) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? GenreCollection = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetGenres(
        GenreCollection: GenreCollection == _undefined
            ? _instance.GenreCollection
            : (GenreCollection as List<String?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetGenres<TRes>
    implements CopyWith$Query$GetGenres<TRes> {
  _CopyWithStubImpl$Query$GetGenres(this._res);

  TRes _res;

  call({
    List<String?>? GenreCollection,
    String? $__typename,
  }) =>
      _res;
}

const documentNodeQueryGetGenres = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetGenres'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'GenreCollection'),
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
]);
Query$GetGenres _parserFn$Query$GetGenres(Map<String, dynamic> data) =>
    Query$GetGenres.fromJson(data);
typedef OnQueryComplete$Query$GetGenres = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$GetGenres?,
);

class Options$Query$GetGenres extends graphql.QueryOptions<Query$GetGenres> {
  Options$Query$GetGenres({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetGenres? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$GetGenres? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          pollInterval: pollInterval,
          context: context,
          onComplete: onComplete == null
              ? null
              : (data) => onComplete(
                    data,
                    data == null ? null : _parserFn$Query$GetGenres(data),
                  ),
          onError: onError,
          document: documentNodeQueryGetGenres,
          parserFn: _parserFn$Query$GetGenres,
        );

  final OnQueryComplete$Query$GetGenres? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$GetGenres
    extends graphql.WatchQueryOptions<Query$GetGenres> {
  WatchOptions$Query$GetGenres({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetGenres? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeQueryGetGenres,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetGenres,
        );
}

class FetchMoreOptions$Query$GetGenres extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetGenres({required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQueryGetGenres,
        );
}

extension ClientExtension$Query$GetGenres on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetGenres>> query$GetGenres(
          [Options$Query$GetGenres? options]) async =>
      await this.query(options ?? Options$Query$GetGenres());
  graphql.ObservableQuery<Query$GetGenres> watchQuery$GetGenres(
          [WatchOptions$Query$GetGenres? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$GetGenres());
  void writeQuery$GetGenres({
    required Query$GetGenres data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation: graphql.Operation(document: documentNodeQueryGetGenres)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetGenres? readQuery$GetGenres({bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryGetGenres)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$GetGenres.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$GetGenres> useQuery$GetGenres(
        [Options$Query$GetGenres? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$GetGenres());
graphql.ObservableQuery<Query$GetGenres> useWatchQuery$GetGenres(
        [WatchOptions$Query$GetGenres? options]) =>
    graphql_flutter.useWatchQuery(options ?? WatchOptions$Query$GetGenres());

class Query$GetGenres$Widget extends graphql_flutter.Query<Query$GetGenres> {
  Query$GetGenres$Widget({
    widgets.Key? key,
    Options$Query$GetGenres? options,
    required graphql_flutter.QueryBuilder<Query$GetGenres> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$GetGenres(),
          builder: builder,
        );
}
