// GENERATED FILE
// DO NOT MODIFY
// ignore_for_file: type=lint
import '../../fragments.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$SearchStaff {
  factory Variables$Query$SearchStaff({
    String? search,
    int? page,
  }) =>
      Variables$Query$SearchStaff._({
        if (search != null) r'search': search,
        if (page != null) r'page': page,
      });

  Variables$Query$SearchStaff._(this._$data);

  factory Variables$Query$SearchStaff.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('search')) {
      final l$search = data['search'];
      result$data['search'] = (l$search as String?);
    }
    if (data.containsKey('page')) {
      final l$page = data['page'];
      result$data['page'] = (l$page as int?);
    }
    return Variables$Query$SearchStaff._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get search => (_$data['search'] as String?);

  int? get page => (_$data['page'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('search')) {
      final l$search = search;
      result$data['search'] = l$search;
    }
    if (_$data.containsKey('page')) {
      final l$page = page;
      result$data['page'] = l$page;
    }
    return result$data;
  }

  CopyWith$Variables$Query$SearchStaff<Variables$Query$SearchStaff>
      get copyWith => CopyWith$Variables$Query$SearchStaff(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$SearchStaff ||
        runtimeType != other.runtimeType) {
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
    final l$search = search;
    final l$page = page;
    return Object.hashAll([
      _$data.containsKey('search') ? l$search : const {},
      _$data.containsKey('page') ? l$page : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$SearchStaff<TRes> {
  factory CopyWith$Variables$Query$SearchStaff(
    Variables$Query$SearchStaff instance,
    TRes Function(Variables$Query$SearchStaff) then,
  ) = _CopyWithImpl$Variables$Query$SearchStaff;

  factory CopyWith$Variables$Query$SearchStaff.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$SearchStaff;

  TRes call({
    String? search,
    int? page,
  });
}

class _CopyWithImpl$Variables$Query$SearchStaff<TRes>
    implements CopyWith$Variables$Query$SearchStaff<TRes> {
  _CopyWithImpl$Variables$Query$SearchStaff(
    this._instance,
    this._then,
  );

  final Variables$Query$SearchStaff _instance;

  final TRes Function(Variables$Query$SearchStaff) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? search = _undefined,
    Object? page = _undefined,
  }) =>
      _then(Variables$Query$SearchStaff._({
        ..._instance._$data,
        if (search != _undefined) 'search': (search as String?),
        if (page != _undefined) 'page': (page as int?),
      }));
}

class _CopyWithStubImpl$Variables$Query$SearchStaff<TRes>
    implements CopyWith$Variables$Query$SearchStaff<TRes> {
  _CopyWithStubImpl$Variables$Query$SearchStaff(this._res);

  TRes _res;

  call({
    String? search,
    int? page,
  }) =>
      _res;
}

class Query$SearchStaff {
  Query$SearchStaff({
    this.Page,
    this.$__typename = 'Query',
  });

  factory Query$SearchStaff.fromJson(Map<String, dynamic> json) {
    final l$Page = json['Page'];
    final l$$__typename = json['__typename'];
    return Query$SearchStaff(
      Page: l$Page == null
          ? null
          : Query$SearchStaff$Page.fromJson((l$Page as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$SearchStaff$Page? Page;

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
    if (other is! Query$SearchStaff || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$SearchStaff on Query$SearchStaff {
  CopyWith$Query$SearchStaff<Query$SearchStaff> get copyWith =>
      CopyWith$Query$SearchStaff(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SearchStaff<TRes> {
  factory CopyWith$Query$SearchStaff(
    Query$SearchStaff instance,
    TRes Function(Query$SearchStaff) then,
  ) = _CopyWithImpl$Query$SearchStaff;

  factory CopyWith$Query$SearchStaff.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchStaff;

  TRes call({
    Query$SearchStaff$Page? Page,
    String? $__typename,
  });
  CopyWith$Query$SearchStaff$Page<TRes> get Page;
}

class _CopyWithImpl$Query$SearchStaff<TRes>
    implements CopyWith$Query$SearchStaff<TRes> {
  _CopyWithImpl$Query$SearchStaff(
    this._instance,
    this._then,
  );

  final Query$SearchStaff _instance;

  final TRes Function(Query$SearchStaff) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? Page = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$SearchStaff(
        Page: Page == _undefined
            ? _instance.Page
            : (Page as Query$SearchStaff$Page?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$SearchStaff$Page<TRes> get Page {
    final local$Page = _instance.Page;
    return local$Page == null
        ? CopyWith$Query$SearchStaff$Page.stub(_then(_instance))
        : CopyWith$Query$SearchStaff$Page(local$Page, (e) => call(Page: e));
  }
}

class _CopyWithStubImpl$Query$SearchStaff<TRes>
    implements CopyWith$Query$SearchStaff<TRes> {
  _CopyWithStubImpl$Query$SearchStaff(this._res);

  TRes _res;

  call({
    Query$SearchStaff$Page? Page,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$SearchStaff$Page<TRes> get Page =>
      CopyWith$Query$SearchStaff$Page.stub(_res);
}

const documentNodeQuerySearchStaff = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'SearchStaff'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'search')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
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
                name: NameNode(value: 'search'),
                value: VariableNode(name: NameNode(value: 'search')),
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
Query$SearchStaff _parserFn$Query$SearchStaff(Map<String, dynamic> data) =>
    Query$SearchStaff.fromJson(data);
typedef OnQueryComplete$Query$SearchStaff = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$SearchStaff?,
);

class Options$Query$SearchStaff
    extends graphql.QueryOptions<Query$SearchStaff> {
  Options$Query$SearchStaff({
    String? operationName,
    Variables$Query$SearchStaff? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$SearchStaff? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$SearchStaff? onComplete,
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
                    data == null ? null : _parserFn$Query$SearchStaff(data),
                  ),
          onError: onError,
          document: documentNodeQuerySearchStaff,
          parserFn: _parserFn$Query$SearchStaff,
        );

  final OnQueryComplete$Query$SearchStaff? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$SearchStaff
    extends graphql.WatchQueryOptions<Query$SearchStaff> {
  WatchOptions$Query$SearchStaff({
    String? operationName,
    Variables$Query$SearchStaff? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$SearchStaff? typedOptimisticResult,
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
          document: documentNodeQuerySearchStaff,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$SearchStaff,
        );
}

class FetchMoreOptions$Query$SearchStaff extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$SearchStaff({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$SearchStaff? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQuerySearchStaff,
        );
}

extension ClientExtension$Query$SearchStaff on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$SearchStaff>> query$SearchStaff(
          [Options$Query$SearchStaff? options]) async =>
      await this.query(options ?? Options$Query$SearchStaff());
  graphql.ObservableQuery<Query$SearchStaff> watchQuery$SearchStaff(
          [WatchOptions$Query$SearchStaff? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$SearchStaff());
  void writeQuery$SearchStaff({
    required Query$SearchStaff data,
    Variables$Query$SearchStaff? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQuerySearchStaff),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$SearchStaff? readQuery$SearchStaff({
    Variables$Query$SearchStaff? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQuerySearchStaff),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$SearchStaff.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$SearchStaff> useQuery$SearchStaff(
        [Options$Query$SearchStaff? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$SearchStaff());
graphql.ObservableQuery<Query$SearchStaff> useWatchQuery$SearchStaff(
        [WatchOptions$Query$SearchStaff? options]) =>
    graphql_flutter.useWatchQuery(options ?? WatchOptions$Query$SearchStaff());

class Query$SearchStaff$Widget
    extends graphql_flutter.Query<Query$SearchStaff> {
  Query$SearchStaff$Widget({
    widgets.Key? key,
    Options$Query$SearchStaff? options,
    required graphql_flutter.QueryBuilder<Query$SearchStaff> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$SearchStaff(),
          builder: builder,
        );
}

class Query$SearchStaff$Page {
  Query$SearchStaff$Page({
    this.pageInfo,
    this.staff,
    this.$__typename = 'Page',
  });

  factory Query$SearchStaff$Page.fromJson(Map<String, dynamic> json) {
    final l$pageInfo = json['pageInfo'];
    final l$staff = json['staff'];
    final l$$__typename = json['__typename'];
    return Query$SearchStaff$Page(
      pageInfo: l$pageInfo == null
          ? null
          : Query$SearchStaff$Page$pageInfo.fromJson(
              (l$pageInfo as Map<String, dynamic>)),
      staff: (l$staff as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$StaffShort.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$SearchStaff$Page$pageInfo? pageInfo;

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
    if (other is! Query$SearchStaff$Page || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$SearchStaff$Page on Query$SearchStaff$Page {
  CopyWith$Query$SearchStaff$Page<Query$SearchStaff$Page> get copyWith =>
      CopyWith$Query$SearchStaff$Page(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SearchStaff$Page<TRes> {
  factory CopyWith$Query$SearchStaff$Page(
    Query$SearchStaff$Page instance,
    TRes Function(Query$SearchStaff$Page) then,
  ) = _CopyWithImpl$Query$SearchStaff$Page;

  factory CopyWith$Query$SearchStaff$Page.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchStaff$Page;

  TRes call({
    Query$SearchStaff$Page$pageInfo? pageInfo,
    List<Fragment$StaffShort?>? staff,
    String? $__typename,
  });
  CopyWith$Query$SearchStaff$Page$pageInfo<TRes> get pageInfo;
  TRes staff(
      Iterable<Fragment$StaffShort?>? Function(
              Iterable<CopyWith$Fragment$StaffShort<Fragment$StaffShort>?>?)
          _fn);
}

class _CopyWithImpl$Query$SearchStaff$Page<TRes>
    implements CopyWith$Query$SearchStaff$Page<TRes> {
  _CopyWithImpl$Query$SearchStaff$Page(
    this._instance,
    this._then,
  );

  final Query$SearchStaff$Page _instance;

  final TRes Function(Query$SearchStaff$Page) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pageInfo = _undefined,
    Object? staff = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$SearchStaff$Page(
        pageInfo: pageInfo == _undefined
            ? _instance.pageInfo
            : (pageInfo as Query$SearchStaff$Page$pageInfo?),
        staff: staff == _undefined
            ? _instance.staff
            : (staff as List<Fragment$StaffShort?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$SearchStaff$Page$pageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return local$pageInfo == null
        ? CopyWith$Query$SearchStaff$Page$pageInfo.stub(_then(_instance))
        : CopyWith$Query$SearchStaff$Page$pageInfo(
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

class _CopyWithStubImpl$Query$SearchStaff$Page<TRes>
    implements CopyWith$Query$SearchStaff$Page<TRes> {
  _CopyWithStubImpl$Query$SearchStaff$Page(this._res);

  TRes _res;

  call({
    Query$SearchStaff$Page$pageInfo? pageInfo,
    List<Fragment$StaffShort?>? staff,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$SearchStaff$Page$pageInfo<TRes> get pageInfo =>
      CopyWith$Query$SearchStaff$Page$pageInfo.stub(_res);

  staff(_fn) => _res;
}

class Query$SearchStaff$Page$pageInfo {
  Query$SearchStaff$Page$pageInfo({
    this.hasNextPage,
    this.$__typename = 'PageInfo',
  });

  factory Query$SearchStaff$Page$pageInfo.fromJson(Map<String, dynamic> json) {
    final l$hasNextPage = json['hasNextPage'];
    final l$$__typename = json['__typename'];
    return Query$SearchStaff$Page$pageInfo(
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
    if (other is! Query$SearchStaff$Page$pageInfo ||
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

extension UtilityExtension$Query$SearchStaff$Page$pageInfo
    on Query$SearchStaff$Page$pageInfo {
  CopyWith$Query$SearchStaff$Page$pageInfo<Query$SearchStaff$Page$pageInfo>
      get copyWith => CopyWith$Query$SearchStaff$Page$pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$SearchStaff$Page$pageInfo<TRes> {
  factory CopyWith$Query$SearchStaff$Page$pageInfo(
    Query$SearchStaff$Page$pageInfo instance,
    TRes Function(Query$SearchStaff$Page$pageInfo) then,
  ) = _CopyWithImpl$Query$SearchStaff$Page$pageInfo;

  factory CopyWith$Query$SearchStaff$Page$pageInfo.stub(TRes res) =
      _CopyWithStubImpl$Query$SearchStaff$Page$pageInfo;

  TRes call({
    bool? hasNextPage,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$SearchStaff$Page$pageInfo<TRes>
    implements CopyWith$Query$SearchStaff$Page$pageInfo<TRes> {
  _CopyWithImpl$Query$SearchStaff$Page$pageInfo(
    this._instance,
    this._then,
  );

  final Query$SearchStaff$Page$pageInfo _instance;

  final TRes Function(Query$SearchStaff$Page$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasNextPage = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$SearchStaff$Page$pageInfo(
        hasNextPage: hasNextPage == _undefined
            ? _instance.hasNextPage
            : (hasNextPage as bool?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$SearchStaff$Page$pageInfo<TRes>
    implements CopyWith$Query$SearchStaff$Page$pageInfo<TRes> {
  _CopyWithStubImpl$Query$SearchStaff$Page$pageInfo(this._res);

  TRes _res;

  call({
    bool? hasNextPage,
    String? $__typename,
  }) =>
      _res;
}
