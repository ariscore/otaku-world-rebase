// GENERATED FILE
// DO NOT MODIFY
// ignore_for_file: type=lint
import '../../fragments.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$GetBirthdayCharacters {
  factory Variables$Query$GetBirthdayCharacters({int? page}) =>
      Variables$Query$GetBirthdayCharacters._({
        if (page != null) r'page': page,
      });

  Variables$Query$GetBirthdayCharacters._(this._$data);

  factory Variables$Query$GetBirthdayCharacters.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('page')) {
      final l$page = data['page'];
      result$data['page'] = (l$page as int?);
    }
    return Variables$Query$GetBirthdayCharacters._(result$data);
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

  CopyWith$Variables$Query$GetBirthdayCharacters<
          Variables$Query$GetBirthdayCharacters>
      get copyWith => CopyWith$Variables$Query$GetBirthdayCharacters(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$GetBirthdayCharacters ||
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

abstract class CopyWith$Variables$Query$GetBirthdayCharacters<TRes> {
  factory CopyWith$Variables$Query$GetBirthdayCharacters(
    Variables$Query$GetBirthdayCharacters instance,
    TRes Function(Variables$Query$GetBirthdayCharacters) then,
  ) = _CopyWithImpl$Variables$Query$GetBirthdayCharacters;

  factory CopyWith$Variables$Query$GetBirthdayCharacters.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetBirthdayCharacters;

  TRes call({int? page});
}

class _CopyWithImpl$Variables$Query$GetBirthdayCharacters<TRes>
    implements CopyWith$Variables$Query$GetBirthdayCharacters<TRes> {
  _CopyWithImpl$Variables$Query$GetBirthdayCharacters(
    this._instance,
    this._then,
  );

  final Variables$Query$GetBirthdayCharacters _instance;

  final TRes Function(Variables$Query$GetBirthdayCharacters) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? page = _undefined}) =>
      _then(Variables$Query$GetBirthdayCharacters._({
        ..._instance._$data,
        if (page != _undefined) 'page': (page as int?),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetBirthdayCharacters<TRes>
    implements CopyWith$Variables$Query$GetBirthdayCharacters<TRes> {
  _CopyWithStubImpl$Variables$Query$GetBirthdayCharacters(this._res);

  TRes _res;

  call({int? page}) => _res;
}

class Query$GetBirthdayCharacters {
  Query$GetBirthdayCharacters({
    this.Page,
    this.$__typename = 'Query',
  });

  factory Query$GetBirthdayCharacters.fromJson(Map<String, dynamic> json) {
    final l$Page = json['Page'];
    final l$$__typename = json['__typename'];
    return Query$GetBirthdayCharacters(
      Page: l$Page == null
          ? null
          : Query$GetBirthdayCharacters$Page.fromJson(
              (l$Page as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetBirthdayCharacters$Page? Page;

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
    if (other is! Query$GetBirthdayCharacters ||
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

extension UtilityExtension$Query$GetBirthdayCharacters
    on Query$GetBirthdayCharacters {
  CopyWith$Query$GetBirthdayCharacters<Query$GetBirthdayCharacters>
      get copyWith => CopyWith$Query$GetBirthdayCharacters(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetBirthdayCharacters<TRes> {
  factory CopyWith$Query$GetBirthdayCharacters(
    Query$GetBirthdayCharacters instance,
    TRes Function(Query$GetBirthdayCharacters) then,
  ) = _CopyWithImpl$Query$GetBirthdayCharacters;

  factory CopyWith$Query$GetBirthdayCharacters.stub(TRes res) =
      _CopyWithStubImpl$Query$GetBirthdayCharacters;

  TRes call({
    Query$GetBirthdayCharacters$Page? Page,
    String? $__typename,
  });
  CopyWith$Query$GetBirthdayCharacters$Page<TRes> get Page;
}

class _CopyWithImpl$Query$GetBirthdayCharacters<TRes>
    implements CopyWith$Query$GetBirthdayCharacters<TRes> {
  _CopyWithImpl$Query$GetBirthdayCharacters(
    this._instance,
    this._then,
  );

  final Query$GetBirthdayCharacters _instance;

  final TRes Function(Query$GetBirthdayCharacters) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? Page = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetBirthdayCharacters(
        Page: Page == _undefined
            ? _instance.Page
            : (Page as Query$GetBirthdayCharacters$Page?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetBirthdayCharacters$Page<TRes> get Page {
    final local$Page = _instance.Page;
    return local$Page == null
        ? CopyWith$Query$GetBirthdayCharacters$Page.stub(_then(_instance))
        : CopyWith$Query$GetBirthdayCharacters$Page(
            local$Page, (e) => call(Page: e));
  }
}

class _CopyWithStubImpl$Query$GetBirthdayCharacters<TRes>
    implements CopyWith$Query$GetBirthdayCharacters<TRes> {
  _CopyWithStubImpl$Query$GetBirthdayCharacters(this._res);

  TRes _res;

  call({
    Query$GetBirthdayCharacters$Page? Page,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetBirthdayCharacters$Page<TRes> get Page =>
      CopyWith$Query$GetBirthdayCharacters$Page.stub(_res);
}

const documentNodeQueryGetBirthdayCharacters = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetBirthdayCharacters'),
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
                name: NameNode(value: 'isBirthday'),
                value: BooleanValueNode(value: true),
              ),
              ArgumentNode(
                name: NameNode(value: 'sort'),
                value: ListValueNode(values: [
                  EnumValueNode(name: NameNode(value: 'FAVOURITES_DESC'))
                ]),
              ),
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
Query$GetBirthdayCharacters _parserFn$Query$GetBirthdayCharacters(
        Map<String, dynamic> data) =>
    Query$GetBirthdayCharacters.fromJson(data);
typedef OnQueryComplete$Query$GetBirthdayCharacters = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$GetBirthdayCharacters?,
);

class Options$Query$GetBirthdayCharacters
    extends graphql.QueryOptions<Query$GetBirthdayCharacters> {
  Options$Query$GetBirthdayCharacters({
    String? operationName,
    Variables$Query$GetBirthdayCharacters? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetBirthdayCharacters? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$GetBirthdayCharacters? onComplete,
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
                        : _parserFn$Query$GetBirthdayCharacters(data),
                  ),
          onError: onError,
          document: documentNodeQueryGetBirthdayCharacters,
          parserFn: _parserFn$Query$GetBirthdayCharacters,
        );

  final OnQueryComplete$Query$GetBirthdayCharacters? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$GetBirthdayCharacters
    extends graphql.WatchQueryOptions<Query$GetBirthdayCharacters> {
  WatchOptions$Query$GetBirthdayCharacters({
    String? operationName,
    Variables$Query$GetBirthdayCharacters? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetBirthdayCharacters? typedOptimisticResult,
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
          document: documentNodeQueryGetBirthdayCharacters,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetBirthdayCharacters,
        );
}

class FetchMoreOptions$Query$GetBirthdayCharacters
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetBirthdayCharacters({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$GetBirthdayCharacters? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryGetBirthdayCharacters,
        );
}

extension ClientExtension$Query$GetBirthdayCharacters on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetBirthdayCharacters>>
      query$GetBirthdayCharacters(
              [Options$Query$GetBirthdayCharacters? options]) async =>
          await this.query(options ?? Options$Query$GetBirthdayCharacters());
  graphql.ObservableQuery<
      Query$GetBirthdayCharacters> watchQuery$GetBirthdayCharacters(
          [WatchOptions$Query$GetBirthdayCharacters? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$GetBirthdayCharacters());
  void writeQuery$GetBirthdayCharacters({
    required Query$GetBirthdayCharacters data,
    Variables$Query$GetBirthdayCharacters? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(
              document: documentNodeQueryGetBirthdayCharacters),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetBirthdayCharacters? readQuery$GetBirthdayCharacters({
    Variables$Query$GetBirthdayCharacters? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation:
            graphql.Operation(document: documentNodeQueryGetBirthdayCharacters),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$GetBirthdayCharacters.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$GetBirthdayCharacters>
    useQuery$GetBirthdayCharacters(
            [Options$Query$GetBirthdayCharacters? options]) =>
        graphql_flutter
            .useQuery(options ?? Options$Query$GetBirthdayCharacters());
graphql.ObservableQuery<Query$GetBirthdayCharacters>
    useWatchQuery$GetBirthdayCharacters(
            [WatchOptions$Query$GetBirthdayCharacters? options]) =>
        graphql_flutter.useWatchQuery(
            options ?? WatchOptions$Query$GetBirthdayCharacters());

class Query$GetBirthdayCharacters$Widget
    extends graphql_flutter.Query<Query$GetBirthdayCharacters> {
  Query$GetBirthdayCharacters$Widget({
    widgets.Key? key,
    Options$Query$GetBirthdayCharacters? options,
    required graphql_flutter.QueryBuilder<Query$GetBirthdayCharacters> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$GetBirthdayCharacters(),
          builder: builder,
        );
}

class Query$GetBirthdayCharacters$Page {
  Query$GetBirthdayCharacters$Page({
    this.pageInfo,
    this.characters,
    this.$__typename = 'Page',
  });

  factory Query$GetBirthdayCharacters$Page.fromJson(Map<String, dynamic> json) {
    final l$pageInfo = json['pageInfo'];
    final l$characters = json['characters'];
    final l$$__typename = json['__typename'];
    return Query$GetBirthdayCharacters$Page(
      pageInfo: l$pageInfo == null
          ? null
          : Query$GetBirthdayCharacters$Page$pageInfo.fromJson(
              (l$pageInfo as Map<String, dynamic>)),
      characters: (l$characters as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$CharacterShort.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetBirthdayCharacters$Page$pageInfo? pageInfo;

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
    if (other is! Query$GetBirthdayCharacters$Page ||
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

extension UtilityExtension$Query$GetBirthdayCharacters$Page
    on Query$GetBirthdayCharacters$Page {
  CopyWith$Query$GetBirthdayCharacters$Page<Query$GetBirthdayCharacters$Page>
      get copyWith => CopyWith$Query$GetBirthdayCharacters$Page(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetBirthdayCharacters$Page<TRes> {
  factory CopyWith$Query$GetBirthdayCharacters$Page(
    Query$GetBirthdayCharacters$Page instance,
    TRes Function(Query$GetBirthdayCharacters$Page) then,
  ) = _CopyWithImpl$Query$GetBirthdayCharacters$Page;

  factory CopyWith$Query$GetBirthdayCharacters$Page.stub(TRes res) =
      _CopyWithStubImpl$Query$GetBirthdayCharacters$Page;

  TRes call({
    Query$GetBirthdayCharacters$Page$pageInfo? pageInfo,
    List<Fragment$CharacterShort?>? characters,
    String? $__typename,
  });
  CopyWith$Query$GetBirthdayCharacters$Page$pageInfo<TRes> get pageInfo;
  TRes characters(
      Iterable<Fragment$CharacterShort?>? Function(
              Iterable<
                  CopyWith$Fragment$CharacterShort<Fragment$CharacterShort>?>?)
          _fn);
}

class _CopyWithImpl$Query$GetBirthdayCharacters$Page<TRes>
    implements CopyWith$Query$GetBirthdayCharacters$Page<TRes> {
  _CopyWithImpl$Query$GetBirthdayCharacters$Page(
    this._instance,
    this._then,
  );

  final Query$GetBirthdayCharacters$Page _instance;

  final TRes Function(Query$GetBirthdayCharacters$Page) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pageInfo = _undefined,
    Object? characters = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetBirthdayCharacters$Page(
        pageInfo: pageInfo == _undefined
            ? _instance.pageInfo
            : (pageInfo as Query$GetBirthdayCharacters$Page$pageInfo?),
        characters: characters == _undefined
            ? _instance.characters
            : (characters as List<Fragment$CharacterShort?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetBirthdayCharacters$Page$pageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return local$pageInfo == null
        ? CopyWith$Query$GetBirthdayCharacters$Page$pageInfo.stub(
            _then(_instance))
        : CopyWith$Query$GetBirthdayCharacters$Page$pageInfo(
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

class _CopyWithStubImpl$Query$GetBirthdayCharacters$Page<TRes>
    implements CopyWith$Query$GetBirthdayCharacters$Page<TRes> {
  _CopyWithStubImpl$Query$GetBirthdayCharacters$Page(this._res);

  TRes _res;

  call({
    Query$GetBirthdayCharacters$Page$pageInfo? pageInfo,
    List<Fragment$CharacterShort?>? characters,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetBirthdayCharacters$Page$pageInfo<TRes> get pageInfo =>
      CopyWith$Query$GetBirthdayCharacters$Page$pageInfo.stub(_res);

  characters(_fn) => _res;
}

class Query$GetBirthdayCharacters$Page$pageInfo {
  Query$GetBirthdayCharacters$Page$pageInfo({
    this.hasNextPage,
    this.$__typename = 'PageInfo',
  });

  factory Query$GetBirthdayCharacters$Page$pageInfo.fromJson(
      Map<String, dynamic> json) {
    final l$hasNextPage = json['hasNextPage'];
    final l$$__typename = json['__typename'];
    return Query$GetBirthdayCharacters$Page$pageInfo(
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
    if (other is! Query$GetBirthdayCharacters$Page$pageInfo ||
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

extension UtilityExtension$Query$GetBirthdayCharacters$Page$pageInfo
    on Query$GetBirthdayCharacters$Page$pageInfo {
  CopyWith$Query$GetBirthdayCharacters$Page$pageInfo<
          Query$GetBirthdayCharacters$Page$pageInfo>
      get copyWith => CopyWith$Query$GetBirthdayCharacters$Page$pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetBirthdayCharacters$Page$pageInfo<TRes> {
  factory CopyWith$Query$GetBirthdayCharacters$Page$pageInfo(
    Query$GetBirthdayCharacters$Page$pageInfo instance,
    TRes Function(Query$GetBirthdayCharacters$Page$pageInfo) then,
  ) = _CopyWithImpl$Query$GetBirthdayCharacters$Page$pageInfo;

  factory CopyWith$Query$GetBirthdayCharacters$Page$pageInfo.stub(TRes res) =
      _CopyWithStubImpl$Query$GetBirthdayCharacters$Page$pageInfo;

  TRes call({
    bool? hasNextPage,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetBirthdayCharacters$Page$pageInfo<TRes>
    implements CopyWith$Query$GetBirthdayCharacters$Page$pageInfo<TRes> {
  _CopyWithImpl$Query$GetBirthdayCharacters$Page$pageInfo(
    this._instance,
    this._then,
  );

  final Query$GetBirthdayCharacters$Page$pageInfo _instance;

  final TRes Function(Query$GetBirthdayCharacters$Page$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasNextPage = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetBirthdayCharacters$Page$pageInfo(
        hasNextPage: hasNextPage == _undefined
            ? _instance.hasNextPage
            : (hasNextPage as bool?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetBirthdayCharacters$Page$pageInfo<TRes>
    implements CopyWith$Query$GetBirthdayCharacters$Page$pageInfo<TRes> {
  _CopyWithStubImpl$Query$GetBirthdayCharacters$Page$pageInfo(this._res);

  TRes _res;

  call({
    bool? hasNextPage,
    String? $__typename,
  }) =>
      _res;
}
