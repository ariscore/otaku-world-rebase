// GENERATED FILE
// DO NOT MODIFY
// ignore_for_file: type=lint
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Query$GetPublishingPlatforms {
  Query$GetPublishingPlatforms({
    this.ExternalLinkSourceCollection,
    this.$__typename = 'Query',
  });

  factory Query$GetPublishingPlatforms.fromJson(Map<String, dynamic> json) {
    final l$ExternalLinkSourceCollection = json['ExternalLinkSourceCollection'];
    final l$$__typename = json['__typename'];
    return Query$GetPublishingPlatforms(
      ExternalLinkSourceCollection:
          (l$ExternalLinkSourceCollection as List<dynamic>?)
              ?.map((e) => e == null
                  ? null
                  : Query$GetPublishingPlatforms$ExternalLinkSourceCollection
                      .fromJson((e as Map<String, dynamic>)))
              .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$GetPublishingPlatforms$ExternalLinkSourceCollection?>?
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
    if (!(other is Query$GetPublishingPlatforms) ||
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

extension UtilityExtension$Query$GetPublishingPlatforms
    on Query$GetPublishingPlatforms {
  CopyWith$Query$GetPublishingPlatforms<Query$GetPublishingPlatforms>
      get copyWith => CopyWith$Query$GetPublishingPlatforms(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetPublishingPlatforms<TRes> {
  factory CopyWith$Query$GetPublishingPlatforms(
    Query$GetPublishingPlatforms instance,
    TRes Function(Query$GetPublishingPlatforms) then,
  ) = _CopyWithImpl$Query$GetPublishingPlatforms;

  factory CopyWith$Query$GetPublishingPlatforms.stub(TRes res) =
      _CopyWithStubImpl$Query$GetPublishingPlatforms;

  TRes call({
    List<Query$GetPublishingPlatforms$ExternalLinkSourceCollection?>?
        ExternalLinkSourceCollection,
    String? $__typename,
  });
  TRes ExternalLinkSourceCollection(
      Iterable<Query$GetPublishingPlatforms$ExternalLinkSourceCollection?>? Function(
              Iterable<
                  CopyWith$Query$GetPublishingPlatforms$ExternalLinkSourceCollection<
                      Query$GetPublishingPlatforms$ExternalLinkSourceCollection>?>?)
          _fn);
}

class _CopyWithImpl$Query$GetPublishingPlatforms<TRes>
    implements CopyWith$Query$GetPublishingPlatforms<TRes> {
  _CopyWithImpl$Query$GetPublishingPlatforms(
    this._instance,
    this._then,
  );

  final Query$GetPublishingPlatforms _instance;

  final TRes Function(Query$GetPublishingPlatforms) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? ExternalLinkSourceCollection = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetPublishingPlatforms(
        ExternalLinkSourceCollection: ExternalLinkSourceCollection == _undefined
            ? _instance.ExternalLinkSourceCollection
            : (ExternalLinkSourceCollection as List<
                Query$GetPublishingPlatforms$ExternalLinkSourceCollection?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes ExternalLinkSourceCollection(
          Iterable<Query$GetPublishingPlatforms$ExternalLinkSourceCollection?>? Function(
                  Iterable<
                      CopyWith$Query$GetPublishingPlatforms$ExternalLinkSourceCollection<
                          Query$GetPublishingPlatforms$ExternalLinkSourceCollection>?>?)
              _fn) =>
      call(
          ExternalLinkSourceCollection:
              _fn(_instance.ExternalLinkSourceCollection?.map((e) => e == null
                  ? null
                  : CopyWith$Query$GetPublishingPlatforms$ExternalLinkSourceCollection(
                      e,
                      (i) => i,
                    )))?.toList());
}

class _CopyWithStubImpl$Query$GetPublishingPlatforms<TRes>
    implements CopyWith$Query$GetPublishingPlatforms<TRes> {
  _CopyWithStubImpl$Query$GetPublishingPlatforms(this._res);

  TRes _res;

  call({
    List<Query$GetPublishingPlatforms$ExternalLinkSourceCollection?>?
        ExternalLinkSourceCollection,
    String? $__typename,
  }) =>
      _res;

  ExternalLinkSourceCollection(_fn) => _res;
}

const documentNodeQueryGetPublishingPlatforms = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetPublishingPlatforms'),
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
Query$GetPublishingPlatforms _parserFn$Query$GetPublishingPlatforms(
        Map<String, dynamic> data) =>
    Query$GetPublishingPlatforms.fromJson(data);
typedef OnQueryComplete$Query$GetPublishingPlatforms = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$GetPublishingPlatforms?,
);

class Options$Query$GetPublishingPlatforms
    extends graphql.QueryOptions<Query$GetPublishingPlatforms> {
  Options$Query$GetPublishingPlatforms({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetPublishingPlatforms? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$GetPublishingPlatforms? onComplete,
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
                        : _parserFn$Query$GetPublishingPlatforms(data),
                  ),
          onError: onError,
          document: documentNodeQueryGetPublishingPlatforms,
          parserFn: _parserFn$Query$GetPublishingPlatforms,
        );

  final OnQueryComplete$Query$GetPublishingPlatforms? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$GetPublishingPlatforms
    extends graphql.WatchQueryOptions<Query$GetPublishingPlatforms> {
  WatchOptions$Query$GetPublishingPlatforms({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetPublishingPlatforms? typedOptimisticResult,
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
          document: documentNodeQueryGetPublishingPlatforms,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetPublishingPlatforms,
        );
}

class FetchMoreOptions$Query$GetPublishingPlatforms
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetPublishingPlatforms(
      {required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQueryGetPublishingPlatforms,
        );
}

extension ClientExtension$Query$GetPublishingPlatforms
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetPublishingPlatforms>>
      query$GetPublishingPlatforms(
              [Options$Query$GetPublishingPlatforms? options]) async =>
          await this.query(options ?? Options$Query$GetPublishingPlatforms());
  graphql.ObservableQuery<
      Query$GetPublishingPlatforms> watchQuery$GetPublishingPlatforms(
          [WatchOptions$Query$GetPublishingPlatforms? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$GetPublishingPlatforms());
  void writeQuery$GetPublishingPlatforms({
    required Query$GetPublishingPlatforms data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation: graphql.Operation(
                document: documentNodeQueryGetPublishingPlatforms)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetPublishingPlatforms? readQuery$GetPublishingPlatforms(
      {bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation: graphql.Operation(
              document: documentNodeQueryGetPublishingPlatforms)),
      optimistic: optimistic,
    );
    return result == null
        ? null
        : Query$GetPublishingPlatforms.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$GetPublishingPlatforms>
    useQuery$GetPublishingPlatforms(
            [Options$Query$GetPublishingPlatforms? options]) =>
        graphql_flutter
            .useQuery(options ?? Options$Query$GetPublishingPlatforms());
graphql.ObservableQuery<Query$GetPublishingPlatforms>
    useWatchQuery$GetPublishingPlatforms(
            [WatchOptions$Query$GetPublishingPlatforms? options]) =>
        graphql_flutter.useWatchQuery(
            options ?? WatchOptions$Query$GetPublishingPlatforms());

class Query$GetPublishingPlatforms$Widget
    extends graphql_flutter.Query<Query$GetPublishingPlatforms> {
  Query$GetPublishingPlatforms$Widget({
    widgets.Key? key,
    Options$Query$GetPublishingPlatforms? options,
    required graphql_flutter.QueryBuilder<Query$GetPublishingPlatforms> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$GetPublishingPlatforms(),
          builder: builder,
        );
}

class Query$GetPublishingPlatforms$ExternalLinkSourceCollection {
  Query$GetPublishingPlatforms$ExternalLinkSourceCollection({
    required this.id,
    required this.site,
    this.language,
    this.$__typename = 'MediaExternalLink',
  });

  factory Query$GetPublishingPlatforms$ExternalLinkSourceCollection.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$site = json['site'];
    final l$language = json['language'];
    final l$$__typename = json['__typename'];
    return Query$GetPublishingPlatforms$ExternalLinkSourceCollection(
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
    if (!(other is Query$GetPublishingPlatforms$ExternalLinkSourceCollection) ||
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

extension UtilityExtension$Query$GetPublishingPlatforms$ExternalLinkSourceCollection
    on Query$GetPublishingPlatforms$ExternalLinkSourceCollection {
  CopyWith$Query$GetPublishingPlatforms$ExternalLinkSourceCollection<
          Query$GetPublishingPlatforms$ExternalLinkSourceCollection>
      get copyWith =>
          CopyWith$Query$GetPublishingPlatforms$ExternalLinkSourceCollection(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetPublishingPlatforms$ExternalLinkSourceCollection<
    TRes> {
  factory CopyWith$Query$GetPublishingPlatforms$ExternalLinkSourceCollection(
    Query$GetPublishingPlatforms$ExternalLinkSourceCollection instance,
    TRes Function(Query$GetPublishingPlatforms$ExternalLinkSourceCollection)
        then,
  ) = _CopyWithImpl$Query$GetPublishingPlatforms$ExternalLinkSourceCollection;

  factory CopyWith$Query$GetPublishingPlatforms$ExternalLinkSourceCollection.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetPublishingPlatforms$ExternalLinkSourceCollection;

  TRes call({
    int? id,
    String? site,
    String? language,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetPublishingPlatforms$ExternalLinkSourceCollection<
        TRes>
    implements
        CopyWith$Query$GetPublishingPlatforms$ExternalLinkSourceCollection<
            TRes> {
  _CopyWithImpl$Query$GetPublishingPlatforms$ExternalLinkSourceCollection(
    this._instance,
    this._then,
  );

  final Query$GetPublishingPlatforms$ExternalLinkSourceCollection _instance;

  final TRes Function(Query$GetPublishingPlatforms$ExternalLinkSourceCollection)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? site = _undefined,
    Object? language = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetPublishingPlatforms$ExternalLinkSourceCollection(
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

class _CopyWithStubImpl$Query$GetPublishingPlatforms$ExternalLinkSourceCollection<
        TRes>
    implements
        CopyWith$Query$GetPublishingPlatforms$ExternalLinkSourceCollection<
            TRes> {
  _CopyWithStubImpl$Query$GetPublishingPlatforms$ExternalLinkSourceCollection(
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
