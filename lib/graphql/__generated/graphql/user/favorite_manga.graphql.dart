// GENERATED FILE
// DO NOT MODIFY
// ignore_for_file: type=lint
import '../fragments.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$FavoriteManga {
  factory Variables$Query$FavoriteManga({
    int? page,
    int? userId,
  }) =>
      Variables$Query$FavoriteManga._({
        if (page != null) r'page': page,
        if (userId != null) r'userId': userId,
      });

  Variables$Query$FavoriteManga._(this._$data);

  factory Variables$Query$FavoriteManga.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('page')) {
      final l$page = data['page'];
      result$data['page'] = (l$page as int?);
    }
    if (data.containsKey('userId')) {
      final l$userId = data['userId'];
      result$data['userId'] = (l$userId as int?);
    }
    return Variables$Query$FavoriteManga._(result$data);
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

  CopyWith$Variables$Query$FavoriteManga<Variables$Query$FavoriteManga>
      get copyWith => CopyWith$Variables$Query$FavoriteManga(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$FavoriteManga) ||
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

abstract class CopyWith$Variables$Query$FavoriteManga<TRes> {
  factory CopyWith$Variables$Query$FavoriteManga(
    Variables$Query$FavoriteManga instance,
    TRes Function(Variables$Query$FavoriteManga) then,
  ) = _CopyWithImpl$Variables$Query$FavoriteManga;

  factory CopyWith$Variables$Query$FavoriteManga.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$FavoriteManga;

  TRes call({
    int? page,
    int? userId,
  });
}

class _CopyWithImpl$Variables$Query$FavoriteManga<TRes>
    implements CopyWith$Variables$Query$FavoriteManga<TRes> {
  _CopyWithImpl$Variables$Query$FavoriteManga(
    this._instance,
    this._then,
  );

  final Variables$Query$FavoriteManga _instance;

  final TRes Function(Variables$Query$FavoriteManga) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? page = _undefined,
    Object? userId = _undefined,
  }) =>
      _then(Variables$Query$FavoriteManga._({
        ..._instance._$data,
        if (page != _undefined) 'page': (page as int?),
        if (userId != _undefined) 'userId': (userId as int?),
      }));
}

class _CopyWithStubImpl$Variables$Query$FavoriteManga<TRes>
    implements CopyWith$Variables$Query$FavoriteManga<TRes> {
  _CopyWithStubImpl$Variables$Query$FavoriteManga(this._res);

  TRes _res;

  call({
    int? page,
    int? userId,
  }) =>
      _res;
}

class Query$FavoriteManga {
  Query$FavoriteManga({
    this.User,
    this.$__typename = 'Query',
  });

