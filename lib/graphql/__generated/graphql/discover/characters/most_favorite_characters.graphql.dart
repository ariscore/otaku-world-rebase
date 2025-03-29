// GENERATED FILE
// DO NOT MODIFY
// ignore_for_file: type=lint
import '../../fragments.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$GetMostFavoriteCharacters {
  factory Variables$Query$GetMostFavoriteCharacters({int? page}) =>
      Variables$Query$GetMostFavoriteCharacters._({
        if (page != null) r'page': page,
      });

  Variables$Query$GetMostFavoriteCharacters._(this._$data);

  factory Variables$Query$GetMostFavoriteCharacters.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('page')) {
      final l$page = data['page'];
      result$data['page'] = (l$page as int?);
    }
    return Variables$Query$GetMostFavoriteCharacters._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get page => (_$data['page'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('page')) {
      final l$page = page;
      result$data['page'] = l$page;
    }
    return result$data;
  }

  CopyWith$Variables$Query$GetMostFavoriteCharacters<
          Variables$Query$GetMostFavoriteCharacters>
      get copyWith => CopyWith$Variables$Query$GetMostFavoriteCharacters(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$GetMostFavoriteCharacters ||
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
    return true;
  }

  @override
  int get hashCode {
    final l$page = page;
    return Object.hashAll([_$data.containsKey('page') ? l$page : const {}]);
  }
}

abstract class CopyWith$Variables$Query$GetMostFavoriteCharacters<TRes> {
  factory CopyWith$Variables$Query$GetMostFavoriteCharacters(
    Variables$Query$GetMostFavoriteCharacters instance,
    TRes Function(Variables$Query$GetMostFavoriteCharacters) then,
  ) = _CopyWithImpl$Variables$Query$GetMostFavoriteCharacters;

  factory CopyWith$Variables$Query$GetMostFavoriteCharacters.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetMostFavoriteCharacters;

  TRes call({int? page});
}

