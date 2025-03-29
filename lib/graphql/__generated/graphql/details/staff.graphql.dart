// GENERATED FILE
// DO NOT MODIFY
// ignore_for_file: type=lint
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$MediaStaff {
  factory Variables$Query$MediaStaff({
    int? mediaId,
    int? page,
  }) =>
      Variables$Query$MediaStaff._({
        if (mediaId != null) r'mediaId': mediaId,
        if (page != null) r'page': page,
      });

  Variables$Query$MediaStaff._(this._$data);

  factory Variables$Query$MediaStaff.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('mediaId')) {
      final l$mediaId = data['mediaId'];
      result$data['mediaId'] = (l$mediaId as int?);
    }
    if (data.containsKey('page')) {
      final l$page = data['page'];
      result$data['page'] = (l$page as int?);
    }
    return Variables$Query$MediaStaff._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get mediaId => (_$data['mediaId'] as int?);

  int? get page => (_$data['page'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('mediaId')) {
      final l$mediaId = mediaId;
      result$data['mediaId'] = l$mediaId;
    }
    if (_$data.containsKey('page')) {
      final l$page = page;
      result$data['page'] = l$page;
    }
    return result$data;
  }

  CopyWith$Variables$Query$MediaStaff<Variables$Query$MediaStaff>
      get copyWith => CopyWith$Variables$Query$MediaStaff(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$MediaStaff ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mediaId = mediaId;
    final lOther$mediaId = other.mediaId;
    if (_$data.containsKey('mediaId') != other._$data.containsKey('mediaId')) {
      return false;
    }
    if (l$mediaId != lOther$mediaId) {
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
    final l$mediaId = mediaId;
    final l$page = page;
    return Object.hashAll([
      _$data.containsKey('mediaId') ? l$mediaId : const {},
      _$data.containsKey('page') ? l$page : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$MediaStaff<TRes> {
  factory CopyWith$Variables$Query$MediaStaff(
    Variables$Query$MediaStaff instance,
    TRes Function(Variables$Query$MediaStaff) then,
  ) = _CopyWithImpl$Variables$Query$MediaStaff;

  factory CopyWith$Variables$Query$MediaStaff.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$MediaStaff;

  TRes call({
    int? mediaId,
    int? page,
  });
}

class _CopyWithImpl$Variables$Query$MediaStaff<TRes>
    implements CopyWith$Variables$Query$MediaStaff<TRes> {
  _CopyWithImpl$Variables$Query$MediaStaff(
    this._instance,
    this._then,
  );

  final Variables$Query$MediaStaff _instance;

  final TRes Function(Variables$Query$MediaStaff) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mediaId = _undefined,
    Object? page = _undefined,
  }) =>
      _then(Variables$Query$MediaStaff._({
        ..._instance._$data,
        if (mediaId != _undefined) 'mediaId': (mediaId as int?),
        if (page != _undefined) 'page': (page as int?),
      }));
}

class _CopyWithStubImpl$Variables$Query$MediaStaff<TRes>
    implements CopyWith$Variables$Query$MediaStaff<TRes> {
  _CopyWithStubImpl$Variables$Query$MediaStaff(this._res);

  TRes _res;

  call({
    int? mediaId,
    int? page,
  }) =>
      _res;
}

class Query$MediaStaff {
  Query$MediaStaff({
    this.Media,
    this.$__typename = 'Query',
  });

  factory Query$MediaStaff.fromJson(Map<String, dynamic> json) {
    final l$Media = json['Media'];
    final l$$__typename = json['__typename'];
    return Query$MediaStaff(
      Media: l$Media == null
          ? null
          : Query$MediaStaff$Media.fromJson((l$Media as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$MediaStaff$Media? Media;

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
    if (other is! Query$MediaStaff || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$MediaStaff on Query$MediaStaff {
  CopyWith$Query$MediaStaff<Query$MediaStaff> get copyWith =>
      CopyWith$Query$MediaStaff(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$MediaStaff<TRes> {
  factory CopyWith$Query$MediaStaff(
    Query$MediaStaff instance,
    TRes Function(Query$MediaStaff) then,
  ) = _CopyWithImpl$Query$MediaStaff;

  factory CopyWith$Query$MediaStaff.stub(TRes res) =
      _CopyWithStubImpl$Query$MediaStaff;

  TRes call({
    Query$MediaStaff$Media? Media,
    String? $__typename,
  });
  CopyWith$Query$MediaStaff$Media<TRes> get Media;
}

class _CopyWithImpl$Query$MediaStaff<TRes>
    implements CopyWith$Query$MediaStaff<TRes> {
  _CopyWithImpl$Query$MediaStaff(
    this._instance,
    this._then,
  );

  final Query$MediaStaff _instance;

  final TRes Function(Query$MediaStaff) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? Media = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$MediaStaff(
        Media: Media == _undefined
            ? _instance.Media
            : (Media as Query$MediaStaff$Media?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$MediaStaff$Media<TRes> get Media {
    final local$Media = _instance.Media;
    return local$Media == null
        ? CopyWith$Query$MediaStaff$Media.stub(_then(_instance))
        : CopyWith$Query$MediaStaff$Media(local$Media, (e) => call(Media: e));
  }
}

class _CopyWithStubImpl$Query$MediaStaff<TRes>
    implements CopyWith$Query$MediaStaff<TRes> {
  _CopyWithStubImpl$Query$MediaStaff(this._res);

  TRes _res;

  call({
    Query$MediaStaff$Media? Media,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$MediaStaff$Media<TRes> get Media =>
      CopyWith$Query$MediaStaff$Media.stub(_res);
}

const documentNodeQueryMediaStaff = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'MediaStaff'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'mediaId')),
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
            value: VariableNode(name: NameNode(value: 'mediaId')),
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
            name: NameNode(value: 'staff'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'page'),
                value: VariableNode(name: NameNode(value: 'page')),
              ),
              ArgumentNode(
                name: NameNode(value: 'sort'),
                value: ListValueNode(values: [
                  EnumValueNode(name: NameNode(value: 'RELEVANCE')),
                  EnumValueNode(name: NameNode(value: 'ID')),
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
                    name: NameNode(value: 'currentPage'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
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
                    name: NameNode(value: 'role'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'node'),
                    alias: null,
                    arguments: [],
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
                        name: NameNode(value: 'name'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                            name: NameNode(value: 'userPreferred'),
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
                        name: NameNode(value: 'image'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                            name: NameNode(value: 'large'),
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
]);
Query$MediaStaff _parserFn$Query$MediaStaff(Map<String, dynamic> data) =>
    Query$MediaStaff.fromJson(data);
typedef OnQueryComplete$Query$MediaStaff = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$MediaStaff?,
);

class Options$Query$MediaStaff extends graphql.QueryOptions<Query$MediaStaff> {
  Options$Query$MediaStaff({
    String? operationName,
    Variables$Query$MediaStaff? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$MediaStaff? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$MediaStaff? onComplete,
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
                    data == null ? null : _parserFn$Query$MediaStaff(data),
                  ),
          onError: onError,
          document: documentNodeQueryMediaStaff,
          parserFn: _parserFn$Query$MediaStaff,
        );

  final OnQueryComplete$Query$MediaStaff? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$MediaStaff
    extends graphql.WatchQueryOptions<Query$MediaStaff> {
  WatchOptions$Query$MediaStaff({
    String? operationName,
    Variables$Query$MediaStaff? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$MediaStaff? typedOptimisticResult,
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
          document: documentNodeQueryMediaStaff,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$MediaStaff,
        );
}

class FetchMoreOptions$Query$MediaStaff extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$MediaStaff({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$MediaStaff? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryMediaStaff,
        );
}

extension ClientExtension$Query$MediaStaff on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$MediaStaff>> query$MediaStaff(
          [Options$Query$MediaStaff? options]) async =>
      await this.query(options ?? Options$Query$MediaStaff());
  graphql.ObservableQuery<Query$MediaStaff> watchQuery$MediaStaff(
          [WatchOptions$Query$MediaStaff? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$MediaStaff());
  void writeQuery$MediaStaff({
    required Query$MediaStaff data,
    Variables$Query$MediaStaff? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryMediaStaff),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$MediaStaff? readQuery$MediaStaff({
    Variables$Query$MediaStaff? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryMediaStaff),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$MediaStaff.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$MediaStaff> useQuery$MediaStaff(
        [Options$Query$MediaStaff? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$MediaStaff());
graphql.ObservableQuery<Query$MediaStaff> useWatchQuery$MediaStaff(
        [WatchOptions$Query$MediaStaff? options]) =>
    graphql_flutter.useWatchQuery(options ?? WatchOptions$Query$MediaStaff());

class Query$MediaStaff$Widget extends graphql_flutter.Query<Query$MediaStaff> {
  Query$MediaStaff$Widget({
    widgets.Key? key,
    Options$Query$MediaStaff? options,
    required graphql_flutter.QueryBuilder<Query$MediaStaff> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$MediaStaff(),
          builder: builder,
        );
}

class Query$MediaStaff$Media {
  Query$MediaStaff$Media({
    required this.id,
    this.staff,
    this.$__typename = 'Media',
  });

  factory Query$MediaStaff$Media.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$staff = json['staff'];
    final l$$__typename = json['__typename'];
    return Query$MediaStaff$Media(
      id: (l$id as int),
      staff: l$staff == null
          ? null
          : Query$MediaStaff$Media$staff.fromJson(
              (l$staff as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final Query$MediaStaff$Media$staff? staff;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$staff = staff;
    _resultData['staff'] = l$staff?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$staff = staff;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$staff,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$MediaStaff$Media || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$staff = staff;
    final lOther$staff = other.staff;
    if (l$staff != lOther$staff) {
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

extension UtilityExtension$Query$MediaStaff$Media on Query$MediaStaff$Media {
  CopyWith$Query$MediaStaff$Media<Query$MediaStaff$Media> get copyWith =>
      CopyWith$Query$MediaStaff$Media(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$MediaStaff$Media<TRes> {
  factory CopyWith$Query$MediaStaff$Media(
    Query$MediaStaff$Media instance,
    TRes Function(Query$MediaStaff$Media) then,
  ) = _CopyWithImpl$Query$MediaStaff$Media;

  factory CopyWith$Query$MediaStaff$Media.stub(TRes res) =
      _CopyWithStubImpl$Query$MediaStaff$Media;

  TRes call({
    int? id,
    Query$MediaStaff$Media$staff? staff,
    String? $__typename,
  });
  CopyWith$Query$MediaStaff$Media$staff<TRes> get staff;
}

class _CopyWithImpl$Query$MediaStaff$Media<TRes>
    implements CopyWith$Query$MediaStaff$Media<TRes> {
  _CopyWithImpl$Query$MediaStaff$Media(
    this._instance,
    this._then,
  );

  final Query$MediaStaff$Media _instance;

  final TRes Function(Query$MediaStaff$Media) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? staff = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$MediaStaff$Media(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        staff: staff == _undefined
            ? _instance.staff
            : (staff as Query$MediaStaff$Media$staff?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$MediaStaff$Media$staff<TRes> get staff {
    final local$staff = _instance.staff;
    return local$staff == null
        ? CopyWith$Query$MediaStaff$Media$staff.stub(_then(_instance))
        : CopyWith$Query$MediaStaff$Media$staff(
            local$staff, (e) => call(staff: e));
  }
}

class _CopyWithStubImpl$Query$MediaStaff$Media<TRes>
    implements CopyWith$Query$MediaStaff$Media<TRes> {
  _CopyWithStubImpl$Query$MediaStaff$Media(this._res);

  TRes _res;

  call({
    int? id,
    Query$MediaStaff$Media$staff? staff,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$MediaStaff$Media$staff<TRes> get staff =>
      CopyWith$Query$MediaStaff$Media$staff.stub(_res);
}

class Query$MediaStaff$Media$staff {
  Query$MediaStaff$Media$staff({
    this.pageInfo,
    this.edges,
    this.$__typename = 'StaffConnection',
  });

  factory Query$MediaStaff$Media$staff.fromJson(Map<String, dynamic> json) {
    final l$pageInfo = json['pageInfo'];
    final l$edges = json['edges'];
    final l$$__typename = json['__typename'];
    return Query$MediaStaff$Media$staff(
      pageInfo: l$pageInfo == null
          ? null
          : Query$MediaStaff$Media$staff$pageInfo.fromJson(
              (l$pageInfo as Map<String, dynamic>)),
      edges: (l$edges as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$MediaStaff$Media$staff$edges.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$MediaStaff$Media$staff$pageInfo? pageInfo;

  final List<Query$MediaStaff$Media$staff$edges?>? edges;

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
    if (other is! Query$MediaStaff$Media$staff ||
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

extension UtilityExtension$Query$MediaStaff$Media$staff
    on Query$MediaStaff$Media$staff {
  CopyWith$Query$MediaStaff$Media$staff<Query$MediaStaff$Media$staff>
      get copyWith => CopyWith$Query$MediaStaff$Media$staff(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$MediaStaff$Media$staff<TRes> {
  factory CopyWith$Query$MediaStaff$Media$staff(
    Query$MediaStaff$Media$staff instance,
    TRes Function(Query$MediaStaff$Media$staff) then,
  ) = _CopyWithImpl$Query$MediaStaff$Media$staff;

  factory CopyWith$Query$MediaStaff$Media$staff.stub(TRes res) =
      _CopyWithStubImpl$Query$MediaStaff$Media$staff;

  TRes call({
    Query$MediaStaff$Media$staff$pageInfo? pageInfo,
    List<Query$MediaStaff$Media$staff$edges?>? edges,
    String? $__typename,
  });
  CopyWith$Query$MediaStaff$Media$staff$pageInfo<TRes> get pageInfo;
  TRes edges(
      Iterable<Query$MediaStaff$Media$staff$edges?>? Function(
              Iterable<
                  CopyWith$Query$MediaStaff$Media$staff$edges<
                      Query$MediaStaff$Media$staff$edges>?>?)
          _fn);
}

class _CopyWithImpl$Query$MediaStaff$Media$staff<TRes>
    implements CopyWith$Query$MediaStaff$Media$staff<TRes> {
  _CopyWithImpl$Query$MediaStaff$Media$staff(
    this._instance,
    this._then,
  );

  final Query$MediaStaff$Media$staff _instance;

  final TRes Function(Query$MediaStaff$Media$staff) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pageInfo = _undefined,
    Object? edges = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$MediaStaff$Media$staff(
        pageInfo: pageInfo == _undefined
            ? _instance.pageInfo
            : (pageInfo as Query$MediaStaff$Media$staff$pageInfo?),
        edges: edges == _undefined
            ? _instance.edges
            : (edges as List<Query$MediaStaff$Media$staff$edges?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$MediaStaff$Media$staff$pageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return local$pageInfo == null
        ? CopyWith$Query$MediaStaff$Media$staff$pageInfo.stub(_then(_instance))
        : CopyWith$Query$MediaStaff$Media$staff$pageInfo(
            local$pageInfo, (e) => call(pageInfo: e));
  }

  TRes edges(
          Iterable<Query$MediaStaff$Media$staff$edges?>? Function(
                  Iterable<
                      CopyWith$Query$MediaStaff$Media$staff$edges<
                          Query$MediaStaff$Media$staff$edges>?>?)
              _fn) =>
      call(
          edges: _fn(_instance.edges?.map((e) => e == null
              ? null
              : CopyWith$Query$MediaStaff$Media$staff$edges(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$MediaStaff$Media$staff<TRes>
    implements CopyWith$Query$MediaStaff$Media$staff<TRes> {
  _CopyWithStubImpl$Query$MediaStaff$Media$staff(this._res);

  TRes _res;

  call({
    Query$MediaStaff$Media$staff$pageInfo? pageInfo,
    List<Query$MediaStaff$Media$staff$edges?>? edges,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$MediaStaff$Media$staff$pageInfo<TRes> get pageInfo =>
      CopyWith$Query$MediaStaff$Media$staff$pageInfo.stub(_res);

  edges(_fn) => _res;
}

class Query$MediaStaff$Media$staff$pageInfo {
  Query$MediaStaff$Media$staff$pageInfo({
    this.currentPage,
    this.hasNextPage,
    this.$__typename = 'PageInfo',
  });

  factory Query$MediaStaff$Media$staff$pageInfo.fromJson(
      Map<String, dynamic> json) {
    final l$currentPage = json['currentPage'];
    final l$hasNextPage = json['hasNextPage'];
    final l$$__typename = json['__typename'];
    return Query$MediaStaff$Media$staff$pageInfo(
      currentPage: (l$currentPage as int?),
      hasNextPage: (l$hasNextPage as bool?),
      $__typename: (l$$__typename as String),
    );
  }

  final int? currentPage;

  final bool? hasNextPage;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$currentPage = currentPage;
    _resultData['currentPage'] = l$currentPage;
    final l$hasNextPage = hasNextPage;
    _resultData['hasNextPage'] = l$hasNextPage;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$currentPage = currentPage;
    final l$hasNextPage = hasNextPage;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$currentPage,
      l$hasNextPage,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$MediaStaff$Media$staff$pageInfo ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$currentPage = currentPage;
    final lOther$currentPage = other.currentPage;
    if (l$currentPage != lOther$currentPage) {
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

extension UtilityExtension$Query$MediaStaff$Media$staff$pageInfo
    on Query$MediaStaff$Media$staff$pageInfo {
  CopyWith$Query$MediaStaff$Media$staff$pageInfo<
          Query$MediaStaff$Media$staff$pageInfo>
      get copyWith => CopyWith$Query$MediaStaff$Media$staff$pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$MediaStaff$Media$staff$pageInfo<TRes> {
  factory CopyWith$Query$MediaStaff$Media$staff$pageInfo(
    Query$MediaStaff$Media$staff$pageInfo instance,
    TRes Function(Query$MediaStaff$Media$staff$pageInfo) then,
  ) = _CopyWithImpl$Query$MediaStaff$Media$staff$pageInfo;

  factory CopyWith$Query$MediaStaff$Media$staff$pageInfo.stub(TRes res) =
      _CopyWithStubImpl$Query$MediaStaff$Media$staff$pageInfo;

  TRes call({
    int? currentPage,
    bool? hasNextPage,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$MediaStaff$Media$staff$pageInfo<TRes>
    implements CopyWith$Query$MediaStaff$Media$staff$pageInfo<TRes> {
  _CopyWithImpl$Query$MediaStaff$Media$staff$pageInfo(
    this._instance,
    this._then,
  );

  final Query$MediaStaff$Media$staff$pageInfo _instance;

  final TRes Function(Query$MediaStaff$Media$staff$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? currentPage = _undefined,
    Object? hasNextPage = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$MediaStaff$Media$staff$pageInfo(
        currentPage: currentPage == _undefined
            ? _instance.currentPage
            : (currentPage as int?),
        hasNextPage: hasNextPage == _undefined
            ? _instance.hasNextPage
            : (hasNextPage as bool?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$MediaStaff$Media$staff$pageInfo<TRes>
    implements CopyWith$Query$MediaStaff$Media$staff$pageInfo<TRes> {
  _CopyWithStubImpl$Query$MediaStaff$Media$staff$pageInfo(this._res);

  TRes _res;

  call({
    int? currentPage,
    bool? hasNextPage,
    String? $__typename,
  }) =>
      _res;
}

class Query$MediaStaff$Media$staff$edges {
  Query$MediaStaff$Media$staff$edges({
    this.role,
    this.node,
    this.$__typename = 'StaffEdge',
  });

  factory Query$MediaStaff$Media$staff$edges.fromJson(
      Map<String, dynamic> json) {
    final l$role = json['role'];
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Query$MediaStaff$Media$staff$edges(
      role: (l$role as String?),
      node: l$node == null
          ? null
          : Query$MediaStaff$Media$staff$edges$node.fromJson(
              (l$node as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String? role;

  final Query$MediaStaff$Media$staff$edges$node? node;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$role = role;
    _resultData['role'] = l$role;
    final l$node = node;
    _resultData['node'] = l$node?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$role = role;
    final l$node = node;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$role,
      l$node,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$MediaStaff$Media$staff$edges ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$role = role;
    final lOther$role = other.role;
    if (l$role != lOther$role) {
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

extension UtilityExtension$Query$MediaStaff$Media$staff$edges
    on Query$MediaStaff$Media$staff$edges {
  CopyWith$Query$MediaStaff$Media$staff$edges<
          Query$MediaStaff$Media$staff$edges>
      get copyWith => CopyWith$Query$MediaStaff$Media$staff$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$MediaStaff$Media$staff$edges<TRes> {
  factory CopyWith$Query$MediaStaff$Media$staff$edges(
    Query$MediaStaff$Media$staff$edges instance,
    TRes Function(Query$MediaStaff$Media$staff$edges) then,
  ) = _CopyWithImpl$Query$MediaStaff$Media$staff$edges;

  factory CopyWith$Query$MediaStaff$Media$staff$edges.stub(TRes res) =
      _CopyWithStubImpl$Query$MediaStaff$Media$staff$edges;

  TRes call({
    String? role,
    Query$MediaStaff$Media$staff$edges$node? node,
    String? $__typename,
  });
  CopyWith$Query$MediaStaff$Media$staff$edges$node<TRes> get node;
}

class _CopyWithImpl$Query$MediaStaff$Media$staff$edges<TRes>
    implements CopyWith$Query$MediaStaff$Media$staff$edges<TRes> {
  _CopyWithImpl$Query$MediaStaff$Media$staff$edges(
    this._instance,
    this._then,
  );

  final Query$MediaStaff$Media$staff$edges _instance;

  final TRes Function(Query$MediaStaff$Media$staff$edges) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? role = _undefined,
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$MediaStaff$Media$staff$edges(
        role: role == _undefined ? _instance.role : (role as String?),
        node: node == _undefined
            ? _instance.node
            : (node as Query$MediaStaff$Media$staff$edges$node?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$MediaStaff$Media$staff$edges$node<TRes> get node {
    final local$node = _instance.node;
    return local$node == null
        ? CopyWith$Query$MediaStaff$Media$staff$edges$node.stub(
            _then(_instance))
        : CopyWith$Query$MediaStaff$Media$staff$edges$node(
            local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Query$MediaStaff$Media$staff$edges<TRes>
    implements CopyWith$Query$MediaStaff$Media$staff$edges<TRes> {
  _CopyWithStubImpl$Query$MediaStaff$Media$staff$edges(this._res);

  TRes _res;

  call({
    String? role,
    Query$MediaStaff$Media$staff$edges$node? node,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$MediaStaff$Media$staff$edges$node<TRes> get node =>
      CopyWith$Query$MediaStaff$Media$staff$edges$node.stub(_res);
}

class Query$MediaStaff$Media$staff$edges$node {
  Query$MediaStaff$Media$staff$edges$node({
    required this.id,
    this.name,
    this.image,
    this.$__typename = 'Staff',
  });

  factory Query$MediaStaff$Media$staff$edges$node.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$image = json['image'];
    final l$$__typename = json['__typename'];
    return Query$MediaStaff$Media$staff$edges$node(
      id: (l$id as int),
      name: l$name == null
          ? null
          : Query$MediaStaff$Media$staff$edges$node$name.fromJson(
              (l$name as Map<String, dynamic>)),
      image: l$image == null
          ? null
          : Query$MediaStaff$Media$staff$edges$node$image.fromJson(
              (l$image as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final Query$MediaStaff$Media$staff$edges$node$name? name;

  final Query$MediaStaff$Media$staff$edges$node$image? image;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name?.toJson();
    final l$image = image;
    _resultData['image'] = l$image?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$image = image;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$image,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$MediaStaff$Media$staff$edges$node ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$image = image;
    final lOther$image = other.image;
    if (l$image != lOther$image) {
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

extension UtilityExtension$Query$MediaStaff$Media$staff$edges$node
    on Query$MediaStaff$Media$staff$edges$node {
  CopyWith$Query$MediaStaff$Media$staff$edges$node<
          Query$MediaStaff$Media$staff$edges$node>
      get copyWith => CopyWith$Query$MediaStaff$Media$staff$edges$node(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$MediaStaff$Media$staff$edges$node<TRes> {
  factory CopyWith$Query$MediaStaff$Media$staff$edges$node(
    Query$MediaStaff$Media$staff$edges$node instance,
    TRes Function(Query$MediaStaff$Media$staff$edges$node) then,
  ) = _CopyWithImpl$Query$MediaStaff$Media$staff$edges$node;

  factory CopyWith$Query$MediaStaff$Media$staff$edges$node.stub(TRes res) =
      _CopyWithStubImpl$Query$MediaStaff$Media$staff$edges$node;

  TRes call({
    int? id,
    Query$MediaStaff$Media$staff$edges$node$name? name,
    Query$MediaStaff$Media$staff$edges$node$image? image,
    String? $__typename,
  });
  CopyWith$Query$MediaStaff$Media$staff$edges$node$name<TRes> get name;
  CopyWith$Query$MediaStaff$Media$staff$edges$node$image<TRes> get image;
}

class _CopyWithImpl$Query$MediaStaff$Media$staff$edges$node<TRes>
    implements CopyWith$Query$MediaStaff$Media$staff$edges$node<TRes> {
  _CopyWithImpl$Query$MediaStaff$Media$staff$edges$node(
    this._instance,
    this._then,
  );

  final Query$MediaStaff$Media$staff$edges$node _instance;

  final TRes Function(Query$MediaStaff$Media$staff$edges$node) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? image = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$MediaStaff$Media$staff$edges$node(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        name: name == _undefined
            ? _instance.name
            : (name as Query$MediaStaff$Media$staff$edges$node$name?),
        image: image == _undefined
            ? _instance.image
            : (image as Query$MediaStaff$Media$staff$edges$node$image?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$MediaStaff$Media$staff$edges$node$name<TRes> get name {
    final local$name = _instance.name;
    return local$name == null
        ? CopyWith$Query$MediaStaff$Media$staff$edges$node$name.stub(
            _then(_instance))
        : CopyWith$Query$MediaStaff$Media$staff$edges$node$name(
            local$name, (e) => call(name: e));
  }

  CopyWith$Query$MediaStaff$Media$staff$edges$node$image<TRes> get image {
    final local$image = _instance.image;
    return local$image == null
        ? CopyWith$Query$MediaStaff$Media$staff$edges$node$image.stub(
            _then(_instance))
        : CopyWith$Query$MediaStaff$Media$staff$edges$node$image(
            local$image, (e) => call(image: e));
  }
}

class _CopyWithStubImpl$Query$MediaStaff$Media$staff$edges$node<TRes>
    implements CopyWith$Query$MediaStaff$Media$staff$edges$node<TRes> {
  _CopyWithStubImpl$Query$MediaStaff$Media$staff$edges$node(this._res);

  TRes _res;

  call({
    int? id,
    Query$MediaStaff$Media$staff$edges$node$name? name,
    Query$MediaStaff$Media$staff$edges$node$image? image,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$MediaStaff$Media$staff$edges$node$name<TRes> get name =>
      CopyWith$Query$MediaStaff$Media$staff$edges$node$name.stub(_res);

  CopyWith$Query$MediaStaff$Media$staff$edges$node$image<TRes> get image =>
      CopyWith$Query$MediaStaff$Media$staff$edges$node$image.stub(_res);
}

class Query$MediaStaff$Media$staff$edges$node$name {
  Query$MediaStaff$Media$staff$edges$node$name({
    this.userPreferred,
    this.$__typename = 'StaffName',
  });

  factory Query$MediaStaff$Media$staff$edges$node$name.fromJson(
      Map<String, dynamic> json) {
    final l$userPreferred = json['userPreferred'];
    final l$$__typename = json['__typename'];
    return Query$MediaStaff$Media$staff$edges$node$name(
      userPreferred: (l$userPreferred as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? userPreferred;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$userPreferred = userPreferred;
    _resultData['userPreferred'] = l$userPreferred;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$userPreferred = userPreferred;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$userPreferred,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$MediaStaff$Media$staff$edges$node$name ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$userPreferred = userPreferred;
    final lOther$userPreferred = other.userPreferred;
    if (l$userPreferred != lOther$userPreferred) {
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

extension UtilityExtension$Query$MediaStaff$Media$staff$edges$node$name
    on Query$MediaStaff$Media$staff$edges$node$name {
  CopyWith$Query$MediaStaff$Media$staff$edges$node$name<
          Query$MediaStaff$Media$staff$edges$node$name>
      get copyWith => CopyWith$Query$MediaStaff$Media$staff$edges$node$name(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$MediaStaff$Media$staff$edges$node$name<TRes> {
  factory CopyWith$Query$MediaStaff$Media$staff$edges$node$name(
    Query$MediaStaff$Media$staff$edges$node$name instance,
    TRes Function(Query$MediaStaff$Media$staff$edges$node$name) then,
  ) = _CopyWithImpl$Query$MediaStaff$Media$staff$edges$node$name;

  factory CopyWith$Query$MediaStaff$Media$staff$edges$node$name.stub(TRes res) =
      _CopyWithStubImpl$Query$MediaStaff$Media$staff$edges$node$name;

  TRes call({
    String? userPreferred,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$MediaStaff$Media$staff$edges$node$name<TRes>
    implements CopyWith$Query$MediaStaff$Media$staff$edges$node$name<TRes> {
  _CopyWithImpl$Query$MediaStaff$Media$staff$edges$node$name(
    this._instance,
    this._then,
  );

  final Query$MediaStaff$Media$staff$edges$node$name _instance;

  final TRes Function(Query$MediaStaff$Media$staff$edges$node$name) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userPreferred = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$MediaStaff$Media$staff$edges$node$name(
        userPreferred: userPreferred == _undefined
            ? _instance.userPreferred
            : (userPreferred as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$MediaStaff$Media$staff$edges$node$name<TRes>
    implements CopyWith$Query$MediaStaff$Media$staff$edges$node$name<TRes> {
  _CopyWithStubImpl$Query$MediaStaff$Media$staff$edges$node$name(this._res);

  TRes _res;

  call({
    String? userPreferred,
    String? $__typename,
  }) =>
      _res;
}

class Query$MediaStaff$Media$staff$edges$node$image {
  Query$MediaStaff$Media$staff$edges$node$image({
    this.large,
    this.$__typename = 'StaffImage',
  });

  factory Query$MediaStaff$Media$staff$edges$node$image.fromJson(
      Map<String, dynamic> json) {
    final l$large = json['large'];
    final l$$__typename = json['__typename'];
    return Query$MediaStaff$Media$staff$edges$node$image(
      large: (l$large as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? large;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$large = large;
    _resultData['large'] = l$large;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$large = large;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$large,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$MediaStaff$Media$staff$edges$node$image ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$large = large;
    final lOther$large = other.large;
    if (l$large != lOther$large) {
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

extension UtilityExtension$Query$MediaStaff$Media$staff$edges$node$image
    on Query$MediaStaff$Media$staff$edges$node$image {
  CopyWith$Query$MediaStaff$Media$staff$edges$node$image<
          Query$MediaStaff$Media$staff$edges$node$image>
      get copyWith => CopyWith$Query$MediaStaff$Media$staff$edges$node$image(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$MediaStaff$Media$staff$edges$node$image<TRes> {
  factory CopyWith$Query$MediaStaff$Media$staff$edges$node$image(
    Query$MediaStaff$Media$staff$edges$node$image instance,
    TRes Function(Query$MediaStaff$Media$staff$edges$node$image) then,
  ) = _CopyWithImpl$Query$MediaStaff$Media$staff$edges$node$image;

  factory CopyWith$Query$MediaStaff$Media$staff$edges$node$image.stub(
          TRes res) =
      _CopyWithStubImpl$Query$MediaStaff$Media$staff$edges$node$image;

  TRes call({
    String? large,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$MediaStaff$Media$staff$edges$node$image<TRes>
    implements CopyWith$Query$MediaStaff$Media$staff$edges$node$image<TRes> {
  _CopyWithImpl$Query$MediaStaff$Media$staff$edges$node$image(
    this._instance,
    this._then,
  );

  final Query$MediaStaff$Media$staff$edges$node$image _instance;

  final TRes Function(Query$MediaStaff$Media$staff$edges$node$image) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? large = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$MediaStaff$Media$staff$edges$node$image(
        large: large == _undefined ? _instance.large : (large as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$MediaStaff$Media$staff$edges$node$image<TRes>
    implements CopyWith$Query$MediaStaff$Media$staff$edges$node$image<TRes> {
  _CopyWithStubImpl$Query$MediaStaff$Media$staff$edges$node$image(this._res);

  TRes _res;

  call({
    String? large,
    String? $__typename,
  }) =>
      _res;
}
