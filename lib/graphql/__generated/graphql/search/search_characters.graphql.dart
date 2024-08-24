// GENERATED FILE
// DO NOT MODIFY
// ignore_for_file: type=lint
import 'dart:async';

import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

import '../fragments.graphql.dart';

class Variables$Query$SearchCharacters {
  factory Variables$Query$SearchCharacters({
    int? page,
    String? search,
  }) =>
      Variables$Query$SearchCharacters._({
        if (page != null) r'page': page,
        if (search != null) r'search': search,
      });

  Variables$Query$SearchCharacters._(this._$data);

  factory Variables$Query$SearchCharacters.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('page')) {
      final l$page = data['page'];
      result$data['page'] = (l$page as int?);
    }
    if (data.containsKey('search')) {
      final l$search = data['search'];
      result$data['search'] = (l$search as String?);
    }
    return Variables$Query$SearchCharacters._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get page => (_$data['page'] as int?);

  String? get search => (_$data['search'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('page')) {
      final l$page = page;
      result$data['page'] = l$page;
    }
    if (_$data.containsKey('search')) {
      final l$search = search;
      result$data['search'] = l$search;
    }
    return result$data;
  }

  CopyWith$Variables$Query$SearchCharacters<Variables$Query$SearchCharacters>
      get copyWith => CopyWith$Variables$Query$SearchCharacters(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$SearchCharacters) ||
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
    final l$search = search;
    final lOther$search = other.search;
    if (_$data.containsKey('search') != other._$data.containsKey('search')) {
      return false;
    }
    if (l$search != lOther$search) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$page = page;
    final l$search = search;
    return Object.hashAll([
      _$data.containsKey('page') ? l$page : const {},
      _$data.containsKey('search') ? l$search : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$SearchCharacters<TRes> {
  factory CopyWith$Variables$Query$SearchCharacters(
    Variables$Query$SearchCharacters instance,
    TRes Function(Variables$Query$SearchCharacters) then,
  ) = _CopyWithImpl$Variables$Query$SearchCharacters;

  factory CopyWith$Variables$Query$SearchCharacters.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$SearchCharacters;

  TRes call({
    int? page,
    String? search,
  });
}

class _CopyWithImpl$Variables$Query$SearchCharacters<TRes>
    implements CopyWith$Variables$Query$SearchCharacters<TRes> {
  _CopyWithImpl$Variables$Query$SearchCharacters(
    this._instance,
    this._then,
  );

  final Variables$Query$SearchCharacters _instance;

  final TRes Function(Variables$Query$SearchCharacters) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? page = _undefined,
    Object? search = _undefined,
  }) =>
      _then(Variables$Query$SearchCharacters._({
        ..._instance._$data,
        if (page != _undefined) 'page': (page as int?),
        if (search != _undefined) 'search': (search as String?),
      }));
}

class _CopyWithStubImpl$Variables$Query$SearchCharacters<TRes>
    implements CopyWith$Variables$Query$SearchCharacters<TRes> {
  _CopyWithStubImpl$Variables$Query$SearchCharacters(this._res);

  TRes _res;

  call({
    int? page,
    String? search,
  }) =>
      _res;
}

class Query$SearchCharacters {
  Query$SearchCharacters({
    this.Page,
    this.$__typename = 'Query',
  });

