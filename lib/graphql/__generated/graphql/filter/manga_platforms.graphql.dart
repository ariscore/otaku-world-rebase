// GENERATED FILE
// DO NOT MODIFY
// ignore_for_file: type=lint
import 'dart:async';

import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Query$GetMangaPlatforms {
  Query$GetMangaPlatforms({
    this.ExternalLinkSourceCollection,
    this.$__typename = 'Query',
  });

  factory Query$GetMangaPlatforms.fromJson(Map<String, dynamic> json) {
    final l$ExternalLinkSourceCollection = json['ExternalLinkSourceCollection'];
    final l$$__typename = json['__typename'];
    return Query$GetMangaPlatforms(
      ExternalLinkSourceCollection: (l$ExternalLinkSourceCollection
              as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$GetMangaPlatforms$ExternalLinkSourceCollection.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$GetMangaPlatforms$ExternalLinkSourceCollection?>?
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
    if (!(other is Query$GetMangaPlatforms) ||
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

extension UtilityExtension$Query$GetMangaPlatforms on Query$GetMangaPlatforms {
  CopyWith$Query$GetMangaPlatforms<Query$GetMangaPlatforms> get copyWith =>
      CopyWith$Query$GetMangaPlatforms(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetMangaPlatforms<TRes> {
  factory CopyWith$Query$GetMangaPlatforms(
    Query$GetMangaPlatforms instance,
    TRes Function(Query$GetMangaPlatforms) then,
  ) = _CopyWithImpl$Query$GetMangaPlatforms;

  factory CopyWith$Query$GetMangaPlatforms.stub(TRes res) =
      _CopyWithStubImpl$Query$GetMangaPlatforms;

  TRes call({
    List<Query$GetMangaPlatforms$ExternalLinkSourceCollection?>?
        ExternalLinkSourceCollection,
    String? $__typename,
  });
  TRes ExternalLinkSourceCollection(
      Iterable<Query$GetMangaPlatforms$ExternalLinkSourceCollection?>? Function(
              Iterable<
                  CopyWith$Query$GetMangaPlatforms$ExternalLinkSourceCollection<
                      Query$GetMangaPlatforms$ExternalLinkSourceCollection>?>?)
          _fn);
}

class _CopyWithImpl$Query$GetMangaPlatforms<TRes>
    implements CopyWith$Query$GetMangaPlatforms<TRes> {
  _CopyWithImpl$Query$GetMangaPlatforms(
    this._instance,
    this._then,
  );

  final Query$GetMangaPlatforms _instance;

  final TRes Function(Query$GetMangaPlatforms) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? ExternalLinkSourceCollection = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetMangaPlatforms(
        ExternalLinkSourceCollection: ExternalLinkSourceCollection == _undefined
            ? _instance.ExternalLinkSourceCollection
            : (ExternalLinkSourceCollection as List<
                Query$GetMangaPlatforms$ExternalLinkSourceCollection?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes ExternalLinkSourceCollection(
          Iterable<Query$GetMangaPlatforms$ExternalLinkSourceCollection?>? Function(
                  Iterable<
                      CopyWith$Query$GetMangaPlatforms$ExternalLinkSourceCollection<
                          Query$GetMangaPlatforms$ExternalLinkSourceCollection>?>?)
              _fn) =>
      call(
          ExternalLinkSourceCollection:
              _fn(_instance.ExternalLinkSourceCollection?.map((e) => e == null
                  ? null
                  : CopyWith$Query$GetMangaPlatforms$ExternalLinkSourceCollection(
                      e,
                      (i) => i,
                    )))?.toList());
}

class _CopyWithStubImpl$Query$GetMangaPlatforms<TRes>
    implements CopyWith$Query$GetMangaPlatforms<TRes> {
  _CopyWithStubImpl$Query$GetMangaPlatforms(this._res);

  TRes _res;

  call({
    List<Query$GetMangaPlatforms$ExternalLinkSourceCollection?>?
        ExternalLinkSourceCollection,
    String? $__typename,
  }) =>
      _res;

  ExternalLinkSourceCollection(_fn) => _res;
}

const documentNodeQueryGetMangaPlatforms = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetMangaPlatforms'),
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
            value: EnumValueNode(name: NameNode(value: 'MANGA')),
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
            name: NameNode(value: 'language'),
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
Query$GetMangaPlatforms _parserFn$Query$GetMangaPlatforms(
        Map<String, dynamic> data) =>
    Query$GetMangaPlatforms.fromJson(data);
typedef OnQueryComplete$Query$GetMangaPlatforms = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$GetMangaPlatforms?,
);

class Options$Query$GetMangaPlatforms
    extends graphql.QueryOptions<Query$GetMangaPlatforms> {
  Options$Query$GetMangaPlatforms({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetMangaPlatforms? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$GetMangaPlatforms? onComplete,
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
                        : _parserFn$Query$GetMangaPlatforms(data),
                  ),
          onError: onError,
          document: documentNodeQueryGetMangaPlatforms,
          parserFn: _parserFn$Query$GetMangaPlatforms,
        );

  final OnQueryComplete$Query$GetMangaPlatforms? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$GetMangaPlatforms
    extends graphql.WatchQueryOptions<Query$GetMangaPlatforms> {
  WatchOptions$Query$GetMangaPlatforms({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetMangaPlatforms? typedOptimisticResult,
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
          document: documentNodeQueryGetMangaPlatforms,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetMangaPlatforms,
        );
}

class FetchMoreOptions$Query$GetMangaPlatforms
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetMangaPlatforms(
      {required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQueryGetMangaPlatforms,
        );
}

extension ClientExtension$Query$GetMangaPlatforms on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetMangaPlatforms>> query$GetMangaPlatforms(
          [Options$Query$GetMangaPlatforms? options]) async =>
      await this.query(options ?? Options$Query$GetMangaPlatforms());
  graphql.ObservableQuery<Query$GetMangaPlatforms> watchQuery$GetMangaPlatforms(
          [WatchOptions$Query$GetMangaPlatforms? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$GetMangaPlatforms());
  void writeQuery$GetMangaPlatforms({
    required Query$GetMangaPlatforms data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation: graphql.Operation(
                document: documentNodeQueryGetMangaPlatforms)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetMangaPlatforms? readQuery$GetMangaPlatforms(
      {bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryGetMangaPlatforms)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$GetMangaPlatforms.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$GetMangaPlatforms>
    useQuery$GetMangaPlatforms([Options$Query$GetMangaPlatforms? options]) =>
        graphql_flutter.useQuery(options ?? Options$Query$GetMangaPlatforms());
graphql.ObservableQuery<Query$GetMangaPlatforms>
    useWatchQuery$GetMangaPlatforms(
            [WatchOptions$Query$GetMangaPlatforms? options]) =>
        graphql_flutter
            .useWatchQuery(options ?? WatchOptions$Query$GetMangaPlatforms());

class Query$GetMangaPlatforms$Widget
    extends graphql_flutter.Query<Query$GetMangaPlatforms> {
  Query$GetMangaPlatforms$Widget({
    widgets.Key? key,
    Options$Query$GetMangaPlatforms? options,
    required graphql_flutter.QueryBuilder<Query$GetMangaPlatforms> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$GetMangaPlatforms(),
          builder: builder,
        );
}

class Query$GetMangaPlatforms$ExternalLinkSourceCollection {
  Query$GetMangaPlatforms$ExternalLinkSourceCollection({
    required this.id,
    required this.site,
    this.language,
    this.$__typename = 'MediaExternalLink',
  });

  factory Query$GetMangaPlatforms$ExternalLinkSourceCollection.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$site = json['site'];
    final l$language = json['language'];
    final l$$__typename = json['__typename'];
    return Query$GetMangaPlatforms$ExternalLinkSourceCollection(
      id: (l$id as int),
      site: (l$site as String),
      language: (l$language as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String site;

  final String? language;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$site = site;
    _resultData['site'] = l$site;
    final l$language = language;
    _resultData['language'] = l$language;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$site = site;
    final l$language = language;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$site,
      l$language,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetMangaPlatforms$ExternalLinkSourceCollection) ||
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
    final l$language = language;
    final lOther$language = other.language;
    if (l$language != lOther$language) {
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

extension UtilityExtension$Query$GetMangaPlatforms$ExternalLinkSourceCollection
    on Query$GetMangaPlatforms$ExternalLinkSourceCollection {
  CopyWith$Query$GetMangaPlatforms$ExternalLinkSourceCollection<
          Query$GetMangaPlatforms$ExternalLinkSourceCollection>
      get copyWith =>
          CopyWith$Query$GetMangaPlatforms$ExternalLinkSourceCollection(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetMangaPlatforms$ExternalLinkSourceCollection<
    TRes> {
  factory CopyWith$Query$GetMangaPlatforms$ExternalLinkSourceCollection(
    Query$GetMangaPlatforms$ExternalLinkSourceCollection instance,
    TRes Function(Query$GetMangaPlatforms$ExternalLinkSourceCollection) then,
  ) = _CopyWithImpl$Query$GetMangaPlatforms$ExternalLinkSourceCollection;

  factory CopyWith$Query$GetMangaPlatforms$ExternalLinkSourceCollection.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetMangaPlatforms$ExternalLinkSourceCollection;

  TRes call({
    int? id,
    String? site,
    String? language,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetMangaPlatforms$ExternalLinkSourceCollection<TRes>
    implements
        CopyWith$Query$GetMangaPlatforms$ExternalLinkSourceCollection<TRes> {
  _CopyWithImpl$Query$GetMangaPlatforms$ExternalLinkSourceCollection(
    this._instance,
    this._then,
  );

  final Query$GetMangaPlatforms$ExternalLinkSourceCollection _instance;

  final TRes Function(Query$GetMangaPlatforms$ExternalLinkSourceCollection)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? site = _undefined,
    Object? language = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetMangaPlatforms$ExternalLinkSourceCollection(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        site: site == _undefined || site == null
            ? _instance.site
            : (site as String),
        language:
            language == _undefined ? _instance.language : (language as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetMangaPlatforms$ExternalLinkSourceCollection<
        TRes>
    implements
        CopyWith$Query$GetMangaPlatforms$ExternalLinkSourceCollection<TRes> {
  _CopyWithStubImpl$Query$GetMangaPlatforms$ExternalLinkSourceCollection(
      this._res);

  TRes _res;

  call({
    int? id,
    String? site,
    String? language,
    String? $__typename,
  }) =>
      _res;
}
