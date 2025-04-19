// GENERATED FILE
// DO NOT MODIFY
// ignore_for_file: type=lint
import '../fragments.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$FavoriteStudios {
  factory Variables$Query$FavoriteStudios({
    int? page,
    int? userId,
  }) =>
      Variables$Query$FavoriteStudios._({
        if (page != null) r'page': page,
        if (userId != null) r'userId': userId,
      });

  Variables$Query$FavoriteStudios._(this._$data);

  factory Variables$Query$FavoriteStudios.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('page')) {
      final l$page = data['page'];
      result$data['page'] = (l$page as int?);
    }
    if (data.containsKey('userId')) {
      final l$userId = data['userId'];
      result$data['userId'] = (l$userId as int?);
    }
    return Variables$Query$FavoriteStudios._(result$data);
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

  CopyWith$Variables$Query$FavoriteStudios<Variables$Query$FavoriteStudios>
      get copyWith => CopyWith$Variables$Query$FavoriteStudios(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$FavoriteStudios ||
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

abstract class CopyWith$Variables$Query$FavoriteStudios<TRes> {
  factory CopyWith$Variables$Query$FavoriteStudios(
    Variables$Query$FavoriteStudios instance,
    TRes Function(Variables$Query$FavoriteStudios) then,
  ) = _CopyWithImpl$Variables$Query$FavoriteStudios;

  factory CopyWith$Variables$Query$FavoriteStudios.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$FavoriteStudios;

  TRes call({
    int? page,
    int? userId,
  });
}

class _CopyWithImpl$Variables$Query$FavoriteStudios<TRes>
    implements CopyWith$Variables$Query$FavoriteStudios<TRes> {
  _CopyWithImpl$Variables$Query$FavoriteStudios(
    this._instance,
    this._then,
  );

  final Variables$Query$FavoriteStudios _instance;

  final TRes Function(Variables$Query$FavoriteStudios) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? page = _undefined,
    Object? userId = _undefined,
  }) =>
      _then(Variables$Query$FavoriteStudios._({
        ..._instance._$data,
        if (page != _undefined) 'page': (page as int?),
        if (userId != _undefined) 'userId': (userId as int?),
      }));
}

class _CopyWithStubImpl$Variables$Query$FavoriteStudios<TRes>
    implements CopyWith$Variables$Query$FavoriteStudios<TRes> {
  _CopyWithStubImpl$Variables$Query$FavoriteStudios(this._res);

  TRes _res;

  call({
    int? page,
    int? userId,
  }) =>
      _res;
}

class Query$FavoriteStudios {
  Query$FavoriteStudios({
    this.User,
    this.$__typename = 'Query',
  });