  factory Query$SearchCharacters.fromJson(Map<String, dynamic> json) {
    final l$Page = json['Page'];
    final l$$__typename = json['__typename'];
    return Query$SearchCharacters(
      Page: l$Page == null
          ? null
          : Query$SearchCharacters$Page.fromJson(
              (l$Page as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$SearchCharacters$Page? Page;

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
    if (!(other is Query$SearchCharacters) ||
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

extension UtilityExtension$Query$SearchCharacters on Query$SearchCharacters {
  CopyWith$Query$SearchCharacters<Query$SearchCharacters> get copyWith =>
      CopyWith$Query$SearchCharacters(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SearchCharacters<TRes> {
  factory CopyWith$Query$SearchCharacters(
    Query$SearchCharacters instance,
    TRes Function(Query$SearchCharacters) then,
  ) = _CopyWithImpl$Query$SearchCharacters;

  factory CopyWith$Query$SearchCharacters.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchCharacters;

  TRes call({
    Query$SearchCharacters$Page? Page,
    String? $__typename,
  });
  CopyWith$Query$SearchCharacters$Page<TRes> get Page;
}

class _CopyWithImpl$Query$SearchCharacters<TRes>
    implements CopyWith$Query$SearchCharacters<TRes> {
  _CopyWithImpl$Query$SearchCharacters(
    this._instance,
    this._then,
  );

  final Query$SearchCharacters _instance;

  final TRes Function(Query$SearchCharacters) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? Page = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$SearchCharacters(
        Page: Page == _undefined
            ? _instance.Page
            : (Page as Query$SearchCharacters$Page?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$SearchCharacters$Page<TRes> get Page {
    final local$Page = _instance.Page;
    return local$Page == null
        ? CopyWith$Query$SearchCharacters$Page.stub(_then(_instance))
        : CopyWith$Query$SearchCharacters$Page(
            local$Page, (e) => call(Page: e));
  }
}

class _CopyWithStubImpl$Query$SearchCharacters<TRes>
    implements CopyWith$Query$SearchCharacters<TRes> {
  _CopyWithStubImpl$Query$SearchCharacters(this._res);

  TRes _res;

  call({
    Query$SearchCharacters$Page? Page,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$SearchCharacters$Page<TRes> get Page =>
      CopyWith$Query$SearchCharacters$Page.stub(_res);
}

const documentNodeQuerySearchCharacters = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'SearchCharacters'),
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
        variable: VariableNode(name: NameNode(value: 'search')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
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
            value: IntValueNode(value: '50'),
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
                name: NameNode(value: 'search'),
                value: VariableNode(name: NameNode(value: 'search')),
              ),
              ArgumentNode(
                name: NameNode(value: 'sort'),
                value: ListValueNode(values: [
                  EnumValueNode(name: NameNode(value: 'SEARCH_MATCH')),
                  EnumValueNode(name: NameNode(value: 'FAVOURITES_DESC')),
                ]),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                name: NameNode(value: 'SearchResultCharacter'),
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
  fragmentDefinitionSearchResultCharacter,
]);
Query$SearchCharacters _parserFn$Query$SearchCharacters(
        Map<String, dynamic> data) =>
    Query$SearchCharacters.fromJson(data);
typedef OnQueryComplete$Query$SearchCharacters = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$SearchCharacters?,
);

class Options$Query$SearchCharacters
    extends graphql.QueryOptions<Query$SearchCharacters> {
  Options$Query$SearchCharacters({
    String? operationName,
    Variables$Query$SearchCharacters? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$SearchCharacters? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$SearchCharacters? onComplete,
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
                        : _parserFn$Query$SearchCharacters(data),
                  ),
          onError: onError,
          document: documentNodeQuerySearchCharacters,
          parserFn: _parserFn$Query$SearchCharacters,
        );

  final OnQueryComplete$Query$SearchCharacters? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$SearchCharacters
    extends graphql.WatchQueryOptions<Query$SearchCharacters> {
  WatchOptions$Query$SearchCharacters({
    String? operationName,
    Variables$Query$SearchCharacters? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$SearchCharacters? typedOptimisticResult,
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
          document: documentNodeQuerySearchCharacters,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$SearchCharacters,
        );
}

class FetchMoreOptions$Query$SearchCharacters extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$SearchCharacters({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$SearchCharacters? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQuerySearchCharacters,
        );
}

extension ClientExtension$Query$SearchCharacters on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$SearchCharacters>> query$SearchCharacters(
          [Options$Query$SearchCharacters? options]) async =>
      await this.query(options ?? Options$Query$SearchCharacters());
  graphql.ObservableQuery<Query$SearchCharacters> watchQuery$SearchCharacters(
          [WatchOptions$Query$SearchCharacters? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$SearchCharacters());
  void writeQuery$SearchCharacters({
    required Query$SearchCharacters data,
    Variables$Query$SearchCharacters? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQuerySearchCharacters),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$SearchCharacters? readQuery$SearchCharacters({
    Variables$Query$SearchCharacters? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation:
            graphql.Operation(document: documentNodeQuerySearchCharacters),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$SearchCharacters.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$SearchCharacters>
    useQuery$SearchCharacters([Options$Query$SearchCharacters? options]) =>
        graphql_flutter.useQuery(options ?? Options$Query$SearchCharacters());
graphql.ObservableQuery<Query$SearchCharacters> useWatchQuery$SearchCharacters(
        [WatchOptions$Query$SearchCharacters? options]) =>
    graphql_flutter
        .useWatchQuery(options ?? WatchOptions$Query$SearchCharacters());

class Query$SearchCharacters$Widget
    extends graphql_flutter.Query<Query$SearchCharacters> {
  Query$SearchCharacters$Widget({
    widgets.Key? key,
    Options$Query$SearchCharacters? options,
    required graphql_flutter.QueryBuilder<Query$SearchCharacters> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$SearchCharacters(),
          builder: builder,
        );
}

class Query$SearchCharacters$Page {
  Query$SearchCharacters$Page({
    this.pageInfo,
    this.characters,
    this.$__typename = 'Page',
  });

  factory Query$SearchCharacters$Page.fromJson(Map<String, dynamic> json) {
    final l$pageInfo = json['pageInfo'];
    final l$characters = json['characters'];
    final l$$__typename = json['__typename'];
    return Query$SearchCharacters$Page(
      pageInfo: l$pageInfo == null
          ? null
          : Query$SearchCharacters$Page$pageInfo.fromJson(
              (l$pageInfo as Map<String, dynamic>)),
      characters: (l$characters as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$SearchResultCharacter.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$SearchCharacters$Page$pageInfo? pageInfo;

  final List<Fragment$SearchResultCharacter?>? characters;

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
    if (!(other is Query$SearchCharacters$Page) ||
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

extension UtilityExtension$Query$SearchCharacters$Page
    on Query$SearchCharacters$Page {
  CopyWith$Query$SearchCharacters$Page<Query$SearchCharacters$Page>
      get copyWith => CopyWith$Query$SearchCharacters$Page(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$SearchCharacters$Page<TRes> {
  factory CopyWith$Query$SearchCharacters$Page(
    Query$SearchCharacters$Page instance,
    TRes Function(Query$SearchCharacters$Page) then,
  ) = _CopyWithImpl$Query$SearchCharacters$Page;

  factory CopyWith$Query$SearchCharacters$Page.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchCharacters$Page;

  TRes call({
    Query$SearchCharacters$Page$pageInfo? pageInfo,
    List<Fragment$SearchResultCharacter?>? characters,
    String? $__typename,
  });
  CopyWith$Query$SearchCharacters$Page$pageInfo<TRes> get pageInfo;
  TRes characters(
      Iterable<Fragment$SearchResultCharacter?>? Function(
              Iterable<
                  CopyWith$Fragment$SearchResultCharacter<
                      Fragment$SearchResultCharacter>?>?)
          _fn);
}

class _CopyWithImpl$Query$SearchCharacters$Page<TRes>
    implements CopyWith$Query$SearchCharacters$Page<TRes> {
  _CopyWithImpl$Query$SearchCharacters$Page(
    this._instance,
    this._then,
  );

  final Query$SearchCharacters$Page _instance;

  final TRes Function(Query$SearchCharacters$Page) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pageInfo = _undefined,
    Object? characters = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$SearchCharacters$Page(
        pageInfo: pageInfo == _undefined
            ? _instance.pageInfo
            : (pageInfo as Query$SearchCharacters$Page$pageInfo?),
        characters: characters == _undefined
            ? _instance.characters
            : (characters as List<Fragment$SearchResultCharacter?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$SearchCharacters$Page$pageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return local$pageInfo == null
        ? CopyWith$Query$SearchCharacters$Page$pageInfo.stub(_then(_instance))
        : CopyWith$Query$SearchCharacters$Page$pageInfo(
            local$pageInfo, (e) => call(pageInfo: e));
  }

  TRes characters(
          Iterable<Fragment$SearchResultCharacter?>? Function(
                  Iterable<
                      CopyWith$Fragment$SearchResultCharacter<
                          Fragment$SearchResultCharacter>?>?)
              _fn) =>
      call(
          characters: _fn(_instance.characters?.map((e) => e == null
              ? null
              : CopyWith$Fragment$SearchResultCharacter(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$SearchCharacters$Page<TRes>
    implements CopyWith$Query$SearchCharacters$Page<TRes> {
  _CopyWithStubImpl$Query$SearchCharacters$Page(this._res);

  TRes _res;

  call({
    Query$SearchCharacters$Page$pageInfo? pageInfo,
    List<Fragment$SearchResultCharacter?>? characters,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$SearchCharacters$Page$pageInfo<TRes> get pageInfo =>
      CopyWith$Query$SearchCharacters$Page$pageInfo.stub(_res);

  characters(_fn) => _res;
}

class Query$SearchCharacters$Page$pageInfo {
  Query$SearchCharacters$Page$pageInfo({
    this.hasNextPage,
    this.$__typename = 'PageInfo',
  });

  factory Query$SearchCharacters$Page$pageInfo.fromJson(
      Map<String, dynamic> json) {
    final l$hasNextPage = json['hasNextPage'];
    final l$$__typename = json['__typename'];
    return Query$SearchCharacters$Page$pageInfo(
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
    if (!(other is Query$SearchCharacters$Page$pageInfo) ||
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

extension UtilityExtension$Query$SearchCharacters$Page$pageInfo
    on Query$SearchCharacters$Page$pageInfo {
  CopyWith$Query$SearchCharacters$Page$pageInfo<
          Query$SearchCharacters$Page$pageInfo>
      get copyWith => CopyWith$Query$SearchCharacters$Page$pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$SearchCharacters$Page$pageInfo<TRes> {
  factory CopyWith$Query$SearchCharacters$Page$pageInfo(
    Query$SearchCharacters$Page$pageInfo instance,
    TRes Function(Query$SearchCharacters$Page$pageInfo) then,
  ) = _CopyWithImpl$Query$SearchCharacters$Page$pageInfo;

  factory CopyWith$Query$SearchCharacters$Page$pageInfo.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchCharacters$Page$pageInfo;

  TRes call({
    bool? hasNextPage,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$SearchCharacters$Page$pageInfo<TRes>
    implements CopyWith$Query$SearchCharacters$Page$pageInfo<TRes> {
  _CopyWithImpl$Query$SearchCharacters$Page$pageInfo(
    this._instance,
    this._then,
  );

  final Query$SearchCharacters$Page$pageInfo _instance;

  final TRes Function(Query$SearchCharacters$Page$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasNextPage = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$SearchCharacters$Page$pageInfo(
        hasNextPage: hasNextPage == _undefined
            ? _instance.hasNextPage
            : (hasNextPage as bool?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$SearchCharacters$Page$pageInfo<TRes>
    implements CopyWith$Query$SearchCharacters$Page$pageInfo<TRes> {
  _CopyWithStubImpl$Query$SearchCharacters$Page$pageInfo(this._res);

  TRes _res;

  call({
    bool? hasNextPage,
    String? $__typename,
  }) =>
      _res;
}
