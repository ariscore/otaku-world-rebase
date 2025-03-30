// GENERATED FILE
// DO NOT MODIFY
// ignore_for_file: type=lint
import '../fragments.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$FavoriteAnime {
  factory Variables$Query$FavoriteAnime({
    int? page,
    int? userId,
  }) =>
      Variables$Query$FavoriteAnime._({
        if (page != null) r'page': page,
        if (userId != null) r'userId': userId,
      });

  Variables$Query$FavoriteAnime._(this._$data);

  factory Variables$Query$FavoriteAnime.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('page')) {
      final l$page = data['page'];
      result$data['page'] = (l$page as int?);
    }
    if (data.containsKey('userId')) {
      final l$userId = data['userId'];
      result$data['userId'] = (l$userId as int?);
    }
    return Variables$Query$FavoriteAnime._(result$data);
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

  CopyWith$Variables$Query$FavoriteAnime<Variables$Query$FavoriteAnime>
      get copyWith => CopyWith$Variables$Query$FavoriteAnime(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$FavoriteAnime ||
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

abstract class CopyWith$Variables$Query$FavoriteAnime<TRes> {
  factory CopyWith$Variables$Query$FavoriteAnime(
    Variables$Query$FavoriteAnime instance,
    TRes Function(Variables$Query$FavoriteAnime) then,
  ) = _CopyWithImpl$Variables$Query$FavoriteAnime;

  factory CopyWith$Variables$Query$FavoriteAnime.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$FavoriteAnime;

  TRes call({
    int? page,
    int? userId,
  });
}

class _CopyWithImpl$Variables$Query$FavoriteAnime<TRes>
    implements CopyWith$Variables$Query$FavoriteAnime<TRes> {
  _CopyWithImpl$Variables$Query$FavoriteAnime(
    this._instance,
    this._then,
  );

  final Variables$Query$FavoriteAnime _instance;

  final TRes Function(Variables$Query$FavoriteAnime) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? page = _undefined,
    Object? userId = _undefined,
  }) =>
      _then(Variables$Query$FavoriteAnime._({
        ..._instance._$data,
        if (page != _undefined) 'page': (page as int?),
        if (userId != _undefined) 'userId': (userId as int?),
      }));
}

class _CopyWithStubImpl$Variables$Query$FavoriteAnime<TRes>
    implements CopyWith$Variables$Query$FavoriteAnime<TRes> {
  _CopyWithStubImpl$Variables$Query$FavoriteAnime(this._res);

  TRes _res;

  call({
    int? page,
    int? userId,
  }) =>
      _res;
}

class Query$FavoriteAnime {
  Query$FavoriteAnime({
    this.User,
    this.$__typename = 'Query',
  });

