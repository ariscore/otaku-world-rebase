// GENERATED FILE
// DO NOT MODIFY
// ignore_for_file: type=lint
import '../fragments.graphql.dart';
import '../schema.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$getStudioMedia {
  factory Variables$Query$getStudioMedia({
    int? id,
    List<Enum$MediaSort?>? sort,
    bool? onList,
    int? page,
  }) =>
      Variables$Query$getStudioMedia._({
        if (id != null) r'id': id,
        if (sort != null) r'sort': sort,
        if (onList != null) r'onList': onList,
        if (page != null) r'page': page,
      });

  Variables$Query$getStudioMedia._(this._$data);

  factory Variables$Query$getStudioMedia.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as int?);
    }
    if (data.containsKey('sort')) {
      final l$sort = data['sort'];
      result$data['sort'] = (l$sort as List<dynamic>?)
          ?.map(
              (e) => e == null ? null : fromJson$Enum$MediaSort((e as String)))
          .toList();
    }
    if (data.containsKey('onList')) {
      final l$onList = data['onList'];
      result$data['onList'] = (l$onList as bool?);
    }
    if (data.containsKey('page')) {
      final l$page = data['page'];
      result$data['page'] = (l$page as int?);
    }
    return Variables$Query$getStudioMedia._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get id => (_$data['id'] as int?);

  List<Enum$MediaSort?>? get sort => (_$data['sort'] as List<Enum$MediaSort?>?);

  bool? get onList => (_$data['onList'] as bool?);

  int? get page => (_$data['page'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    if (_$data.containsKey('sort')) {
      final l$sort = sort;
      result$data['sort'] = l$sort
          ?.map((e) => e == null ? null : toJson$Enum$MediaSort(e))
          .toList();
    }
    if (_$data.containsKey('onList')) {
      final l$onList = onList;
      result$data['onList'] = l$onList;
    }
    if (_$data.containsKey('page')) {
      final l$page = page;
      result$data['page'] = l$page;
    }
    return result$data;
  }

  CopyWith$Variables$Query$getStudioMedia<Variables$Query$getStudioMedia>
      get copyWith => CopyWith$Variables$Query$getStudioMedia(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$getStudioMedia ||
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
    final l$sort = sort;
    final lOther$sort = other.sort;
    if (_$data.containsKey('sort') != other._$data.containsKey('sort')) {
      return false;
    }
    if (l$sort != null && lOther$sort != null) {
      if (l$sort.length != lOther$sort.length) {
        return false;
      }
      for (int i = 0; i < l$sort.length; i++) {
        final l$sort$entry = l$sort[i];
        final lOther$sort$entry = lOther$sort[i];
        if (l$sort$entry != lOther$sort$entry) {
          return false;
        }
      }
    } else if (l$sort != lOther$sort) {
      return false;
    }
    final l$onList = onList;
    final lOther$onList = other.onList;
    if (_$data.containsKey('onList') != other._$data.containsKey('onList')) {
      return false;
    }
    if (l$onList != lOther$onList) {
      return false;
    }
    final l$page = page;
    final lOther$page = other.page;
    if (_$data.containsKey('page') != other._$data.containsKey('page')) {
      return false;
    }
    if (l$page != lOther$page) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$sort = sort;
    final l$onList = onList;
    final l$page = page;
    return Object.hashAll([
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('sort')
          ? l$sort == null
              ? null
              : Object.hashAll(l$sort.map((v) => v))
          : const {},
      _$data.containsKey('onList') ? l$onList : const {},
      _$data.containsKey('page') ? l$page : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$getStudioMedia<TRes> {
  factory CopyWith$Variables$Query$getStudioMedia(
    Variables$Query$getStudioMedia instance,
    TRes Function(Variables$Query$getStudioMedia) then,
  ) = _CopyWithImpl$Variables$Query$getStudioMedia;

  factory CopyWith$Variables$Query$getStudioMedia.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$getStudioMedia;

  TRes call({
    int? id,
    List<Enum$MediaSort?>? sort,
    bool? onList,
    int? page,
  });
}

class _CopyWithImpl$Variables$Query$getStudioMedia<TRes>
    implements CopyWith$Variables$Query$getStudioMedia<TRes> {
  _CopyWithImpl$Variables$Query$getStudioMedia(
    this._instance,
    this._then,
  );

  final Variables$Query$getStudioMedia _instance;

  final TRes Function(Variables$Query$getStudioMedia) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? sort = _undefined,
    Object? onList = _undefined,
    Object? page = _undefined,
  }) =>
      _then(Variables$Query$getStudioMedia._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as int?),
        if (sort != _undefined) 'sort': (sort as List<Enum$MediaSort?>?),
        if (onList != _undefined) 'onList': (onList as bool?),
        if (page != _undefined) 'page': (page as int?),
      }));
}

