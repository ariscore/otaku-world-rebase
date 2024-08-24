// GENERATED FILE
// DO NOT MODIFY
// ignore_for_file: type=lint
import 'dart:async';

import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Query$GetStreamingPlatforms {
  Query$GetStreamingPlatforms({
    this.ExternalLinkSourceCollection,
    this.$__typename = 'Query',
  });

  factory Query$GetStreamingPlatforms.fromJson(Map<String, dynamic> json) {
    final l$ExternalLinkSourceCollection = json['ExternalLinkSourceCollection'];
    final l$$__typename = json['__typename'];
    return Query$GetStreamingPlatforms(
      ExternalLinkSourceCollection:
          (l$ExternalLinkSourceCollection as List<dynamic>?)
              ?.map((e) => e == null
                  ? null
                  : Query$GetStreamingPlatforms$ExternalLinkSourceCollection
                      .fromJson((e as Map<String, dynamic>)))
              .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$GetStreamingPlatforms$ExternalLinkSourceCollection?>?
      ExternalLinkSourceCollection;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$ExternalLinkSourceCollection = ExternalLinkSourceCollection;
    _resultData['ExternalLinkSourceCollection'] =
        l$ExternalLinkSourceCollection?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$ExternalLinkSourceCollection = ExternalLinkSourceCollection;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$ExternalLinkSourceCollection == null
          ? null
          : Object.hashAll(l$ExternalLinkSourceCollection.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetStreamingPlatforms) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$ExternalLinkSourceCollection = ExternalLinkSourceCollection;
    final lOther$ExternalLinkSourceCollection =
        other.ExternalLinkSourceCollection;
    if (l$ExternalLinkSourceCollection != null &&
        lOther$ExternalLinkSourceCollection != null) {
      if (l$ExternalLinkSourceCollection.length !=
          lOther$ExternalLinkSourceCollection.length) {
        return false;
      }
      for (int i = 0; i < l$ExternalLinkSourceCollection.length; i++) {
        final l$ExternalLinkSourceCollection$entry =
            l$ExternalLinkSourceCollection[i];
        final lOther$ExternalLinkSourceCollection$entry =
            lOther$ExternalLinkSourceCollection[i];
        if (l$ExternalLinkSourceCollection$entry !=
            lOther$ExternalLinkSourceCollection$entry) {
          return false;
        }
      }
    } else if (l$ExternalLinkSourceCollection !=
        lOther$ExternalLinkSourceCollection) {
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

extension UtilityExtension$Query$GetStreamingPlatforms
    on Query$GetStreamingPlatforms {
  CopyWith$Query$GetStreamingPlatforms<Query$GetStreamingPlatforms>
      get copyWith => CopyWith$Query$GetStreamingPlatforms(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetStreamingPlatforms<TRes> {
  factory CopyWith$Query$GetStreamingPlatforms(
    Query$GetStreamingPlatforms instance,
    TRes Function(Query$GetStreamingPlatforms) then,
  ) = _CopyWithImpl$Query$GetStreamingPlatforms;

  factory CopyWith$Query$GetStreamingPlatforms.stub(TRes res) =
      _CopyWithStubImpl$Query$GetStreamingPlatforms;

  TRes call({
    List<Query$GetStreamingPlatforms$ExternalLinkSourceCollection?>?
        ExternalLinkSourceCollection,
    String? $__typename,
  });
  TRes ExternalLinkSourceCollection(
      Iterable<Query$GetStreamingPlatforms$ExternalLinkSourceCollection?>? Function(
              Iterable<
                  CopyWith$Query$GetStreamingPlatforms$ExternalLinkSourceCollection<
                      Query$GetStreamingPlatforms$ExternalLinkSourceCollection>?>?)
          _fn);
}

class _CopyWithImpl$Query$GetStreamingPlatforms<TRes>
    implements CopyWith$Query$GetStreamingPlatforms<TRes> {
  _CopyWithImpl$Query$GetStreamingPlatforms(
    this._instance,
    this._then,
  );

  final Query$GetStreamingPlatforms _instance;

  final TRes Function(Query$GetStreamingPlatforms) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? ExternalLinkSourceCollection = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetStreamingPlatforms(
        ExternalLinkSourceCollection: ExternalLinkSourceCollection == _undefined
            ? _instance.ExternalLinkSourceCollection
            : (ExternalLinkSourceCollection as List<
                Query$GetStreamingPlatforms$ExternalLinkSourceCollection?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes ExternalLinkSourceCollection(
          Iterable<Query$GetStreamingPlatforms$ExternalLinkSourceCollection?>? Function(
                  Iterable<
                      CopyWith$Query$GetStreamingPlatforms$ExternalLinkSourceCollection<
                          Query$GetStreamingPlatforms$ExternalLinkSourceCollection>?>?)
              _fn) =>
      call(
          ExternalLinkSourceCollection:
              _fn(_instance.ExternalLinkSourceCollection?.map((e) => e == null
                  ? null
                  : CopyWith$Query$GetStreamingPlatforms$ExternalLinkSourceCollection(
                      e,
                      (i) => i,
                    )))?.toList());
}

class _CopyWithStubImpl$Query$GetStreamingPlatforms<TRes>
    implements CopyWith$Query$GetStreamingPlatforms<TRes> {
  _CopyWithStubImpl$Query$GetStreamingPlatforms(this._res);

  TRes _res;

  call({
    List<Query$GetStreamingPlatforms$ExternalLinkSourceCollection?>?
        ExternalLinkSourceCollection,
    String? $__typename,
  }) =>
      _res;

  ExternalLinkSourceCollection(_fn) => _res;
}

const documentNodeQueryGetStreamingPlatforms = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetStreamingPlatforms'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'ExternalLinkSourceCollection'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'type'),
            value: EnumValueNode(name: NameNode(value: 'STREAMING')),
          ),
          ArgumentNode(
            name: NameNode(value: 'mediaType'),
            value: EnumValueNode(name: NameNode(value: 'ANIME')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'site'),
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
Query$GetStreamingPlatforms _parserFn$Query$GetStreamingPlatforms(
        Map<String, dynamic> data) =>
    Query$GetStreamingPlatforms.fromJson(data);
typedef OnQueryComplete$Query$GetStreamingPlatforms = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$GetStreamingPlatforms?,
);

class Options$Query$GetStreamingPlatforms
    extends graphql.QueryOptions<Query$GetStreamingPlatforms> {
  Options$Query$GetStreamingPlatforms({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetStreamingPlatforms? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$GetStreamingPlatforms? onComplete,
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
                    data == null
                        ? null
                        : _parserFn$Query$GetStreamingPlatforms(data),
                  ),
          onError: onError,
          document: documentNodeQueryGetStreamingPlatforms,
          parserFn: _parserFn$Query$GetStreamingPlatforms,
        );

  final OnQueryComplete$Query$GetStreamingPlatforms? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$GetStreamingPlatforms
    extends graphql.WatchQueryOptions<Query$GetStreamingPlatforms> {
  WatchOptions$Query$GetStreamingPlatforms({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetStreamingPlatforms? typedOptimisticResult,
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
          document: documentNodeQueryGetStreamingPlatforms,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetStreamingPlatforms,
        );
}

class FetchMoreOptions$Query$GetStreamingPlatforms
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetStreamingPlatforms(
      {required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQueryGetStreamingPlatforms,
        );
}

extension ClientExtension$Query$GetStreamingPlatforms on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetStreamingPlatforms>>
      query$GetStreamingPlatforms(
              [Options$Query$GetStreamingPlatforms? options]) async =>
          await this.query(options ?? Options$Query$GetStreamingPlatforms());
  graphql.ObservableQuery<
      Query$GetStreamingPlatforms> watchQuery$GetStreamingPlatforms(
          [WatchOptions$Query$GetStreamingPlatforms? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$GetStreamingPlatforms());
  void writeQuery$GetStreamingPlatforms({
    required Query$GetStreamingPlatforms data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation: graphql.Operation(
                document: documentNodeQueryGetStreamingPlatforms)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetStreamingPlatforms? readQuery$GetStreamingPlatforms(
      {bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation: graphql.Operation(
              document: documentNodeQueryGetStreamingPlatforms)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$GetStreamingPlatforms.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$GetStreamingPlatforms>
    useQuery$GetStreamingPlatforms(
            [Options$Query$GetStreamingPlatforms? options]) =>
        graphql_flutter
            .useQuery(options ?? Options$Query$GetStreamingPlatforms());
graphql.ObservableQuery<Query$GetStreamingPlatforms>
    useWatchQuery$GetStreamingPlatforms(
            [WatchOptions$Query$GetStreamingPlatforms? options]) =>
        graphql_flutter.useWatchQuery(
            options ?? WatchOptions$Query$GetStreamingPlatforms());

class Query$GetStreamingPlatforms$Widget
    extends graphql_flutter.Query<Query$GetStreamingPlatforms> {
  Query$GetStreamingPlatforms$Widget({
    widgets.Key? key,
    Options$Query$GetStreamingPlatforms? options,
    required graphql_flutter.QueryBuilder<Query$GetStreamingPlatforms> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$GetStreamingPlatforms(),
          builder: builder,
        );
}

class Query$GetStreamingPlatforms$ExternalLinkSourceCollection {
  Query$GetStreamingPlatforms$ExternalLinkSourceCollection({
    required this.id,
    required this.site,
    this.$__typename = 'MediaExternalLink',
  });

  factory Query$GetStreamingPlatforms$ExternalLinkSourceCollection.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$site = json['site'];
    final l$$__typename = json['__typename'];
    return Query$GetStreamingPlatforms$ExternalLinkSourceCollection(
      id: (l$id as int),
      site: (l$site as String),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String site;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$site = site;
    _resultData['site'] = l$site;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$site = site;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$site,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetStreamingPlatforms$ExternalLinkSourceCollection) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$site = site;
    final lOther$site = other.site;
    if (l$site != lOther$site) {
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

extension UtilityExtension$Query$GetStreamingPlatforms$ExternalLinkSourceCollection
    on Query$GetStreamingPlatforms$ExternalLinkSourceCollection {
  CopyWith$Query$GetStreamingPlatforms$ExternalLinkSourceCollection<
          Query$GetStreamingPlatforms$ExternalLinkSourceCollection>
      get copyWith =>
          CopyWith$Query$GetStreamingPlatforms$ExternalLinkSourceCollection(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetStreamingPlatforms$ExternalLinkSourceCollection<
    TRes> {
  factory CopyWith$Query$GetStreamingPlatforms$ExternalLinkSourceCollection(
    Query$GetStreamingPlatforms$ExternalLinkSourceCollection instance,
    TRes Function(Query$GetStreamingPlatforms$ExternalLinkSourceCollection)
        then,
  ) = _CopyWithImpl$Query$GetStreamingPlatforms$ExternalLinkSourceCollection;

  factory CopyWith$Query$GetStreamingPlatforms$ExternalLinkSourceCollection.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetStreamingPlatforms$ExternalLinkSourceCollection;

  TRes call({
    int? id,
    String? site,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetStreamingPlatforms$ExternalLinkSourceCollection<
        TRes>
    implements
        CopyWith$Query$GetStreamingPlatforms$ExternalLinkSourceCollection<
            TRes> {
  _CopyWithImpl$Query$GetStreamingPlatforms$ExternalLinkSourceCollection(
    this._instance,
    this._then,
  );

  final Query$GetStreamingPlatforms$ExternalLinkSourceCollection _instance;

  final TRes Function(Query$GetStreamingPlatforms$ExternalLinkSourceCollection)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? site = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetStreamingPlatforms$ExternalLinkSourceCollection(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        site: site == _undefined || site == null
            ? _instance.site
            : (site as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetStreamingPlatforms$ExternalLinkSourceCollection<
        TRes>
    implements
        CopyWith$Query$GetStreamingPlatforms$ExternalLinkSourceCollection<
            TRes> {
  _CopyWithStubImpl$Query$GetStreamingPlatforms$ExternalLinkSourceCollection(
      this._res);

  TRes _res;

  call({
    int? id,
    String? site,
    String? $__typename,
  }) =>
      _res;
}