  factory Query$FavoriteAnime.fromJson(Map<String, dynamic> json) {
    final l$User = json['User'];
    final l$$__typename = json['__typename'];
    return Query$FavoriteAnime(
      User: l$User == null
          ? null
          : Query$FavoriteAnime$User.fromJson((l$User as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$FavoriteAnime$User? User;

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
    if (other is! Query$FavoriteAnime || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$FavoriteAnime on Query$FavoriteAnime {
  CopyWith$Query$FavoriteAnime<Query$FavoriteAnime> get copyWith =>
      CopyWith$Query$FavoriteAnime(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$FavoriteAnime<TRes> {
  factory CopyWith$Query$FavoriteAnime(
    Query$FavoriteAnime instance,
    TRes Function(Query$FavoriteAnime) then,
  ) = _CopyWithImpl$Query$FavoriteAnime;

  factory CopyWith$Query$FavoriteAnime.stub(TRes res) =
      _CopyWithStubImpl$Query$FavoriteAnime;

  TRes call({
    Query$FavoriteAnime$User? User,
    String? $__typename,
  });
  CopyWith$Query$FavoriteAnime$User<TRes> get User;
}

class _CopyWithImpl$Query$FavoriteAnime<TRes>
    implements CopyWith$Query$FavoriteAnime<TRes> {
  _CopyWithImpl$Query$FavoriteAnime(
    this._instance,
    this._then,
  );

  final Query$FavoriteAnime _instance;

  final TRes Function(Query$FavoriteAnime) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? User = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FavoriteAnime(
        User: User == _undefined
            ? _instance.User
            : (User as Query$FavoriteAnime$User?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$FavoriteAnime$User<TRes> get User {
    final local$User = _instance.User;
    return local$User == null
        ? CopyWith$Query$FavoriteAnime$User.stub(_then(_instance))
        : CopyWith$Query$FavoriteAnime$User(local$User, (e) => call(User: e));
  }
}

class _CopyWithStubImpl$Query$FavoriteAnime<TRes>
    implements CopyWith$Query$FavoriteAnime<TRes> {
  _CopyWithStubImpl$Query$FavoriteAnime(this._res);

  TRes _res;

  call({
    Query$FavoriteAnime$User? User,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$FavoriteAnime$User<TRes> get User =>
      CopyWith$Query$FavoriteAnime$User.stub(_res);
}

const documentNodeQueryFavoriteAnime = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'FavoriteAnime'),
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
                name: NameNode(value: 'anime'),
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
Query$FavoriteAnime _parserFn$Query$FavoriteAnime(Map<String, dynamic> data) =>
    Query$FavoriteAnime.fromJson(data);
typedef OnQueryComplete$Query$FavoriteAnime = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$FavoriteAnime?,
);

class Options$Query$FavoriteAnime
    extends graphql.QueryOptions<Query$FavoriteAnime> {
  Options$Query$FavoriteAnime({
    String? operationName,
    Variables$Query$FavoriteAnime? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$FavoriteAnime? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$FavoriteAnime? onComplete,
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
                    data == null ? null : _parserFn$Query$FavoriteAnime(data),
                  ),
          onError: onError,
          document: documentNodeQueryFavoriteAnime,
          parserFn: _parserFn$Query$FavoriteAnime,
        );

  final OnQueryComplete$Query$FavoriteAnime? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$FavoriteAnime
    extends graphql.WatchQueryOptions<Query$FavoriteAnime> {
  WatchOptions$Query$FavoriteAnime({
    String? operationName,
    Variables$Query$FavoriteAnime? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$FavoriteAnime? typedOptimisticResult,
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
          document: documentNodeQueryFavoriteAnime,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$FavoriteAnime,
        );
}

class FetchMoreOptions$Query$FavoriteAnime extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$FavoriteAnime({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$FavoriteAnime? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryFavoriteAnime,
        );
}

extension ClientExtension$Query$FavoriteAnime on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$FavoriteAnime>> query$FavoriteAnime(
          [Options$Query$FavoriteAnime? options]) async =>
      await this.query(options ?? Options$Query$FavoriteAnime());
  graphql.ObservableQuery<Query$FavoriteAnime> watchQuery$FavoriteAnime(
          [WatchOptions$Query$FavoriteAnime? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$FavoriteAnime());
  void writeQuery$FavoriteAnime({
    required Query$FavoriteAnime data,
    Variables$Query$FavoriteAnime? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryFavoriteAnime),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$FavoriteAnime? readQuery$FavoriteAnime({
    Variables$Query$FavoriteAnime? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryFavoriteAnime),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$FavoriteAnime.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$FavoriteAnime> useQuery$FavoriteAnime(
        [Options$Query$FavoriteAnime? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$FavoriteAnime());
graphql.ObservableQuery<Query$FavoriteAnime> useWatchQuery$FavoriteAnime(
        [WatchOptions$Query$FavoriteAnime? options]) =>
    graphql_flutter
        .useWatchQuery(options ?? WatchOptions$Query$FavoriteAnime());

class Query$FavoriteAnime$Widget
    extends graphql_flutter.Query<Query$FavoriteAnime> {
  Query$FavoriteAnime$Widget({
    widgets.Key? key,
    Options$Query$FavoriteAnime? options,
    required graphql_flutter.QueryBuilder<Query$FavoriteAnime> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$FavoriteAnime(),
          builder: builder,
        );
}

class Query$FavoriteAnime$User {
  Query$FavoriteAnime$User({
    this.favourites,
    this.$__typename = 'User',
  });

  factory Query$FavoriteAnime$User.fromJson(Map<String, dynamic> json) {
    final l$favourites = json['favourites'];
    final l$$__typename = json['__typename'];
    return Query$FavoriteAnime$User(
      favourites: l$favourites == null
          ? null
          : Query$FavoriteAnime$User$favourites.fromJson(
              (l$favourites as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$FavoriteAnime$User$favourites? favourites;

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
    if (other is! Query$FavoriteAnime$User ||
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

extension UtilityExtension$Query$FavoriteAnime$User
    on Query$FavoriteAnime$User {
  CopyWith$Query$FavoriteAnime$User<Query$FavoriteAnime$User> get copyWith =>
      CopyWith$Query$FavoriteAnime$User(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$FavoriteAnime$User<TRes> {
  factory CopyWith$Query$FavoriteAnime$User(
    Query$FavoriteAnime$User instance,
    TRes Function(Query$FavoriteAnime$User) then,
  ) = _CopyWithImpl$Query$FavoriteAnime$User;

  factory CopyWith$Query$FavoriteAnime$User.stub(TRes res) =
      _CopyWithStubImpl$Query$FavoriteAnime$User;

  TRes call({
    Query$FavoriteAnime$User$favourites? favourites,
    String? $__typename,
  });
  CopyWith$Query$FavoriteAnime$User$favourites<TRes> get favourites;
}

class _CopyWithImpl$Query$FavoriteAnime$User<TRes>
    implements CopyWith$Query$FavoriteAnime$User<TRes> {
  _CopyWithImpl$Query$FavoriteAnime$User(
    this._instance,
    this._then,
  );

  final Query$FavoriteAnime$User _instance;

  final TRes Function(Query$FavoriteAnime$User) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? favourites = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FavoriteAnime$User(
        favourites: favourites == _undefined
            ? _instance.favourites
            : (favourites as Query$FavoriteAnime$User$favourites?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$FavoriteAnime$User$favourites<TRes> get favourites {
    final local$favourites = _instance.favourites;
    return local$favourites == null
        ? CopyWith$Query$FavoriteAnime$User$favourites.stub(_then(_instance))
        : CopyWith$Query$FavoriteAnime$User$favourites(
            local$favourites, (e) => call(favourites: e));
  }
}

class _CopyWithStubImpl$Query$FavoriteAnime$User<TRes>
    implements CopyWith$Query$FavoriteAnime$User<TRes> {
  _CopyWithStubImpl$Query$FavoriteAnime$User(this._res);

  TRes _res;

  call({
    Query$FavoriteAnime$User$favourites? favourites,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$FavoriteAnime$User$favourites<TRes> get favourites =>
      CopyWith$Query$FavoriteAnime$User$favourites.stub(_res);
}

class Query$FavoriteAnime$User$favourites {
  Query$FavoriteAnime$User$favourites({
    this.anime,
    this.$__typename = 'Favourites',
  });

  factory Query$FavoriteAnime$User$favourites.fromJson(
      Map<String, dynamic> json) {
    final l$anime = json['anime'];
    final l$$__typename = json['__typename'];
    return Query$FavoriteAnime$User$favourites(
      anime: l$anime == null
          ? null
          : Query$FavoriteAnime$User$favourites$anime.fromJson(
              (l$anime as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$FavoriteAnime$User$favourites$anime? anime;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$anime = anime;
    _resultData['anime'] = l$anime?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$anime = anime;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$anime,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$FavoriteAnime$User$favourites ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$anime = anime;
    final lOther$anime = other.anime;
    if (l$anime != lOther$anime) {
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

extension UtilityExtension$Query$FavoriteAnime$User$favourites
    on Query$FavoriteAnime$User$favourites {
  CopyWith$Query$FavoriteAnime$User$favourites<
          Query$FavoriteAnime$User$favourites>
      get copyWith => CopyWith$Query$FavoriteAnime$User$favourites(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FavoriteAnime$User$favourites<TRes> {
  factory CopyWith$Query$FavoriteAnime$User$favourites(
    Query$FavoriteAnime$User$favourites instance,
    TRes Function(Query$FavoriteAnime$User$favourites) then,
  ) = _CopyWithImpl$Query$FavoriteAnime$User$favourites;

  factory CopyWith$Query$FavoriteAnime$User$favourites.stub(TRes res) =
      _CopyWithStubImpl$Query$FavoriteAnime$User$favourites;

  TRes call({
    Query$FavoriteAnime$User$favourites$anime? anime,
    String? $__typename,
  });
  CopyWith$Query$FavoriteAnime$User$favourites$anime<TRes> get anime;
}

class _CopyWithImpl$Query$FavoriteAnime$User$favourites<TRes>
    implements CopyWith$Query$FavoriteAnime$User$favourites<TRes> {
  _CopyWithImpl$Query$FavoriteAnime$User$favourites(
    this._instance,
    this._then,
  );

  final Query$FavoriteAnime$User$favourites _instance;

  final TRes Function(Query$FavoriteAnime$User$favourites) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? anime = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FavoriteAnime$User$favourites(
        anime: anime == _undefined
            ? _instance.anime
            : (anime as Query$FavoriteAnime$User$favourites$anime?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$FavoriteAnime$User$favourites$anime<TRes> get anime {
    final local$anime = _instance.anime;
    return local$anime == null
        ? CopyWith$Query$FavoriteAnime$User$favourites$anime.stub(
            _then(_instance))
        : CopyWith$Query$FavoriteAnime$User$favourites$anime(
            local$anime, (e) => call(anime: e));
  }
}

class _CopyWithStubImpl$Query$FavoriteAnime$User$favourites<TRes>
    implements CopyWith$Query$FavoriteAnime$User$favourites<TRes> {
  _CopyWithStubImpl$Query$FavoriteAnime$User$favourites(this._res);

  TRes _res;

  call({
    Query$FavoriteAnime$User$favourites$anime? anime,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$FavoriteAnime$User$favourites$anime<TRes> get anime =>
      CopyWith$Query$FavoriteAnime$User$favourites$anime.stub(_res);
}

class Query$FavoriteAnime$User$favourites$anime {
  Query$FavoriteAnime$User$favourites$anime({
    this.pageInfo,
    this.nodes,
    this.$__typename = 'MediaConnection',
  });

  factory Query$FavoriteAnime$User$favourites$anime.fromJson(
      Map<String, dynamic> json) {
    final l$pageInfo = json['pageInfo'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$FavoriteAnime$User$favourites$anime(
      pageInfo: l$pageInfo == null
          ? null
          : Query$FavoriteAnime$User$favourites$anime$pageInfo.fromJson(
              (l$pageInfo as Map<String, dynamic>)),
      nodes: (l$nodes as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$MediaShort.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$FavoriteAnime$User$favourites$anime$pageInfo? pageInfo;

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
    if (other is! Query$FavoriteAnime$User$favourites$anime ||
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

extension UtilityExtension$Query$FavoriteAnime$User$favourites$anime
    on Query$FavoriteAnime$User$favourites$anime {
  CopyWith$Query$FavoriteAnime$User$favourites$anime<
          Query$FavoriteAnime$User$favourites$anime>
      get copyWith => CopyWith$Query$FavoriteAnime$User$favourites$anime(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FavoriteAnime$User$favourites$anime<TRes> {
  factory CopyWith$Query$FavoriteAnime$User$favourites$anime(
    Query$FavoriteAnime$User$favourites$anime instance,
    TRes Function(Query$FavoriteAnime$User$favourites$anime) then,
  ) = _CopyWithImpl$Query$FavoriteAnime$User$favourites$anime;

  factory CopyWith$Query$FavoriteAnime$User$favourites$anime.stub(TRes res) =
      _CopyWithStubImpl$Query$FavoriteAnime$User$favourites$anime;

  TRes call({
    Query$FavoriteAnime$User$favourites$anime$pageInfo? pageInfo,
    List<Fragment$MediaShort?>? nodes,
    String? $__typename,
  });
  CopyWith$Query$FavoriteAnime$User$favourites$anime$pageInfo<TRes>
      get pageInfo;
  TRes nodes(
      Iterable<Fragment$MediaShort?>? Function(
              Iterable<CopyWith$Fragment$MediaShort<Fragment$MediaShort>?>?)
          _fn);
}

class _CopyWithImpl$Query$FavoriteAnime$User$favourites$anime<TRes>
    implements CopyWith$Query$FavoriteAnime$User$favourites$anime<TRes> {
  _CopyWithImpl$Query$FavoriteAnime$User$favourites$anime(
    this._instance,
    this._then,
  );

  final Query$FavoriteAnime$User$favourites$anime _instance;

  final TRes Function(Query$FavoriteAnime$User$favourites$anime) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pageInfo = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FavoriteAnime$User$favourites$anime(
        pageInfo: pageInfo == _undefined
            ? _instance.pageInfo
            : (pageInfo as Query$FavoriteAnime$User$favourites$anime$pageInfo?),
        nodes: nodes == _undefined
            ? _instance.nodes
            : (nodes as List<Fragment$MediaShort?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$FavoriteAnime$User$favourites$anime$pageInfo<TRes>
      get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return local$pageInfo == null
        ? CopyWith$Query$FavoriteAnime$User$favourites$anime$pageInfo.stub(
            _then(_instance))
        : CopyWith$Query$FavoriteAnime$User$favourites$anime$pageInfo(
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

class _CopyWithStubImpl$Query$FavoriteAnime$User$favourites$anime<TRes>
    implements CopyWith$Query$FavoriteAnime$User$favourites$anime<TRes> {
  _CopyWithStubImpl$Query$FavoriteAnime$User$favourites$anime(this._res);

  TRes _res;

  call({
    Query$FavoriteAnime$User$favourites$anime$pageInfo? pageInfo,
    List<Fragment$MediaShort?>? nodes,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$FavoriteAnime$User$favourites$anime$pageInfo<TRes>
      get pageInfo =>
          CopyWith$Query$FavoriteAnime$User$favourites$anime$pageInfo.stub(
              _res);

  nodes(_fn) => _res;
}

class Query$FavoriteAnime$User$favourites$anime$pageInfo {
  Query$FavoriteAnime$User$favourites$anime$pageInfo({
    this.hasNextPage,
    this.$__typename = 'PageInfo',
  });

  factory Query$FavoriteAnime$User$favourites$anime$pageInfo.fromJson(
      Map<String, dynamic> json) {
    final l$hasNextPage = json['hasNextPage'];
    final l$$__typename = json['__typename'];
    return Query$FavoriteAnime$User$favourites$anime$pageInfo(
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
    if (other is! Query$FavoriteAnime$User$favourites$anime$pageInfo ||
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

extension UtilityExtension$Query$FavoriteAnime$User$favourites$anime$pageInfo
    on Query$FavoriteAnime$User$favourites$anime$pageInfo {
  CopyWith$Query$FavoriteAnime$User$favourites$anime$pageInfo<
          Query$FavoriteAnime$User$favourites$anime$pageInfo>
      get copyWith =>
          CopyWith$Query$FavoriteAnime$User$favourites$anime$pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FavoriteAnime$User$favourites$anime$pageInfo<
    TRes> {
  factory CopyWith$Query$FavoriteAnime$User$favourites$anime$pageInfo(
    Query$FavoriteAnime$User$favourites$anime$pageInfo instance,
    TRes Function(Query$FavoriteAnime$User$favourites$anime$pageInfo) then,
  ) = _CopyWithImpl$Query$FavoriteAnime$User$favourites$anime$pageInfo;

  factory CopyWith$Query$FavoriteAnime$User$favourites$anime$pageInfo.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FavoriteAnime$User$favourites$anime$pageInfo;

  TRes call({
    bool? hasNextPage,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FavoriteAnime$User$favourites$anime$pageInfo<TRes>
    implements
        CopyWith$Query$FavoriteAnime$User$favourites$anime$pageInfo<TRes> {
  _CopyWithImpl$Query$FavoriteAnime$User$favourites$anime$pageInfo(
    this._instance,
    this._then,
  );

  final Query$FavoriteAnime$User$favourites$anime$pageInfo _instance;

  final TRes Function(Query$FavoriteAnime$User$favourites$anime$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasNextPage = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FavoriteAnime$User$favourites$anime$pageInfo(
        hasNextPage: hasNextPage == _undefined
            ? _instance.hasNextPage
            : (hasNextPage as bool?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FavoriteAnime$User$favourites$anime$pageInfo<TRes>
    implements
        CopyWith$Query$FavoriteAnime$User$favourites$anime$pageInfo<TRes> {
  _CopyWithStubImpl$Query$FavoriteAnime$User$favourites$anime$pageInfo(
      this._res);

  TRes _res;

  call({
    bool? hasNextPage,
    String? $__typename,
  }) =>
      _res;
}
