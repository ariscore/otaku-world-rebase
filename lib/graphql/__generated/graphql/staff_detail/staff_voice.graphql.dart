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

class Variables$Query$staffVoice {
  factory Variables$Query$staffVoice({
    int? staffId,
    List<Enum$MediaSort?>? sort,
    int? page,
    bool? onList,
  }) =>
      Variables$Query$staffVoice._({
        if (staffId != null) r'staffId': staffId,
        if (sort != null) r'sort': sort,
        if (page != null) r'page': page,
        if (onList != null) r'onList': onList,
      });

  Variables$Query$staffVoice._(this._$data);

  factory Variables$Query$staffVoice.fromJson(Map<String, dynamic> data) {
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
    return Variables$Query$staffVoice._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get staffId => (_$data['staffId'] as int?);

  List<Enum$MediaSort?>? get sort => (_$data['sort'] as List<Enum$MediaSort?>?);

  int? get page => (_$data['page'] as int?);

  bool? get onList => (_$data['onList'] as bool?);

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
    return result$data;
  }

  CopyWith$Variables$Query$staffVoice<Variables$Query$staffVoice>
      get copyWith => CopyWith$Variables$Query$staffVoice(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$staffVoice ||
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
    return true;
  }

  @override
  int get hashCode {
    final l$staffId = staffId;
    final l$sort = sort;
    final l$page = page;
    final l$onList = onList;
    return Object.hashAll([
      _$data.containsKey('staffId') ? l$staffId : const {},
      _$data.containsKey('sort')
          ? l$sort == null
              ? null
              : Object.hashAll(l$sort.map((v) => v))
          : const {},
      _$data.containsKey('page') ? l$page : const {},
      _$data.containsKey('onList') ? l$onList : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$staffVoice<TRes> {
  factory CopyWith$Variables$Query$staffVoice(
    Variables$Query$staffVoice instance,
    TRes Function(Variables$Query$staffVoice) then,
  ) = _CopyWithImpl$Variables$Query$staffVoice;

  factory CopyWith$Variables$Query$staffVoice.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$staffVoice;

  TRes call({
    int? staffId,
    List<Enum$MediaSort?>? sort,
    int? page,
    bool? onList,
  });
}

class _CopyWithImpl$Variables$Query$staffVoice<TRes>
    implements CopyWith$Variables$Query$staffVoice<TRes> {
  _CopyWithImpl$Variables$Query$staffVoice(
    this._instance,
    this._then,
  );

  final Variables$Query$staffVoice _instance;

  final TRes Function(Variables$Query$staffVoice) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? staffId = _undefined,
    Object? sort = _undefined,
    Object? page = _undefined,
    Object? onList = _undefined,
  }) =>
      _then(Variables$Query$staffVoice._({
        ..._instance._$data,
        if (staffId != _undefined) 'staffId': (staffId as int?),
        if (sort != _undefined) 'sort': (sort as List<Enum$MediaSort?>?),
        if (page != _undefined) 'page': (page as int?),
        if (onList != _undefined) 'onList': (onList as bool?),
      }));
}

class _CopyWithStubImpl$Variables$Query$staffVoice<TRes>
    implements CopyWith$Variables$Query$staffVoice<TRes> {
  _CopyWithStubImpl$Variables$Query$staffVoice(this._res);

  TRes _res;

  call({
    int? staffId,
    List<Enum$MediaSort?>? sort,
    int? page,
    bool? onList,
  }) =>
      _res;
}

class Query$staffVoice {
  Query$staffVoice({
    this.Staff,
    this.$__typename = 'Query',
  });

  factory Query$staffVoice.fromJson(Map<String, dynamic> json) {
    final l$Staff = json['Staff'];
    final l$$__typename = json['__typename'];
    return Query$staffVoice(
      Staff: l$Staff == null
          ? null
          : Query$staffVoice$Staff.fromJson((l$Staff as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$staffVoice$Staff? Staff;

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
    if (other is! Query$staffVoice || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$staffVoice on Query$staffVoice {
  CopyWith$Query$staffVoice<Query$staffVoice> get copyWith =>
      CopyWith$Query$staffVoice(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$staffVoice<TRes> {
  factory CopyWith$Query$staffVoice(
    Query$staffVoice instance,
    TRes Function(Query$staffVoice) then,
  ) = _CopyWithImpl$Query$staffVoice;

  factory CopyWith$Query$staffVoice.stub(TRes res) =
      _CopyWithStubImpl$Query$staffVoice;

  TRes call({
    Query$staffVoice$Staff? Staff,
    String? $__typename,
  });
  CopyWith$Query$staffVoice$Staff<TRes> get Staff;
}

class _CopyWithImpl$Query$staffVoice<TRes>
    implements CopyWith$Query$staffVoice<TRes> {
  _CopyWithImpl$Query$staffVoice(
    this._instance,
    this._then,
  );

  final Query$staffVoice _instance;

  final TRes Function(Query$staffVoice) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? Staff = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$staffVoice(
        Staff: Staff == _undefined
            ? _instance.Staff
            : (Staff as Query$staffVoice$Staff?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$staffVoice$Staff<TRes> get Staff {
    final local$Staff = _instance.Staff;
    return local$Staff == null
        ? CopyWith$Query$staffVoice$Staff.stub(_then(_instance))
        : CopyWith$Query$staffVoice$Staff(local$Staff, (e) => call(Staff: e));
  }
}

class _CopyWithStubImpl$Query$staffVoice<TRes>
    implements CopyWith$Query$staffVoice<TRes> {
  _CopyWithStubImpl$Query$staffVoice(this._res);

  TRes _res;

  call({
    Query$staffVoice$Staff? Staff,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$staffVoice$Staff<TRes> get Staff =>
      CopyWith$Query$staffVoice$Staff.stub(_res);
}

const documentNodeQuerystaffVoice = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'staffVoice'),
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
            name: NameNode(value: 'characterMedia'),
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
                    name: NameNode(value: 'characterRole'),
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
                        name: NameNode(value: 'startDate'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                            name: NameNode(value: 'year'),
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
                        name: NameNode(value: 'format'),
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
                    name: NameNode(value: 'characters'),
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
  fragmentDefinitionPageInfo,
]);
Query$staffVoice _parserFn$Query$staffVoice(Map<String, dynamic> data) =>
    Query$staffVoice.fromJson(data);
typedef OnQueryComplete$Query$staffVoice = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$staffVoice?,
);

class Options$Query$staffVoice extends graphql.QueryOptions<Query$staffVoice> {
  Options$Query$staffVoice({
    String? operationName,
    Variables$Query$staffVoice? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$staffVoice? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$staffVoice? onComplete,
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
                    data == null ? null : _parserFn$Query$staffVoice(data),
                  ),
          onError: onError,
          document: documentNodeQuerystaffVoice,
          parserFn: _parserFn$Query$staffVoice,
        );

  final OnQueryComplete$Query$staffVoice? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$staffVoice
    extends graphql.WatchQueryOptions<Query$staffVoice> {
  WatchOptions$Query$staffVoice({
    String? operationName,
    Variables$Query$staffVoice? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$staffVoice? typedOptimisticResult,
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
          document: documentNodeQuerystaffVoice,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$staffVoice,
        );
}

class FetchMoreOptions$Query$staffVoice extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$staffVoice({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$staffVoice? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQuerystaffVoice,
        );
}

extension ClientExtension$Query$staffVoice on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$staffVoice>> query$staffVoice(
          [Options$Query$staffVoice? options]) async =>
      await this.query(options ?? Options$Query$staffVoice());
  graphql.ObservableQuery<Query$staffVoice> watchQuery$staffVoice(
          [WatchOptions$Query$staffVoice? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$staffVoice());
  void writeQuery$staffVoice({
    required Query$staffVoice data,
    Variables$Query$staffVoice? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQuerystaffVoice),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$staffVoice? readQuery$staffVoice({
    Variables$Query$staffVoice? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQuerystaffVoice),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$staffVoice.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$staffVoice> useQuery$staffVoice(
        [Options$Query$staffVoice? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$staffVoice());
graphql.ObservableQuery<Query$staffVoice> useWatchQuery$staffVoice(
        [WatchOptions$Query$staffVoice? options]) =>
    graphql_flutter.useWatchQuery(options ?? WatchOptions$Query$staffVoice());

class Query$staffVoice$Widget extends graphql_flutter.Query<Query$staffVoice> {
  Query$staffVoice$Widget({
    widgets.Key? key,
    Options$Query$staffVoice? options,
    required graphql_flutter.QueryBuilder<Query$staffVoice> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$staffVoice(),
          builder: builder,
        );
}

class Query$staffVoice$Staff {
  Query$staffVoice$Staff({
    this.characterMedia,
    this.$__typename = 'Staff',
  });

  factory Query$staffVoice$Staff.fromJson(Map<String, dynamic> json) {
    final l$characterMedia = json['characterMedia'];
    final l$$__typename = json['__typename'];
    return Query$staffVoice$Staff(
      characterMedia: l$characterMedia == null
          ? null
          : Query$staffVoice$Staff$characterMedia.fromJson(
              (l$characterMedia as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$staffVoice$Staff$characterMedia? characterMedia;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$characterMedia = characterMedia;
    _resultData['characterMedia'] = l$characterMedia?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$characterMedia = characterMedia;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$characterMedia,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$staffVoice$Staff || runtimeType != other.runtimeType) {
      return false;
    }
    final l$characterMedia = characterMedia;
    final lOther$characterMedia = other.characterMedia;
    if (l$characterMedia != lOther$characterMedia) {
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

extension UtilityExtension$Query$staffVoice$Staff on Query$staffVoice$Staff {
  CopyWith$Query$staffVoice$Staff<Query$staffVoice$Staff> get copyWith =>
      CopyWith$Query$staffVoice$Staff(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$staffVoice$Staff<TRes> {
  factory CopyWith$Query$staffVoice$Staff(
    Query$staffVoice$Staff instance,
    TRes Function(Query$staffVoice$Staff) then,
  ) = _CopyWithImpl$Query$staffVoice$Staff;

  factory CopyWith$Query$staffVoice$Staff.stub(TRes res) =
      _CopyWithStubImpl$Query$staffVoice$Staff;

  TRes call({
    Query$staffVoice$Staff$characterMedia? characterMedia,
    String? $__typename,
  });
  CopyWith$Query$staffVoice$Staff$characterMedia<TRes> get characterMedia;
}

class _CopyWithImpl$Query$staffVoice$Staff<TRes>
    implements CopyWith$Query$staffVoice$Staff<TRes> {
  _CopyWithImpl$Query$staffVoice$Staff(
    this._instance,
    this._then,
  );

  final Query$staffVoice$Staff _instance;

  final TRes Function(Query$staffVoice$Staff) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? characterMedia = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$staffVoice$Staff(
        characterMedia: characterMedia == _undefined
            ? _instance.characterMedia
            : (characterMedia as Query$staffVoice$Staff$characterMedia?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$staffVoice$Staff$characterMedia<TRes> get characterMedia {
    final local$characterMedia = _instance.characterMedia;
    return local$characterMedia == null
        ? CopyWith$Query$staffVoice$Staff$characterMedia.stub(_then(_instance))
        : CopyWith$Query$staffVoice$Staff$characterMedia(
            local$characterMedia, (e) => call(characterMedia: e));
  }
}

class _CopyWithStubImpl$Query$staffVoice$Staff<TRes>
    implements CopyWith$Query$staffVoice$Staff<TRes> {
  _CopyWithStubImpl$Query$staffVoice$Staff(this._res);

  TRes _res;

  call({
    Query$staffVoice$Staff$characterMedia? characterMedia,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$staffVoice$Staff$characterMedia<TRes> get characterMedia =>
      CopyWith$Query$staffVoice$Staff$characterMedia.stub(_res);
}

class Query$staffVoice$Staff$characterMedia {
  Query$staffVoice$Staff$characterMedia({
    this.pageInfo,
    this.edges,
    this.$__typename = 'MediaConnection',
  });

  factory Query$staffVoice$Staff$characterMedia.fromJson(
      Map<String, dynamic> json) {
    final l$pageInfo = json['pageInfo'];
    final l$edges = json['edges'];
    final l$$__typename = json['__typename'];
    return Query$staffVoice$Staff$characterMedia(
      pageInfo: l$pageInfo == null
          ? null
          : Fragment$PageInfo.fromJson((l$pageInfo as Map<String, dynamic>)),
      edges: (l$edges as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$staffVoice$Staff$characterMedia$edges.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$PageInfo? pageInfo;

  final List<Query$staffVoice$Staff$characterMedia$edges?>? edges;

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
    if (other is! Query$staffVoice$Staff$characterMedia ||
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

extension UtilityExtension$Query$staffVoice$Staff$characterMedia
    on Query$staffVoice$Staff$characterMedia {
  CopyWith$Query$staffVoice$Staff$characterMedia<
          Query$staffVoice$Staff$characterMedia>
      get copyWith => CopyWith$Query$staffVoice$Staff$characterMedia(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$staffVoice$Staff$characterMedia<TRes> {
  factory CopyWith$Query$staffVoice$Staff$characterMedia(
    Query$staffVoice$Staff$characterMedia instance,
    TRes Function(Query$staffVoice$Staff$characterMedia) then,
  ) = _CopyWithImpl$Query$staffVoice$Staff$characterMedia;

  factory CopyWith$Query$staffVoice$Staff$characterMedia.stub(TRes res) =
      _CopyWithStubImpl$Query$staffVoice$Staff$characterMedia;

  TRes call({
    Fragment$PageInfo? pageInfo,
    List<Query$staffVoice$Staff$characterMedia$edges?>? edges,
    String? $__typename,
  });
  CopyWith$Fragment$PageInfo<TRes> get pageInfo;
  TRes edges(
      Iterable<Query$staffVoice$Staff$characterMedia$edges?>? Function(
              Iterable<
                  CopyWith$Query$staffVoice$Staff$characterMedia$edges<
                      Query$staffVoice$Staff$characterMedia$edges>?>?)
          _fn);
}

class _CopyWithImpl$Query$staffVoice$Staff$characterMedia<TRes>
    implements CopyWith$Query$staffVoice$Staff$characterMedia<TRes> {
  _CopyWithImpl$Query$staffVoice$Staff$characterMedia(
    this._instance,
    this._then,
  );

  final Query$staffVoice$Staff$characterMedia _instance;

  final TRes Function(Query$staffVoice$Staff$characterMedia) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pageInfo = _undefined,
    Object? edges = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$staffVoice$Staff$characterMedia(
        pageInfo: pageInfo == _undefined
            ? _instance.pageInfo
            : (pageInfo as Fragment$PageInfo?),
        edges: edges == _undefined
            ? _instance.edges
            : (edges as List<Query$staffVoice$Staff$characterMedia$edges?>?),
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
          Iterable<Query$staffVoice$Staff$characterMedia$edges?>? Function(
                  Iterable<
                      CopyWith$Query$staffVoice$Staff$characterMedia$edges<
                          Query$staffVoice$Staff$characterMedia$edges>?>?)
              _fn) =>
      call(
          edges: _fn(_instance.edges?.map((e) => e == null
              ? null
              : CopyWith$Query$staffVoice$Staff$characterMedia$edges(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$staffVoice$Staff$characterMedia<TRes>
    implements CopyWith$Query$staffVoice$Staff$characterMedia<TRes> {
  _CopyWithStubImpl$Query$staffVoice$Staff$characterMedia(this._res);

  TRes _res;

  call({
    Fragment$PageInfo? pageInfo,
    List<Query$staffVoice$Staff$characterMedia$edges?>? edges,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$PageInfo<TRes> get pageInfo =>
      CopyWith$Fragment$PageInfo.stub(_res);

  edges(_fn) => _res;
}

class Query$staffVoice$Staff$characterMedia$edges {
  Query$staffVoice$Staff$characterMedia$edges({
    this.characterRole,
    this.node,
    this.characters,
    this.$__typename = 'MediaEdge',
  });

  factory Query$staffVoice$Staff$characterMedia$edges.fromJson(
      Map<String, dynamic> json) {
    final l$characterRole = json['characterRole'];
    final l$node = json['node'];
    final l$characters = json['characters'];
    final l$$__typename = json['__typename'];
    return Query$staffVoice$Staff$characterMedia$edges(
      characterRole: l$characterRole == null
          ? null
          : fromJson$Enum$CharacterRole((l$characterRole as String)),
      node: l$node == null
          ? null
          : Query$staffVoice$Staff$characterMedia$edges$node.fromJson(
              (l$node as Map<String, dynamic>)),
      characters: (l$characters as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$staffVoice$Staff$characterMedia$edges$characters.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Enum$CharacterRole? characterRole;

  final Query$staffVoice$Staff$characterMedia$edges$node? node;

  final List<Query$staffVoice$Staff$characterMedia$edges$characters?>?
      characters;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$characterRole = characterRole;
    _resultData['characterRole'] = l$characterRole == null
        ? null
        : toJson$Enum$CharacterRole(l$characterRole);
    final l$node = node;
    _resultData['node'] = l$node?.toJson();
    final l$characters = characters;
    _resultData['characters'] = l$characters?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$characterRole = characterRole;
    final l$node = node;
    final l$characters = characters;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$characterRole,
      l$node,
      l$characters == null ? null : Object.hashAll(l$characters.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$staffVoice$Staff$characterMedia$edges ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$characterRole = characterRole;
    final lOther$characterRole = other.characterRole;
    if (l$characterRole != lOther$characterRole) {
      return false;
    }
    final l$node = node;
    final lOther$node = other.node;
    if (l$node != lOther$node) {
      return false;
    }
    final l$characters = characters;
    final lOther$characters = other.characters;
    if (l$characters != null && lOther$characters != null) {
      if (l$characters.length != lOther$characters.length) {
        return false;
      }
      for (int i = 0; i < l$characters.length; i++) {
        final l$characters$entry = l$characters[i];
        final lOther$characters$entry = lOther$characters[i];
        if (l$characters$entry != lOther$characters$entry) {
          return false;
        }
      }
    } else if (l$characters != lOther$characters) {
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

extension UtilityExtension$Query$staffVoice$Staff$characterMedia$edges
    on Query$staffVoice$Staff$characterMedia$edges {
  CopyWith$Query$staffVoice$Staff$characterMedia$edges<
          Query$staffVoice$Staff$characterMedia$edges>
      get copyWith => CopyWith$Query$staffVoice$Staff$characterMedia$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$staffVoice$Staff$characterMedia$edges<TRes> {
  factory CopyWith$Query$staffVoice$Staff$characterMedia$edges(
    Query$staffVoice$Staff$characterMedia$edges instance,
    TRes Function(Query$staffVoice$Staff$characterMedia$edges) then,
  ) = _CopyWithImpl$Query$staffVoice$Staff$characterMedia$edges;

  factory CopyWith$Query$staffVoice$Staff$characterMedia$edges.stub(TRes res) =
      _CopyWithStubImpl$Query$staffVoice$Staff$characterMedia$edges;

  TRes call({
    Enum$CharacterRole? characterRole,
    Query$staffVoice$Staff$characterMedia$edges$node? node,
    List<Query$staffVoice$Staff$characterMedia$edges$characters?>? characters,
    String? $__typename,
  });
  CopyWith$Query$staffVoice$Staff$characterMedia$edges$node<TRes> get node;
  TRes characters(
      Iterable<Query$staffVoice$Staff$characterMedia$edges$characters?>? Function(
              Iterable<
                  CopyWith$Query$staffVoice$Staff$characterMedia$edges$characters<
                      Query$staffVoice$Staff$characterMedia$edges$characters>?>?)
          _fn);
}

class _CopyWithImpl$Query$staffVoice$Staff$characterMedia$edges<TRes>
    implements CopyWith$Query$staffVoice$Staff$characterMedia$edges<TRes> {
  _CopyWithImpl$Query$staffVoice$Staff$characterMedia$edges(
    this._instance,
    this._then,
  );

  final Query$staffVoice$Staff$characterMedia$edges _instance;

  final TRes Function(Query$staffVoice$Staff$characterMedia$edges) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? characterRole = _undefined,
    Object? node = _undefined,
    Object? characters = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$staffVoice$Staff$characterMedia$edges(
        characterRole: characterRole == _undefined
            ? _instance.characterRole
            : (characterRole as Enum$CharacterRole?),
        node: node == _undefined
            ? _instance.node
            : (node as Query$staffVoice$Staff$characterMedia$edges$node?),
        characters: characters == _undefined
            ? _instance.characters
            : (characters as List<
                Query$staffVoice$Staff$characterMedia$edges$characters?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$staffVoice$Staff$characterMedia$edges$node<TRes> get node {
    final local$node = _instance.node;
    return local$node == null
        ? CopyWith$Query$staffVoice$Staff$characterMedia$edges$node.stub(
            _then(_instance))
        : CopyWith$Query$staffVoice$Staff$characterMedia$edges$node(
            local$node, (e) => call(node: e));
  }

  TRes characters(
          Iterable<Query$staffVoice$Staff$characterMedia$edges$characters?>? Function(
                  Iterable<
                      CopyWith$Query$staffVoice$Staff$characterMedia$edges$characters<
                          Query$staffVoice$Staff$characterMedia$edges$characters>?>?)
              _fn) =>
      call(
          characters: _fn(_instance.characters?.map((e) => e == null
              ? null
              : CopyWith$Query$staffVoice$Staff$characterMedia$edges$characters(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$staffVoice$Staff$characterMedia$edges<TRes>
    implements CopyWith$Query$staffVoice$Staff$characterMedia$edges<TRes> {
  _CopyWithStubImpl$Query$staffVoice$Staff$characterMedia$edges(this._res);

  TRes _res;

  call({
    Enum$CharacterRole? characterRole,
    Query$staffVoice$Staff$characterMedia$edges$node? node,
    List<Query$staffVoice$Staff$characterMedia$edges$characters?>? characters,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$staffVoice$Staff$characterMedia$edges$node<TRes> get node =>
      CopyWith$Query$staffVoice$Staff$characterMedia$edges$node.stub(_res);

  characters(_fn) => _res;
}

class Query$staffVoice$Staff$characterMedia$edges$node {
  Query$staffVoice$Staff$characterMedia$edges$node({
    required this.id,
    this.type,
    this.title,
    this.coverImage,
    this.startDate,
    this.format,
    this.$__typename = 'Media',
  });

  factory Query$staffVoice$Staff$characterMedia$edges$node.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$type = json['type'];
    final l$title = json['title'];
    final l$coverImage = json['coverImage'];
    final l$startDate = json['startDate'];
    final l$format = json['format'];
    final l$$__typename = json['__typename'];
    return Query$staffVoice$Staff$characterMedia$edges$node(
      id: (l$id as int),
      type: l$type == null ? null : fromJson$Enum$MediaType((l$type as String)),
      title: l$title == null
          ? null
          : Query$staffVoice$Staff$characterMedia$edges$node$title.fromJson(
              (l$title as Map<String, dynamic>)),
      coverImage: l$coverImage == null
          ? null
          : Query$staffVoice$Staff$characterMedia$edges$node$coverImage
              .fromJson((l$coverImage as Map<String, dynamic>)),
      startDate: l$startDate == null
          ? null
          : Query$staffVoice$Staff$characterMedia$edges$node$startDate.fromJson(
              (l$startDate as Map<String, dynamic>)),
      format: l$format == null
          ? null
          : fromJson$Enum$MediaFormat((l$format as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final Enum$MediaType? type;

  final Query$staffVoice$Staff$characterMedia$edges$node$title? title;

  final Query$staffVoice$Staff$characterMedia$edges$node$coverImage? coverImage;

  final Query$staffVoice$Staff$characterMedia$edges$node$startDate? startDate;

  final Enum$MediaFormat? format;

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
    final l$startDate = startDate;
    _resultData['startDate'] = l$startDate?.toJson();
    final l$format = format;
    _resultData['format'] =
        l$format == null ? null : toJson$Enum$MediaFormat(l$format);
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
    final l$startDate = startDate;
    final l$format = format;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$type,
      l$title,
      l$coverImage,
      l$startDate,
      l$format,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$staffVoice$Staff$characterMedia$edges$node ||
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
    final l$startDate = startDate;
    final lOther$startDate = other.startDate;
    if (l$startDate != lOther$startDate) {
      return false;
    }
    final l$format = format;
    final lOther$format = other.format;
    if (l$format != lOther$format) {
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

extension UtilityExtension$Query$staffVoice$Staff$characterMedia$edges$node
    on Query$staffVoice$Staff$characterMedia$edges$node {
  CopyWith$Query$staffVoice$Staff$characterMedia$edges$node<
          Query$staffVoice$Staff$characterMedia$edges$node>
      get copyWith => CopyWith$Query$staffVoice$Staff$characterMedia$edges$node(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$staffVoice$Staff$characterMedia$edges$node<TRes> {
  factory CopyWith$Query$staffVoice$Staff$characterMedia$edges$node(
    Query$staffVoice$Staff$characterMedia$edges$node instance,
    TRes Function(Query$staffVoice$Staff$characterMedia$edges$node) then,
  ) = _CopyWithImpl$Query$staffVoice$Staff$characterMedia$edges$node;

  factory CopyWith$Query$staffVoice$Staff$characterMedia$edges$node.stub(
          TRes res) =
      _CopyWithStubImpl$Query$staffVoice$Staff$characterMedia$edges$node;

  TRes call({
    int? id,
    Enum$MediaType? type,
    Query$staffVoice$Staff$characterMedia$edges$node$title? title,
    Query$staffVoice$Staff$characterMedia$edges$node$coverImage? coverImage,
    Query$staffVoice$Staff$characterMedia$edges$node$startDate? startDate,
    Enum$MediaFormat? format,
    String? $__typename,
  });
  CopyWith$Query$staffVoice$Staff$characterMedia$edges$node$title<TRes>
      get title;
  CopyWith$Query$staffVoice$Staff$characterMedia$edges$node$coverImage<TRes>
      get coverImage;
  CopyWith$Query$staffVoice$Staff$characterMedia$edges$node$startDate<TRes>
      get startDate;
}

class _CopyWithImpl$Query$staffVoice$Staff$characterMedia$edges$node<TRes>
    implements CopyWith$Query$staffVoice$Staff$characterMedia$edges$node<TRes> {
  _CopyWithImpl$Query$staffVoice$Staff$characterMedia$edges$node(
    this._instance,
    this._then,
  );

  final Query$staffVoice$Staff$characterMedia$edges$node _instance;

  final TRes Function(Query$staffVoice$Staff$characterMedia$edges$node) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? type = _undefined,
    Object? title = _undefined,
    Object? coverImage = _undefined,
    Object? startDate = _undefined,
    Object? format = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$staffVoice$Staff$characterMedia$edges$node(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        type: type == _undefined ? _instance.type : (type as Enum$MediaType?),
        title: title == _undefined
            ? _instance.title
            : (title
                as Query$staffVoice$Staff$characterMedia$edges$node$title?),
        coverImage: coverImage == _undefined
            ? _instance.coverImage
            : (coverImage
                as Query$staffVoice$Staff$characterMedia$edges$node$coverImage?),
        startDate: startDate == _undefined
            ? _instance.startDate
            : (startDate
                as Query$staffVoice$Staff$characterMedia$edges$node$startDate?),
        format: format == _undefined
            ? _instance.format
            : (format as Enum$MediaFormat?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$staffVoice$Staff$characterMedia$edges$node$title<TRes>
      get title {
    final local$title = _instance.title;
    return local$title == null
        ? CopyWith$Query$staffVoice$Staff$characterMedia$edges$node$title.stub(
            _then(_instance))
        : CopyWith$Query$staffVoice$Staff$characterMedia$edges$node$title(
            local$title, (e) => call(title: e));
  }

  CopyWith$Query$staffVoice$Staff$characterMedia$edges$node$coverImage<TRes>
      get coverImage {
    final local$coverImage = _instance.coverImage;
    return local$coverImage == null
        ? CopyWith$Query$staffVoice$Staff$characterMedia$edges$node$coverImage
            .stub(_then(_instance))
        : CopyWith$Query$staffVoice$Staff$characterMedia$edges$node$coverImage(
            local$coverImage, (e) => call(coverImage: e));
  }

  CopyWith$Query$staffVoice$Staff$characterMedia$edges$node$startDate<TRes>
      get startDate {
    final local$startDate = _instance.startDate;
    return local$startDate == null
        ? CopyWith$Query$staffVoice$Staff$characterMedia$edges$node$startDate
            .stub(_then(_instance))
        : CopyWith$Query$staffVoice$Staff$characterMedia$edges$node$startDate(
            local$startDate, (e) => call(startDate: e));
  }
}

class _CopyWithStubImpl$Query$staffVoice$Staff$characterMedia$edges$node<TRes>
    implements CopyWith$Query$staffVoice$Staff$characterMedia$edges$node<TRes> {
  _CopyWithStubImpl$Query$staffVoice$Staff$characterMedia$edges$node(this._res);

  TRes _res;

  call({
    int? id,
    Enum$MediaType? type,
    Query$staffVoice$Staff$characterMedia$edges$node$title? title,
    Query$staffVoice$Staff$characterMedia$edges$node$coverImage? coverImage,
    Query$staffVoice$Staff$characterMedia$edges$node$startDate? startDate,
    Enum$MediaFormat? format,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$staffVoice$Staff$characterMedia$edges$node$title<TRes>
      get title =>
          CopyWith$Query$staffVoice$Staff$characterMedia$edges$node$title.stub(
              _res);

  CopyWith$Query$staffVoice$Staff$characterMedia$edges$node$coverImage<TRes>
      get coverImage =>
          CopyWith$Query$staffVoice$Staff$characterMedia$edges$node$coverImage
              .stub(_res);

  CopyWith$Query$staffVoice$Staff$characterMedia$edges$node$startDate<TRes>
      get startDate =>
          CopyWith$Query$staffVoice$Staff$characterMedia$edges$node$startDate
              .stub(_res);
}

class Query$staffVoice$Staff$characterMedia$edges$node$title {
  Query$staffVoice$Staff$characterMedia$edges$node$title({
    this.userPreferred,
    this.$__typename = 'MediaTitle',
  });

  factory Query$staffVoice$Staff$characterMedia$edges$node$title.fromJson(
      Map<String, dynamic> json) {
    final l$userPreferred = json['userPreferred'];
    final l$$__typename = json['__typename'];
    return Query$staffVoice$Staff$characterMedia$edges$node$title(
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
    if (other is! Query$staffVoice$Staff$characterMedia$edges$node$title ||
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

extension UtilityExtension$Query$staffVoice$Staff$characterMedia$edges$node$title
    on Query$staffVoice$Staff$characterMedia$edges$node$title {
  CopyWith$Query$staffVoice$Staff$characterMedia$edges$node$title<
          Query$staffVoice$Staff$characterMedia$edges$node$title>
      get copyWith =>
          CopyWith$Query$staffVoice$Staff$characterMedia$edges$node$title(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$staffVoice$Staff$characterMedia$edges$node$title<
    TRes> {
  factory CopyWith$Query$staffVoice$Staff$characterMedia$edges$node$title(
    Query$staffVoice$Staff$characterMedia$edges$node$title instance,
    TRes Function(Query$staffVoice$Staff$characterMedia$edges$node$title) then,
  ) = _CopyWithImpl$Query$staffVoice$Staff$characterMedia$edges$node$title;

  factory CopyWith$Query$staffVoice$Staff$characterMedia$edges$node$title.stub(
          TRes res) =
      _CopyWithStubImpl$Query$staffVoice$Staff$characterMedia$edges$node$title;

  TRes call({
    String? userPreferred,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$staffVoice$Staff$characterMedia$edges$node$title<TRes>
    implements
        CopyWith$Query$staffVoice$Staff$characterMedia$edges$node$title<TRes> {
  _CopyWithImpl$Query$staffVoice$Staff$characterMedia$edges$node$title(
    this._instance,
    this._then,
  );

  final Query$staffVoice$Staff$characterMedia$edges$node$title _instance;

  final TRes Function(Query$staffVoice$Staff$characterMedia$edges$node$title)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userPreferred = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$staffVoice$Staff$characterMedia$edges$node$title(
        userPreferred: userPreferred == _undefined
            ? _instance.userPreferred
            : (userPreferred as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$staffVoice$Staff$characterMedia$edges$node$title<
        TRes>
    implements
        CopyWith$Query$staffVoice$Staff$characterMedia$edges$node$title<TRes> {
  _CopyWithStubImpl$Query$staffVoice$Staff$characterMedia$edges$node$title(
      this._res);

  TRes _res;

  call({
    String? userPreferred,
    String? $__typename,
  }) =>
      _res;
}

class Query$staffVoice$Staff$characterMedia$edges$node$coverImage {
  Query$staffVoice$Staff$characterMedia$edges$node$coverImage({
    this.large,
    this.$__typename = 'MediaCoverImage',
  });

  factory Query$staffVoice$Staff$characterMedia$edges$node$coverImage.fromJson(
      Map<String, dynamic> json) {
    final l$large = json['large'];
    final l$$__typename = json['__typename'];
    return Query$staffVoice$Staff$characterMedia$edges$node$coverImage(
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
    if (other is! Query$staffVoice$Staff$characterMedia$edges$node$coverImage ||
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

extension UtilityExtension$Query$staffVoice$Staff$characterMedia$edges$node$coverImage
    on Query$staffVoice$Staff$characterMedia$edges$node$coverImage {
  CopyWith$Query$staffVoice$Staff$characterMedia$edges$node$coverImage<
          Query$staffVoice$Staff$characterMedia$edges$node$coverImage>
      get copyWith =>
          CopyWith$Query$staffVoice$Staff$characterMedia$edges$node$coverImage(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$staffVoice$Staff$characterMedia$edges$node$coverImage<
    TRes> {
  factory CopyWith$Query$staffVoice$Staff$characterMedia$edges$node$coverImage(
    Query$staffVoice$Staff$characterMedia$edges$node$coverImage instance,
    TRes Function(Query$staffVoice$Staff$characterMedia$edges$node$coverImage)
        then,
  ) = _CopyWithImpl$Query$staffVoice$Staff$characterMedia$edges$node$coverImage;

  factory CopyWith$Query$staffVoice$Staff$characterMedia$edges$node$coverImage.stub(
          TRes res) =
      _CopyWithStubImpl$Query$staffVoice$Staff$characterMedia$edges$node$coverImage;

  TRes call({
    String? large,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$staffVoice$Staff$characterMedia$edges$node$coverImage<
        TRes>
    implements
        CopyWith$Query$staffVoice$Staff$characterMedia$edges$node$coverImage<
            TRes> {
  _CopyWithImpl$Query$staffVoice$Staff$characterMedia$edges$node$coverImage(
    this._instance,
    this._then,
  );

  final Query$staffVoice$Staff$characterMedia$edges$node$coverImage _instance;

  final TRes Function(
      Query$staffVoice$Staff$characterMedia$edges$node$coverImage) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? large = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$staffVoice$Staff$characterMedia$edges$node$coverImage(
        large: large == _undefined ? _instance.large : (large as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$staffVoice$Staff$characterMedia$edges$node$coverImage<
        TRes>
    implements
        CopyWith$Query$staffVoice$Staff$characterMedia$edges$node$coverImage<
            TRes> {
  _CopyWithStubImpl$Query$staffVoice$Staff$characterMedia$edges$node$coverImage(
      this._res);

  TRes _res;

  call({
    String? large,
    String? $__typename,
  }) =>
      _res;
}

class Query$staffVoice$Staff$characterMedia$edges$node$startDate {
  Query$staffVoice$Staff$characterMedia$edges$node$startDate({
    this.year,
    this.$__typename = 'FuzzyDate',
  });

  factory Query$staffVoice$Staff$characterMedia$edges$node$startDate.fromJson(
      Map<String, dynamic> json) {
    final l$year = json['year'];
    final l$$__typename = json['__typename'];
    return Query$staffVoice$Staff$characterMedia$edges$node$startDate(
      year: (l$year as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final int? year;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$year = year;
    _resultData['year'] = l$year;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$year = year;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$year,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$staffVoice$Staff$characterMedia$edges$node$startDate ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$year = year;
    final lOther$year = other.year;
    if (l$year != lOther$year) {
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

extension UtilityExtension$Query$staffVoice$Staff$characterMedia$edges$node$startDate
    on Query$staffVoice$Staff$characterMedia$edges$node$startDate {
  CopyWith$Query$staffVoice$Staff$characterMedia$edges$node$startDate<
          Query$staffVoice$Staff$characterMedia$edges$node$startDate>
      get copyWith =>
          CopyWith$Query$staffVoice$Staff$characterMedia$edges$node$startDate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$staffVoice$Staff$characterMedia$edges$node$startDate<
    TRes> {
  factory CopyWith$Query$staffVoice$Staff$characterMedia$edges$node$startDate(
    Query$staffVoice$Staff$characterMedia$edges$node$startDate instance,
    TRes Function(Query$staffVoice$Staff$characterMedia$edges$node$startDate)
        then,
  ) = _CopyWithImpl$Query$staffVoice$Staff$characterMedia$edges$node$startDate;

  factory CopyWith$Query$staffVoice$Staff$characterMedia$edges$node$startDate.stub(
          TRes res) =
      _CopyWithStubImpl$Query$staffVoice$Staff$characterMedia$edges$node$startDate;

  TRes call({
    int? year,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$staffVoice$Staff$characterMedia$edges$node$startDate<
        TRes>
    implements
        CopyWith$Query$staffVoice$Staff$characterMedia$edges$node$startDate<
            TRes> {
  _CopyWithImpl$Query$staffVoice$Staff$characterMedia$edges$node$startDate(
    this._instance,
    this._then,
  );

  final Query$staffVoice$Staff$characterMedia$edges$node$startDate _instance;

  final TRes Function(
      Query$staffVoice$Staff$characterMedia$edges$node$startDate) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? year = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$staffVoice$Staff$characterMedia$edges$node$startDate(
        year: year == _undefined ? _instance.year : (year as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$staffVoice$Staff$characterMedia$edges$node$startDate<
        TRes>
    implements
        CopyWith$Query$staffVoice$Staff$characterMedia$edges$node$startDate<
            TRes> {
  _CopyWithStubImpl$Query$staffVoice$Staff$characterMedia$edges$node$startDate(
      this._res);

  TRes _res;

  call({
    int? year,
    String? $__typename,
  }) =>
      _res;
}

class Query$staffVoice$Staff$characterMedia$edges$characters {
  Query$staffVoice$Staff$characterMedia$edges$characters({
    required this.id,
    this.name,
    this.image,
    this.$__typename = 'Character',
  });

  factory Query$staffVoice$Staff$characterMedia$edges$characters.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$image = json['image'];
    final l$$__typename = json['__typename'];
    return Query$staffVoice$Staff$characterMedia$edges$characters(
      id: (l$id as int),
      name: l$name == null
          ? null
          : Query$staffVoice$Staff$characterMedia$edges$characters$name
              .fromJson((l$name as Map<String, dynamic>)),
      image: l$image == null
          ? null
          : Query$staffVoice$Staff$characterMedia$edges$characters$image
              .fromJson((l$image as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final Query$staffVoice$Staff$characterMedia$edges$characters$name? name;

  final Query$staffVoice$Staff$characterMedia$edges$characters$image? image;

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
    if (other is! Query$staffVoice$Staff$characterMedia$edges$characters ||
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

extension UtilityExtension$Query$staffVoice$Staff$characterMedia$edges$characters
    on Query$staffVoice$Staff$characterMedia$edges$characters {
  CopyWith$Query$staffVoice$Staff$characterMedia$edges$characters<
          Query$staffVoice$Staff$characterMedia$edges$characters>
      get copyWith =>
          CopyWith$Query$staffVoice$Staff$characterMedia$edges$characters(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$staffVoice$Staff$characterMedia$edges$characters<
    TRes> {
  factory CopyWith$Query$staffVoice$Staff$characterMedia$edges$characters(
    Query$staffVoice$Staff$characterMedia$edges$characters instance,
    TRes Function(Query$staffVoice$Staff$characterMedia$edges$characters) then,
  ) = _CopyWithImpl$Query$staffVoice$Staff$characterMedia$edges$characters;

  factory CopyWith$Query$staffVoice$Staff$characterMedia$edges$characters.stub(
          TRes res) =
      _CopyWithStubImpl$Query$staffVoice$Staff$characterMedia$edges$characters;

  TRes call({
    int? id,
    Query$staffVoice$Staff$characterMedia$edges$characters$name? name,
    Query$staffVoice$Staff$characterMedia$edges$characters$image? image,
    String? $__typename,
  });
  CopyWith$Query$staffVoice$Staff$characterMedia$edges$characters$name<TRes>
      get name;
  CopyWith$Query$staffVoice$Staff$characterMedia$edges$characters$image<TRes>
      get image;
}

class _CopyWithImpl$Query$staffVoice$Staff$characterMedia$edges$characters<TRes>
    implements
        CopyWith$Query$staffVoice$Staff$characterMedia$edges$characters<TRes> {
  _CopyWithImpl$Query$staffVoice$Staff$characterMedia$edges$characters(
    this._instance,
    this._then,
  );

  final Query$staffVoice$Staff$characterMedia$edges$characters _instance;

  final TRes Function(Query$staffVoice$Staff$characterMedia$edges$characters)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? image = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$staffVoice$Staff$characterMedia$edges$characters(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        name: name == _undefined
            ? _instance.name
            : (name
                as Query$staffVoice$Staff$characterMedia$edges$characters$name?),
        image: image == _undefined
            ? _instance.image
            : (image
                as Query$staffVoice$Staff$characterMedia$edges$characters$image?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$staffVoice$Staff$characterMedia$edges$characters$name<TRes>
      get name {
    final local$name = _instance.name;
    return local$name == null
        ? CopyWith$Query$staffVoice$Staff$characterMedia$edges$characters$name
            .stub(_then(_instance))
        : CopyWith$Query$staffVoice$Staff$characterMedia$edges$characters$name(
            local$name, (e) => call(name: e));
  }

  CopyWith$Query$staffVoice$Staff$characterMedia$edges$characters$image<TRes>
      get image {
    final local$image = _instance.image;
    return local$image == null
        ? CopyWith$Query$staffVoice$Staff$characterMedia$edges$characters$image
            .stub(_then(_instance))
        : CopyWith$Query$staffVoice$Staff$characterMedia$edges$characters$image(
            local$image, (e) => call(image: e));
  }
}

class _CopyWithStubImpl$Query$staffVoice$Staff$characterMedia$edges$characters<
        TRes>
    implements
        CopyWith$Query$staffVoice$Staff$characterMedia$edges$characters<TRes> {
  _CopyWithStubImpl$Query$staffVoice$Staff$characterMedia$edges$characters(
      this._res);

  TRes _res;

  call({
    int? id,
    Query$staffVoice$Staff$characterMedia$edges$characters$name? name,
    Query$staffVoice$Staff$characterMedia$edges$characters$image? image,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$staffVoice$Staff$characterMedia$edges$characters$name<TRes>
      get name =>
          CopyWith$Query$staffVoice$Staff$characterMedia$edges$characters$name
              .stub(_res);

  CopyWith$Query$staffVoice$Staff$characterMedia$edges$characters$image<TRes>
      get image =>
          CopyWith$Query$staffVoice$Staff$characterMedia$edges$characters$image
              .stub(_res);
}

class Query$staffVoice$Staff$characterMedia$edges$characters$name {
  Query$staffVoice$Staff$characterMedia$edges$characters$name({
    this.userPreferred,
    this.$__typename = 'CharacterName',
  });

  factory Query$staffVoice$Staff$characterMedia$edges$characters$name.fromJson(
      Map<String, dynamic> json) {
    final l$userPreferred = json['userPreferred'];
    final l$$__typename = json['__typename'];
    return Query$staffVoice$Staff$characterMedia$edges$characters$name(
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
    if (other is! Query$staffVoice$Staff$characterMedia$edges$characters$name ||
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

extension UtilityExtension$Query$staffVoice$Staff$characterMedia$edges$characters$name
    on Query$staffVoice$Staff$characterMedia$edges$characters$name {
  CopyWith$Query$staffVoice$Staff$characterMedia$edges$characters$name<
          Query$staffVoice$Staff$characterMedia$edges$characters$name>
      get copyWith =>
          CopyWith$Query$staffVoice$Staff$characterMedia$edges$characters$name(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$staffVoice$Staff$characterMedia$edges$characters$name<
    TRes> {
  factory CopyWith$Query$staffVoice$Staff$characterMedia$edges$characters$name(
    Query$staffVoice$Staff$characterMedia$edges$characters$name instance,
    TRes Function(Query$staffVoice$Staff$characterMedia$edges$characters$name)
        then,
  ) = _CopyWithImpl$Query$staffVoice$Staff$characterMedia$edges$characters$name;

  factory CopyWith$Query$staffVoice$Staff$characterMedia$edges$characters$name.stub(
          TRes res) =
      _CopyWithStubImpl$Query$staffVoice$Staff$characterMedia$edges$characters$name;

  TRes call({
    String? userPreferred,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$staffVoice$Staff$characterMedia$edges$characters$name<
        TRes>
    implements
        CopyWith$Query$staffVoice$Staff$characterMedia$edges$characters$name<
            TRes> {
  _CopyWithImpl$Query$staffVoice$Staff$characterMedia$edges$characters$name(
    this._instance,
    this._then,
  );

  final Query$staffVoice$Staff$characterMedia$edges$characters$name _instance;

  final TRes Function(
      Query$staffVoice$Staff$characterMedia$edges$characters$name) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userPreferred = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$staffVoice$Staff$characterMedia$edges$characters$name(
        userPreferred: userPreferred == _undefined
            ? _instance.userPreferred
            : (userPreferred as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$staffVoice$Staff$characterMedia$edges$characters$name<
        TRes>
    implements
        CopyWith$Query$staffVoice$Staff$characterMedia$edges$characters$name<
            TRes> {
  _CopyWithStubImpl$Query$staffVoice$Staff$characterMedia$edges$characters$name(
      this._res);

  TRes _res;

  call({
    String? userPreferred,
    String? $__typename,
  }) =>
      _res;
}

class Query$staffVoice$Staff$characterMedia$edges$characters$image {
  Query$staffVoice$Staff$characterMedia$edges$characters$image({
    this.large,
    this.$__typename = 'CharacterImage',
  });

  factory Query$staffVoice$Staff$characterMedia$edges$characters$image.fromJson(
      Map<String, dynamic> json) {
    final l$large = json['large'];
    final l$$__typename = json['__typename'];
    return Query$staffVoice$Staff$characterMedia$edges$characters$image(
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
    if (other
            is! Query$staffVoice$Staff$characterMedia$edges$characters$image ||
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

extension UtilityExtension$Query$staffVoice$Staff$characterMedia$edges$characters$image
    on Query$staffVoice$Staff$characterMedia$edges$characters$image {
  CopyWith$Query$staffVoice$Staff$characterMedia$edges$characters$image<
          Query$staffVoice$Staff$characterMedia$edges$characters$image>
      get copyWith =>
          CopyWith$Query$staffVoice$Staff$characterMedia$edges$characters$image(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$staffVoice$Staff$characterMedia$edges$characters$image<
    TRes> {
  factory CopyWith$Query$staffVoice$Staff$characterMedia$edges$characters$image(
    Query$staffVoice$Staff$characterMedia$edges$characters$image instance,
    TRes Function(Query$staffVoice$Staff$characterMedia$edges$characters$image)
        then,
  ) = _CopyWithImpl$Query$staffVoice$Staff$characterMedia$edges$characters$image;

  factory CopyWith$Query$staffVoice$Staff$characterMedia$edges$characters$image.stub(
          TRes res) =
      _CopyWithStubImpl$Query$staffVoice$Staff$characterMedia$edges$characters$image;

  TRes call({
    String? large,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$staffVoice$Staff$characterMedia$edges$characters$image<
        TRes>
    implements
        CopyWith$Query$staffVoice$Staff$characterMedia$edges$characters$image<
            TRes> {
  _CopyWithImpl$Query$staffVoice$Staff$characterMedia$edges$characters$image(
    this._instance,
    this._then,
  );

  final Query$staffVoice$Staff$characterMedia$edges$characters$image _instance;

  final TRes Function(
      Query$staffVoice$Staff$characterMedia$edges$characters$image) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? large = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$staffVoice$Staff$characterMedia$edges$characters$image(
        large: large == _undefined ? _instance.large : (large as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$staffVoice$Staff$characterMedia$edges$characters$image<
        TRes>
    implements
        CopyWith$Query$staffVoice$Staff$characterMedia$edges$characters$image<
            TRes> {
  _CopyWithStubImpl$Query$staffVoice$Staff$characterMedia$edges$characters$image(
      this._res);

  TRes _res;

  call({
    String? large,
    String? $__typename,
  }) =>
      _res;
}
