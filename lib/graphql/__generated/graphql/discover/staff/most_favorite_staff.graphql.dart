// GENERATED FILE
// DO NOT MODIFY
// ignore_for_file: type=lint
import 'dart:async';

import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

import '../../fragments.graphql.dart';

class Variables$Query$GetMostFavoriteStaff {
  factory Variables$Query$GetMostFavoriteStaff({int? page}) =>
      Variables$Query$GetMostFavoriteStaff._({
        if (page != null) r'page': page,
      });

  Variables$Query$GetMostFavoriteStaff._(this._$data);

  factory Variables$Query$GetMostFavoriteStaff.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('page')) {
      final l$page = data['page'];
      result$data['page'] = (l$page as int?);
    }
    return Variables$Query$GetMostFavoriteStaff._(result$data);
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

  CopyWith$Variables$Query$GetMostFavoriteStaff<
          Variables$Query$GetMostFavoriteStaff>
      get copyWith => CopyWith$Variables$Query$GetMostFavoriteStaff(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GetMostFavoriteStaff) ||
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

abstract class CopyWith$Variables$Query$GetMostFavoriteStaff<TRes> {
  factory CopyWith$Variables$Query$GetMostFavoriteStaff(
    Variables$Query$GetMostFavoriteStaff instance,
    TRes Function(Variables$Query$GetMostFavoriteStaff) then,
  ) = _CopyWithImpl$Variables$Query$GetMostFavoriteStaff;

  factory CopyWith$Variables$Query$GetMostFavoriteStaff.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetMostFavoriteStaff;

  TRes call({int? page});
}

