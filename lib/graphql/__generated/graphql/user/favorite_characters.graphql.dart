// GENERATED FILE
// DO NOT MODIFY
// ignore_for_file: type=lint
import '../fragments.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$FavoriteCharacters {
  factory Variables$Query$FavoriteCharacters({
    int? page,
    int? userId,
  }) =>
      Variables$Query$FavoriteCharacters._({
        if (page != null) r'page': page,
        if (userId != null) r'userId': userId,
      });

  Variables$Query$FavoriteCharacters._(this._$data);

  factory Variables$Query$FavoriteCharacters.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('page')) {
      final l$page = data['page'];
      result$data['page'] = (l$page as int?);
    }
    if (data.containsKey('userId')) {
      final l$userId = data['userId'];
      result$data['userId'] = (l$userId as int?);
    }
    return Variables$Query$FavoriteCharacters._(result$data);
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

  CopyWith$Variables$Query$FavoriteCharacters<
          Variables$Query$FavoriteCharacters>
      get copyWith => CopyWith$Variables$Query$FavoriteCharacters(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$FavoriteCharacters) ||
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

abstract class CopyWith$Variables$Query$FavoriteCharacters<TRes> {
  factory CopyWith$Variables$Query$FavoriteCharacters(
    Variables$Query$FavoriteCharacters instance,
    TRes Function(Variables$Query$FavoriteCharacters) then,
  ) = _CopyWithImpl$Variables$Query$FavoriteCharacters;

  factory CopyWith$Variables$Query$FavoriteCharacters.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$FavoriteCharacters;

  TRes call({
    int? page,
    int? userId,
  });
}

class _CopyWithImpl$Variables$Query$FavoriteCharacters<TRes>
    implements CopyWith$Variables$Query$FavoriteCharacters<TRes> {
  _CopyWithImpl$Variables$Query$FavoriteCharacters(
    this._instance,
    this._then,
  );

  final Variables$Query$FavoriteCharacters _instance;

  final TRes Function(Variables$Query$FavoriteCharacters) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? page = _undefined,
    Object? userId = _undefined,
  }) =>
      _then(Variables$Query$FavoriteCharacters._({
        ..._instance._$data,
        if (page != _undefined) 'page': (page as int?),
        if (userId != _undefined) 'userId': (userId as int?),
      }));
}

class _CopyWithStubImpl$Variables$Query$FavoriteCharacters<TRes>
    implements CopyWith$Variables$Query$FavoriteCharacters<TRes> {
  _CopyWithStubImpl$Variables$Query$FavoriteCharacters(this._res);

  TRes _res;

  call({
    int? page,
    int? userId,
  }) =>
      _res;
}

class Query$FavoriteCharacters {
  Query$FavoriteCharacters({
    this.User,
    this.$__typename = 'Query',
  });

