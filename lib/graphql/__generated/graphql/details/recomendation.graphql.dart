// GENERATED FILE
// DO NOT MODIFY
// ignore_for_file: type=lint
import '../fragments.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$GetRecommendation {
  factory Variables$Query$GetRecommendation({
    int? id,
    int? page,
  }) =>
      Variables$Query$GetRecommendation._({
        if (id != null) r'id': id,
        if (page != null) r'page': page,
      });

  Variables$Query$GetRecommendation._(this._$data);

  factory Variables$Query$GetRecommendation.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as int?);
    }
    if (data.containsKey('page')) {
      final l$page = data['page'];
      result$data['page'] = (l$page as int?);
    }
    return Variables$Query$GetRecommendation._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get id => (_$data['id'] as int?);

  int? get page => (_$data['page'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    if (_$data.containsKey('page')) {
      final l$page = page;
      result$data['page'] = l$page;
    }
    return result$data;
  }

  CopyWith$Variables$Query$GetRecommendation<Variables$Query$GetRecommendation>
      get copyWith => CopyWith$Variables$Query$GetRecommendation(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$GetRecommendation ||
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
    final l$page = page;
    return Object.hashAll([
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('page') ? l$page : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$GetRecommendation<TRes> {
  factory CopyWith$Variables$Query$GetRecommendation(
    Variables$Query$GetRecommendation instance,
    TRes Function(Variables$Query$GetRecommendation) then,
  ) = _CopyWithImpl$Variables$Query$GetRecommendation;

  factory CopyWith$Variables$Query$GetRecommendation.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetRecommendation;

  TRes call({
    int? id,
    int? page,
  });
}

class _CopyWithImpl$Variables$Query$GetRecommendation<TRes>
    implements CopyWith$Variables$Query$GetRecommendation<TRes> {
  _CopyWithImpl$Variables$Query$GetRecommendation(
    this._instance,
    this._then,
  );

  final Variables$Query$GetRecommendation _instance;

  final TRes Function(Variables$Query$GetRecommendation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? page = _undefined,
  }) =>
      _then(Variables$Query$GetRecommendation._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as int?),
        if (page != _undefined) 'page': (page as int?),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetRecommendation<TRes>
    implements CopyWith$Variables$Query$GetRecommendation<TRes> {
  _CopyWithStubImpl$Variables$Query$GetRecommendation(this._res);

  TRes _res;

  call({
    int? id,
    int? page,
  }) =>
      _res;
}

class Query$GetRecommendation {
  Query$GetRecommendation({
    this.Media,
    this.$__typename = 'Query',
  });

  factory Query$GetRecommendation.fromJson(Map<String, dynamic> json) {
    final l$Media = json['Media'];
    final l$$__typename = json['__typename'];
    return Query$GetRecommendation(
      Media: l$Media == null
          ? null
          : Query$GetRecommendation$Media.fromJson(
              (l$Media as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetRecommendation$Media? Media;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$Media = Media;
    _resultData['Media'] = l$Media?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$Media = Media;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$Media,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetRecommendation || runtimeType != other.runtimeType) {
      return false;
    }
    final l$Media = Media;
    final lOther$Media = other.Media;
    if (l$Media != lOther$Media) {
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

extension UtilityExtension$Query$GetRecommendation on Query$GetRecommendation {
  CopyWith$Query$GetRecommendation<Query$GetRecommendation> get copyWith =>
      CopyWith$Query$GetRecommendation(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetRecommendation<TRes> {
  factory CopyWith$Query$GetRecommendation(
    Query$GetRecommendation instance,
    TRes Function(Query$GetRecommendation) then,
  ) = _CopyWithImpl$Query$GetRecommendation;

  factory CopyWith$Query$GetRecommendation.stub(TRes res) =
      _CopyWithStubImpl$Query$GetRecommendation;

  TRes call({
    Query$GetRecommendation$Media? Media,
    String? $__typename,
  });
  CopyWith$Query$GetRecommendation$Media<TRes> get Media;
}

class _CopyWithImpl$Query$GetRecommendation<TRes>
    implements CopyWith$Query$GetRecommendation<TRes> {
  _CopyWithImpl$Query$GetRecommendation(
    this._instance,
    this._then,
  );

  final Query$GetRecommendation _instance;

  final TRes Function(Query$GetRecommendation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? Media = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetRecommendation(
        Media: Media == _undefined
            ? _instance.Media
            : (Media as Query$GetRecommendation$Media?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetRecommendation$Media<TRes> get Media {
    final local$Media = _instance.Media;
    return local$Media == null
        ? CopyWith$Query$GetRecommendation$Media.stub(_then(_instance))
        : CopyWith$Query$GetRecommendation$Media(
            local$Media, (e) => call(Media: e));
  }
}

class _CopyWithStubImpl$Query$GetRecommendation<TRes>
    implements CopyWith$Query$GetRecommendation<TRes> {
  _CopyWithStubImpl$Query$GetRecommendation(this._res);

  TRes _res;

  call({
    Query$GetRecommendation$Media? Media,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetRecommendation$Media<TRes> get Media =>
      CopyWith$Query$GetRecommendation$Media.stub(_res);
}

const documentNodeQueryGetRecommendation = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetRecommendation'),
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
        name: NameNode(value: 'Media'),
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
            name: NameNode(value: 'recommendations'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'page'),
                value: VariableNode(name: NameNode(value: 'page')),
              ),
              ArgumentNode(
                name: NameNode(value: 'perPage'),
                value: IntValueNode(value: '15'),
              ),
              ArgumentNode(
                name: NameNode(value: 'sort'),
                value: ListValueNode(values: [
                  EnumValueNode(name: NameNode(value: 'RATING_DESC'))
                ]),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'pageInfo'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'hasNextPage'),
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
                      FieldNode(
                        name: NameNode(value: 'mediaRecommendation'),
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
]);
Query$GetRecommendation _parserFn$Query$GetRecommendation(
        Map<String, dynamic> data) =>
    Query$GetRecommendation.fromJson(data);
typedef OnQueryComplete$Query$GetRecommendation = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$GetRecommendation?,
);

class Options$Query$GetRecommendation
    extends graphql.QueryOptions<Query$GetRecommendation> {
  Options$Query$GetRecommendation({
    String? operationName,
    Variables$Query$GetRecommendation? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetRecommendation? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$GetRecommendation? onComplete,
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
                    data == null
                        ? null
                        : _parserFn$Query$GetRecommendation(data),
                  ),
          onError: onError,
          document: documentNodeQueryGetRecommendation,
          parserFn: _parserFn$Query$GetRecommendation,
        );

  final OnQueryComplete$Query$GetRecommendation? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$GetRecommendation
    extends graphql.WatchQueryOptions<Query$GetRecommendation> {
  WatchOptions$Query$GetRecommendation({
    String? operationName,
    Variables$Query$GetRecommendation? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetRecommendation? typedOptimisticResult,
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
          document: documentNodeQueryGetRecommendation,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetRecommendation,
        );
}

class FetchMoreOptions$Query$GetRecommendation
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetRecommendation({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$GetRecommendation? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryGetRecommendation,
        );
}

extension ClientExtension$Query$GetRecommendation on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetRecommendation>> query$GetRecommendation(
          [Options$Query$GetRecommendation? options]) async =>
      await this.query(options ?? Options$Query$GetRecommendation());
  graphql.ObservableQuery<Query$GetRecommendation> watchQuery$GetRecommendation(
          [WatchOptions$Query$GetRecommendation? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$GetRecommendation());
  void writeQuery$GetRecommendation({
    required Query$GetRecommendation data,
    Variables$Query$GetRecommendation? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryGetRecommendation),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetRecommendation? readQuery$GetRecommendation({
    Variables$Query$GetRecommendation? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation:
            graphql.Operation(document: documentNodeQueryGetRecommendation),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$GetRecommendation.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$GetRecommendation>
    useQuery$GetRecommendation([Options$Query$GetRecommendation? options]) =>
        graphql_flutter.useQuery(options ?? Options$Query$GetRecommendation());
graphql.ObservableQuery<Query$GetRecommendation>
    useWatchQuery$GetRecommendation(
            [WatchOptions$Query$GetRecommendation? options]) =>
        graphql_flutter
            .useWatchQuery(options ?? WatchOptions$Query$GetRecommendation());

class Query$GetRecommendation$Widget
    extends graphql_flutter.Query<Query$GetRecommendation> {
  Query$GetRecommendation$Widget({
    widgets.Key? key,
    Options$Query$GetRecommendation? options,
    required graphql_flutter.QueryBuilder<Query$GetRecommendation> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$GetRecommendation(),
          builder: builder,
        );
}

class Query$GetRecommendation$Media {
  Query$GetRecommendation$Media({
    this.recommendations,
    this.$__typename = 'Media',
  });

  factory Query$GetRecommendation$Media.fromJson(Map<String, dynamic> json) {
    final l$recommendations = json['recommendations'];
    final l$$__typename = json['__typename'];
    return Query$GetRecommendation$Media(
      recommendations: l$recommendations == null
          ? null
          : Query$GetRecommendation$Media$recommendations.fromJson(
              (l$recommendations as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetRecommendation$Media$recommendations? recommendations;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$recommendations = recommendations;
    _resultData['recommendations'] = l$recommendations?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$recommendations = recommendations;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$recommendations,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetRecommendation$Media ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$recommendations = recommendations;
    final lOther$recommendations = other.recommendations;
    if (l$recommendations != lOther$recommendations) {
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

extension UtilityExtension$Query$GetRecommendation$Media
    on Query$GetRecommendation$Media {
  CopyWith$Query$GetRecommendation$Media<Query$GetRecommendation$Media>
      get copyWith => CopyWith$Query$GetRecommendation$Media(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetRecommendation$Media<TRes> {
  factory CopyWith$Query$GetRecommendation$Media(
    Query$GetRecommendation$Media instance,
    TRes Function(Query$GetRecommendation$Media) then,
  ) = _CopyWithImpl$Query$GetRecommendation$Media;

  factory CopyWith$Query$GetRecommendation$Media.stub(TRes res) =
      _CopyWithStubImpl$Query$GetRecommendation$Media;

  TRes call({
    Query$GetRecommendation$Media$recommendations? recommendations,
    String? $__typename,
  });
  CopyWith$Query$GetRecommendation$Media$recommendations<TRes>
      get recommendations;
}

class _CopyWithImpl$Query$GetRecommendation$Media<TRes>
    implements CopyWith$Query$GetRecommendation$Media<TRes> {
  _CopyWithImpl$Query$GetRecommendation$Media(
    this._instance,
    this._then,
  );

  final Query$GetRecommendation$Media _instance;

  final TRes Function(Query$GetRecommendation$Media) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? recommendations = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetRecommendation$Media(
        recommendations: recommendations == _undefined
            ? _instance.recommendations
            : (recommendations
                as Query$GetRecommendation$Media$recommendations?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetRecommendation$Media$recommendations<TRes>
      get recommendations {
    final local$recommendations = _instance.recommendations;
    return local$recommendations == null
        ? CopyWith$Query$GetRecommendation$Media$recommendations.stub(
            _then(_instance))
        : CopyWith$Query$GetRecommendation$Media$recommendations(
            local$recommendations, (e) => call(recommendations: e));
  }
}

class _CopyWithStubImpl$Query$GetRecommendation$Media<TRes>
    implements CopyWith$Query$GetRecommendation$Media<TRes> {
  _CopyWithStubImpl$Query$GetRecommendation$Media(this._res);

  TRes _res;

  call({
    Query$GetRecommendation$Media$recommendations? recommendations,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetRecommendation$Media$recommendations<TRes>
      get recommendations =>
          CopyWith$Query$GetRecommendation$Media$recommendations.stub(_res);
}

class Query$GetRecommendation$Media$recommendations {
  Query$GetRecommendation$Media$recommendations({
    this.pageInfo,
    this.edges,
    this.$__typename = 'RecommendationConnection',
  });

  factory Query$GetRecommendation$Media$recommendations.fromJson(
      Map<String, dynamic> json) {
    final l$pageInfo = json['pageInfo'];
    final l$edges = json['edges'];
    final l$$__typename = json['__typename'];
    return Query$GetRecommendation$Media$recommendations(
      pageInfo: l$pageInfo == null
          ? null
          : Query$GetRecommendation$Media$recommendations$pageInfo.fromJson(
              (l$pageInfo as Map<String, dynamic>)),
      edges: (l$edges as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$GetRecommendation$Media$recommendations$edges.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetRecommendation$Media$recommendations$pageInfo? pageInfo;

  final List<Query$GetRecommendation$Media$recommendations$edges?>? edges;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$pageInfo = pageInfo;
    _resultData['pageInfo'] = l$pageInfo?.toJson();
    final l$edges = edges;
    _resultData['edges'] = l$edges?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$pageInfo = pageInfo;
    final l$edges = edges;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$pageInfo,
      l$edges == null ? null : Object.hashAll(l$edges.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetRecommendation$Media$recommendations ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$pageInfo = pageInfo;
    final lOther$pageInfo = other.pageInfo;
    if (l$pageInfo != lOther$pageInfo) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetRecommendation$Media$recommendations
    on Query$GetRecommendation$Media$recommendations {
  CopyWith$Query$GetRecommendation$Media$recommendations<
          Query$GetRecommendation$Media$recommendations>
      get copyWith => CopyWith$Query$GetRecommendation$Media$recommendations(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetRecommendation$Media$recommendations<TRes> {
  factory CopyWith$Query$GetRecommendation$Media$recommendations(
    Query$GetRecommendation$Media$recommendations instance,
    TRes Function(Query$GetRecommendation$Media$recommendations) then,
  ) = _CopyWithImpl$Query$GetRecommendation$Media$recommendations;

  factory CopyWith$Query$GetRecommendation$Media$recommendations.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetRecommendation$Media$recommendations;

  TRes call({
    Query$GetRecommendation$Media$recommendations$pageInfo? pageInfo,
    List<Query$GetRecommendation$Media$recommendations$edges?>? edges,
    String? $__typename,
  });
  CopyWith$Query$GetRecommendation$Media$recommendations$pageInfo<TRes>
      get pageInfo;
  TRes edges(
      Iterable<Query$GetRecommendation$Media$recommendations$edges?>? Function(
              Iterable<
                  CopyWith$Query$GetRecommendation$Media$recommendations$edges<
                      Query$GetRecommendation$Media$recommendations$edges>?>?)
          _fn);
}

class _CopyWithImpl$Query$GetRecommendation$Media$recommendations<TRes>
    implements CopyWith$Query$GetRecommendation$Media$recommendations<TRes> {
  _CopyWithImpl$Query$GetRecommendation$Media$recommendations(
    this._instance,
    this._then,
  );

  final Query$GetRecommendation$Media$recommendations _instance;

  final TRes Function(Query$GetRecommendation$Media$recommendations) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pageInfo = _undefined,
    Object? edges = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetRecommendation$Media$recommendations(
        pageInfo: pageInfo == _undefined
            ? _instance.pageInfo
            : (pageInfo
                as Query$GetRecommendation$Media$recommendations$pageInfo?),
        edges: edges == _undefined
            ? _instance.edges
            : (edges
                as List<Query$GetRecommendation$Media$recommendations$edges?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetRecommendation$Media$recommendations$pageInfo<TRes>
      get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return local$pageInfo == null
        ? CopyWith$Query$GetRecommendation$Media$recommendations$pageInfo.stub(
            _then(_instance))
        : CopyWith$Query$GetRecommendation$Media$recommendations$pageInfo(
            local$pageInfo, (e) => call(pageInfo: e));
  }

  TRes edges(
          Iterable<Query$GetRecommendation$Media$recommendations$edges?>? Function(
                  Iterable<
                      CopyWith$Query$GetRecommendation$Media$recommendations$edges<
                          Query$GetRecommendation$Media$recommendations$edges>?>?)
              _fn) =>
      call(
          edges: _fn(_instance.edges?.map((e) => e == null
              ? null
              : CopyWith$Query$GetRecommendation$Media$recommendations$edges(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$GetRecommendation$Media$recommendations<TRes>
    implements CopyWith$Query$GetRecommendation$Media$recommendations<TRes> {
  _CopyWithStubImpl$Query$GetRecommendation$Media$recommendations(this._res);

  TRes _res;

  call({
    Query$GetRecommendation$Media$recommendations$pageInfo? pageInfo,
    List<Query$GetRecommendation$Media$recommendations$edges?>? edges,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetRecommendation$Media$recommendations$pageInfo<TRes>
      get pageInfo =>
          CopyWith$Query$GetRecommendation$Media$recommendations$pageInfo.stub(
              _res);

  edges(_fn) => _res;
}

class Query$GetRecommendation$Media$recommendations$pageInfo {
  Query$GetRecommendation$Media$recommendations$pageInfo({
    this.hasNextPage,
    this.$__typename = 'PageInfo',
  });

  factory Query$GetRecommendation$Media$recommendations$pageInfo.fromJson(
      Map<String, dynamic> json) {
    final l$hasNextPage = json['hasNextPage'];
    final l$$__typename = json['__typename'];
    return Query$GetRecommendation$Media$recommendations$pageInfo(
      hasNextPage: (l$hasNextPage as bool?),
      $__typename: (l$$__typename as String),
    );
  }

  final bool? hasNextPage;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$hasNextPage = hasNextPage;
    _resultData['hasNextPage'] = l$hasNextPage;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$hasNextPage = hasNextPage;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$hasNextPage,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetRecommendation$Media$recommendations$pageInfo ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$hasNextPage = hasNextPage;
    final lOther$hasNextPage = other.hasNextPage;
    if (l$hasNextPage != lOther$hasNextPage) {
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

extension UtilityExtension$Query$GetRecommendation$Media$recommendations$pageInfo
    on Query$GetRecommendation$Media$recommendations$pageInfo {
  CopyWith$Query$GetRecommendation$Media$recommendations$pageInfo<
          Query$GetRecommendation$Media$recommendations$pageInfo>
      get copyWith =>
          CopyWith$Query$GetRecommendation$Media$recommendations$pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetRecommendation$Media$recommendations$pageInfo<
    TRes> {
  factory CopyWith$Query$GetRecommendation$Media$recommendations$pageInfo(
    Query$GetRecommendation$Media$recommendations$pageInfo instance,
    TRes Function(Query$GetRecommendation$Media$recommendations$pageInfo) then,
  ) = _CopyWithImpl$Query$GetRecommendation$Media$recommendations$pageInfo;

  factory CopyWith$Query$GetRecommendation$Media$recommendations$pageInfo.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetRecommendation$Media$recommendations$pageInfo;

  TRes call({
    bool? hasNextPage,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetRecommendation$Media$recommendations$pageInfo<TRes>
    implements
        CopyWith$Query$GetRecommendation$Media$recommendations$pageInfo<TRes> {
  _CopyWithImpl$Query$GetRecommendation$Media$recommendations$pageInfo(
    this._instance,
    this._then,
  );

  final Query$GetRecommendation$Media$recommendations$pageInfo _instance;

  final TRes Function(Query$GetRecommendation$Media$recommendations$pageInfo)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasNextPage = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetRecommendation$Media$recommendations$pageInfo(
        hasNextPage: hasNextPage == _undefined
            ? _instance.hasNextPage
            : (hasNextPage as bool?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetRecommendation$Media$recommendations$pageInfo<
        TRes>
    implements
        CopyWith$Query$GetRecommendation$Media$recommendations$pageInfo<TRes> {
  _CopyWithStubImpl$Query$GetRecommendation$Media$recommendations$pageInfo(
      this._res);

  TRes _res;

  call({
    bool? hasNextPage,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetRecommendation$Media$recommendations$edges {
  Query$GetRecommendation$Media$recommendations$edges({
    this.node,
    this.$__typename = 'RecommendationEdge',
  });

  factory Query$GetRecommendation$Media$recommendations$edges.fromJson(
      Map<String, dynamic> json) {
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Query$GetRecommendation$Media$recommendations$edges(
      node: l$node == null
          ? null
          : Query$GetRecommendation$Media$recommendations$edges$node.fromJson(
              (l$node as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetRecommendation$Media$recommendations$edges$node? node;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$node = node;
    _resultData['node'] = l$node?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$node = node;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$node,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetRecommendation$Media$recommendations$edges ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$node = node;
    final lOther$node = other.node;
    if (l$node != lOther$node) {
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

extension UtilityExtension$Query$GetRecommendation$Media$recommendations$edges
    on Query$GetRecommendation$Media$recommendations$edges {
  CopyWith$Query$GetRecommendation$Media$recommendations$edges<
          Query$GetRecommendation$Media$recommendations$edges>
      get copyWith =>
          CopyWith$Query$GetRecommendation$Media$recommendations$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetRecommendation$Media$recommendations$edges<
    TRes> {
  factory CopyWith$Query$GetRecommendation$Media$recommendations$edges(
    Query$GetRecommendation$Media$recommendations$edges instance,
    TRes Function(Query$GetRecommendation$Media$recommendations$edges) then,
  ) = _CopyWithImpl$Query$GetRecommendation$Media$recommendations$edges;

  factory CopyWith$Query$GetRecommendation$Media$recommendations$edges.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetRecommendation$Media$recommendations$edges;

  TRes call({
    Query$GetRecommendation$Media$recommendations$edges$node? node,
    String? $__typename,
  });
  CopyWith$Query$GetRecommendation$Media$recommendations$edges$node<TRes>
      get node;
}

class _CopyWithImpl$Query$GetRecommendation$Media$recommendations$edges<TRes>
    implements
        CopyWith$Query$GetRecommendation$Media$recommendations$edges<TRes> {
  _CopyWithImpl$Query$GetRecommendation$Media$recommendations$edges(
    this._instance,
    this._then,
  );

  final Query$GetRecommendation$Media$recommendations$edges _instance;

  final TRes Function(Query$GetRecommendation$Media$recommendations$edges)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetRecommendation$Media$recommendations$edges(
        node: node == _undefined
            ? _instance.node
            : (node
                as Query$GetRecommendation$Media$recommendations$edges$node?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetRecommendation$Media$recommendations$edges$node<TRes>
      get node {
    final local$node = _instance.node;
    return local$node == null
        ? CopyWith$Query$GetRecommendation$Media$recommendations$edges$node
            .stub(_then(_instance))
        : CopyWith$Query$GetRecommendation$Media$recommendations$edges$node(
            local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Query$GetRecommendation$Media$recommendations$edges<
        TRes>
    implements
        CopyWith$Query$GetRecommendation$Media$recommendations$edges<TRes> {
  _CopyWithStubImpl$Query$GetRecommendation$Media$recommendations$edges(
      this._res);

  TRes _res;

  call({
    Query$GetRecommendation$Media$recommendations$edges$node? node,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetRecommendation$Media$recommendations$edges$node<TRes>
      get node =>
          CopyWith$Query$GetRecommendation$Media$recommendations$edges$node
              .stub(_res);
}

class Query$GetRecommendation$Media$recommendations$edges$node {
  Query$GetRecommendation$Media$recommendations$edges$node({
    this.mediaRecommendation,
    this.$__typename = 'Recommendation',
  });

  factory Query$GetRecommendation$Media$recommendations$edges$node.fromJson(
      Map<String, dynamic> json) {
    final l$mediaRecommendation = json['mediaRecommendation'];
    final l$$__typename = json['__typename'];
    return Query$GetRecommendation$Media$recommendations$edges$node(
      mediaRecommendation: l$mediaRecommendation == null
          ? null
          : Fragment$MediaShort.fromJson(
              (l$mediaRecommendation as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$MediaShort? mediaRecommendation;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mediaRecommendation = mediaRecommendation;
    _resultData['mediaRecommendation'] = l$mediaRecommendation?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$mediaRecommendation = mediaRecommendation;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$mediaRecommendation,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetRecommendation$Media$recommendations$edges$node ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mediaRecommendation = mediaRecommendation;
    final lOther$mediaRecommendation = other.mediaRecommendation;
    if (l$mediaRecommendation != lOther$mediaRecommendation) {
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

extension UtilityExtension$Query$GetRecommendation$Media$recommendations$edges$node
    on Query$GetRecommendation$Media$recommendations$edges$node {
  CopyWith$Query$GetRecommendation$Media$recommendations$edges$node<
          Query$GetRecommendation$Media$recommendations$edges$node>
      get copyWith =>
          CopyWith$Query$GetRecommendation$Media$recommendations$edges$node(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetRecommendation$Media$recommendations$edges$node<
    TRes> {
  factory CopyWith$Query$GetRecommendation$Media$recommendations$edges$node(
    Query$GetRecommendation$Media$recommendations$edges$node instance,
    TRes Function(Query$GetRecommendation$Media$recommendations$edges$node)
        then,
  ) = _CopyWithImpl$Query$GetRecommendation$Media$recommendations$edges$node;

  factory CopyWith$Query$GetRecommendation$Media$recommendations$edges$node.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetRecommendation$Media$recommendations$edges$node;

  TRes call({
    Fragment$MediaShort? mediaRecommendation,
    String? $__typename,
  });
  CopyWith$Fragment$MediaShort<TRes> get mediaRecommendation;
}

class _CopyWithImpl$Query$GetRecommendation$Media$recommendations$edges$node<
        TRes>
    implements
        CopyWith$Query$GetRecommendation$Media$recommendations$edges$node<
            TRes> {
  _CopyWithImpl$Query$GetRecommendation$Media$recommendations$edges$node(
    this._instance,
    this._then,
  );

  final Query$GetRecommendation$Media$recommendations$edges$node _instance;

  final TRes Function(Query$GetRecommendation$Media$recommendations$edges$node)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mediaRecommendation = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetRecommendation$Media$recommendations$edges$node(
        mediaRecommendation: mediaRecommendation == _undefined
            ? _instance.mediaRecommendation
            : (mediaRecommendation as Fragment$MediaShort?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$MediaShort<TRes> get mediaRecommendation {
    final local$mediaRecommendation = _instance.mediaRecommendation;
    return local$mediaRecommendation == null
        ? CopyWith$Fragment$MediaShort.stub(_then(_instance))
        : CopyWith$Fragment$MediaShort(
            local$mediaRecommendation, (e) => call(mediaRecommendation: e));
  }
}

class _CopyWithStubImpl$Query$GetRecommendation$Media$recommendations$edges$node<
        TRes>
    implements
        CopyWith$Query$GetRecommendation$Media$recommendations$edges$node<
            TRes> {
  _CopyWithStubImpl$Query$GetRecommendation$Media$recommendations$edges$node(
      this._res);

  TRes _res;

  call({
    Fragment$MediaShort? mediaRecommendation,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$MediaShort<TRes> get mediaRecommendation =>
      CopyWith$Fragment$MediaShort.stub(_res);
}