class _CopyWithImpl$Variables$Query$GetMostFavoriteStaff<TRes>
    implements CopyWith$Variables$Query$GetMostFavoriteStaff<TRes> {
  _CopyWithImpl$Variables$Query$GetMostFavoriteStaff(
    this._instance,
    this._then,
  );

  final Variables$Query$GetMostFavoriteStaff _instance;

  final TRes Function(Variables$Query$GetMostFavoriteStaff) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? page = _undefined}) =>
      _then(Variables$Query$GetMostFavoriteStaff._({
        ..._instance._$data,
        if (page != _undefined) 'page': (page as int?),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetMostFavoriteStaff<TRes>
    implements CopyWith$Variables$Query$GetMostFavoriteStaff<TRes> {
  _CopyWithStubImpl$Variables$Query$GetMostFavoriteStaff(this._res);

  TRes _res;

  call({int? page}) => _res;
}

class Query$GetMostFavoriteStaff {
  Query$GetMostFavoriteStaff({
    this.Page,
    this.$__typename = 'Query',
  });

  factory Query$GetMostFavoriteStaff.fromJson(Map<String, dynamic> json) {
    final l$Page = json['Page'];
    final l$$__typename = json['__typename'];
    return Query$GetMostFavoriteStaff(
      Page: l$Page == null
          ? null
          : Query$GetMostFavoriteStaff$Page.fromJson(
              (l$Page as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetMostFavoriteStaff$Page? Page;

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
    if (!(other is Query$GetMostFavoriteStaff) ||
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

extension UtilityExtension$Query$GetMostFavoriteStaff
    on Query$GetMostFavoriteStaff {
  CopyWith$Query$GetMostFavoriteStaff<Query$GetMostFavoriteStaff>
      get copyWith => CopyWith$Query$GetMostFavoriteStaff(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetMostFavoriteStaff<TRes> {
  factory CopyWith$Query$GetMostFavoriteStaff(
    Query$GetMostFavoriteStaff instance,
    TRes Function(Query$GetMostFavoriteStaff) then,
  ) = _CopyWithImpl$Query$GetMostFavoriteStaff;

  factory CopyWith$Query$GetMostFavoriteStaff.stub(TRes res) =
      _CopyWithStubImpl$Query$GetMostFavoriteStaff;

  TRes call({
    Query$GetMostFavoriteStaff$Page? Page,
    String? $__typename,
  });
  CopyWith$Query$GetMostFavoriteStaff$Page<TRes> get Page;
}

class _CopyWithImpl$Query$GetMostFavoriteStaff<TRes>
    implements CopyWith$Query$GetMostFavoriteStaff<TRes> {
  _CopyWithImpl$Query$GetMostFavoriteStaff(
    this._instance,
    this._then,
  );

  final Query$GetMostFavoriteStaff _instance;

  final TRes Function(Query$GetMostFavoriteStaff) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? Page = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetMostFavoriteStaff(
        Page: Page == _undefined
            ? _instance.Page
            : (Page as Query$GetMostFavoriteStaff$Page?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetMostFavoriteStaff$Page<TRes> get Page {
    final local$Page = _instance.Page;
    return local$Page == null
        ? CopyWith$Query$GetMostFavoriteStaff$Page.stub(_then(_instance))
        : CopyWith$Query$GetMostFavoriteStaff$Page(
            local$Page, (e) => call(Page: e));
  }
}

class _CopyWithStubImpl$Query$GetMostFavoriteStaff<TRes>
    implements CopyWith$Query$GetMostFavoriteStaff<TRes> {
  _CopyWithStubImpl$Query$GetMostFavoriteStaff(this._res);

  TRes _res;

  call({
    Query$GetMostFavoriteStaff$Page? Page,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetMostFavoriteStaff$Page<TRes> get Page =>
      CopyWith$Query$GetMostFavoriteStaff$Page.stub(_res);
}

const documentNodeQueryGetMostFavoriteStaff = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetMostFavoriteStaff'),
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
            name: NameNode(value: 'staff'),
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
  fragmentDefinitionStaffShort,
]);
Query$GetMostFavoriteStaff _parserFn$Query$GetMostFavoriteStaff(
        Map<String, dynamic> data) =>
    Query$GetMostFavoriteStaff.fromJson(data);
typedef OnQueryComplete$Query$GetMostFavoriteStaff = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$GetMostFavoriteStaff?,
);

class Options$Query$GetMostFavoriteStaff
    extends graphql.QueryOptions<Query$GetMostFavoriteStaff> {
  Options$Query$GetMostFavoriteStaff({
    String? operationName,
    Variables$Query$GetMostFavoriteStaff? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetMostFavoriteStaff? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$GetMostFavoriteStaff? onComplete,
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
                        : _parserFn$Query$GetMostFavoriteStaff(data),
                  ),
          onError: onError,
          document: documentNodeQueryGetMostFavoriteStaff,
          parserFn: _parserFn$Query$GetMostFavoriteStaff,
        );

  final OnQueryComplete$Query$GetMostFavoriteStaff? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$GetMostFavoriteStaff
    extends graphql.WatchQueryOptions<Query$GetMostFavoriteStaff> {
  WatchOptions$Query$GetMostFavoriteStaff({
    String? operationName,
    Variables$Query$GetMostFavoriteStaff? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetMostFavoriteStaff? typedOptimisticResult,
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
          document: documentNodeQueryGetMostFavoriteStaff,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetMostFavoriteStaff,
        );
}

class FetchMoreOptions$Query$GetMostFavoriteStaff
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetMostFavoriteStaff({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$GetMostFavoriteStaff? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryGetMostFavoriteStaff,
        );
}

extension ClientExtension$Query$GetMostFavoriteStaff on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetMostFavoriteStaff>>
      query$GetMostFavoriteStaff(
              [Options$Query$GetMostFavoriteStaff? options]) async =>
          await this.query(options ?? Options$Query$GetMostFavoriteStaff());
  graphql.ObservableQuery<Query$GetMostFavoriteStaff>
      watchQuery$GetMostFavoriteStaff(
              [WatchOptions$Query$GetMostFavoriteStaff? options]) =>
          this.watchQuery(options ?? WatchOptions$Query$GetMostFavoriteStaff());
  void writeQuery$GetMostFavoriteStaff({
    required Query$GetMostFavoriteStaff data,
    Variables$Query$GetMostFavoriteStaff? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(
              document: documentNodeQueryGetMostFavoriteStaff),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetMostFavoriteStaff? readQuery$GetMostFavoriteStaff({
    Variables$Query$GetMostFavoriteStaff? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation:
            graphql.Operation(document: documentNodeQueryGetMostFavoriteStaff),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$GetMostFavoriteStaff.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$GetMostFavoriteStaff>
    useQuery$GetMostFavoriteStaff(
            [Options$Query$GetMostFavoriteStaff? options]) =>
        graphql_flutter
            .useQuery(options ?? Options$Query$GetMostFavoriteStaff());
graphql.ObservableQuery<Query$GetMostFavoriteStaff>
    useWatchQuery$GetMostFavoriteStaff(
            [WatchOptions$Query$GetMostFavoriteStaff? options]) =>
        graphql_flutter.useWatchQuery(
            options ?? WatchOptions$Query$GetMostFavoriteStaff());

class Query$GetMostFavoriteStaff$Widget
    extends graphql_flutter.Query<Query$GetMostFavoriteStaff> {
  Query$GetMostFavoriteStaff$Widget({
    widgets.Key? key,
    Options$Query$GetMostFavoriteStaff? options,
    required graphql_flutter.QueryBuilder<Query$GetMostFavoriteStaff> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$GetMostFavoriteStaff(),
          builder: builder,
        );
}

class Query$GetMostFavoriteStaff$Page {
  Query$GetMostFavoriteStaff$Page({
    this.pageInfo,
    this.staff,
    this.$__typename = 'Page',
  });

  factory Query$GetMostFavoriteStaff$Page.fromJson(Map<String, dynamic> json) {
    final l$pageInfo = json['pageInfo'];
    final l$staff = json['staff'];
    final l$$__typename = json['__typename'];
    return Query$GetMostFavoriteStaff$Page(
      pageInfo: l$pageInfo == null
          ? null
          : Query$GetMostFavoriteStaff$Page$pageInfo.fromJson(
              (l$pageInfo as Map<String, dynamic>)),
      staff: (l$staff as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$StaffShort.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetMostFavoriteStaff$Page$pageInfo? pageInfo;

  final List<Fragment$StaffShort?>? staff;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$pageInfo = pageInfo;
    _resultData['pageInfo'] = l$pageInfo?.toJson();
    final l$staff = staff;
    _resultData['staff'] = l$staff?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$pageInfo = pageInfo;
    final l$staff = staff;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$pageInfo,
      l$staff == null ? null : Object.hashAll(l$staff.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetMostFavoriteStaff$Page) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$pageInfo = pageInfo;
    final lOther$pageInfo = other.pageInfo;
    if (l$pageInfo != lOther$pageInfo) {
      return false;
    }
    final l$staff = staff;
    final lOther$staff = other.staff;
    if (l$staff != null && lOther$staff != null) {
      if (l$staff.length != lOther$staff.length) {
        return false;
      }
      for (int i = 0; i < l$staff.length; i++) {
        final l$staff$entry = l$staff[i];
        final lOther$staff$entry = lOther$staff[i];
        if (l$staff$entry != lOther$staff$entry) {
          return false;
        }
      }
    } else if (l$staff != lOther$staff) {
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

extension UtilityExtension$Query$GetMostFavoriteStaff$Page
    on Query$GetMostFavoriteStaff$Page {
  CopyWith$Query$GetMostFavoriteStaff$Page<Query$GetMostFavoriteStaff$Page>
      get copyWith => CopyWith$Query$GetMostFavoriteStaff$Page(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetMostFavoriteStaff$Page<TRes> {
  factory CopyWith$Query$GetMostFavoriteStaff$Page(
    Query$GetMostFavoriteStaff$Page instance,
    TRes Function(Query$GetMostFavoriteStaff$Page) then,
  ) = _CopyWithImpl$Query$GetMostFavoriteStaff$Page;

  factory CopyWith$Query$GetMostFavoriteStaff$Page.stub(TRes res) =
      _CopyWithStubImpl$Query$GetMostFavoriteStaff$Page;

  TRes call({
    Query$GetMostFavoriteStaff$Page$pageInfo? pageInfo,
    List<Fragment$StaffShort?>? staff,
    String? $__typename,
  });
  CopyWith$Query$GetMostFavoriteStaff$Page$pageInfo<TRes> get pageInfo;
  TRes staff(
      Iterable<Fragment$StaffShort?>? Function(
              Iterable<CopyWith$Fragment$StaffShort<Fragment$StaffShort>?>?)
          _fn);
}

class _CopyWithImpl$Query$GetMostFavoriteStaff$Page<TRes>
    implements CopyWith$Query$GetMostFavoriteStaff$Page<TRes> {
  _CopyWithImpl$Query$GetMostFavoriteStaff$Page(
    this._instance,
    this._then,
  );

  final Query$GetMostFavoriteStaff$Page _instance;

  final TRes Function(Query$GetMostFavoriteStaff$Page) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pageInfo = _undefined,
    Object? staff = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetMostFavoriteStaff$Page(
        pageInfo: pageInfo == _undefined
            ? _instance.pageInfo
            : (pageInfo as Query$GetMostFavoriteStaff$Page$pageInfo?),
        staff: staff == _undefined
            ? _instance.staff
            : (staff as List<Fragment$StaffShort?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetMostFavoriteStaff$Page$pageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return local$pageInfo == null
        ? CopyWith$Query$GetMostFavoriteStaff$Page$pageInfo.stub(
            _then(_instance))
        : CopyWith$Query$GetMostFavoriteStaff$Page$pageInfo(
            local$pageInfo, (e) => call(pageInfo: e));
  }

  TRes staff(
          Iterable<Fragment$StaffShort?>? Function(
                  Iterable<CopyWith$Fragment$StaffShort<Fragment$StaffShort>?>?)
              _fn) =>
      call(
          staff: _fn(_instance.staff?.map((e) => e == null
              ? null
              : CopyWith$Fragment$StaffShort(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$GetMostFavoriteStaff$Page<TRes>
    implements CopyWith$Query$GetMostFavoriteStaff$Page<TRes> {
  _CopyWithStubImpl$Query$GetMostFavoriteStaff$Page(this._res);

  TRes _res;

  call({
    Query$GetMostFavoriteStaff$Page$pageInfo? pageInfo,
    List<Fragment$StaffShort?>? staff,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetMostFavoriteStaff$Page$pageInfo<TRes> get pageInfo =>
      CopyWith$Query$GetMostFavoriteStaff$Page$pageInfo.stub(_res);

  staff(_fn) => _res;
}

class Query$GetMostFavoriteStaff$Page$pageInfo {
  Query$GetMostFavoriteStaff$Page$pageInfo({
    this.hasNextPage,
    this.$__typename = 'PageInfo',
  });

  factory Query$GetMostFavoriteStaff$Page$pageInfo.fromJson(
      Map<String, dynamic> json) {
    final l$hasNextPage = json['hasNextPage'];
    final l$$__typename = json['__typename'];
    return Query$GetMostFavoriteStaff$Page$pageInfo(
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
    if (!(other is Query$GetMostFavoriteStaff$Page$pageInfo) ||
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

extension UtilityExtension$Query$GetMostFavoriteStaff$Page$pageInfo
    on Query$GetMostFavoriteStaff$Page$pageInfo {
  CopyWith$Query$GetMostFavoriteStaff$Page$pageInfo<
          Query$GetMostFavoriteStaff$Page$pageInfo>
      get copyWith => CopyWith$Query$GetMostFavoriteStaff$Page$pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetMostFavoriteStaff$Page$pageInfo<TRes> {
  factory CopyWith$Query$GetMostFavoriteStaff$Page$pageInfo(
    Query$GetMostFavoriteStaff$Page$pageInfo instance,
    TRes Function(Query$GetMostFavoriteStaff$Page$pageInfo) then,
  ) = _CopyWithImpl$Query$GetMostFavoriteStaff$Page$pageInfo;

  factory CopyWith$Query$GetMostFavoriteStaff$Page$pageInfo.stub(TRes res) =
      _CopyWithStubImpl$Query$GetMostFavoriteStaff$Page$pageInfo;

  TRes call({
    bool? hasNextPage,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetMostFavoriteStaff$Page$pageInfo<TRes>
    implements CopyWith$Query$GetMostFavoriteStaff$Page$pageInfo<TRes> {
  _CopyWithImpl$Query$GetMostFavoriteStaff$Page$pageInfo(
    this._instance,
    this._then,
  );

  final Query$GetMostFavoriteStaff$Page$pageInfo _instance;

  final TRes Function(Query$GetMostFavoriteStaff$Page$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasNextPage = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetMostFavoriteStaff$Page$pageInfo(
        hasNextPage: hasNextPage == _undefined
            ? _instance.hasNextPage
            : (hasNextPage as bool?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetMostFavoriteStaff$Page$pageInfo<TRes>
    implements CopyWith$Query$GetMostFavoriteStaff$Page$pageInfo<TRes> {
  _CopyWithStubImpl$Query$GetMostFavoriteStaff$Page$pageInfo(this._res);

  TRes _res;

  call({
    bool? hasNextPage,
    String? $__typename,
  }) =>
      _res;
}