  factory Query$FavoriteManga.fromJson(Map<String, dynamic> json) {
    final l$User = json['User'];
    final l$$__typename = json['__typename'];
    return Query$FavoriteManga(
      User: l$User == null
          ? null
          : Query$FavoriteManga$User.fromJson((l$User as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$FavoriteManga$User? User;

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
    if (!(other is Query$FavoriteManga) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$FavoriteManga on Query$FavoriteManga {
  CopyWith$Query$FavoriteManga<Query$FavoriteManga> get copyWith =>
      CopyWith$Query$FavoriteManga(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$FavoriteManga<TRes> {
  factory CopyWith$Query$FavoriteManga(
    Query$FavoriteManga instance,
    TRes Function(Query$FavoriteManga) then,
  ) = _CopyWithImpl$Query$FavoriteManga;

  factory CopyWith$Query$FavoriteManga.stub(TRes res) =
      _CopyWithStubImpl$Query$FavoriteManga;

  TRes call({
    Query$FavoriteManga$User? User,
    String? $__typename,
  });
  CopyWith$Query$FavoriteManga$User<TRes> get User;
}

class _CopyWithImpl$Query$FavoriteManga<TRes>
    implements CopyWith$Query$FavoriteManga<TRes> {
  _CopyWithImpl$Query$FavoriteManga(
    this._instance,
    this._then,
  );

  final Query$FavoriteManga _instance;

  final TRes Function(Query$FavoriteManga) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? User = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FavoriteManga(
        User: User == _undefined
            ? _instance.User
            : (User as Query$FavoriteManga$User?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$FavoriteManga$User<TRes> get User {
    final local$User = _instance.User;
    return local$User == null
        ? CopyWith$Query$FavoriteManga$User.stub(_then(_instance))
        : CopyWith$Query$FavoriteManga$User(local$User, (e) => call(User: e));
  }
}

class _CopyWithStubImpl$Query$FavoriteManga<TRes>
    implements CopyWith$Query$FavoriteManga<TRes> {
  _CopyWithStubImpl$Query$FavoriteManga(this._res);

  TRes _res;

  call({
    Query$FavoriteManga$User? User,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$FavoriteManga$User<TRes> get User =>
      CopyWith$Query$FavoriteManga$User.stub(_res);
}

const documentNodeQueryFavoriteManga = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'FavoriteManga'),
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
                name: NameNode(value: 'manga'),
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
  fragmentDefinitionMediaShort,
  fragmentDefinitionFuzzyDate,
]);
Query$FavoriteManga _parserFn$Query$FavoriteManga(Map<String, dynamic> data) =>
    Query$FavoriteManga.fromJson(data);
typedef OnQueryComplete$Query$FavoriteManga = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$FavoriteManga?,
);

class Options$Query$FavoriteManga
    extends graphql.QueryOptions<Query$FavoriteManga> {
  Options$Query$FavoriteManga({
    String? operationName,
    Variables$Query$FavoriteManga? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$FavoriteManga? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$FavoriteManga? onComplete,
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
                    data == null ? null : _parserFn$Query$FavoriteManga(data),
                  ),
          onError: onError,
          document: documentNodeQueryFavoriteManga,
          parserFn: _parserFn$Query$FavoriteManga,
        );

  final OnQueryComplete$Query$FavoriteManga? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$FavoriteManga
    extends graphql.WatchQueryOptions<Query$FavoriteManga> {
  WatchOptions$Query$FavoriteManga({
    String? operationName,
    Variables$Query$FavoriteManga? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$FavoriteManga? typedOptimisticResult,
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
          document: documentNodeQueryFavoriteManga,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$FavoriteManga,
        );
}

class FetchMoreOptions$Query$FavoriteManga extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$FavoriteManga({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$FavoriteManga? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryFavoriteManga,
        );
}

extension ClientExtension$Query$FavoriteManga on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$FavoriteManga>> query$FavoriteManga(
          [Options$Query$FavoriteManga? options]) async =>
      await this.query(options ?? Options$Query$FavoriteManga());
  graphql.ObservableQuery<Query$FavoriteManga> watchQuery$FavoriteManga(
          [WatchOptions$Query$FavoriteManga? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$FavoriteManga());
  void writeQuery$FavoriteManga({
    required Query$FavoriteManga data,
    Variables$Query$FavoriteManga? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryFavoriteManga),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$FavoriteManga? readQuery$FavoriteManga({
    Variables$Query$FavoriteManga? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryFavoriteManga),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$FavoriteManga.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$FavoriteManga> useQuery$FavoriteManga(
        [Options$Query$FavoriteManga? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$FavoriteManga());
graphql.ObservableQuery<Query$FavoriteManga> useWatchQuery$FavoriteManga(
        [WatchOptions$Query$FavoriteManga? options]) =>
    graphql_flutter
        .useWatchQuery(options ?? WatchOptions$Query$FavoriteManga());

class Query$FavoriteManga$Widget
    extends graphql_flutter.Query<Query$FavoriteManga> {
  Query$FavoriteManga$Widget({
    widgets.Key? key,
    Options$Query$FavoriteManga? options,
    required graphql_flutter.QueryBuilder<Query$FavoriteManga> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$FavoriteManga(),
          builder: builder,
        );
}

class Query$FavoriteManga$User {
  Query$FavoriteManga$User({
    this.favourites,
    this.$__typename = 'User',
  });

  factory Query$FavoriteManga$User.fromJson(Map<String, dynamic> json) {
    final l$favourites = json['favourites'];
    final l$$__typename = json['__typename'];
    return Query$FavoriteManga$User(
      favourites: l$favourites == null
          ? null
          : Query$FavoriteManga$User$favourites.fromJson(
              (l$favourites as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$FavoriteManga$User$favourites? favourites;

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
    if (!(other is Query$FavoriteManga$User) ||
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

extension UtilityExtension$Query$FavoriteManga$User
    on Query$FavoriteManga$User {
  CopyWith$Query$FavoriteManga$User<Query$FavoriteManga$User> get copyWith =>
      CopyWith$Query$FavoriteManga$User(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$FavoriteManga$User<TRes> {
  factory CopyWith$Query$FavoriteManga$User(
    Query$FavoriteManga$User instance,
    TRes Function(Query$FavoriteManga$User) then,
  ) = _CopyWithImpl$Query$FavoriteManga$User;

  factory CopyWith$Query$FavoriteManga$User.stub(TRes res) =
      _CopyWithStubImpl$Query$FavoriteManga$User;

  TRes call({
    Query$FavoriteManga$User$favourites? favourites,
    String? $__typename,
  });
  CopyWith$Query$FavoriteManga$User$favourites<TRes> get favourites;
}

class _CopyWithImpl$Query$FavoriteManga$User<TRes>
    implements CopyWith$Query$FavoriteManga$User<TRes> {
  _CopyWithImpl$Query$FavoriteManga$User(
    this._instance,
    this._then,
  );

  final Query$FavoriteManga$User _instance;

  final TRes Function(Query$FavoriteManga$User) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? favourites = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FavoriteManga$User(
        favourites: favourites == _undefined
            ? _instance.favourites
            : (favourites as Query$FavoriteManga$User$favourites?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$FavoriteManga$User$favourites<TRes> get favourites {
    final local$favourites = _instance.favourites;
    return local$favourites == null
        ? CopyWith$Query$FavoriteManga$User$favourites.stub(_then(_instance))
        : CopyWith$Query$FavoriteManga$User$favourites(
            local$favourites, (e) => call(favourites: e));
  }
}

class _CopyWithStubImpl$Query$FavoriteManga$User<TRes>
    implements CopyWith$Query$FavoriteManga$User<TRes> {
  _CopyWithStubImpl$Query$FavoriteManga$User(this._res);

  TRes _res;

  call({
    Query$FavoriteManga$User$favourites? favourites,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$FavoriteManga$User$favourites<TRes> get favourites =>
      CopyWith$Query$FavoriteManga$User$favourites.stub(_res);
}

class Query$FavoriteManga$User$favourites {
  Query$FavoriteManga$User$favourites({
    this.manga,
    this.$__typename = 'Favourites',
  });

  factory Query$FavoriteManga$User$favourites.fromJson(
      Map<String, dynamic> json) {
    final l$manga = json['manga'];
    final l$$__typename = json['__typename'];
    return Query$FavoriteManga$User$favourites(
      manga: l$manga == null
          ? null
          : Query$FavoriteManga$User$favourites$manga.fromJson(
              (l$manga as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$FavoriteManga$User$favourites$manga? manga;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$manga = manga;
    _resultData['manga'] = l$manga?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$manga = manga;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$manga,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FavoriteManga$User$favourites) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$manga = manga;
    final lOther$manga = other.manga;
    if (l$manga != lOther$manga) {
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

extension UtilityExtension$Query$FavoriteManga$User$favourites
    on Query$FavoriteManga$User$favourites {
  CopyWith$Query$FavoriteManga$User$favourites<
          Query$FavoriteManga$User$favourites>
      get copyWith => CopyWith$Query$FavoriteManga$User$favourites(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FavoriteManga$User$favourites<TRes> {
  factory CopyWith$Query$FavoriteManga$User$favourites(
    Query$FavoriteManga$User$favourites instance,
    TRes Function(Query$FavoriteManga$User$favourites) then,
  ) = _CopyWithImpl$Query$FavoriteManga$User$favourites;

  factory CopyWith$Query$FavoriteManga$User$favourites.stub(TRes res) =
      _CopyWithStubImpl$Query$FavoriteManga$User$favourites;

  TRes call({
    Query$FavoriteManga$User$favourites$manga? manga,
    String? $__typename,
  });
  CopyWith$Query$FavoriteManga$User$favourites$manga<TRes> get manga;
}

class _CopyWithImpl$Query$FavoriteManga$User$favourites<TRes>
    implements CopyWith$Query$FavoriteManga$User$favourites<TRes> {
  _CopyWithImpl$Query$FavoriteManga$User$favourites(
    this._instance,
    this._then,
  );

  final Query$FavoriteManga$User$favourites _instance;

  final TRes Function(Query$FavoriteManga$User$favourites) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? manga = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FavoriteManga$User$favourites(
        manga: manga == _undefined
            ? _instance.manga
            : (manga as Query$FavoriteManga$User$favourites$manga?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$FavoriteManga$User$favourites$manga<TRes> get manga {
    final local$manga = _instance.manga;
    return local$manga == null
        ? CopyWith$Query$FavoriteManga$User$favourites$manga.stub(
            _then(_instance))
        : CopyWith$Query$FavoriteManga$User$favourites$manga(
            local$manga, (e) => call(manga: e));
  }
}

class _CopyWithStubImpl$Query$FavoriteManga$User$favourites<TRes>
    implements CopyWith$Query$FavoriteManga$User$favourites<TRes> {
  _CopyWithStubImpl$Query$FavoriteManga$User$favourites(this._res);

  TRes _res;

  call({
    Query$FavoriteManga$User$favourites$manga? manga,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$FavoriteManga$User$favourites$manga<TRes> get manga =>
      CopyWith$Query$FavoriteManga$User$favourites$manga.stub(_res);
}

class Query$FavoriteManga$User$favourites$manga {
  Query$FavoriteManga$User$favourites$manga({
    this.pageInfo,
    this.nodes,
    this.$__typename = 'MediaConnection',
  });

  factory Query$FavoriteManga$User$favourites$manga.fromJson(
      Map<String, dynamic> json) {
    final l$pageInfo = json['pageInfo'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$FavoriteManga$User$favourites$manga(
      pageInfo: l$pageInfo == null
          ? null
          : Query$FavoriteManga$User$favourites$manga$pageInfo.fromJson(
              (l$pageInfo as Map<String, dynamic>)),
      nodes: (l$nodes as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$MediaShort.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$FavoriteManga$User$favourites$manga$pageInfo? pageInfo;

  final List<Fragment$MediaShort?>? nodes;

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
    if (!(other is Query$FavoriteManga$User$favourites$manga) ||
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

extension UtilityExtension$Query$FavoriteManga$User$favourites$manga
    on Query$FavoriteManga$User$favourites$manga {
  CopyWith$Query$FavoriteManga$User$favourites$manga<
          Query$FavoriteManga$User$favourites$manga>
      get copyWith => CopyWith$Query$FavoriteManga$User$favourites$manga(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FavoriteManga$User$favourites$manga<TRes> {
  factory CopyWith$Query$FavoriteManga$User$favourites$manga(
    Query$FavoriteManga$User$favourites$manga instance,
    TRes Function(Query$FavoriteManga$User$favourites$manga) then,
  ) = _CopyWithImpl$Query$FavoriteManga$User$favourites$manga;

  factory CopyWith$Query$FavoriteManga$User$favourites$manga.stub(TRes res) =
      _CopyWithStubImpl$Query$FavoriteManga$User$favourites$manga;

  TRes call({
    Query$FavoriteManga$User$favourites$manga$pageInfo? pageInfo,
    List<Fragment$MediaShort?>? nodes,
    String? $__typename,
  });
  CopyWith$Query$FavoriteManga$User$favourites$manga$pageInfo<TRes>
      get pageInfo;
  TRes nodes(
      Iterable<Fragment$MediaShort?>? Function(
              Iterable<CopyWith$Fragment$MediaShort<Fragment$MediaShort>?>?)
          _fn);
}

class _CopyWithImpl$Query$FavoriteManga$User$favourites$manga<TRes>
    implements CopyWith$Query$FavoriteManga$User$favourites$manga<TRes> {
  _CopyWithImpl$Query$FavoriteManga$User$favourites$manga(
    this._instance,
    this._then,
  );

  final Query$FavoriteManga$User$favourites$manga _instance;

  final TRes Function(Query$FavoriteManga$User$favourites$manga) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pageInfo = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FavoriteManga$User$favourites$manga(
        pageInfo: pageInfo == _undefined
            ? _instance.pageInfo
            : (pageInfo as Query$FavoriteManga$User$favourites$manga$pageInfo?),
        nodes: nodes == _undefined
            ? _instance.nodes
            : (nodes as List<Fragment$MediaShort?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$FavoriteManga$User$favourites$manga$pageInfo<TRes>
      get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return local$pageInfo == null
        ? CopyWith$Query$FavoriteManga$User$favourites$manga$pageInfo.stub(
            _then(_instance))
        : CopyWith$Query$FavoriteManga$User$favourites$manga$pageInfo(
            local$pageInfo, (e) => call(pageInfo: e));
  }

  TRes nodes(
          Iterable<Fragment$MediaShort?>? Function(
                  Iterable<CopyWith$Fragment$MediaShort<Fragment$MediaShort>?>?)
              _fn) =>
      call(
          nodes: _fn(_instance.nodes?.map((e) => e == null
              ? null
              : CopyWith$Fragment$MediaShort(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$FavoriteManga$User$favourites$manga<TRes>
    implements CopyWith$Query$FavoriteManga$User$favourites$manga<TRes> {
  _CopyWithStubImpl$Query$FavoriteManga$User$favourites$manga(this._res);

  TRes _res;

  call({
    Query$FavoriteManga$User$favourites$manga$pageInfo? pageInfo,
    List<Fragment$MediaShort?>? nodes,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$FavoriteManga$User$favourites$manga$pageInfo<TRes>
      get pageInfo =>
          CopyWith$Query$FavoriteManga$User$favourites$manga$pageInfo.stub(
              _res);

  nodes(_fn) => _res;
}

class Query$FavoriteManga$User$favourites$manga$pageInfo {
  Query$FavoriteManga$User$favourites$manga$pageInfo({
    this.hasNextPage,
    this.$__typename = 'PageInfo',
  });

  factory Query$FavoriteManga$User$favourites$manga$pageInfo.fromJson(
      Map<String, dynamic> json) {
    final l$hasNextPage = json['hasNextPage'];
    final l$$__typename = json['__typename'];
    return Query$FavoriteManga$User$favourites$manga$pageInfo(
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
    if (!(other is Query$FavoriteManga$User$favourites$manga$pageInfo) ||
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

extension UtilityExtension$Query$FavoriteManga$User$favourites$manga$pageInfo
    on Query$FavoriteManga$User$favourites$manga$pageInfo {
  CopyWith$Query$FavoriteManga$User$favourites$manga$pageInfo<
          Query$FavoriteManga$User$favourites$manga$pageInfo>
      get copyWith =>
          CopyWith$Query$FavoriteManga$User$favourites$manga$pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FavoriteManga$User$favourites$manga$pageInfo<
    TRes> {
  factory CopyWith$Query$FavoriteManga$User$favourites$manga$pageInfo(
    Query$FavoriteManga$User$favourites$manga$pageInfo instance,
    TRes Function(Query$FavoriteManga$User$favourites$manga$pageInfo) then,
  ) = _CopyWithImpl$Query$FavoriteManga$User$favourites$manga$pageInfo;

  factory CopyWith$Query$FavoriteManga$User$favourites$manga$pageInfo.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FavoriteManga$User$favourites$manga$pageInfo;

  TRes call({
    bool? hasNextPage,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FavoriteManga$User$favourites$manga$pageInfo<TRes>
    implements
        CopyWith$Query$FavoriteManga$User$favourites$manga$pageInfo<TRes> {
  _CopyWithImpl$Query$FavoriteManga$User$favourites$manga$pageInfo(
    this._instance,
    this._then,
  );

  final Query$FavoriteManga$User$favourites$manga$pageInfo _instance;

  final TRes Function(Query$FavoriteManga$User$favourites$manga$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasNextPage = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FavoriteManga$User$favourites$manga$pageInfo(
        hasNextPage: hasNextPage == _undefined
            ? _instance.hasNextPage
            : (hasNextPage as bool?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FavoriteManga$User$favourites$manga$pageInfo<TRes>
    implements
        CopyWith$Query$FavoriteManga$User$favourites$manga$pageInfo<TRes> {
  _CopyWithStubImpl$Query$FavoriteManga$User$favourites$manga$pageInfo(
      this._res);

  TRes _res;

  call({
    bool? hasNextPage,
    String? $__typename,
  }) =>
      _res;
}