class _CopyWithImpl$Variables$Query$GetMostFavoriteCharacters<TRes>
    implements CopyWith$Variables$Query$GetMostFavoriteCharacters<TRes> {
  _CopyWithImpl$Variables$Query$GetMostFavoriteCharacters(
    this._instance,
    this._then,
  );

  final Variables$Query$GetMostFavoriteCharacters _instance;

  final TRes Function(Variables$Query$GetMostFavoriteCharacters) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? page = _undefined}) =>
      _then(Variables$Query$GetMostFavoriteCharacters._({
        ..._instance._$data,
        if (page != _undefined) 'page': (page as int?),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetMostFavoriteCharacters<TRes>
    implements CopyWith$Variables$Query$GetMostFavoriteCharacters<TRes> {
  _CopyWithStubImpl$Variables$Query$GetMostFavoriteCharacters(this._res);

  TRes _res;

  call({int? page}) => _res;
}

class Query$GetMostFavoriteCharacters {
  Query$GetMostFavoriteCharacters({
    this.Page,
    this.$__typename = 'Query',
  });

  factory Query$GetMostFavoriteCharacters.fromJson(Map<String, dynamic> json) {
    final l$Page = json['Page'];
    final l$$__typename = json['__typename'];
    return Query$GetMostFavoriteCharacters(
      Page: l$Page == null
          ? null
          : Query$GetMostFavoriteCharacters$Page.fromJson(
              (l$Page as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetMostFavoriteCharacters$Page? Page;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$Page = Page;
    _resultData['Page'] = l$Page?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$Page = Page;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$Page,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetMostFavoriteCharacters ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$Page = Page;
    final lOther$Page = other.Page;
    if (l$Page != lOther$Page) {
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

extension UtilityExtension$Query$GetMostFavoriteCharacters
    on Query$GetMostFavoriteCharacters {
  CopyWith$Query$GetMostFavoriteCharacters<Query$GetMostFavoriteCharacters>
      get copyWith => CopyWith$Query$GetMostFavoriteCharacters(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetMostFavoriteCharacters<TRes> {
  factory CopyWith$Query$GetMostFavoriteCharacters(
    Query$GetMostFavoriteCharacters instance,
    TRes Function(Query$GetMostFavoriteCharacters) then,
  ) = _CopyWithImpl$Query$GetMostFavoriteCharacters;

  factory CopyWith$Query$GetMostFavoriteCharacters.stub(TRes res) =
      _CopyWithStubImpl$Query$GetMostFavoriteCharacters;

  TRes call({
    Query$GetMostFavoriteCharacters$Page? Page,
    String? $__typename,
  });
  CopyWith$Query$GetMostFavoriteCharacters$Page<TRes> get Page;
}

class _CopyWithImpl$Query$GetMostFavoriteCharacters<TRes>
    implements CopyWith$Query$GetMostFavoriteCharacters<TRes> {
  _CopyWithImpl$Query$GetMostFavoriteCharacters(
    this._instance,
    this._then,
  );

  final Query$GetMostFavoriteCharacters _instance;

  final TRes Function(Query$GetMostFavoriteCharacters) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? Page = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetMostFavoriteCharacters(
        Page: Page == _undefined
            ? _instance.Page
            : (Page as Query$GetMostFavoriteCharacters$Page?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetMostFavoriteCharacters$Page<TRes> get Page {
    final local$Page = _instance.Page;
    return local$Page == null
        ? CopyWith$Query$GetMostFavoriteCharacters$Page.stub(_then(_instance))
        : CopyWith$Query$GetMostFavoriteCharacters$Page(
            local$Page, (e) => call(Page: e));
  }
}

class _CopyWithStubImpl$Query$GetMostFavoriteCharacters<TRes>
    implements CopyWith$Query$GetMostFavoriteCharacters<TRes> {
  _CopyWithStubImpl$Query$GetMostFavoriteCharacters(this._res);

  TRes _res;

  call({
    Query$GetMostFavoriteCharacters$Page? Page,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetMostFavoriteCharacters$Page<TRes> get Page =>
      CopyWith$Query$GetMostFavoriteCharacters$Page.stub(_res);
}

const documentNodeQueryGetMostFavoriteCharacters = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetMostFavoriteCharacters'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'page')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'Page'),
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
            name: NameNode(value: 'characters'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'sort'),
                value: ListValueNode(values: [
                  EnumValueNode(name: NameNode(value: 'FAVOURITES_DESC'))
                ]),
              )
            ],
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
  fragmentDefinitionCharacterShort,
]);
Query$GetMostFavoriteCharacters _parserFn$Query$GetMostFavoriteCharacters(
        Map<String, dynamic> data) =>
    Query$GetMostFavoriteCharacters.fromJson(data);
typedef OnQueryComplete$Query$GetMostFavoriteCharacters = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Query$GetMostFavoriteCharacters?,
);

class Options$Query$GetMostFavoriteCharacters
    extends graphql.QueryOptions<Query$GetMostFavoriteCharacters> {
  Options$Query$GetMostFavoriteCharacters({
    String? operationName,
    Variables$Query$GetMostFavoriteCharacters? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetMostFavoriteCharacters? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$GetMostFavoriteCharacters? onComplete,
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
                        : _parserFn$Query$GetMostFavoriteCharacters(data),
                  ),
          onError: onError,
          document: documentNodeQueryGetMostFavoriteCharacters,
          parserFn: _parserFn$Query$GetMostFavoriteCharacters,
        );

  final OnQueryComplete$Query$GetMostFavoriteCharacters? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$GetMostFavoriteCharacters
    extends graphql.WatchQueryOptions<Query$GetMostFavoriteCharacters> {
  WatchOptions$Query$GetMostFavoriteCharacters({
    String? operationName,
    Variables$Query$GetMostFavoriteCharacters? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetMostFavoriteCharacters? typedOptimisticResult,
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
          document: documentNodeQueryGetMostFavoriteCharacters,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetMostFavoriteCharacters,
        );
}

class FetchMoreOptions$Query$GetMostFavoriteCharacters
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetMostFavoriteCharacters({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$GetMostFavoriteCharacters? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryGetMostFavoriteCharacters,
        );
}

extension ClientExtension$Query$GetMostFavoriteCharacters
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetMostFavoriteCharacters>>
      query$GetMostFavoriteCharacters(
              [Options$Query$GetMostFavoriteCharacters? options]) async =>
          await this
              .query(options ?? Options$Query$GetMostFavoriteCharacters());
  graphql.ObservableQuery<Query$GetMostFavoriteCharacters>
      watchQuery$GetMostFavoriteCharacters(
              [WatchOptions$Query$GetMostFavoriteCharacters? options]) =>
          this.watchQuery(
              options ?? WatchOptions$Query$GetMostFavoriteCharacters());
  void writeQuery$GetMostFavoriteCharacters({
    required Query$GetMostFavoriteCharacters data,
    Variables$Query$GetMostFavoriteCharacters? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(
              document: documentNodeQueryGetMostFavoriteCharacters),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetMostFavoriteCharacters? readQuery$GetMostFavoriteCharacters({
    Variables$Query$GetMostFavoriteCharacters? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(
            document: documentNodeQueryGetMostFavoriteCharacters),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null
        ? null
        : Query$GetMostFavoriteCharacters.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$GetMostFavoriteCharacters>
    useQuery$GetMostFavoriteCharacters(
            [Options$Query$GetMostFavoriteCharacters? options]) =>
        graphql_flutter
            .useQuery(options ?? Options$Query$GetMostFavoriteCharacters());
graphql.ObservableQuery<Query$GetMostFavoriteCharacters>
    useWatchQuery$GetMostFavoriteCharacters(
            [WatchOptions$Query$GetMostFavoriteCharacters? options]) =>
        graphql_flutter.useWatchQuery(
            options ?? WatchOptions$Query$GetMostFavoriteCharacters());

class Query$GetMostFavoriteCharacters$Widget
    extends graphql_flutter.Query<Query$GetMostFavoriteCharacters> {
  Query$GetMostFavoriteCharacters$Widget({
    widgets.Key? key,
    Options$Query$GetMostFavoriteCharacters? options,
    required graphql_flutter.QueryBuilder<Query$GetMostFavoriteCharacters>
        builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$GetMostFavoriteCharacters(),
          builder: builder,
        );
}

class Query$GetMostFavoriteCharacters$Page {
  Query$GetMostFavoriteCharacters$Page({
    this.pageInfo,
    this.characters,
    this.$__typename = 'Page',
  });

  factory Query$GetMostFavoriteCharacters$Page.fromJson(
      Map<String, dynamic> json) {
    final l$pageInfo = json['pageInfo'];
    final l$characters = json['characters'];
    final l$$__typename = json['__typename'];
    return Query$GetMostFavoriteCharacters$Page(
      pageInfo: l$pageInfo == null
          ? null
          : Query$GetMostFavoriteCharacters$Page$pageInfo.fromJson(
              (l$pageInfo as Map<String, dynamic>)),
      characters: (l$characters as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$CharacterShort.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetMostFavoriteCharacters$Page$pageInfo? pageInfo;

  final List<Fragment$CharacterShort?>? characters;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$pageInfo = pageInfo;
    _resultData['pageInfo'] = l$pageInfo?.toJson();
    final l$characters = characters;
    _resultData['characters'] = l$characters?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$pageInfo = pageInfo;
    final l$characters = characters;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$pageInfo,
      l$characters == null ? null : Object.hashAll(l$characters.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetMostFavoriteCharacters$Page ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$pageInfo = pageInfo;
    final lOther$pageInfo = other.pageInfo;
    if (l$pageInfo != lOther$pageInfo) {
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

extension UtilityExtension$Query$GetMostFavoriteCharacters$Page
    on Query$GetMostFavoriteCharacters$Page {
  CopyWith$Query$GetMostFavoriteCharacters$Page<
          Query$GetMostFavoriteCharacters$Page>
      get copyWith => CopyWith$Query$GetMostFavoriteCharacters$Page(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetMostFavoriteCharacters$Page<TRes> {
  factory CopyWith$Query$GetMostFavoriteCharacters$Page(
    Query$GetMostFavoriteCharacters$Page instance,
    TRes Function(Query$GetMostFavoriteCharacters$Page) then,
  ) = _CopyWithImpl$Query$GetMostFavoriteCharacters$Page;

  factory CopyWith$Query$GetMostFavoriteCharacters$Page.stub(TRes res) =
      _CopyWithStubImpl$Query$GetMostFavoriteCharacters$Page;

  TRes call({
    Query$GetMostFavoriteCharacters$Page$pageInfo? pageInfo,
    List<Fragment$CharacterShort?>? characters,
    String? $__typename,
  });
  CopyWith$Query$GetMostFavoriteCharacters$Page$pageInfo<TRes> get pageInfo;
  TRes characters(
      Iterable<Fragment$CharacterShort?>? Function(
              Iterable<
                  CopyWith$Fragment$CharacterShort<Fragment$CharacterShort>?>?)
          _fn);
}

class _CopyWithImpl$Query$GetMostFavoriteCharacters$Page<TRes>
    implements CopyWith$Query$GetMostFavoriteCharacters$Page<TRes> {
  _CopyWithImpl$Query$GetMostFavoriteCharacters$Page(
    this._instance,
    this._then,
  );

  final Query$GetMostFavoriteCharacters$Page _instance;

  final TRes Function(Query$GetMostFavoriteCharacters$Page) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pageInfo = _undefined,
    Object? characters = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetMostFavoriteCharacters$Page(
        pageInfo: pageInfo == _undefined
            ? _instance.pageInfo
            : (pageInfo as Query$GetMostFavoriteCharacters$Page$pageInfo?),
        characters: characters == _undefined
            ? _instance.characters
            : (characters as List<Fragment$CharacterShort?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetMostFavoriteCharacters$Page$pageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return local$pageInfo == null
        ? CopyWith$Query$GetMostFavoriteCharacters$Page$pageInfo.stub(
            _then(_instance))
        : CopyWith$Query$GetMostFavoriteCharacters$Page$pageInfo(
            local$pageInfo, (e) => call(pageInfo: e));
  }

  TRes characters(
          Iterable<Fragment$CharacterShort?>? Function(
                  Iterable<
                      CopyWith$Fragment$CharacterShort<
                          Fragment$CharacterShort>?>?)
              _fn) =>
      call(
          characters: _fn(_instance.characters?.map((e) => e == null
              ? null
              : CopyWith$Fragment$CharacterShort(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$GetMostFavoriteCharacters$Page<TRes>
    implements CopyWith$Query$GetMostFavoriteCharacters$Page<TRes> {
  _CopyWithStubImpl$Query$GetMostFavoriteCharacters$Page(this._res);

  TRes _res;

  call({
    Query$GetMostFavoriteCharacters$Page$pageInfo? pageInfo,
    List<Fragment$CharacterShort?>? characters,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetMostFavoriteCharacters$Page$pageInfo<TRes> get pageInfo =>
      CopyWith$Query$GetMostFavoriteCharacters$Page$pageInfo.stub(_res);

  characters(_fn) => _res;
}

class Query$GetMostFavoriteCharacters$Page$pageInfo {
  Query$GetMostFavoriteCharacters$Page$pageInfo({
    this.hasNextPage,
    this.$__typename = 'PageInfo',
  });

  factory Query$GetMostFavoriteCharacters$Page$pageInfo.fromJson(
      Map<String, dynamic> json) {
    final l$hasNextPage = json['hasNextPage'];
    final l$$__typename = json['__typename'];
    return Query$GetMostFavoriteCharacters$Page$pageInfo(
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
    if (other is! Query$GetMostFavoriteCharacters$Page$pageInfo ||
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

extension UtilityExtension$Query$GetMostFavoriteCharacters$Page$pageInfo
    on Query$GetMostFavoriteCharacters$Page$pageInfo {
  CopyWith$Query$GetMostFavoriteCharacters$Page$pageInfo<
          Query$GetMostFavoriteCharacters$Page$pageInfo>
      get copyWith => CopyWith$Query$GetMostFavoriteCharacters$Page$pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetMostFavoriteCharacters$Page$pageInfo<TRes> {
  factory CopyWith$Query$GetMostFavoriteCharacters$Page$pageInfo(
    Query$GetMostFavoriteCharacters$Page$pageInfo instance,
    TRes Function(Query$GetMostFavoriteCharacters$Page$pageInfo) then,
  ) = _CopyWithImpl$Query$GetMostFavoriteCharacters$Page$pageInfo;

  factory CopyWith$Query$GetMostFavoriteCharacters$Page$pageInfo.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetMostFavoriteCharacters$Page$pageInfo;

  TRes call({
    bool? hasNextPage,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetMostFavoriteCharacters$Page$pageInfo<TRes>
    implements CopyWith$Query$GetMostFavoriteCharacters$Page$pageInfo<TRes> {
  _CopyWithImpl$Query$GetMostFavoriteCharacters$Page$pageInfo(
    this._instance,
    this._then,
  );

  final Query$GetMostFavoriteCharacters$Page$pageInfo _instance;

  final TRes Function(Query$GetMostFavoriteCharacters$Page$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasNextPage = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetMostFavoriteCharacters$Page$pageInfo(
        hasNextPage: hasNextPage == _undefined
            ? _instance.hasNextPage
            : (hasNextPage as bool?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetMostFavoriteCharacters$Page$pageInfo<TRes>
    implements CopyWith$Query$GetMostFavoriteCharacters$Page$pageInfo<TRes> {
  _CopyWithStubImpl$Query$GetMostFavoriteCharacters$Page$pageInfo(this._res);

  TRes _res;

  call({
    bool? hasNextPage,
    String? $__typename,
  }) =>
      _res;
}