class _CopyWithStubImpl$Variables$Query$getStudioMedia<TRes>
    implements CopyWith$Variables$Query$getStudioMedia<TRes> {
  _CopyWithStubImpl$Variables$Query$getStudioMedia(this._res);

  TRes _res;

  call({
    int? id,
    List<Enum$MediaSort?>? sort,
    bool? onList,
    int? page,
  }) =>
      _res;
}

class Query$getStudioMedia {
  Query$getStudioMedia({
    this.Studio,
    this.$__typename = 'Query',
  });

  factory Query$getStudioMedia.fromJson(Map<String, dynamic> json) {
    final l$Studio = json['Studio'];
    final l$$__typename = json['__typename'];
    return Query$getStudioMedia(
      Studio: l$Studio == null
          ? null
          : Query$getStudioMedia$Studio.fromJson(
              (l$Studio as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$getStudioMedia$Studio? Studio;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$Studio = Studio;
    _resultData['Studio'] = l$Studio?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$Studio = Studio;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$Studio,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$getStudioMedia || runtimeType != other.runtimeType) {
      return false;
    }
    final l$Studio = Studio;
    final lOther$Studio = other.Studio;
    if (l$Studio != lOther$Studio) {
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

extension UtilityExtension$Query$getStudioMedia on Query$getStudioMedia {
  CopyWith$Query$getStudioMedia<Query$getStudioMedia> get copyWith =>
      CopyWith$Query$getStudioMedia(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$getStudioMedia<TRes> {
  factory CopyWith$Query$getStudioMedia(
    Query$getStudioMedia instance,
    TRes Function(Query$getStudioMedia) then,
  ) = _CopyWithImpl$Query$getStudioMedia;

  factory CopyWith$Query$getStudioMedia.stub(TRes res) =
      _CopyWithStubImpl$Query$getStudioMedia;

  TRes call({
    Query$getStudioMedia$Studio? Studio,
    String? $__typename,
  });
  CopyWith$Query$getStudioMedia$Studio<TRes> get Studio;
}

class _CopyWithImpl$Query$getStudioMedia<TRes>
    implements CopyWith$Query$getStudioMedia<TRes> {
  _CopyWithImpl$Query$getStudioMedia(
    this._instance,
    this._then,
  );

  final Query$getStudioMedia _instance;

  final TRes Function(Query$getStudioMedia) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? Studio = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getStudioMedia(
        Studio: Studio == _undefined
            ? _instance.Studio
            : (Studio as Query$getStudioMedia$Studio?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$getStudioMedia$Studio<TRes> get Studio {
    final local$Studio = _instance.Studio;
    return local$Studio == null
        ? CopyWith$Query$getStudioMedia$Studio.stub(_then(_instance))
        : CopyWith$Query$getStudioMedia$Studio(
            local$Studio, (e) => call(Studio: e));
  }
}

class _CopyWithStubImpl$Query$getStudioMedia<TRes>
    implements CopyWith$Query$getStudioMedia<TRes> {
  _CopyWithStubImpl$Query$getStudioMedia(this._res);

  TRes _res;

  call({
    Query$getStudioMedia$Studio? Studio,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$getStudioMedia$Studio<TRes> get Studio =>
      CopyWith$Query$getStudioMedia$Studio.stub(_res);
}

const documentNodeQuerygetStudioMedia = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'getStudioMedia'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'id')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'sort')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'MediaSort'),
            isNonNull: false,
          ),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'onList')),
        type: NamedTypeNode(
          name: NameNode(value: 'Boolean'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'page')),
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
        name: NameNode(value: 'Studio'),
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
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'media'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'page'),
                value: VariableNode(name: NameNode(value: 'page')),
              ),
              ArgumentNode(
                name: NameNode(value: 'sort'),
                value: VariableNode(name: NameNode(value: 'sort')),
              ),
              ArgumentNode(
                name: NameNode(value: 'onList'),
                value: VariableNode(name: NameNode(value: 'onList')),
              ),
              ArgumentNode(
                name: NameNode(value: 'perPage'),
                value: IntValueNode(value: '24'),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'edges'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'node'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FragmentSpreadNode(
                        name: NameNode(value: 'MediaShort'),
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
                    name: NameNode(value: 'isMainStudio'),
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
                name: NameNode(value: 'pageInfo'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FragmentSpreadNode(
                    name: NameNode(value: 'PageInfo'),
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
  fragmentDefinitionMediaShort,
  fragmentDefinitionFuzzyDate,
  fragmentDefinitionMediaListEntry,
  fragmentDefinitionListEntryMedia,
  fragmentDefinitionPageInfo,
]);
Query$getStudioMedia _parserFn$Query$getStudioMedia(
        Map<String, dynamic> data) =>
    Query$getStudioMedia.fromJson(data);
typedef OnQueryComplete$Query$getStudioMedia = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$getStudioMedia?,
);

class Options$Query$getStudioMedia
    extends graphql.QueryOptions<Query$getStudioMedia> {
  Options$Query$getStudioMedia({
    String? operationName,
    Variables$Query$getStudioMedia? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$getStudioMedia? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$getStudioMedia? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
          variables: variables?.toJson() ?? {},
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
                    data == null ? null : _parserFn$Query$getStudioMedia(data),
                  ),
          onError: onError,
          document: documentNodeQuerygetStudioMedia,
          parserFn: _parserFn$Query$getStudioMedia,
        );

  final OnQueryComplete$Query$getStudioMedia? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$getStudioMedia
    extends graphql.WatchQueryOptions<Query$getStudioMedia> {
  WatchOptions$Query$getStudioMedia({
    String? operationName,
    Variables$Query$getStudioMedia? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$getStudioMedia? typedOptimisticResult,
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
          document: documentNodeQuerygetStudioMedia,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$getStudioMedia,
        );
}

class FetchMoreOptions$Query$getStudioMedia extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$getStudioMedia({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$getStudioMedia? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQuerygetStudioMedia,
        );
}

extension ClientExtension$Query$getStudioMedia on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$getStudioMedia>> query$getStudioMedia(
          [Options$Query$getStudioMedia? options]) async =>
      await this.query(options ?? Options$Query$getStudioMedia());
  graphql.ObservableQuery<Query$getStudioMedia> watchQuery$getStudioMedia(
          [WatchOptions$Query$getStudioMedia? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$getStudioMedia());
  void writeQuery$getStudioMedia({
    required Query$getStudioMedia data,
    Variables$Query$getStudioMedia? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQuerygetStudioMedia),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$getStudioMedia? readQuery$getStudioMedia({
    Variables$Query$getStudioMedia? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQuerygetStudioMedia),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$getStudioMedia.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$getStudioMedia> useQuery$getStudioMedia(
        [Options$Query$getStudioMedia? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$getStudioMedia());
graphql.ObservableQuery<Query$getStudioMedia> useWatchQuery$getStudioMedia(
        [WatchOptions$Query$getStudioMedia? options]) =>
    graphql_flutter
        .useWatchQuery(options ?? WatchOptions$Query$getStudioMedia());

class Query$getStudioMedia$Widget
    extends graphql_flutter.Query<Query$getStudioMedia> {
  Query$getStudioMedia$Widget({
    widgets.Key? key,
    Options$Query$getStudioMedia? options,
    required graphql_flutter.QueryBuilder<Query$getStudioMedia> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$getStudioMedia(),
          builder: builder,
        );
}

class Query$getStudioMedia$Studio {
  Query$getStudioMedia$Studio({
    required this.id,
    this.media,
    this.$__typename = 'Studio',
  });

  factory Query$getStudioMedia$Studio.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$media = json['media'];
    final l$$__typename = json['__typename'];
    return Query$getStudioMedia$Studio(
      id: (l$id as int),
      media: l$media == null
          ? null
          : Query$getStudioMedia$Studio$media.fromJson(
              (l$media as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final Query$getStudioMedia$Studio$media? media;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$media = media;
    _resultData['media'] = l$media?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$media = media;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$media,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$getStudioMedia$Studio ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$media = media;
    final lOther$media = other.media;
    if (l$media != lOther$media) {
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

extension UtilityExtension$Query$getStudioMedia$Studio
    on Query$getStudioMedia$Studio {
  CopyWith$Query$getStudioMedia$Studio<Query$getStudioMedia$Studio>
      get copyWith => CopyWith$Query$getStudioMedia$Studio(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getStudioMedia$Studio<TRes> {
  factory CopyWith$Query$getStudioMedia$Studio(
    Query$getStudioMedia$Studio instance,
    TRes Function(Query$getStudioMedia$Studio) then,
  ) = _CopyWithImpl$Query$getStudioMedia$Studio;

  factory CopyWith$Query$getStudioMedia$Studio.stub(TRes res) =
      _CopyWithStubImpl$Query$getStudioMedia$Studio;

  TRes call({
    int? id,
    Query$getStudioMedia$Studio$media? media,
    String? $__typename,
  });
  CopyWith$Query$getStudioMedia$Studio$media<TRes> get media;
}

class _CopyWithImpl$Query$getStudioMedia$Studio<TRes>
    implements CopyWith$Query$getStudioMedia$Studio<TRes> {
  _CopyWithImpl$Query$getStudioMedia$Studio(
    this._instance,
    this._then,
  );

  final Query$getStudioMedia$Studio _instance;

  final TRes Function(Query$getStudioMedia$Studio) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? media = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getStudioMedia$Studio(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        media: media == _undefined
            ? _instance.media
            : (media as Query$getStudioMedia$Studio$media?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$getStudioMedia$Studio$media<TRes> get media {
    final local$media = _instance.media;
    return local$media == null
        ? CopyWith$Query$getStudioMedia$Studio$media.stub(_then(_instance))
        : CopyWith$Query$getStudioMedia$Studio$media(
            local$media, (e) => call(media: e));
  }
}

class _CopyWithStubImpl$Query$getStudioMedia$Studio<TRes>
    implements CopyWith$Query$getStudioMedia$Studio<TRes> {
  _CopyWithStubImpl$Query$getStudioMedia$Studio(this._res);

  TRes _res;

  call({
    int? id,
    Query$getStudioMedia$Studio$media? media,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$getStudioMedia$Studio$media<TRes> get media =>
      CopyWith$Query$getStudioMedia$Studio$media.stub(_res);
}

class Query$getStudioMedia$Studio$media {
  Query$getStudioMedia$Studio$media({
    this.edges,
    this.pageInfo,
    this.$__typename = 'MediaConnection',
  });

  factory Query$getStudioMedia$Studio$media.fromJson(
      Map<String, dynamic> json) {
    final l$edges = json['edges'];
    final l$pageInfo = json['pageInfo'];
    final l$$__typename = json['__typename'];
    return Query$getStudioMedia$Studio$media(
      edges: (l$edges as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$getStudioMedia$Studio$media$edges.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      pageInfo: l$pageInfo == null
          ? null
          : Fragment$PageInfo.fromJson((l$pageInfo as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$getStudioMedia$Studio$media$edges?>? edges;

  final Fragment$PageInfo? pageInfo;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$edges = edges;
    _resultData['edges'] = l$edges?.map((e) => e?.toJson()).toList();
    final l$pageInfo = pageInfo;
    _resultData['pageInfo'] = l$pageInfo?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$edges = edges;
    final l$pageInfo = pageInfo;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$edges == null ? null : Object.hashAll(l$edges.map((v) => v)),
      l$pageInfo,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$getStudioMedia$Studio$media ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$edges = edges;
    final lOther$edges = other.edges;
    if (l$edges != null && lOther$edges != null) {
      if (l$edges.length != lOther$edges.length) {
        return false;
      }
      for (int i = 0; i < l$edges.length; i++) {
        final l$edges$entry = l$edges[i];
        final lOther$edges$entry = lOther$edges[i];
        if (l$edges$entry != lOther$edges$entry) {
          return false;
        }
      }
    } else if (l$edges != lOther$edges) {
      return false;
    }
    final l$pageInfo = pageInfo;
    final lOther$pageInfo = other.pageInfo;
    if (l$pageInfo != lOther$pageInfo) {
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

extension UtilityExtension$Query$getStudioMedia$Studio$media
    on Query$getStudioMedia$Studio$media {
  CopyWith$Query$getStudioMedia$Studio$media<Query$getStudioMedia$Studio$media>
      get copyWith => CopyWith$Query$getStudioMedia$Studio$media(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getStudioMedia$Studio$media<TRes> {
  factory CopyWith$Query$getStudioMedia$Studio$media(
    Query$getStudioMedia$Studio$media instance,
    TRes Function(Query$getStudioMedia$Studio$media) then,
  ) = _CopyWithImpl$Query$getStudioMedia$Studio$media;

  factory CopyWith$Query$getStudioMedia$Studio$media.stub(TRes res) =
      _CopyWithStubImpl$Query$getStudioMedia$Studio$media;

  TRes call({
    List<Query$getStudioMedia$Studio$media$edges?>? edges,
    Fragment$PageInfo? pageInfo,
    String? $__typename,
  });
  TRes edges(
      Iterable<Query$getStudioMedia$Studio$media$edges?>? Function(
              Iterable<
                  CopyWith$Query$getStudioMedia$Studio$media$edges<
                      Query$getStudioMedia$Studio$media$edges>?>?)
          _fn);
  CopyWith$Fragment$PageInfo<TRes> get pageInfo;
}

class _CopyWithImpl$Query$getStudioMedia$Studio$media<TRes>
    implements CopyWith$Query$getStudioMedia$Studio$media<TRes> {
  _CopyWithImpl$Query$getStudioMedia$Studio$media(
    this._instance,
    this._then,
  );

  final Query$getStudioMedia$Studio$media _instance;

  final TRes Function(Query$getStudioMedia$Studio$media) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? edges = _undefined,
    Object? pageInfo = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getStudioMedia$Studio$media(
        edges: edges == _undefined
            ? _instance.edges
            : (edges as List<Query$getStudioMedia$Studio$media$edges?>?),
        pageInfo: pageInfo == _undefined
            ? _instance.pageInfo
            : (pageInfo as Fragment$PageInfo?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes edges(
          Iterable<Query$getStudioMedia$Studio$media$edges?>? Function(
                  Iterable<
                      CopyWith$Query$getStudioMedia$Studio$media$edges<
                          Query$getStudioMedia$Studio$media$edges>?>?)
              _fn) =>
      call(
          edges: _fn(_instance.edges?.map((e) => e == null
              ? null
              : CopyWith$Query$getStudioMedia$Studio$media$edges(
                  e,
                  (i) => i,
                )))?.toList());

  CopyWith$Fragment$PageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return local$pageInfo == null
        ? CopyWith$Fragment$PageInfo.stub(_then(_instance))
        : CopyWith$Fragment$PageInfo(local$pageInfo, (e) => call(pageInfo: e));
  }
}

class _CopyWithStubImpl$Query$getStudioMedia$Studio$media<TRes>
    implements CopyWith$Query$getStudioMedia$Studio$media<TRes> {
  _CopyWithStubImpl$Query$getStudioMedia$Studio$media(this._res);

  TRes _res;

  call({
    List<Query$getStudioMedia$Studio$media$edges?>? edges,
    Fragment$PageInfo? pageInfo,
    String? $__typename,
  }) =>
      _res;

  edges(_fn) => _res;

  CopyWith$Fragment$PageInfo<TRes> get pageInfo =>
      CopyWith$Fragment$PageInfo.stub(_res);
}

class Query$getStudioMedia$Studio$media$edges {
  Query$getStudioMedia$Studio$media$edges({
    this.node,
    required this.isMainStudio,
    this.$__typename = 'MediaEdge',
  });

  factory Query$getStudioMedia$Studio$media$edges.fromJson(
      Map<String, dynamic> json) {
    final l$node = json['node'];
    final l$isMainStudio = json['isMainStudio'];
    final l$$__typename = json['__typename'];
    return Query$getStudioMedia$Studio$media$edges(
      node: l$node == null
          ? null
          : Fragment$MediaShort.fromJson((l$node as Map<String, dynamic>)),
      isMainStudio: (l$isMainStudio as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$MediaShort? node;

  final bool isMainStudio;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$node = node;
    _resultData['node'] = l$node?.toJson();
    final l$isMainStudio = isMainStudio;
    _resultData['isMainStudio'] = l$isMainStudio;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$node = node;
    final l$isMainStudio = isMainStudio;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$node,
      l$isMainStudio,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$getStudioMedia$Studio$media$edges ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$node = node;
    final lOther$node = other.node;
    if (l$node != lOther$node) {
      return false;
    }
    final l$isMainStudio = isMainStudio;
    final lOther$isMainStudio = other.isMainStudio;
    if (l$isMainStudio != lOther$isMainStudio) {
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

extension UtilityExtension$Query$getStudioMedia$Studio$media$edges
    on Query$getStudioMedia$Studio$media$edges {
  CopyWith$Query$getStudioMedia$Studio$media$edges<
          Query$getStudioMedia$Studio$media$edges>
      get copyWith => CopyWith$Query$getStudioMedia$Studio$media$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getStudioMedia$Studio$media$edges<TRes> {
  factory CopyWith$Query$getStudioMedia$Studio$media$edges(
    Query$getStudioMedia$Studio$media$edges instance,
    TRes Function(Query$getStudioMedia$Studio$media$edges) then,
  ) = _CopyWithImpl$Query$getStudioMedia$Studio$media$edges;

  factory CopyWith$Query$getStudioMedia$Studio$media$edges.stub(TRes res) =
      _CopyWithStubImpl$Query$getStudioMedia$Studio$media$edges;

  TRes call({
    Fragment$MediaShort? node,
    bool? isMainStudio,
    String? $__typename,
  });
  CopyWith$Fragment$MediaShort<TRes> get node;
}

class _CopyWithImpl$Query$getStudioMedia$Studio$media$edges<TRes>
    implements CopyWith$Query$getStudioMedia$Studio$media$edges<TRes> {
  _CopyWithImpl$Query$getStudioMedia$Studio$media$edges(
    this._instance,
    this._then,
  );

  final Query$getStudioMedia$Studio$media$edges _instance;

  final TRes Function(Query$getStudioMedia$Studio$media$edges) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? node = _undefined,
    Object? isMainStudio = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getStudioMedia$Studio$media$edges(
        node: node == _undefined
            ? _instance.node
            : (node as Fragment$MediaShort?),
        isMainStudio: isMainStudio == _undefined || isMainStudio == null
            ? _instance.isMainStudio
            : (isMainStudio as bool),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$MediaShort<TRes> get node {
    final local$node = _instance.node;
    return local$node == null
        ? CopyWith$Fragment$MediaShort.stub(_then(_instance))
        : CopyWith$Fragment$MediaShort(local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Query$getStudioMedia$Studio$media$edges<TRes>
    implements CopyWith$Query$getStudioMedia$Studio$media$edges<TRes> {
  _CopyWithStubImpl$Query$getStudioMedia$Studio$media$edges(this._res);

  TRes _res;

  call({
    Fragment$MediaShort? node,
    bool? isMainStudio,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$MediaShort<TRes> get node =>
      CopyWith$Fragment$MediaShort.stub(_res);
}