  factory Query$FavoriteCharacters.fromJson(Map<String, dynamic> json) {
    final l$User = json['User'];
    final l$$__typename = json['__typename'];
    return Query$FavoriteCharacters(
      User: l$User == null
          ? null
          : Query$FavoriteCharacters$User.fromJson(
              (l$User as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$FavoriteCharacters$User? User;

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
    if (!(other is Query$FavoriteCharacters) ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$FavoriteCharacters
    on Query$FavoriteCharacters {
  CopyWith$Query$FavoriteCharacters<Query$FavoriteCharacters> get copyWith =>
      CopyWith$Query$FavoriteCharacters(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$FavoriteCharacters<TRes> {
  factory CopyWith$Query$FavoriteCharacters(
    Query$FavoriteCharacters instance,
    TRes Function(Query$FavoriteCharacters) then,
  ) = _CopyWithImpl$Query$FavoriteCharacters;

  factory CopyWith$Query$FavoriteCharacters.stub(TRes res) =
      _CopyWithStubImpl$Query$FavoriteCharacters;

  TRes call({
    Query$FavoriteCharacters$User? User,
    String? $__typename,
  });
  CopyWith$Query$FavoriteCharacters$User<TRes> get User;
}

class _CopyWithImpl$Query$FavoriteCharacters<TRes>
    implements CopyWith$Query$FavoriteCharacters<TRes> {
  _CopyWithImpl$Query$FavoriteCharacters(
    this._instance,
    this._then,
  );

  final Query$FavoriteCharacters _instance;

  final TRes Function(Query$FavoriteCharacters) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? User = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FavoriteCharacters(
        User: User == _undefined
            ? _instance.User
            : (User as Query$FavoriteCharacters$User?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$FavoriteCharacters$User<TRes> get User {
    final local$User = _instance.User;
    return local$User == null
        ? CopyWith$Query$FavoriteCharacters$User.stub(_then(_instance))
        : CopyWith$Query$FavoriteCharacters$User(
            local$User, (e) => call(User: e));
  }
}

class _CopyWithStubImpl$Query$FavoriteCharacters<TRes>
    implements CopyWith$Query$FavoriteCharacters<TRes> {
  _CopyWithStubImpl$Query$FavoriteCharacters(this._res);

  TRes _res;

  call({
    Query$FavoriteCharacters$User? User,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$FavoriteCharacters$User<TRes> get User =>
      CopyWith$Query$FavoriteCharacters$User.stub(_res);
}

const documentNodeQueryFavoriteCharacters = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'FavoriteCharacters'),
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
                name: NameNode(value: 'characters'),
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
                        name: NameNode(value: 'CharacterShort'),
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
  fragmentDefinitionCharacterShort,
]);
Query$FavoriteCharacters _parserFn$Query$FavoriteCharacters(
        Map<String, dynamic> data) =>
    Query$FavoriteCharacters.fromJson(data);
typedef OnQueryComplete$Query$FavoriteCharacters = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$FavoriteCharacters?,
);

class Options$Query$FavoriteCharacters
    extends graphql.QueryOptions<Query$FavoriteCharacters> {
  Options$Query$FavoriteCharacters({
    String? operationName,
    Variables$Query$FavoriteCharacters? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$FavoriteCharacters? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$FavoriteCharacters? onComplete,
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
                        : _parserFn$Query$FavoriteCharacters(data),
                  ),
          onError: onError,
          document: documentNodeQueryFavoriteCharacters,
          parserFn: _parserFn$Query$FavoriteCharacters,
        );

  final OnQueryComplete$Query$FavoriteCharacters? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$FavoriteCharacters
    extends graphql.WatchQueryOptions<Query$FavoriteCharacters> {
  WatchOptions$Query$FavoriteCharacters({
    String? operationName,
    Variables$Query$FavoriteCharacters? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$FavoriteCharacters? typedOptimisticResult,
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
          document: documentNodeQueryFavoriteCharacters,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$FavoriteCharacters,
        );
}

class FetchMoreOptions$Query$FavoriteCharacters
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$FavoriteCharacters({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$FavoriteCharacters? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryFavoriteCharacters,
        );
}

extension ClientExtension$Query$FavoriteCharacters on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$FavoriteCharacters>>
      query$FavoriteCharacters(
              [Options$Query$FavoriteCharacters? options]) async =>
          await this.query(options ?? Options$Query$FavoriteCharacters());
  graphql.ObservableQuery<Query$FavoriteCharacters>
      watchQuery$FavoriteCharacters(
              [WatchOptions$Query$FavoriteCharacters? options]) =>
          this.watchQuery(options ?? WatchOptions$Query$FavoriteCharacters());
  void writeQuery$FavoriteCharacters({
    required Query$FavoriteCharacters data,
    Variables$Query$FavoriteCharacters? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryFavoriteCharacters),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$FavoriteCharacters? readQuery$FavoriteCharacters({
    Variables$Query$FavoriteCharacters? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation:
            graphql.Operation(document: documentNodeQueryFavoriteCharacters),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$FavoriteCharacters.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$FavoriteCharacters>
    useQuery$FavoriteCharacters([Options$Query$FavoriteCharacters? options]) =>
        graphql_flutter.useQuery(options ?? Options$Query$FavoriteCharacters());
graphql.ObservableQuery<Query$FavoriteCharacters>
    useWatchQuery$FavoriteCharacters(
            [WatchOptions$Query$FavoriteCharacters? options]) =>
        graphql_flutter
            .useWatchQuery(options ?? WatchOptions$Query$FavoriteCharacters());

class Query$FavoriteCharacters$Widget
    extends graphql_flutter.Query<Query$FavoriteCharacters> {
  Query$FavoriteCharacters$Widget({
    widgets.Key? key,
    Options$Query$FavoriteCharacters? options,
    required graphql_flutter.QueryBuilder<Query$FavoriteCharacters> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$FavoriteCharacters(),
          builder: builder,
        );
}

class Query$FavoriteCharacters$User {
  Query$FavoriteCharacters$User({
    this.favourites,
    this.$__typename = 'User',
  });

  factory Query$FavoriteCharacters$User.fromJson(Map<String, dynamic> json) {
    final l$favourites = json['favourites'];
    final l$$__typename = json['__typename'];
    return Query$FavoriteCharacters$User(
      favourites: l$favourites == null
          ? null
          : Query$FavoriteCharacters$User$favourites.fromJson(
              (l$favourites as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$FavoriteCharacters$User$favourites? favourites;

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
    if (!(other is Query$FavoriteCharacters$User) ||
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

extension UtilityExtension$Query$FavoriteCharacters$User
    on Query$FavoriteCharacters$User {
  CopyWith$Query$FavoriteCharacters$User<Query$FavoriteCharacters$User>
      get copyWith => CopyWith$Query$FavoriteCharacters$User(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FavoriteCharacters$User<TRes> {
  factory CopyWith$Query$FavoriteCharacters$User(
    Query$FavoriteCharacters$User instance,
    TRes Function(Query$FavoriteCharacters$User) then,
  ) = _CopyWithImpl$Query$FavoriteCharacters$User;

  factory CopyWith$Query$FavoriteCharacters$User.stub(TRes res) =
      _CopyWithStubImpl$Query$FavoriteCharacters$User;

  TRes call({
    Query$FavoriteCharacters$User$favourites? favourites,
    String? $__typename,
  });
  CopyWith$Query$FavoriteCharacters$User$favourites<TRes> get favourites;
}

class _CopyWithImpl$Query$FavoriteCharacters$User<TRes>
    implements CopyWith$Query$FavoriteCharacters$User<TRes> {
  _CopyWithImpl$Query$FavoriteCharacters$User(
    this._instance,
    this._then,
  );

  final Query$FavoriteCharacters$User _instance;

  final TRes Function(Query$FavoriteCharacters$User) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? favourites = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FavoriteCharacters$User(
        favourites: favourites == _undefined
            ? _instance.favourites
            : (favourites as Query$FavoriteCharacters$User$favourites?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$FavoriteCharacters$User$favourites<TRes> get favourites {
    final local$favourites = _instance.favourites;
    return local$favourites == null
        ? CopyWith$Query$FavoriteCharacters$User$favourites.stub(
            _then(_instance))
        : CopyWith$Query$FavoriteCharacters$User$favourites(
            local$favourites, (e) => call(favourites: e));
  }
}

class _CopyWithStubImpl$Query$FavoriteCharacters$User<TRes>
    implements CopyWith$Query$FavoriteCharacters$User<TRes> {
  _CopyWithStubImpl$Query$FavoriteCharacters$User(this._res);

  TRes _res;

  call({
    Query$FavoriteCharacters$User$favourites? favourites,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$FavoriteCharacters$User$favourites<TRes> get favourites =>
      CopyWith$Query$FavoriteCharacters$User$favourites.stub(_res);
}

class Query$FavoriteCharacters$User$favourites {
  Query$FavoriteCharacters$User$favourites({
    this.characters,
    this.$__typename = 'Favourites',
  });

  factory Query$FavoriteCharacters$User$favourites.fromJson(
      Map<String, dynamic> json) {
    final l$characters = json['characters'];
    final l$$__typename = json['__typename'];
    return Query$FavoriteCharacters$User$favourites(
      characters: l$characters == null
          ? null
          : Query$FavoriteCharacters$User$favourites$characters.fromJson(
              (l$characters as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$FavoriteCharacters$User$favourites$characters? characters;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$characters = characters;
    _resultData['characters'] = l$characters?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$characters = characters;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$characters,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FavoriteCharacters$User$favourites) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$characters = characters;
    final lOther$characters = other.characters;
    if (l$characters != lOther$characters) {
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

extension UtilityExtension$Query$FavoriteCharacters$User$favourites
    on Query$FavoriteCharacters$User$favourites {
  CopyWith$Query$FavoriteCharacters$User$favourites<
          Query$FavoriteCharacters$User$favourites>
      get copyWith => CopyWith$Query$FavoriteCharacters$User$favourites(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FavoriteCharacters$User$favourites<TRes> {
  factory CopyWith$Query$FavoriteCharacters$User$favourites(
    Query$FavoriteCharacters$User$favourites instance,
    TRes Function(Query$FavoriteCharacters$User$favourites) then,
  ) = _CopyWithImpl$Query$FavoriteCharacters$User$favourites;

  factory CopyWith$Query$FavoriteCharacters$User$favourites.stub(TRes res) =
      _CopyWithStubImpl$Query$FavoriteCharacters$User$favourites;

  TRes call({
    Query$FavoriteCharacters$User$favourites$characters? characters,
    String? $__typename,
  });
  CopyWith$Query$FavoriteCharacters$User$favourites$characters<TRes>
      get characters;
}

class _CopyWithImpl$Query$FavoriteCharacters$User$favourites<TRes>
    implements CopyWith$Query$FavoriteCharacters$User$favourites<TRes> {
  _CopyWithImpl$Query$FavoriteCharacters$User$favourites(
    this._instance,
    this._then,
  );

  final Query$FavoriteCharacters$User$favourites _instance;

  final TRes Function(Query$FavoriteCharacters$User$favourites) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? characters = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FavoriteCharacters$User$favourites(
        characters: characters == _undefined
            ? _instance.characters
            : (characters
                as Query$FavoriteCharacters$User$favourites$characters?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$FavoriteCharacters$User$favourites$characters<TRes>
      get characters {
    final local$characters = _instance.characters;
    return local$characters == null
        ? CopyWith$Query$FavoriteCharacters$User$favourites$characters.stub(
            _then(_instance))
        : CopyWith$Query$FavoriteCharacters$User$favourites$characters(
            local$characters, (e) => call(characters: e));
  }
}

class _CopyWithStubImpl$Query$FavoriteCharacters$User$favourites<TRes>
    implements CopyWith$Query$FavoriteCharacters$User$favourites<TRes> {
  _CopyWithStubImpl$Query$FavoriteCharacters$User$favourites(this._res);

  TRes _res;

  call({
    Query$FavoriteCharacters$User$favourites$characters? characters,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$FavoriteCharacters$User$favourites$characters<TRes>
      get characters =>
          CopyWith$Query$FavoriteCharacters$User$favourites$characters.stub(
              _res);
}

class Query$FavoriteCharacters$User$favourites$characters {
  Query$FavoriteCharacters$User$favourites$characters({
    this.pageInfo,
    this.nodes,
    this.$__typename = 'CharacterConnection',
  });

  factory Query$FavoriteCharacters$User$favourites$characters.fromJson(
      Map<String, dynamic> json) {
    final l$pageInfo = json['pageInfo'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$FavoriteCharacters$User$favourites$characters(
      pageInfo: l$pageInfo == null
          ? null
          : Query$FavoriteCharacters$User$favourites$characters$pageInfo
              .fromJson((l$pageInfo as Map<String, dynamic>)),
      nodes: (l$nodes as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$CharacterShort.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$FavoriteCharacters$User$favourites$characters$pageInfo? pageInfo;

  final List<Fragment$CharacterShort?>? nodes;

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
    if (!(other is Query$FavoriteCharacters$User$favourites$characters) ||
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

extension UtilityExtension$Query$FavoriteCharacters$User$favourites$characters
    on Query$FavoriteCharacters$User$favourites$characters {
  CopyWith$Query$FavoriteCharacters$User$favourites$characters<
          Query$FavoriteCharacters$User$favourites$characters>
      get copyWith =>
          CopyWith$Query$FavoriteCharacters$User$favourites$characters(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FavoriteCharacters$User$favourites$characters<
    TRes> {
  factory CopyWith$Query$FavoriteCharacters$User$favourites$characters(
    Query$FavoriteCharacters$User$favourites$characters instance,
    TRes Function(Query$FavoriteCharacters$User$favourites$characters) then,
  ) = _CopyWithImpl$Query$FavoriteCharacters$User$favourites$characters;

  factory CopyWith$Query$FavoriteCharacters$User$favourites$characters.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FavoriteCharacters$User$favourites$characters;

  TRes call({
    Query$FavoriteCharacters$User$favourites$characters$pageInfo? pageInfo,
    List<Fragment$CharacterShort?>? nodes,
    String? $__typename,
  });
  CopyWith$Query$FavoriteCharacters$User$favourites$characters$pageInfo<TRes>
      get pageInfo;
  TRes nodes(
      Iterable<Fragment$CharacterShort?>? Function(
              Iterable<
                  CopyWith$Fragment$CharacterShort<Fragment$CharacterShort>?>?)
          _fn);
}

class _CopyWithImpl$Query$FavoriteCharacters$User$favourites$characters<TRes>
    implements
        CopyWith$Query$FavoriteCharacters$User$favourites$characters<TRes> {
  _CopyWithImpl$Query$FavoriteCharacters$User$favourites$characters(
    this._instance,
    this._then,
  );

  final Query$FavoriteCharacters$User$favourites$characters _instance;

  final TRes Function(Query$FavoriteCharacters$User$favourites$characters)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pageInfo = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FavoriteCharacters$User$favourites$characters(
        pageInfo: pageInfo == _undefined
            ? _instance.pageInfo
            : (pageInfo
                as Query$FavoriteCharacters$User$favourites$characters$pageInfo?),
        nodes: nodes == _undefined
            ? _instance.nodes
            : (nodes as List<Fragment$CharacterShort?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$FavoriteCharacters$User$favourites$characters$pageInfo<TRes>
      get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return local$pageInfo == null
        ? CopyWith$Query$FavoriteCharacters$User$favourites$characters$pageInfo
            .stub(_then(_instance))
        : CopyWith$Query$FavoriteCharacters$User$favourites$characters$pageInfo(
            local$pageInfo, (e) => call(pageInfo: e));
  }

  TRes nodes(
          Iterable<Fragment$CharacterShort?>? Function(
                  Iterable<
                      CopyWith$Fragment$CharacterShort<
                          Fragment$CharacterShort>?>?)
              _fn) =>
      call(
          nodes: _fn(_instance.nodes?.map((e) => e == null
              ? null
              : CopyWith$Fragment$CharacterShort(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$FavoriteCharacters$User$favourites$characters<
        TRes>
    implements
        CopyWith$Query$FavoriteCharacters$User$favourites$characters<TRes> {
  _CopyWithStubImpl$Query$FavoriteCharacters$User$favourites$characters(
      this._res);

  TRes _res;

  call({
    Query$FavoriteCharacters$User$favourites$characters$pageInfo? pageInfo,
    List<Fragment$CharacterShort?>? nodes,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$FavoriteCharacters$User$favourites$characters$pageInfo<TRes>
      get pageInfo =>
          CopyWith$Query$FavoriteCharacters$User$favourites$characters$pageInfo
              .stub(_res);

  nodes(_fn) => _res;
}

class Query$FavoriteCharacters$User$favourites$characters$pageInfo {
  Query$FavoriteCharacters$User$favourites$characters$pageInfo({
    this.hasNextPage,
    this.$__typename = 'PageInfo',
  });

  factory Query$FavoriteCharacters$User$favourites$characters$pageInfo.fromJson(
      Map<String, dynamic> json) {
    final l$hasNextPage = json['hasNextPage'];
    final l$$__typename = json['__typename'];
    return Query$FavoriteCharacters$User$favourites$characters$pageInfo(
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
    if (!(other
            is Query$FavoriteCharacters$User$favourites$characters$pageInfo) ||
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

extension UtilityExtension$Query$FavoriteCharacters$User$favourites$characters$pageInfo
    on Query$FavoriteCharacters$User$favourites$characters$pageInfo {
  CopyWith$Query$FavoriteCharacters$User$favourites$characters$pageInfo<
          Query$FavoriteCharacters$User$favourites$characters$pageInfo>
      get copyWith =>
          CopyWith$Query$FavoriteCharacters$User$favourites$characters$pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FavoriteCharacters$User$favourites$characters$pageInfo<
    TRes> {
  factory CopyWith$Query$FavoriteCharacters$User$favourites$characters$pageInfo(
    Query$FavoriteCharacters$User$favourites$characters$pageInfo instance,
    TRes Function(Query$FavoriteCharacters$User$favourites$characters$pageInfo)
        then,
  ) = _CopyWithImpl$Query$FavoriteCharacters$User$favourites$characters$pageInfo;

  factory CopyWith$Query$FavoriteCharacters$User$favourites$characters$pageInfo.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FavoriteCharacters$User$favourites$characters$pageInfo;

  TRes call({
    bool? hasNextPage,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FavoriteCharacters$User$favourites$characters$pageInfo<
        TRes>
    implements
        CopyWith$Query$FavoriteCharacters$User$favourites$characters$pageInfo<
            TRes> {
  _CopyWithImpl$Query$FavoriteCharacters$User$favourites$characters$pageInfo(
    this._instance,
    this._then,
  );

  final Query$FavoriteCharacters$User$favourites$characters$pageInfo _instance;

  final TRes Function(
      Query$FavoriteCharacters$User$favourites$characters$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasNextPage = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FavoriteCharacters$User$favourites$characters$pageInfo(
        hasNextPage: hasNextPage == _undefined
            ? _instance.hasNextPage
            : (hasNextPage as bool?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FavoriteCharacters$User$favourites$characters$pageInfo<
        TRes>
    implements
        CopyWith$Query$FavoriteCharacters$User$favourites$characters$pageInfo<
            TRes> {
  _CopyWithStubImpl$Query$FavoriteCharacters$User$favourites$characters$pageInfo(
      this._res);

  TRes _res;

  call({
    bool? hasNextPage,
    String? $__typename,
  }) =>
      _res;
}
