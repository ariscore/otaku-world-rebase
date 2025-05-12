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

class Variables$Query$staffMedia {
  factory Variables$Query$staffMedia({
    int? staffId,
    List<Enum$MediaSort?>? sort,
    int? page,
    bool? onList,
    Enum$MediaType? type,
  }) =>
      Variables$Query$staffMedia._({
        if (staffId != null) r'staffId': staffId,
        if (sort != null) r'sort': sort,
        if (page != null) r'page': page,
        if (onList != null) r'onList': onList,
        if (type != null) r'type': type,
      });

  Variables$Query$staffMedia._(this._$data);

  factory Variables$Query$staffMedia.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('staffId')) {
      final l$staffId = data['staffId'];
      result$data['staffId'] = (l$staffId as int?);
    }
    if (data.containsKey('sort')) {
      final l$sort = data['sort'];
      result$data['sort'] = (l$sort as List<dynamic>?)
          ?.map(
              (e) => e == null ? null : fromJson$Enum$MediaSort((e as String)))
          .toList();
    }
    if (data.containsKey('page')) {
      final l$page = data['page'];
      result$data['page'] = (l$page as int?);
    }
    if (data.containsKey('onList')) {
      final l$onList = data['onList'];
      result$data['onList'] = (l$onList as bool?);
    }
    if (data.containsKey('type')) {
      final l$type = data['type'];
      result$data['type'] =
          l$type == null ? null : fromJson$Enum$MediaType((l$type as String));
    }
    return Variables$Query$staffMedia._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get staffId => (_$data['staffId'] as int?);

  List<Enum$MediaSort?>? get sort => (_$data['sort'] as List<Enum$MediaSort?>?);

  int? get page => (_$data['page'] as int?);

  bool? get onList => (_$data['onList'] as bool?);

  Enum$MediaType? get type => (_$data['type'] as Enum$MediaType?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('staffId')) {
      final l$staffId = staffId;
      result$data['staffId'] = l$staffId;
    }
    if (_$data.containsKey('sort')) {
      final l$sort = sort;
      result$data['sort'] = l$sort
          ?.map((e) => e == null ? null : toJson$Enum$MediaSort(e))
          .toList();
    }
    if (_$data.containsKey('page')) {
      final l$page = page;
      result$data['page'] = l$page;
    }
    if (_$data.containsKey('onList')) {
      final l$onList = onList;
      result$data['onList'] = l$onList;
    }
    if (_$data.containsKey('type')) {
      final l$type = type;
      result$data['type'] =
          l$type == null ? null : toJson$Enum$MediaType(l$type);
    }
    return result$data;
  }

  CopyWith$Variables$Query$staffMedia<Variables$Query$staffMedia>
      get copyWith => CopyWith$Variables$Query$staffMedia(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$staffMedia ||
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
    final l$page = page;
    final lOther$page = other.page;
    if (_$data.containsKey('page') != other._$data.containsKey('page')) {
      return false;
    }
    if (l$page != lOther$page) {
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
    final l$type = type;
    final lOther$type = other.type;
    if (_$data.containsKey('type') != other._$data.containsKey('type')) {
      return false;
    }
    if (l$type != lOther$type) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$staffId = staffId;
    final l$sort = sort;
    final l$page = page;
    final l$onList = onList;
    final l$type = type;
    return Object.hashAll([
      _$data.containsKey('staffId') ? l$staffId : const {},
      _$data.containsKey('sort')
          ? l$sort == null
              ? null
              : Object.hashAll(l$sort.map((v) => v))
          : const {},
      _$data.containsKey('page') ? l$page : const {},
      _$data.containsKey('onList') ? l$onList : const {},
      _$data.containsKey('type') ? l$type : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$staffMedia<TRes> {
  factory CopyWith$Variables$Query$staffMedia(
    Variables$Query$staffMedia instance,
    TRes Function(Variables$Query$staffMedia) then,
  ) = _CopyWithImpl$Variables$Query$staffMedia;

  factory CopyWith$Variables$Query$staffMedia.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$staffMedia;

  TRes call({
    int? staffId,
    List<Enum$MediaSort?>? sort,
    int? page,
    bool? onList,
    Enum$MediaType? type,
  });
}

class _CopyWithImpl$Variables$Query$staffMedia<TRes>
    implements CopyWith$Variables$Query$staffMedia<TRes> {
  _CopyWithImpl$Variables$Query$staffMedia(
    this._instance,
    this._then,
  );

  final Variables$Query$staffMedia _instance;

  final TRes Function(Variables$Query$staffMedia) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? staffId = _undefined,
    Object? sort = _undefined,
    Object? page = _undefined,
    Object? onList = _undefined,
    Object? type = _undefined,
  }) =>
      _then(Variables$Query$staffMedia._({
        ..._instance._$data,
        if (staffId != _undefined) 'staffId': (staffId as int?),
        if (sort != _undefined) 'sort': (sort as List<Enum$MediaSort?>?),
        if (page != _undefined) 'page': (page as int?),
        if (onList != _undefined) 'onList': (onList as bool?),
        if (type != _undefined) 'type': (type as Enum$MediaType?),
      }));
}

class _CopyWithStubImpl$Variables$Query$staffMedia<TRes>
    implements CopyWith$Variables$Query$staffMedia<TRes> {
  _CopyWithStubImpl$Variables$Query$staffMedia(this._res);

  TRes _res;

  call({
    int? staffId,
    List<Enum$MediaSort?>? sort,
    int? page,
    bool? onList,
    Enum$MediaType? type,
  }) =>
      _res;
}

class Query$staffMedia {
  Query$staffMedia({
    this.Staff,
    this.$__typename = 'Query',
  });

  factory Query$staffMedia.fromJson(Map<String, dynamic> json) {
    final l$Staff = json['Staff'];
    final l$$__typename = json['__typename'];
    return Query$staffMedia(
      Staff: l$Staff == null
          ? null
          : Query$staffMedia$Staff.fromJson((l$Staff as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$staffMedia$Staff? Staff;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$Staff = Staff;
    _resultData['Staff'] = l$Staff?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$Staff = Staff;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$Staff,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$staffMedia || runtimeType != other.runtimeType) {
      return false;
    }
    final l$Staff = Staff;
    final lOther$Staff = other.Staff;
    if (l$Staff != lOther$Staff) {
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

extension UtilityExtension$Query$staffMedia on Query$staffMedia {
  CopyWith$Query$staffMedia<Query$staffMedia> get copyWith =>
      CopyWith$Query$staffMedia(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$staffMedia<TRes> {
  factory CopyWith$Query$staffMedia(
    Query$staffMedia instance,
    TRes Function(Query$staffMedia) then,
  ) = _CopyWithImpl$Query$staffMedia;

  factory CopyWith$Query$staffMedia.stub(TRes res) =
      _CopyWithStubImpl$Query$staffMedia;

  TRes call({
    Query$staffMedia$Staff? Staff,
    String? $__typename,
  });
  CopyWith$Query$staffMedia$Staff<TRes> get Staff;
}

class _CopyWithImpl$Query$staffMedia<TRes>
    implements CopyWith$Query$staffMedia<TRes> {
  _CopyWithImpl$Query$staffMedia(
    this._instance,
    this._then,
  );

  final Query$staffMedia _instance;

  final TRes Function(Query$staffMedia) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? Staff = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$staffMedia(
        Staff: Staff == _undefined
            ? _instance.Staff
            : (Staff as Query$staffMedia$Staff?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$staffMedia$Staff<TRes> get Staff {
    final local$Staff = _instance.Staff;
    return local$Staff == null
        ? CopyWith$Query$staffMedia$Staff.stub(_then(_instance))
        : CopyWith$Query$staffMedia$Staff(local$Staff, (e) => call(Staff: e));
  }
}

class _CopyWithStubImpl$Query$staffMedia<TRes>
    implements CopyWith$Query$staffMedia<TRes> {
  _CopyWithStubImpl$Query$staffMedia(this._res);

  TRes _res;

  call({
    Query$staffMedia$Staff? Staff,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$staffMedia$Staff<TRes> get Staff =>
      CopyWith$Query$staffMedia$Staff.stub(_res);
}

const documentNodeQuerystaffMedia = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'staffMedia'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'staffId')),
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
        variable: VariableNode(name: NameNode(value: 'page')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
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
        variable: VariableNode(name: NameNode(value: 'type')),
        type: NamedTypeNode(
          name: NameNode(value: 'MediaType'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'Staff'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'staffId')),
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
            name: NameNode(value: 'staffMedia'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'page'),
                value: VariableNode(name: NameNode(value: 'page')),
              ),
              ArgumentNode(
                name: NameNode(value: 'type'),
                value: VariableNode(name: NameNode(value: 'type')),
              ),
              ArgumentNode(
                name: NameNode(value: 'sort'),
                value: VariableNode(name: NameNode(value: 'sort')),
              ),
              ArgumentNode(
                name: NameNode(value: 'onList'),
                value: VariableNode(name: NameNode(value: 'onList')),
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
                name: NameNode(value: 'edges'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'staffRole'),
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
                        name: NameNode(value: 'type'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'title'),
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
                        name: NameNode(value: 'coverImage'),
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
  fragmentDefinitionPageInfo,
]);
Query$staffMedia _parserFn$Query$staffMedia(Map<String, dynamic> data) =>
    Query$staffMedia.fromJson(data);
typedef OnQueryComplete$Query$staffMedia = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$staffMedia?,
);

class Options$Query$staffMedia extends graphql.QueryOptions<Query$staffMedia> {
  Options$Query$staffMedia({
    String? operationName,
    Variables$Query$staffMedia? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$staffMedia? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$staffMedia? onComplete,
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
                    data == null ? null : _parserFn$Query$staffMedia(data),
                  ),
          onError: onError,
          document: documentNodeQuerystaffMedia,
          parserFn: _parserFn$Query$staffMedia,
        );

  final OnQueryComplete$Query$staffMedia? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$staffMedia
    extends graphql.WatchQueryOptions<Query$staffMedia> {
  WatchOptions$Query$staffMedia({
    String? operationName,
    Variables$Query$staffMedia? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$staffMedia? typedOptimisticResult,
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
          document: documentNodeQuerystaffMedia,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$staffMedia,
        );
}

class FetchMoreOptions$Query$staffMedia extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$staffMedia({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$staffMedia? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQuerystaffMedia,
        );
}

extension ClientExtension$Query$staffMedia on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$staffMedia>> query$staffMedia(
          [Options$Query$staffMedia? options]) async =>
      await this.query(options ?? Options$Query$staffMedia());
  graphql.ObservableQuery<Query$staffMedia> watchQuery$staffMedia(
          [WatchOptions$Query$staffMedia? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$staffMedia());
  void writeQuery$staffMedia({
    required Query$staffMedia data,
    Variables$Query$staffMedia? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQuerystaffMedia),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$staffMedia? readQuery$staffMedia({
    Variables$Query$staffMedia? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQuerystaffMedia),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$staffMedia.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$staffMedia> useQuery$staffMedia(
        [Options$Query$staffMedia? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$staffMedia());
graphql.ObservableQuery<Query$staffMedia> useWatchQuery$staffMedia(
        [WatchOptions$Query$staffMedia? options]) =>
    graphql_flutter.useWatchQuery(options ?? WatchOptions$Query$staffMedia());

class Query$staffMedia$Widget extends graphql_flutter.Query<Query$staffMedia> {
  Query$staffMedia$Widget({
    widgets.Key? key,
    Options$Query$staffMedia? options,
    required graphql_flutter.QueryBuilder<Query$staffMedia> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$staffMedia(),
          builder: builder,
        );
}

class Query$staffMedia$Staff {
  Query$staffMedia$Staff({
    required this.id,
    this.staffMedia,
    this.$__typename = 'Staff',
  });

  factory Query$staffMedia$Staff.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$staffMedia = json['staffMedia'];
    final l$$__typename = json['__typename'];
    return Query$staffMedia$Staff(
      id: (l$id as int),
      staffMedia: l$staffMedia == null
          ? null
          : Query$staffMedia$Staff$staffMedia.fromJson(
              (l$staffMedia as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final Query$staffMedia$Staff$staffMedia? staffMedia;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$staffMedia = staffMedia;
    _resultData['staffMedia'] = l$staffMedia?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$staffMedia = staffMedia;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$staffMedia,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$staffMedia$Staff || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$staffMedia = staffMedia;
    final lOther$staffMedia = other.staffMedia;
    if (l$staffMedia != lOther$staffMedia) {
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

extension UtilityExtension$Query$staffMedia$Staff on Query$staffMedia$Staff {
  CopyWith$Query$staffMedia$Staff<Query$staffMedia$Staff> get copyWith =>
      CopyWith$Query$staffMedia$Staff(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$staffMedia$Staff<TRes> {
  factory CopyWith$Query$staffMedia$Staff(
    Query$staffMedia$Staff instance,
    TRes Function(Query$staffMedia$Staff) then,
  ) = _CopyWithImpl$Query$staffMedia$Staff;

  factory CopyWith$Query$staffMedia$Staff.stub(TRes res) =
      _CopyWithStubImpl$Query$staffMedia$Staff;

  TRes call({
    int? id,
    Query$staffMedia$Staff$staffMedia? staffMedia,
    String? $__typename,
  });
  CopyWith$Query$staffMedia$Staff$staffMedia<TRes> get staffMedia;
}

class _CopyWithImpl$Query$staffMedia$Staff<TRes>
    implements CopyWith$Query$staffMedia$Staff<TRes> {
  _CopyWithImpl$Query$staffMedia$Staff(
    this._instance,
    this._then,
  );

  final Query$staffMedia$Staff _instance;

  final TRes Function(Query$staffMedia$Staff) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? staffMedia = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$staffMedia$Staff(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        staffMedia: staffMedia == _undefined
            ? _instance.staffMedia
            : (staffMedia as Query$staffMedia$Staff$staffMedia?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$staffMedia$Staff$staffMedia<TRes> get staffMedia {
    final local$staffMedia = _instance.staffMedia;
    return local$staffMedia == null
        ? CopyWith$Query$staffMedia$Staff$staffMedia.stub(_then(_instance))
        : CopyWith$Query$staffMedia$Staff$staffMedia(
            local$staffMedia, (e) => call(staffMedia: e));
  }
}

class _CopyWithStubImpl$Query$staffMedia$Staff<TRes>
    implements CopyWith$Query$staffMedia$Staff<TRes> {
  _CopyWithStubImpl$Query$staffMedia$Staff(this._res);

  TRes _res;

  call({
    int? id,
    Query$staffMedia$Staff$staffMedia? staffMedia,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$staffMedia$Staff$staffMedia<TRes> get staffMedia =>
      CopyWith$Query$staffMedia$Staff$staffMedia.stub(_res);
}

class Query$staffMedia$Staff$staffMedia {
  Query$staffMedia$Staff$staffMedia({
    this.pageInfo,
    this.edges,
    this.$__typename = 'MediaConnection',
  });

  factory Query$staffMedia$Staff$staffMedia.fromJson(
      Map<String, dynamic> json) {
    final l$pageInfo = json['pageInfo'];
    final l$edges = json['edges'];
    final l$$__typename = json['__typename'];
    return Query$staffMedia$Staff$staffMedia(
      pageInfo: l$pageInfo == null
          ? null
          : Fragment$PageInfo.fromJson((l$pageInfo as Map<String, dynamic>)),
      edges: (l$edges as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$staffMedia$Staff$staffMedia$edges.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$PageInfo? pageInfo;

  final List<Query$staffMedia$Staff$staffMedia$edges?>? edges;

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
    if (other is! Query$staffMedia$Staff$staffMedia ||
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

extension UtilityExtension$Query$staffMedia$Staff$staffMedia
    on Query$staffMedia$Staff$staffMedia {
  CopyWith$Query$staffMedia$Staff$staffMedia<Query$staffMedia$Staff$staffMedia>
      get copyWith => CopyWith$Query$staffMedia$Staff$staffMedia(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$staffMedia$Staff$staffMedia<TRes> {
  factory CopyWith$Query$staffMedia$Staff$staffMedia(
    Query$staffMedia$Staff$staffMedia instance,
    TRes Function(Query$staffMedia$Staff$staffMedia) then,
  ) = _CopyWithImpl$Query$staffMedia$Staff$staffMedia;

  factory CopyWith$Query$staffMedia$Staff$staffMedia.stub(TRes res) =
      _CopyWithStubImpl$Query$staffMedia$Staff$staffMedia;

  TRes call({
    Fragment$PageInfo? pageInfo,
    List<Query$staffMedia$Staff$staffMedia$edges?>? edges,
    String? $__typename,
  });
  CopyWith$Fragment$PageInfo<TRes> get pageInfo;
  TRes edges(
      Iterable<Query$staffMedia$Staff$staffMedia$edges?>? Function(
              Iterable<
                  CopyWith$Query$staffMedia$Staff$staffMedia$edges<
                      Query$staffMedia$Staff$staffMedia$edges>?>?)
          _fn);
}

class _CopyWithImpl$Query$staffMedia$Staff$staffMedia<TRes>
    implements CopyWith$Query$staffMedia$Staff$staffMedia<TRes> {
  _CopyWithImpl$Query$staffMedia$Staff$staffMedia(
    this._instance,
    this._then,
  );

  final Query$staffMedia$Staff$staffMedia _instance;

  final TRes Function(Query$staffMedia$Staff$staffMedia) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pageInfo = _undefined,
    Object? edges = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$staffMedia$Staff$staffMedia(
        pageInfo: pageInfo == _undefined
            ? _instance.pageInfo
            : (pageInfo as Fragment$PageInfo?),
        edges: edges == _undefined
            ? _instance.edges
            : (edges as List<Query$staffMedia$Staff$staffMedia$edges?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$PageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return local$pageInfo == null
        ? CopyWith$Fragment$PageInfo.stub(_then(_instance))
        : CopyWith$Fragment$PageInfo(local$pageInfo, (e) => call(pageInfo: e));
  }

  TRes edges(
          Iterable<Query$staffMedia$Staff$staffMedia$edges?>? Function(
                  Iterable<
                      CopyWith$Query$staffMedia$Staff$staffMedia$edges<
                          Query$staffMedia$Staff$staffMedia$edges>?>?)
              _fn) =>
      call(
          edges: _fn(_instance.edges?.map((e) => e == null
              ? null
              : CopyWith$Query$staffMedia$Staff$staffMedia$edges(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$staffMedia$Staff$staffMedia<TRes>
    implements CopyWith$Query$staffMedia$Staff$staffMedia<TRes> {
  _CopyWithStubImpl$Query$staffMedia$Staff$staffMedia(this._res);

  TRes _res;

  call({
    Fragment$PageInfo? pageInfo,
    List<Query$staffMedia$Staff$staffMedia$edges?>? edges,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$PageInfo<TRes> get pageInfo =>
      CopyWith$Fragment$PageInfo.stub(_res);

  edges(_fn) => _res;
}

class Query$staffMedia$Staff$staffMedia$edges {
  Query$staffMedia$Staff$staffMedia$edges({
    this.staffRole,
    this.node,
    this.$__typename = 'MediaEdge',
  });

  factory Query$staffMedia$Staff$staffMedia$edges.fromJson(
      Map<String, dynamic> json) {
    final l$staffRole = json['staffRole'];
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Query$staffMedia$Staff$staffMedia$edges(
      staffRole: (l$staffRole as String?),
      node: l$node == null
          ? null
          : Query$staffMedia$Staff$staffMedia$edges$node.fromJson(
              (l$node as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String? staffRole;

  final Query$staffMedia$Staff$staffMedia$edges$node? node;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$staffRole = staffRole;
    _resultData['staffRole'] = l$staffRole;
    final l$node = node;
    _resultData['node'] = l$node?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$staffRole = staffRole;
    final l$node = node;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$staffRole,
      l$node,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$staffMedia$Staff$staffMedia$edges ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$staffRole = staffRole;
    final lOther$staffRole = other.staffRole;
    if (l$staffRole != lOther$staffRole) {
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

extension UtilityExtension$Query$staffMedia$Staff$staffMedia$edges
    on Query$staffMedia$Staff$staffMedia$edges {
  CopyWith$Query$staffMedia$Staff$staffMedia$edges<
          Query$staffMedia$Staff$staffMedia$edges>
      get copyWith => CopyWith$Query$staffMedia$Staff$staffMedia$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$staffMedia$Staff$staffMedia$edges<TRes> {
  factory CopyWith$Query$staffMedia$Staff$staffMedia$edges(
    Query$staffMedia$Staff$staffMedia$edges instance,
    TRes Function(Query$staffMedia$Staff$staffMedia$edges) then,
  ) = _CopyWithImpl$Query$staffMedia$Staff$staffMedia$edges;

  factory CopyWith$Query$staffMedia$Staff$staffMedia$edges.stub(TRes res) =
      _CopyWithStubImpl$Query$staffMedia$Staff$staffMedia$edges;

  TRes call({
    String? staffRole,
    Query$staffMedia$Staff$staffMedia$edges$node? node,
    String? $__typename,
  });
  CopyWith$Query$staffMedia$Staff$staffMedia$edges$node<TRes> get node;
}

class _CopyWithImpl$Query$staffMedia$Staff$staffMedia$edges<TRes>
    implements CopyWith$Query$staffMedia$Staff$staffMedia$edges<TRes> {
  _CopyWithImpl$Query$staffMedia$Staff$staffMedia$edges(
    this._instance,
    this._then,
  );

  final Query$staffMedia$Staff$staffMedia$edges _instance;

  final TRes Function(Query$staffMedia$Staff$staffMedia$edges) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? staffRole = _undefined,
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$staffMedia$Staff$staffMedia$edges(
        staffRole: staffRole == _undefined
            ? _instance.staffRole
            : (staffRole as String?),
        node: node == _undefined
            ? _instance.node
            : (node as Query$staffMedia$Staff$staffMedia$edges$node?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$staffMedia$Staff$staffMedia$edges$node<TRes> get node {
    final local$node = _instance.node;
    return local$node == null
        ? CopyWith$Query$staffMedia$Staff$staffMedia$edges$node.stub(
            _then(_instance))
        : CopyWith$Query$staffMedia$Staff$staffMedia$edges$node(
            local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Query$staffMedia$Staff$staffMedia$edges<TRes>
    implements CopyWith$Query$staffMedia$Staff$staffMedia$edges<TRes> {
  _CopyWithStubImpl$Query$staffMedia$Staff$staffMedia$edges(this._res);

  TRes _res;

  call({
    String? staffRole,
    Query$staffMedia$Staff$staffMedia$edges$node? node,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$staffMedia$Staff$staffMedia$edges$node<TRes> get node =>
      CopyWith$Query$staffMedia$Staff$staffMedia$edges$node.stub(_res);
}

class Query$staffMedia$Staff$staffMedia$edges$node {
  Query$staffMedia$Staff$staffMedia$edges$node({
    required this.id,
    this.type,
    this.title,
    this.coverImage,
    this.$__typename = 'Media',
  });

  factory Query$staffMedia$Staff$staffMedia$edges$node.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$type = json['type'];
    final l$title = json['title'];
    final l$coverImage = json['coverImage'];
    final l$$__typename = json['__typename'];
    return Query$staffMedia$Staff$staffMedia$edges$node(
      id: (l$id as int),
      type: l$type == null ? null : fromJson$Enum$MediaType((l$type as String)),
      title: l$title == null
          ? null
          : Query$staffMedia$Staff$staffMedia$edges$node$title.fromJson(
              (l$title as Map<String, dynamic>)),
      coverImage: l$coverImage == null
          ? null
          : Query$staffMedia$Staff$staffMedia$edges$node$coverImage.fromJson(
              (l$coverImage as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final Enum$MediaType? type;

  final Query$staffMedia$Staff$staffMedia$edges$node$title? title;

  final Query$staffMedia$Staff$staffMedia$edges$node$coverImage? coverImage;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$type = type;
    _resultData['type'] = l$type == null ? null : toJson$Enum$MediaType(l$type);
    final l$title = title;
    _resultData['title'] = l$title?.toJson();
    final l$coverImage = coverImage;
    _resultData['coverImage'] = l$coverImage?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$type = type;
    final l$title = title;
    final l$coverImage = coverImage;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$type,
      l$title,
      l$coverImage,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$staffMedia$Staff$staffMedia$edges$node ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
      return false;
    }
    final l$coverImage = coverImage;
    final lOther$coverImage = other.coverImage;
    if (l$coverImage != lOther$coverImage) {
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

extension UtilityExtension$Query$staffMedia$Staff$staffMedia$edges$node
    on Query$staffMedia$Staff$staffMedia$edges$node {
  CopyWith$Query$staffMedia$Staff$staffMedia$edges$node<
          Query$staffMedia$Staff$staffMedia$edges$node>
      get copyWith => CopyWith$Query$staffMedia$Staff$staffMedia$edges$node(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$staffMedia$Staff$staffMedia$edges$node<TRes> {
  factory CopyWith$Query$staffMedia$Staff$staffMedia$edges$node(
    Query$staffMedia$Staff$staffMedia$edges$node instance,
    TRes Function(Query$staffMedia$Staff$staffMedia$edges$node) then,
  ) = _CopyWithImpl$Query$staffMedia$Staff$staffMedia$edges$node;

  factory CopyWith$Query$staffMedia$Staff$staffMedia$edges$node.stub(TRes res) =
      _CopyWithStubImpl$Query$staffMedia$Staff$staffMedia$edges$node;

  TRes call({
    int? id,
    Enum$MediaType? type,
    Query$staffMedia$Staff$staffMedia$edges$node$title? title,
    Query$staffMedia$Staff$staffMedia$edges$node$coverImage? coverImage,
    String? $__typename,
  });
  CopyWith$Query$staffMedia$Staff$staffMedia$edges$node$title<TRes> get title;
  CopyWith$Query$staffMedia$Staff$staffMedia$edges$node$coverImage<TRes>
      get coverImage;
}

class _CopyWithImpl$Query$staffMedia$Staff$staffMedia$edges$node<TRes>
    implements CopyWith$Query$staffMedia$Staff$staffMedia$edges$node<TRes> {
  _CopyWithImpl$Query$staffMedia$Staff$staffMedia$edges$node(
    this._instance,
    this._then,
  );

  final Query$staffMedia$Staff$staffMedia$edges$node _instance;

  final TRes Function(Query$staffMedia$Staff$staffMedia$edges$node) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? type = _undefined,
    Object? title = _undefined,
    Object? coverImage = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$staffMedia$Staff$staffMedia$edges$node(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        type: type == _undefined ? _instance.type : (type as Enum$MediaType?),
        title: title == _undefined
            ? _instance.title
            : (title as Query$staffMedia$Staff$staffMedia$edges$node$title?),
        coverImage: coverImage == _undefined
            ? _instance.coverImage
            : (coverImage
                as Query$staffMedia$Staff$staffMedia$edges$node$coverImage?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$staffMedia$Staff$staffMedia$edges$node$title<TRes> get title {
    final local$title = _instance.title;
    return local$title == null
        ? CopyWith$Query$staffMedia$Staff$staffMedia$edges$node$title.stub(
            _then(_instance))
        : CopyWith$Query$staffMedia$Staff$staffMedia$edges$node$title(
            local$title, (e) => call(title: e));
  }

  CopyWith$Query$staffMedia$Staff$staffMedia$edges$node$coverImage<TRes>
      get coverImage {
    final local$coverImage = _instance.coverImage;
    return local$coverImage == null
        ? CopyWith$Query$staffMedia$Staff$staffMedia$edges$node$coverImage.stub(
            _then(_instance))
        : CopyWith$Query$staffMedia$Staff$staffMedia$edges$node$coverImage(
            local$coverImage, (e) => call(coverImage: e));
  }
}

class _CopyWithStubImpl$Query$staffMedia$Staff$staffMedia$edges$node<TRes>
    implements CopyWith$Query$staffMedia$Staff$staffMedia$edges$node<TRes> {
  _CopyWithStubImpl$Query$staffMedia$Staff$staffMedia$edges$node(this._res);

  TRes _res;

  call({
    int? id,
    Enum$MediaType? type,
    Query$staffMedia$Staff$staffMedia$edges$node$title? title,
    Query$staffMedia$Staff$staffMedia$edges$node$coverImage? coverImage,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$staffMedia$Staff$staffMedia$edges$node$title<TRes> get title =>
      CopyWith$Query$staffMedia$Staff$staffMedia$edges$node$title.stub(_res);

  CopyWith$Query$staffMedia$Staff$staffMedia$edges$node$coverImage<TRes>
      get coverImage =>
          CopyWith$Query$staffMedia$Staff$staffMedia$edges$node$coverImage.stub(
              _res);
}

class Query$staffMedia$Staff$staffMedia$edges$node$title {
  Query$staffMedia$Staff$staffMedia$edges$node$title({
    this.userPreferred,
    this.$__typename = 'MediaTitle',
  });

  factory Query$staffMedia$Staff$staffMedia$edges$node$title.fromJson(
      Map<String, dynamic> json) {
    final l$userPreferred = json['userPreferred'];
    final l$$__typename = json['__typename'];
    return Query$staffMedia$Staff$staffMedia$edges$node$title(
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
    if (other is! Query$staffMedia$Staff$staffMedia$edges$node$title ||
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

extension UtilityExtension$Query$staffMedia$Staff$staffMedia$edges$node$title
    on Query$staffMedia$Staff$staffMedia$edges$node$title {
  CopyWith$Query$staffMedia$Staff$staffMedia$edges$node$title<
          Query$staffMedia$Staff$staffMedia$edges$node$title>
      get copyWith =>
          CopyWith$Query$staffMedia$Staff$staffMedia$edges$node$title(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$staffMedia$Staff$staffMedia$edges$node$title<
    TRes> {
  factory CopyWith$Query$staffMedia$Staff$staffMedia$edges$node$title(
    Query$staffMedia$Staff$staffMedia$edges$node$title instance,
    TRes Function(Query$staffMedia$Staff$staffMedia$edges$node$title) then,
  ) = _CopyWithImpl$Query$staffMedia$Staff$staffMedia$edges$node$title;

  factory CopyWith$Query$staffMedia$Staff$staffMedia$edges$node$title.stub(
          TRes res) =
      _CopyWithStubImpl$Query$staffMedia$Staff$staffMedia$edges$node$title;

  TRes call({
    String? userPreferred,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$staffMedia$Staff$staffMedia$edges$node$title<TRes>
    implements
        CopyWith$Query$staffMedia$Staff$staffMedia$edges$node$title<TRes> {
  _CopyWithImpl$Query$staffMedia$Staff$staffMedia$edges$node$title(
    this._instance,
    this._then,
  );

  final Query$staffMedia$Staff$staffMedia$edges$node$title _instance;

  final TRes Function(Query$staffMedia$Staff$staffMedia$edges$node$title) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userPreferred = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$staffMedia$Staff$staffMedia$edges$node$title(
        userPreferred: userPreferred == _undefined
            ? _instance.userPreferred
            : (userPreferred as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$staffMedia$Staff$staffMedia$edges$node$title<TRes>
    implements
        CopyWith$Query$staffMedia$Staff$staffMedia$edges$node$title<TRes> {
  _CopyWithStubImpl$Query$staffMedia$Staff$staffMedia$edges$node$title(
      this._res);

  TRes _res;

  call({
    String? userPreferred,
    String? $__typename,
  }) =>
      _res;
}

class Query$staffMedia$Staff$staffMedia$edges$node$coverImage {
  Query$staffMedia$Staff$staffMedia$edges$node$coverImage({
    this.large,
    this.$__typename = 'MediaCoverImage',
  });

  factory Query$staffMedia$Staff$staffMedia$edges$node$coverImage.fromJson(
      Map<String, dynamic> json) {
    final l$large = json['large'];
    final l$$__typename = json['__typename'];
    return Query$staffMedia$Staff$staffMedia$edges$node$coverImage(
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
    if (other is! Query$staffMedia$Staff$staffMedia$edges$node$coverImage ||
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

extension UtilityExtension$Query$staffMedia$Staff$staffMedia$edges$node$coverImage
    on Query$staffMedia$Staff$staffMedia$edges$node$coverImage {
  CopyWith$Query$staffMedia$Staff$staffMedia$edges$node$coverImage<
          Query$staffMedia$Staff$staffMedia$edges$node$coverImage>
      get copyWith =>
          CopyWith$Query$staffMedia$Staff$staffMedia$edges$node$coverImage(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$staffMedia$Staff$staffMedia$edges$node$coverImage<
    TRes> {
  factory CopyWith$Query$staffMedia$Staff$staffMedia$edges$node$coverImage(
    Query$staffMedia$Staff$staffMedia$edges$node$coverImage instance,
    TRes Function(Query$staffMedia$Staff$staffMedia$edges$node$coverImage) then,
  ) = _CopyWithImpl$Query$staffMedia$Staff$staffMedia$edges$node$coverImage;

  factory CopyWith$Query$staffMedia$Staff$staffMedia$edges$node$coverImage.stub(
          TRes res) =
      _CopyWithStubImpl$Query$staffMedia$Staff$staffMedia$edges$node$coverImage;

  TRes call({
    String? large,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$staffMedia$Staff$staffMedia$edges$node$coverImage<
        TRes>
    implements
        CopyWith$Query$staffMedia$Staff$staffMedia$edges$node$coverImage<TRes> {
  _CopyWithImpl$Query$staffMedia$Staff$staffMedia$edges$node$coverImage(
    this._instance,
    this._then,
  );

  final Query$staffMedia$Staff$staffMedia$edges$node$coverImage _instance;

  final TRes Function(Query$staffMedia$Staff$staffMedia$edges$node$coverImage)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? large = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$staffMedia$Staff$staffMedia$edges$node$coverImage(
        large: large == _undefined ? _instance.large : (large as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$staffMedia$Staff$staffMedia$edges$node$coverImage<
        TRes>
    implements
        CopyWith$Query$staffMedia$Staff$staffMedia$edges$node$coverImage<TRes> {
  _CopyWithStubImpl$Query$staffMedia$Staff$staffMedia$edges$node$coverImage(
      this._res);

  TRes _res;

  call({
    String? large,
    String? $__typename,
  }) =>
      _res;
}
