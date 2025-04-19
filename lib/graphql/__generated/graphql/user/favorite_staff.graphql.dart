// GENERATED FILE
// DO NOT MODIFY
// ignore_for_file: type=lint
import '../fragments.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$FavoriteStaff {
  factory Variables$Query$FavoriteStaff({
    int? page,
    int? userId,
  }) =>
      Variables$Query$FavoriteStaff._({
        if (page != null) r'page': page,
        if (userId != null) r'userId': userId,
      });

  Variables$Query$FavoriteStaff._(this._$data);

  factory Variables$Query$FavoriteStaff.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('page')) {
      final l$page = data['page'];
      result$data['page'] = (l$page as int?);
    }
    if (data.containsKey('userId')) {
      final l$userId = data['userId'];
      result$data['userId'] = (l$userId as int?);
    }
    return Variables$Query$FavoriteStaff._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get page => (_$data['page'] as int?);

  int? get userId => (_$data['userId'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('page')) {
      final l$page = page;
      result$data['page'] = l$page;
    }
    if (_$data.containsKey('userId')) {
      final l$userId = userId;
      result$data['userId'] = l$userId;
    }
    return result$data;
  }

  CopyWith$Variables$Query$FavoriteStaff<Variables$Query$FavoriteStaff>
      get copyWith => CopyWith$Variables$Query$FavoriteStaff(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$FavoriteStaff ||
        runtimeType != other.runtimeType) {
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
    final l$userId = userId;
    final lOther$userId = other.userId;
    if (_$data.containsKey('userId') != other._$data.containsKey('userId')) {
      return false;
    }
    if (l$userId != lOther$userId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$page = page;
    final l$userId = userId;
    return Object.hashAll([
      _$data.containsKey('page') ? l$page : const {},
      _$data.containsKey('userId') ? l$userId : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$FavoriteStaff<TRes> {
  factory CopyWith$Variables$Query$FavoriteStaff(
    Variables$Query$FavoriteStaff instance,
    TRes Function(Variables$Query$FavoriteStaff) then,
  ) = _CopyWithImpl$Variables$Query$FavoriteStaff;

  factory CopyWith$Variables$Query$FavoriteStaff.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$FavoriteStaff;

  TRes call({
    int? page,
    int? userId,
  });
}

class _CopyWithImpl$Variables$Query$FavoriteStaff<TRes>
    implements CopyWith$Variables$Query$FavoriteStaff<TRes> {
  _CopyWithImpl$Variables$Query$FavoriteStaff(
    this._instance,
    this._then,
  );

  final Variables$Query$FavoriteStaff _instance;

  final TRes Function(Variables$Query$FavoriteStaff) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? page = _undefined,
    Object? userId = _undefined,
  }) =>
      _then(Variables$Query$FavoriteStaff._({
        ..._instance._$data,
        if (page != _undefined) 'page': (page as int?),
        if (userId != _undefined) 'userId': (userId as int?),
      }));
}

class _CopyWithStubImpl$Variables$Query$FavoriteStaff<TRes>
    implements CopyWith$Variables$Query$FavoriteStaff<TRes> {
  _CopyWithStubImpl$Variables$Query$FavoriteStaff(this._res);

  TRes _res;

  call({
    int? page,
    int? userId,
  }) =>
      _res;
}

class Query$FavoriteStaff {
  Query$FavoriteStaff({
    this.User,
    this.$__typename = 'Query',
  });

  factory Query$FavoriteStaff.fromJson(Map<String, dynamic> json) {
    final l$User = json['User'];
    final l$$__typename = json['__typename'];
    return Query$FavoriteStaff(
      User: l$User == null
          ? null
          : Query$FavoriteStaff$User.fromJson((l$User as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$FavoriteStaff$User? User;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$User = User;
    _resultData['User'] = l$User?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$User = User;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$User,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$FavoriteStaff || runtimeType != other.runtimeType) {
      return false;
    }
    final l$User = User;
    final lOther$User = other.User;
    if (l$User != lOther$User) {
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

extension UtilityExtension$Query$FavoriteStaff on Query$FavoriteStaff {
  CopyWith$Query$FavoriteStaff<Query$FavoriteStaff> get copyWith =>
      CopyWith$Query$FavoriteStaff(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$FavoriteStaff<TRes> {
  factory CopyWith$Query$FavoriteStaff(
    Query$FavoriteStaff instance,
    TRes Function(Query$FavoriteStaff) then,
  ) = _CopyWithImpl$Query$FavoriteStaff;

  factory CopyWith$Query$FavoriteStaff.stub(TRes res) =
      _CopyWithStubImpl$Query$FavoriteStaff;

  TRes call({
    Query$FavoriteStaff$User? User,
    String? $__typename,
  });
  CopyWith$Query$FavoriteStaff$User<TRes> get User;
}

class _CopyWithImpl$Query$FavoriteStaff<TRes>
    implements CopyWith$Query$FavoriteStaff<TRes> {
  _CopyWithImpl$Query$FavoriteStaff(
    this._instance,
    this._then,
  );

  final Query$FavoriteStaff _instance;

  final TRes Function(Query$FavoriteStaff) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? User = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FavoriteStaff(
        User: User == _undefined
            ? _instance.User
            : (User as Query$FavoriteStaff$User?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$FavoriteStaff$User<TRes> get User {
    final local$User = _instance.User;
    return local$User == null
        ? CopyWith$Query$FavoriteStaff$User.stub(_then(_instance))
        : CopyWith$Query$FavoriteStaff$User(local$User, (e) => call(User: e));
  }
}

class _CopyWithStubImpl$Query$FavoriteStaff<TRes>
    implements CopyWith$Query$FavoriteStaff<TRes> {
  _CopyWithStubImpl$Query$FavoriteStaff(this._res);

  TRes _res;

  call({
    Query$FavoriteStaff$User? User,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$FavoriteStaff$User<TRes> get User =>
      CopyWith$Query$FavoriteStaff$User.stub(_res);
}

const documentNodeQueryFavoriteStaff = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'FavoriteStaff'),
    variableDefinitions: [
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
        variable: VariableNode(name: NameNode(value: 'userId')),
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
        name: NameNode(value: 'User'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'userId')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'favourites'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'staff'),
                alias: null,
                arguments: [
                  ArgumentNode(
                    name: NameNode(value: 'page'),
                    value: VariableNode(name: NameNode(value: 'page')),
                  ),
                  ArgumentNode(
                    name: NameNode(value: 'perPage'),
                    value: IntValueNode(value: '30'),
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
                    name: NameNode(value: 'nodes'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FragmentSpreadNode(
                        name: NameNode(value: 'StaffShort'),
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
  fragmentDefinitionStaffShort,
]);
Query$FavoriteStaff _parserFn$Query$FavoriteStaff(Map<String, dynamic> data) =>
    Query$FavoriteStaff.fromJson(data);
typedef OnQueryComplete$Query$FavoriteStaff = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$FavoriteStaff?,
);

class Options$Query$FavoriteStaff
    extends graphql.QueryOptions<Query$FavoriteStaff> {
  Options$Query$FavoriteStaff({
    String? operationName,
    Variables$Query$FavoriteStaff? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$FavoriteStaff? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$FavoriteStaff? onComplete,
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
                    data == null ? null : _parserFn$Query$FavoriteStaff(data),
                  ),
          onError: onError,
          document: documentNodeQueryFavoriteStaff,
          parserFn: _parserFn$Query$FavoriteStaff,
        );

  final OnQueryComplete$Query$FavoriteStaff? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$FavoriteStaff
    extends graphql.WatchQueryOptions<Query$FavoriteStaff> {
  WatchOptions$Query$FavoriteStaff({
    String? operationName,
    Variables$Query$FavoriteStaff? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$FavoriteStaff? typedOptimisticResult,
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
          document: documentNodeQueryFavoriteStaff,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$FavoriteStaff,
        );
}

class FetchMoreOptions$Query$FavoriteStaff extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$FavoriteStaff({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$FavoriteStaff? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryFavoriteStaff,
        );
}

extension ClientExtension$Query$FavoriteStaff on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$FavoriteStaff>> query$FavoriteStaff(
          [Options$Query$FavoriteStaff? options]) async =>
      await this.query(options ?? Options$Query$FavoriteStaff());
  graphql.ObservableQuery<Query$FavoriteStaff> watchQuery$FavoriteStaff(
          [WatchOptions$Query$FavoriteStaff? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$FavoriteStaff());
  void writeQuery$FavoriteStaff({
    required Query$FavoriteStaff data,
    Variables$Query$FavoriteStaff? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryFavoriteStaff),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$FavoriteStaff? readQuery$FavoriteStaff({
    Variables$Query$FavoriteStaff? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryFavoriteStaff),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$FavoriteStaff.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$FavoriteStaff> useQuery$FavoriteStaff(
        [Options$Query$FavoriteStaff? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$FavoriteStaff());
graphql.ObservableQuery<Query$FavoriteStaff> useWatchQuery$FavoriteStaff(
        [WatchOptions$Query$FavoriteStaff? options]) =>
    graphql_flutter
        .useWatchQuery(options ?? WatchOptions$Query$FavoriteStaff());

class Query$FavoriteStaff$Widget
    extends graphql_flutter.Query<Query$FavoriteStaff> {
  Query$FavoriteStaff$Widget({
    widgets.Key? key,
    Options$Query$FavoriteStaff? options,
    required graphql_flutter.QueryBuilder<Query$FavoriteStaff> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$FavoriteStaff(),
          builder: builder,
        );
}

class Query$FavoriteStaff$User {
  Query$FavoriteStaff$User({
    this.favourites,
    this.$__typename = 'User',
  });

  factory Query$FavoriteStaff$User.fromJson(Map<String, dynamic> json) {
    final l$favourites = json['favourites'];
    final l$$__typename = json['__typename'];
    return Query$FavoriteStaff$User(
      favourites: l$favourites == null
          ? null
          : Query$FavoriteStaff$User$favourites.fromJson(
              (l$favourites as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$FavoriteStaff$User$favourites? favourites;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$favourites = favourites;
    _resultData['favourites'] = l$favourites?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$favourites = favourites;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$favourites,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$FavoriteStaff$User ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$favourites = favourites;
    final lOther$favourites = other.favourites;
    if (l$favourites != lOther$favourites) {
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

extension UtilityExtension$Query$FavoriteStaff$User
    on Query$FavoriteStaff$User {
  CopyWith$Query$FavoriteStaff$User<Query$FavoriteStaff$User> get copyWith =>
      CopyWith$Query$FavoriteStaff$User(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$FavoriteStaff$User<TRes> {
  factory CopyWith$Query$FavoriteStaff$User(
    Query$FavoriteStaff$User instance,
    TRes Function(Query$FavoriteStaff$User) then,
  ) = _CopyWithImpl$Query$FavoriteStaff$User;

  factory CopyWith$Query$FavoriteStaff$User.stub(TRes res) =
      _CopyWithStubImpl$Query$FavoriteStaff$User;

  TRes call({
    Query$FavoriteStaff$User$favourites? favourites,
    String? $__typename,
  });
  CopyWith$Query$FavoriteStaff$User$favourites<TRes> get favourites;
}

class _CopyWithImpl$Query$FavoriteStaff$User<TRes>
    implements CopyWith$Query$FavoriteStaff$User<TRes> {
  _CopyWithImpl$Query$FavoriteStaff$User(
    this._instance,
    this._then,
  );

  final Query$FavoriteStaff$User _instance;

  final TRes Function(Query$FavoriteStaff$User) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? favourites = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FavoriteStaff$User(
        favourites: favourites == _undefined
            ? _instance.favourites
            : (favourites as Query$FavoriteStaff$User$favourites?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$FavoriteStaff$User$favourites<TRes> get favourites {
    final local$favourites = _instance.favourites;
    return local$favourites == null
        ? CopyWith$Query$FavoriteStaff$User$favourites.stub(_then(_instance))
        : CopyWith$Query$FavoriteStaff$User$favourites(
            local$favourites, (e) => call(favourites: e));
  }
}

class _CopyWithStubImpl$Query$FavoriteStaff$User<TRes>
    implements CopyWith$Query$FavoriteStaff$User<TRes> {
  _CopyWithStubImpl$Query$FavoriteStaff$User(this._res);

  TRes _res;

  call({
    Query$FavoriteStaff$User$favourites? favourites,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$FavoriteStaff$User$favourites<TRes> get favourites =>
      CopyWith$Query$FavoriteStaff$User$favourites.stub(_res);
}

class Query$FavoriteStaff$User$favourites {
  Query$FavoriteStaff$User$favourites({
    this.staff,
    this.$__typename = 'Favourites',
  });

  factory Query$FavoriteStaff$User$favourites.fromJson(
      Map<String, dynamic> json) {
    final l$staff = json['staff'];
    final l$$__typename = json['__typename'];
    return Query$FavoriteStaff$User$favourites(
      staff: l$staff == null
          ? null
          : Query$FavoriteStaff$User$favourites$staff.fromJson(
              (l$staff as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$FavoriteStaff$User$favourites$staff? staff;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$staff = staff;
    _resultData['staff'] = l$staff?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$staff = staff;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$staff,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$FavoriteStaff$User$favourites ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$FavoriteStaff$User$favourites
    on Query$FavoriteStaff$User$favourites {
  CopyWith$Query$FavoriteStaff$User$favourites<
          Query$FavoriteStaff$User$favourites>
      get copyWith => CopyWith$Query$FavoriteStaff$User$favourites(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FavoriteStaff$User$favourites<TRes> {
  factory CopyWith$Query$FavoriteStaff$User$favourites(
    Query$FavoriteStaff$User$favourites instance,
    TRes Function(Query$FavoriteStaff$User$favourites) then,
  ) = _CopyWithImpl$Query$FavoriteStaff$User$favourites;

  factory CopyWith$Query$FavoriteStaff$User$favourites.stub(TRes res) =
      _CopyWithStubImpl$Query$FavoriteStaff$User$favourites;

  TRes call({
    Query$FavoriteStaff$User$favourites$staff? staff,
    String? $__typename,
  });
  CopyWith$Query$FavoriteStaff$User$favourites$staff<TRes> get staff;
}

class _CopyWithImpl$Query$FavoriteStaff$User$favourites<TRes>
    implements CopyWith$Query$FavoriteStaff$User$favourites<TRes> {
  _CopyWithImpl$Query$FavoriteStaff$User$favourites(
    this._instance,
    this._then,
  );

  final Query$FavoriteStaff$User$favourites _instance;

  final TRes Function(Query$FavoriteStaff$User$favourites) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? staff = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FavoriteStaff$User$favourites(
        staff: staff == _undefined
            ? _instance.staff
            : (staff as Query$FavoriteStaff$User$favourites$staff?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$FavoriteStaff$User$favourites$staff<TRes> get staff {
    final local$staff = _instance.staff;
    return local$staff == null
        ? CopyWith$Query$FavoriteStaff$User$favourites$staff.stub(
            _then(_instance))
        : CopyWith$Query$FavoriteStaff$User$favourites$staff(
            local$staff, (e) => call(staff: e));
  }
}

class _CopyWithStubImpl$Query$FavoriteStaff$User$favourites<TRes>
    implements CopyWith$Query$FavoriteStaff$User$favourites<TRes> {
  _CopyWithStubImpl$Query$FavoriteStaff$User$favourites(this._res);

  TRes _res;

  call({
    Query$FavoriteStaff$User$favourites$staff? staff,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$FavoriteStaff$User$favourites$staff<TRes> get staff =>
      CopyWith$Query$FavoriteStaff$User$favourites$staff.stub(_res);
}

class Query$FavoriteStaff$User$favourites$staff {
  Query$FavoriteStaff$User$favourites$staff({
    this.pageInfo,
    this.nodes,
    this.$__typename = 'StaffConnection',
  });

  factory Query$FavoriteStaff$User$favourites$staff.fromJson(
      Map<String, dynamic> json) {
    final l$pageInfo = json['pageInfo'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$FavoriteStaff$User$favourites$staff(
      pageInfo: l$pageInfo == null
          ? null
          : Query$FavoriteStaff$User$favourites$staff$pageInfo.fromJson(
              (l$pageInfo as Map<String, dynamic>)),
      nodes: (l$nodes as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$StaffShort.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$FavoriteStaff$User$favourites$staff$pageInfo? pageInfo;

  final List<Fragment$StaffShort?>? nodes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$pageInfo = pageInfo;
    _resultData['pageInfo'] = l$pageInfo?.toJson();
    final l$nodes = nodes;
    _resultData['nodes'] = l$nodes?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$pageInfo = pageInfo;
    final l$nodes = nodes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$pageInfo,
      l$nodes == null ? null : Object.hashAll(l$nodes.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$FavoriteStaff$User$favourites$staff ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$pageInfo = pageInfo;
    final lOther$pageInfo = other.pageInfo;
    if (l$pageInfo != lOther$pageInfo) {
      return false;
    }
    final l$nodes = nodes;
    final lOther$nodes = other.nodes;
    if (l$nodes != null && lOther$nodes != null) {
      if (l$nodes.length != lOther$nodes.length) {
        return false;
      }
      for (int i = 0; i < l$nodes.length; i++) {
        final l$nodes$entry = l$nodes[i];
        final lOther$nodes$entry = lOther$nodes[i];
        if (l$nodes$entry != lOther$nodes$entry) {
          return false;
        }
      }
    } else if (l$nodes != lOther$nodes) {
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

extension UtilityExtension$Query$FavoriteStaff$User$favourites$staff
    on Query$FavoriteStaff$User$favourites$staff {
  CopyWith$Query$FavoriteStaff$User$favourites$staff<
          Query$FavoriteStaff$User$favourites$staff>
      get copyWith => CopyWith$Query$FavoriteStaff$User$favourites$staff(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FavoriteStaff$User$favourites$staff<TRes> {
  factory CopyWith$Query$FavoriteStaff$User$favourites$staff(
    Query$FavoriteStaff$User$favourites$staff instance,
    TRes Function(Query$FavoriteStaff$User$favourites$staff) then,
  ) = _CopyWithImpl$Query$FavoriteStaff$User$favourites$staff;

  factory CopyWith$Query$FavoriteStaff$User$favourites$staff.stub(TRes res) =
      _CopyWithStubImpl$Query$FavoriteStaff$User$favourites$staff;

  TRes call({
    Query$FavoriteStaff$User$favourites$staff$pageInfo? pageInfo,
    List<Fragment$StaffShort?>? nodes,
    String? $__typename,
  });
  CopyWith$Query$FavoriteStaff$User$favourites$staff$pageInfo<TRes>
      get pageInfo;
  TRes nodes(
      Iterable<Fragment$StaffShort?>? Function(
              Iterable<CopyWith$Fragment$StaffShort<Fragment$StaffShort>?>?)
          _fn);
}

class _CopyWithImpl$Query$FavoriteStaff$User$favourites$staff<TRes>
    implements CopyWith$Query$FavoriteStaff$User$favourites$staff<TRes> {
  _CopyWithImpl$Query$FavoriteStaff$User$favourites$staff(
    this._instance,
    this._then,
  );

  final Query$FavoriteStaff$User$favourites$staff _instance;

  final TRes Function(Query$FavoriteStaff$User$favourites$staff) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pageInfo = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FavoriteStaff$User$favourites$staff(
        pageInfo: pageInfo == _undefined
            ? _instance.pageInfo
            : (pageInfo as Query$FavoriteStaff$User$favourites$staff$pageInfo?),
        nodes: nodes == _undefined
            ? _instance.nodes
            : (nodes as List<Fragment$StaffShort?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$FavoriteStaff$User$favourites$staff$pageInfo<TRes>
      get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return local$pageInfo == null
        ? CopyWith$Query$FavoriteStaff$User$favourites$staff$pageInfo.stub(
            _then(_instance))
        : CopyWith$Query$FavoriteStaff$User$favourites$staff$pageInfo(
            local$pageInfo, (e) => call(pageInfo: e));
  }

  TRes nodes(
          Iterable<Fragment$StaffShort?>? Function(
                  Iterable<CopyWith$Fragment$StaffShort<Fragment$StaffShort>?>?)
              _fn) =>
      call(
          nodes: _fn(_instance.nodes?.map((e) => e == null
              ? null
              : CopyWith$Fragment$StaffShort(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$FavoriteStaff$User$favourites$staff<TRes>
    implements CopyWith$Query$FavoriteStaff$User$favourites$staff<TRes> {
  _CopyWithStubImpl$Query$FavoriteStaff$User$favourites$staff(this._res);

  TRes _res;

  call({
    Query$FavoriteStaff$User$favourites$staff$pageInfo? pageInfo,
    List<Fragment$StaffShort?>? nodes,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$FavoriteStaff$User$favourites$staff$pageInfo<TRes>
      get pageInfo =>
          CopyWith$Query$FavoriteStaff$User$favourites$staff$pageInfo.stub(
              _res);

  nodes(_fn) => _res;
}

class Query$FavoriteStaff$User$favourites$staff$pageInfo {
  Query$FavoriteStaff$User$favourites$staff$pageInfo({
    this.hasNextPage,
    this.$__typename = 'PageInfo',
  });

  factory Query$FavoriteStaff$User$favourites$staff$pageInfo.fromJson(
      Map<String, dynamic> json) {
    final l$hasNextPage = json['hasNextPage'];
    final l$$__typename = json['__typename'];
    return Query$FavoriteStaff$User$favourites$staff$pageInfo(
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
    if (other is! Query$FavoriteStaff$User$favourites$staff$pageInfo ||
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

extension UtilityExtension$Query$FavoriteStaff$User$favourites$staff$pageInfo
    on Query$FavoriteStaff$User$favourites$staff$pageInfo {
  CopyWith$Query$FavoriteStaff$User$favourites$staff$pageInfo<
          Query$FavoriteStaff$User$favourites$staff$pageInfo>
      get copyWith =>
          CopyWith$Query$FavoriteStaff$User$favourites$staff$pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FavoriteStaff$User$favourites$staff$pageInfo<
    TRes> {
  factory CopyWith$Query$FavoriteStaff$User$favourites$staff$pageInfo(
    Query$FavoriteStaff$User$favourites$staff$pageInfo instance,
    TRes Function(Query$FavoriteStaff$User$favourites$staff$pageInfo) then,
  ) = _CopyWithImpl$Query$FavoriteStaff$User$favourites$staff$pageInfo;

  factory CopyWith$Query$FavoriteStaff$User$favourites$staff$pageInfo.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FavoriteStaff$User$favourites$staff$pageInfo;

  TRes call({
    bool? hasNextPage,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FavoriteStaff$User$favourites$staff$pageInfo<TRes>
    implements
        CopyWith$Query$FavoriteStaff$User$favourites$staff$pageInfo<TRes> {
  _CopyWithImpl$Query$FavoriteStaff$User$favourites$staff$pageInfo(
    this._instance,
    this._then,
  );

  final Query$FavoriteStaff$User$favourites$staff$pageInfo _instance;

  final TRes Function(Query$FavoriteStaff$User$favourites$staff$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasNextPage = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FavoriteStaff$User$favourites$staff$pageInfo(
        hasNextPage: hasNextPage == _undefined
            ? _instance.hasNextPage
            : (hasNextPage as bool?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FavoriteStaff$User$favourites$staff$pageInfo<TRes>
    implements
        CopyWith$Query$FavoriteStaff$User$favourites$staff$pageInfo<TRes> {
  _CopyWithStubImpl$Query$FavoriteStaff$User$favourites$staff$pageInfo(
      this._res);

  TRes _res;

  call({
    bool? hasNextPage,
    String? $__typename,
  }) =>
      _res;
}
