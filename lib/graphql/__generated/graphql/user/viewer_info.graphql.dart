// GENERATED FILE
// DO NOT MODIFY
// ignore_for_file: type=lint
import '../fragments.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Query$ViewerInfo {
  Query$ViewerInfo({
    this.Viewer,
    this.$__typename = 'Query',
  });

  factory Query$ViewerInfo.fromJson(Map<String, dynamic> json) {
    final l$Viewer = json['Viewer'];
    final l$$__typename = json['__typename'];
    return Query$ViewerInfo(
      Viewer: l$Viewer == null
          ? null
          : Fragment$UserInfo.fromJson((l$Viewer as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$UserInfo? Viewer;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$Viewer = Viewer;
    _resultData['Viewer'] = l$Viewer?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$Viewer = Viewer;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$Viewer,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$ViewerInfo) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$Viewer = Viewer;
    final lOther$Viewer = other.Viewer;
    if (l$Viewer != lOther$Viewer) {
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

extension UtilityExtension$Query$ViewerInfo on Query$ViewerInfo {
  CopyWith$Query$ViewerInfo<Query$ViewerInfo> get copyWith =>
      CopyWith$Query$ViewerInfo(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ViewerInfo<TRes> {
  factory CopyWith$Query$ViewerInfo(
    Query$ViewerInfo instance,
    TRes Function(Query$ViewerInfo) then,
  ) = _CopyWithImpl$Query$ViewerInfo;

  factory CopyWith$Query$ViewerInfo.stub(TRes res) =
      _CopyWithStubImpl$Query$ViewerInfo;

  TRes call({
    Fragment$UserInfo? Viewer,
    String? $__typename,
  });
  CopyWith$Fragment$UserInfo<TRes> get Viewer;
}

class _CopyWithImpl$Query$ViewerInfo<TRes>
    implements CopyWith$Query$ViewerInfo<TRes> {
  _CopyWithImpl$Query$ViewerInfo(
    this._instance,
    this._then,
  );

  final Query$ViewerInfo _instance;

  final TRes Function(Query$ViewerInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? Viewer = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ViewerInfo(
        Viewer: Viewer == _undefined
            ? _instance.Viewer
            : (Viewer as Fragment$UserInfo?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$UserInfo<TRes> get Viewer {
    final local$Viewer = _instance.Viewer;
    return local$Viewer == null
        ? CopyWith$Fragment$UserInfo.stub(_then(_instance))
        : CopyWith$Fragment$UserInfo(local$Viewer, (e) => call(Viewer: e));
  }
}

class _CopyWithStubImpl$Query$ViewerInfo<TRes>
    implements CopyWith$Query$ViewerInfo<TRes> {
  _CopyWithStubImpl$Query$ViewerInfo(this._res);

  TRes _res;

  call({
    Fragment$UserInfo? Viewer,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$UserInfo<TRes> get Viewer =>
      CopyWith$Fragment$UserInfo.stub(_res);
}

const documentNodeQueryViewerInfo = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'ViewerInfo'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'Viewer'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'UserInfo'),
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
  fragmentDefinitionUserInfo,
]);
Query$ViewerInfo _parserFn$Query$ViewerInfo(Map<String, dynamic> data) =>
    Query$ViewerInfo.fromJson(data);
typedef OnQueryComplete$Query$ViewerInfo = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$ViewerInfo?,
);

class Options$Query$ViewerInfo extends graphql.QueryOptions<Query$ViewerInfo> {
  Options$Query$ViewerInfo({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$ViewerInfo? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$ViewerInfo? onComplete,
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
                    data == null ? null : _parserFn$Query$ViewerInfo(data),
                  ),
          onError: onError,
          document: documentNodeQueryViewerInfo,
          parserFn: _parserFn$Query$ViewerInfo,
        );

  final OnQueryComplete$Query$ViewerInfo? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$ViewerInfo
    extends graphql.WatchQueryOptions<Query$ViewerInfo> {
  WatchOptions$Query$ViewerInfo({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$ViewerInfo? typedOptimisticResult,
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
          document: documentNodeQueryViewerInfo,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$ViewerInfo,
        );
}

class FetchMoreOptions$Query$ViewerInfo extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$ViewerInfo({required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQueryViewerInfo,
        );
}

extension ClientExtension$Query$ViewerInfo on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$ViewerInfo>> query$ViewerInfo(
          [Options$Query$ViewerInfo? options]) async =>
      await this.query(options ?? Options$Query$ViewerInfo());
  graphql.ObservableQuery<Query$ViewerInfo> watchQuery$ViewerInfo(
          [WatchOptions$Query$ViewerInfo? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$ViewerInfo());
  void writeQuery$ViewerInfo({
    required Query$ViewerInfo data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation:
                graphql.Operation(document: documentNodeQueryViewerInfo)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$ViewerInfo? readQuery$ViewerInfo({bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryViewerInfo)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$ViewerInfo.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$ViewerInfo> useQuery$ViewerInfo(
        [Options$Query$ViewerInfo? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$ViewerInfo());
graphql.ObservableQuery<Query$ViewerInfo> useWatchQuery$ViewerInfo(
        [WatchOptions$Query$ViewerInfo? options]) =>
    graphql_flutter.useWatchQuery(options ?? WatchOptions$Query$ViewerInfo());

class Query$ViewerInfo$Widget extends graphql_flutter.Query<Query$ViewerInfo> {
  Query$ViewerInfo$Widget({
    widgets.Key? key,
    Options$Query$ViewerInfo? options,
    required graphql_flutter.QueryBuilder<Query$ViewerInfo> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$ViewerInfo(),
          builder: builder,
        );
}