  factory Query$FavoriteStudios.fromJson(Map<String, dynamic> json) {
    final l$User = json['User'];
    final l$$__typename = json['__typename'];
    return Query$FavoriteStudios(
      User: l$User == null
          ? null
          : Query$FavoriteStudios$User.fromJson(
              (l$User as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$FavoriteStudios$User? User;

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
    if (other is! Query$FavoriteStudios || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$FavoriteStudios on Query$FavoriteStudios {
  CopyWith$Query$FavoriteStudios<Query$FavoriteStudios> get copyWith =>
      CopyWith$Query$FavoriteStudios(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$FavoriteStudios<TRes> {
  factory CopyWith$Query$FavoriteStudios(
    Query$FavoriteStudios instance,
    TRes Function(Query$FavoriteStudios) then,
  ) = _CopyWithImpl$Query$FavoriteStudios;

  factory CopyWith$Query$FavoriteStudios.stub(TRes res) =
      _CopyWithStubImpl$Query$FavoriteStudios;

  TRes call({
    Query$FavoriteStudios$User? User,
    String? $__typename,
  });
  CopyWith$Query$FavoriteStudios$User<TRes> get User;
}

class _CopyWithImpl$Query$FavoriteStudios<TRes>
    implements CopyWith$Query$FavoriteStudios<TRes> {
  _CopyWithImpl$Query$FavoriteStudios(
    this._instance,
    this._then,
  );

  final Query$FavoriteStudios _instance;

  final TRes Function(Query$FavoriteStudios) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? User = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FavoriteStudios(
        User: User == _undefined
            ? _instance.User
            : (User as Query$FavoriteStudios$User?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$FavoriteStudios$User<TRes> get User {
    final local$User = _instance.User;
    return local$User == null
        ? CopyWith$Query$FavoriteStudios$User.stub(_then(_instance))
        : CopyWith$Query$FavoriteStudios$User(local$User, (e) => call(User: e));
  }
}

class _CopyWithStubImpl$Query$FavoriteStudios<TRes>
    implements CopyWith$Query$FavoriteStudios<TRes> {
  _CopyWithStubImpl$Query$FavoriteStudios(this._res);

  TRes _res;

  call({
    Query$FavoriteStudios$User? User,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$FavoriteStudios$User<TRes> get User =>
      CopyWith$Query$FavoriteStudios$User.stub(_res);
}

const documentNodeQueryFavoriteStudios = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'FavoriteStudios'),
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
                name: NameNode(value: 'studios'),
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
                        name: NameNode(value: 'SearchResultStudio'),
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
  fragmentDefinitionSearchResultStudio,
]);
Query$FavoriteStudios _parserFn$Query$FavoriteStudios(
        Map<String, dynamic> data) =>
    Query$FavoriteStudios.fromJson(data);
typedef OnQueryComplete$Query$FavoriteStudios = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$FavoriteStudios?,
);

class Options$Query$FavoriteStudios
    extends graphql.QueryOptions<Query$FavoriteStudios> {
  Options$Query$FavoriteStudios({
    String? operationName,
    Variables$Query$FavoriteStudios? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$FavoriteStudios? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$FavoriteStudios? onComplete,
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
                    data == null ? null : _parserFn$Query$FavoriteStudios(data),
                  ),
          onError: onError,
          document: documentNodeQueryFavoriteStudios,
          parserFn: _parserFn$Query$FavoriteStudios,
        );

  final OnQueryComplete$Query$FavoriteStudios? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$FavoriteStudios
    extends graphql.WatchQueryOptions<Query$FavoriteStudios> {
  WatchOptions$Query$FavoriteStudios({
    String? operationName,
    Variables$Query$FavoriteStudios? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$FavoriteStudios? typedOptimisticResult,
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
          document: documentNodeQueryFavoriteStudios,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$FavoriteStudios,
        );
}

class FetchMoreOptions$Query$FavoriteStudios extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$FavoriteStudios({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$FavoriteStudios? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryFavoriteStudios,
        );
}

extension ClientExtension$Query$FavoriteStudios on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$FavoriteStudios>> query$FavoriteStudios(
          [Options$Query$FavoriteStudios? options]) async =>
      await this.query(options ?? Options$Query$FavoriteStudios());
  graphql.ObservableQuery<Query$FavoriteStudios> watchQuery$FavoriteStudios(
          [WatchOptions$Query$FavoriteStudios? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$FavoriteStudios());
  void writeQuery$FavoriteStudios({
    required Query$FavoriteStudios data,
    Variables$Query$FavoriteStudios? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryFavoriteStudios),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$FavoriteStudios? readQuery$FavoriteStudios({
    Variables$Query$FavoriteStudios? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation:
            graphql.Operation(document: documentNodeQueryFavoriteStudios),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$FavoriteStudios.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$FavoriteStudios> useQuery$FavoriteStudios(
        [Options$Query$FavoriteStudios? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$FavoriteStudios());
graphql.ObservableQuery<Query$FavoriteStudios> useWatchQuery$FavoriteStudios(
        [WatchOptions$Query$FavoriteStudios? options]) =>
    graphql_flutter
        .useWatchQuery(options ?? WatchOptions$Query$FavoriteStudios());

class Query$FavoriteStudios$Widget
    extends graphql_flutter.Query<Query$FavoriteStudios> {
  Query$FavoriteStudios$Widget({
    widgets.Key? key,
    Options$Query$FavoriteStudios? options,
    required graphql_flutter.QueryBuilder<Query$FavoriteStudios> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$FavoriteStudios(),
          builder: builder,
        );
}

class Query$FavoriteStudios$User {
  Query$FavoriteStudios$User({
    this.favourites,
    this.$__typename = 'User',
  });

  factory Query$FavoriteStudios$User.fromJson(Map<String, dynamic> json) {
    final l$favourites = json['favourites'];
    final l$$__typename = json['__typename'];
    return Query$FavoriteStudios$User(
      favourites: l$favourites == null
          ? null
          : Query$FavoriteStudios$User$favourites.fromJson(
              (l$favourites as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$FavoriteStudios$User$favourites? favourites;

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
    if (other is! Query$FavoriteStudios$User ||
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

extension UtilityExtension$Query$FavoriteStudios$User
    on Query$FavoriteStudios$User {
  CopyWith$Query$FavoriteStudios$User<Query$FavoriteStudios$User>
      get copyWith => CopyWith$Query$FavoriteStudios$User(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FavoriteStudios$User<TRes> {
  factory CopyWith$Query$FavoriteStudios$User(
    Query$FavoriteStudios$User instance,
    TRes Function(Query$FavoriteStudios$User) then,
  ) = _CopyWithImpl$Query$FavoriteStudios$User;

  factory CopyWith$Query$FavoriteStudios$User.stub(TRes res) =
      _CopyWithStubImpl$Query$FavoriteStudios$User;

  TRes call({
    Query$FavoriteStudios$User$favourites? favourites,
    String? $__typename,
  });
  CopyWith$Query$FavoriteStudios$User$favourites<TRes> get favourites;
}

class _CopyWithImpl$Query$FavoriteStudios$User<TRes>
    implements CopyWith$Query$FavoriteStudios$User<TRes> {
  _CopyWithImpl$Query$FavoriteStudios$User(
    this._instance,
    this._then,
  );

  final Query$FavoriteStudios$User _instance;

  final TRes Function(Query$FavoriteStudios$User) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? favourites = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FavoriteStudios$User(
        favourites: favourites == _undefined
            ? _instance.favourites
            : (favourites as Query$FavoriteStudios$User$favourites?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$FavoriteStudios$User$favourites<TRes> get favourites {
    final local$favourites = _instance.favourites;
    return local$favourites == null
        ? CopyWith$Query$FavoriteStudios$User$favourites.stub(_then(_instance))
        : CopyWith$Query$FavoriteStudios$User$favourites(
            local$favourites, (e) => call(favourites: e));
  }
}

class _CopyWithStubImpl$Query$FavoriteStudios$User<TRes>
    implements CopyWith$Query$FavoriteStudios$User<TRes> {
  _CopyWithStubImpl$Query$FavoriteStudios$User(this._res);

  TRes _res;

  call({
    Query$FavoriteStudios$User$favourites? favourites,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$FavoriteStudios$User$favourites<TRes> get favourites =>
      CopyWith$Query$FavoriteStudios$User$favourites.stub(_res);
}

class Query$FavoriteStudios$User$favourites {
  Query$FavoriteStudios$User$favourites({
    this.studios,
    this.$__typename = 'Favourites',
  });

  factory Query$FavoriteStudios$User$favourites.fromJson(
      Map<String, dynamic> json) {
    final l$studios = json['studios'];
    final l$$__typename = json['__typename'];
    return Query$FavoriteStudios$User$favourites(
      studios: l$studios == null
          ? null
          : Query$FavoriteStudios$User$favourites$studios.fromJson(
              (l$studios as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$FavoriteStudios$User$favourites$studios? studios;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$studios = studios;
    _resultData['studios'] = l$studios?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$studios = studios;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$studios,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$FavoriteStudios$User$favourites ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$studios = studios;
    final lOther$studios = other.studios;
    if (l$studios != lOther$studios) {
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

extension UtilityExtension$Query$FavoriteStudios$User$favourites
    on Query$FavoriteStudios$User$favourites {
  CopyWith$Query$FavoriteStudios$User$favourites<
          Query$FavoriteStudios$User$favourites>
      get copyWith => CopyWith$Query$FavoriteStudios$User$favourites(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FavoriteStudios$User$favourites<TRes> {
  factory CopyWith$Query$FavoriteStudios$User$favourites(
    Query$FavoriteStudios$User$favourites instance,
    TRes Function(Query$FavoriteStudios$User$favourites) then,
  ) = _CopyWithImpl$Query$FavoriteStudios$User$favourites;

  factory CopyWith$Query$FavoriteStudios$User$favourites.stub(TRes res) =
      _CopyWithStubImpl$Query$FavoriteStudios$User$favourites;

  TRes call({
    Query$FavoriteStudios$User$favourites$studios? studios,
    String? $__typename,
  });
  CopyWith$Query$FavoriteStudios$User$favourites$studios<TRes> get studios;
}

class _CopyWithImpl$Query$FavoriteStudios$User$favourites<TRes>
    implements CopyWith$Query$FavoriteStudios$User$favourites<TRes> {
  _CopyWithImpl$Query$FavoriteStudios$User$favourites(
    this._instance,
    this._then,
  );

  final Query$FavoriteStudios$User$favourites _instance;

  final TRes Function(Query$FavoriteStudios$User$favourites) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? studios = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FavoriteStudios$User$favourites(
        studios: studios == _undefined
            ? _instance.studios
            : (studios as Query$FavoriteStudios$User$favourites$studios?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$FavoriteStudios$User$favourites$studios<TRes> get studios {
    final local$studios = _instance.studios;
    return local$studios == null
        ? CopyWith$Query$FavoriteStudios$User$favourites$studios.stub(
            _then(_instance))
        : CopyWith$Query$FavoriteStudios$User$favourites$studios(
            local$studios, (e) => call(studios: e));
  }
}

class _CopyWithStubImpl$Query$FavoriteStudios$User$favourites<TRes>
    implements CopyWith$Query$FavoriteStudios$User$favourites<TRes> {
  _CopyWithStubImpl$Query$FavoriteStudios$User$favourites(this._res);

  TRes _res;

  call({
    Query$FavoriteStudios$User$favourites$studios? studios,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$FavoriteStudios$User$favourites$studios<TRes> get studios =>
      CopyWith$Query$FavoriteStudios$User$favourites$studios.stub(_res);
}

class Query$FavoriteStudios$User$favourites$studios {
  Query$FavoriteStudios$User$favourites$studios({
    this.pageInfo,
    this.nodes,
    this.$__typename = 'StudioConnection',
  });

  factory Query$FavoriteStudios$User$favourites$studios.fromJson(
      Map<String, dynamic> json) {
    final l$pageInfo = json['pageInfo'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$FavoriteStudios$User$favourites$studios(
      pageInfo: l$pageInfo == null
          ? null
          : Query$FavoriteStudios$User$favourites$studios$pageInfo.fromJson(
              (l$pageInfo as Map<String, dynamic>)),
      nodes: (l$nodes as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$SearchResultStudio.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$FavoriteStudios$User$favourites$studios$pageInfo? pageInfo;

  final List<Fragment$SearchResultStudio?>? nodes;

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
    if (other is! Query$FavoriteStudios$User$favourites$studios ||
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

extension UtilityExtension$Query$FavoriteStudios$User$favourites$studios
    on Query$FavoriteStudios$User$favourites$studios {
  CopyWith$Query$FavoriteStudios$User$favourites$studios<
          Query$FavoriteStudios$User$favourites$studios>
      get copyWith => CopyWith$Query$FavoriteStudios$User$favourites$studios(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FavoriteStudios$User$favourites$studios<TRes> {
  factory CopyWith$Query$FavoriteStudios$User$favourites$studios(
    Query$FavoriteStudios$User$favourites$studios instance,
    TRes Function(Query$FavoriteStudios$User$favourites$studios) then,
  ) = _CopyWithImpl$Query$FavoriteStudios$User$favourites$studios;

  factory CopyWith$Query$FavoriteStudios$User$favourites$studios.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FavoriteStudios$User$favourites$studios;

  TRes call({
    Query$FavoriteStudios$User$favourites$studios$pageInfo? pageInfo,
    List<Fragment$SearchResultStudio?>? nodes,
    String? $__typename,
  });
  CopyWith$Query$FavoriteStudios$User$favourites$studios$pageInfo<TRes>
      get pageInfo;
  TRes nodes(
      Iterable<Fragment$SearchResultStudio?>? Function(
              Iterable<
                  CopyWith$Fragment$SearchResultStudio<
                      Fragment$SearchResultStudio>?>?)
          _fn);
}

class _CopyWithImpl$Query$FavoriteStudios$User$favourites$studios<TRes>
    implements CopyWith$Query$FavoriteStudios$User$favourites$studios<TRes> {
  _CopyWithImpl$Query$FavoriteStudios$User$favourites$studios(
    this._instance,
    this._then,
  );

  final Query$FavoriteStudios$User$favourites$studios _instance;

  final TRes Function(Query$FavoriteStudios$User$favourites$studios) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pageInfo = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FavoriteStudios$User$favourites$studios(
        pageInfo: pageInfo == _undefined
            ? _instance.pageInfo
            : (pageInfo
                as Query$FavoriteStudios$User$favourites$studios$pageInfo?),
        nodes: nodes == _undefined
            ? _instance.nodes
            : (nodes as List<Fragment$SearchResultStudio?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$FavoriteStudios$User$favourites$studios$pageInfo<TRes>
      get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return local$pageInfo == null
        ? CopyWith$Query$FavoriteStudios$User$favourites$studios$pageInfo.stub(
            _then(_instance))
        : CopyWith$Query$FavoriteStudios$User$favourites$studios$pageInfo(
            local$pageInfo, (e) => call(pageInfo: e));
  }

  TRes nodes(
          Iterable<Fragment$SearchResultStudio?>? Function(
                  Iterable<
                      CopyWith$Fragment$SearchResultStudio<
                          Fragment$SearchResultStudio>?>?)
              _fn) =>
      call(
          nodes: _fn(_instance.nodes?.map((e) => e == null
              ? null
              : CopyWith$Fragment$SearchResultStudio(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$FavoriteStudios$User$favourites$studios<TRes>
    implements CopyWith$Query$FavoriteStudios$User$favourites$studios<TRes> {
  _CopyWithStubImpl$Query$FavoriteStudios$User$favourites$studios(this._res);

  TRes _res;

  call({
    Query$FavoriteStudios$User$favourites$studios$pageInfo? pageInfo,
    List<Fragment$SearchResultStudio?>? nodes,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$FavoriteStudios$User$favourites$studios$pageInfo<TRes>
      get pageInfo =>
          CopyWith$Query$FavoriteStudios$User$favourites$studios$pageInfo.stub(
              _res);

  nodes(_fn) => _res;
}

class Query$FavoriteStudios$User$favourites$studios$pageInfo {
  Query$FavoriteStudios$User$favourites$studios$pageInfo({
    this.hasNextPage,
    this.$__typename = 'PageInfo',
  });

  factory Query$FavoriteStudios$User$favourites$studios$pageInfo.fromJson(
      Map<String, dynamic> json) {
    final l$hasNextPage = json['hasNextPage'];
    final l$$__typename = json['__typename'];
    return Query$FavoriteStudios$User$favourites$studios$pageInfo(
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
    if (other is! Query$FavoriteStudios$User$favourites$studios$pageInfo ||
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

extension UtilityExtension$Query$FavoriteStudios$User$favourites$studios$pageInfo
    on Query$FavoriteStudios$User$favourites$studios$pageInfo {
  CopyWith$Query$FavoriteStudios$User$favourites$studios$pageInfo<
          Query$FavoriteStudios$User$favourites$studios$pageInfo>
      get copyWith =>
          CopyWith$Query$FavoriteStudios$User$favourites$studios$pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FavoriteStudios$User$favourites$studios$pageInfo<
    TRes> {
  factory CopyWith$Query$FavoriteStudios$User$favourites$studios$pageInfo(
    Query$FavoriteStudios$User$favourites$studios$pageInfo instance,
    TRes Function(Query$FavoriteStudios$User$favourites$studios$pageInfo) then,
  ) = _CopyWithImpl$Query$FavoriteStudios$User$favourites$studios$pageInfo;

  factory CopyWith$Query$FavoriteStudios$User$favourites$studios$pageInfo.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FavoriteStudios$User$favourites$studios$pageInfo;

  TRes call({
    bool? hasNextPage,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FavoriteStudios$User$favourites$studios$pageInfo<TRes>
    implements
        CopyWith$Query$FavoriteStudios$User$favourites$studios$pageInfo<TRes> {
  _CopyWithImpl$Query$FavoriteStudios$User$favourites$studios$pageInfo(
    this._instance,
    this._then,
  );

  final Query$FavoriteStudios$User$favourites$studios$pageInfo _instance;

  final TRes Function(Query$FavoriteStudios$User$favourites$studios$pageInfo)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasNextPage = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FavoriteStudios$User$favourites$studios$pageInfo(
        hasNextPage: hasNextPage == _undefined
            ? _instance.hasNextPage
            : (hasNextPage as bool?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FavoriteStudios$User$favourites$studios$pageInfo<
        TRes>
    implements
        CopyWith$Query$FavoriteStudios$User$favourites$studios$pageInfo<TRes> {
  _CopyWithStubImpl$Query$FavoriteStudios$User$favourites$studios$pageInfo(
      this._res);

  TRes _res;

  call({
    bool? hasNextPage,
    String? $__typename,
  }) =>
      _res;
}
