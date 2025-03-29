// GENERATED FILE
// DO NOT MODIFY
// ignore_for_file: type=lint
import '../../fragments.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$GetBirthdayStaff {
  factory Variables$Query$GetBirthdayStaff({int? page}) =>
      Variables$Query$GetBirthdayStaff._({
        if (page != null) r'page': page,
      });

  Variables$Query$GetBirthdayStaff._(this._$data);

  factory Variables$Query$GetBirthdayStaff.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('page')) {
      final l$page = data['page'];
      result$data['page'] = (l$page as int?);
    }
    return Variables$Query$GetBirthdayStaff._(result$data);
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

  CopyWith$Variables$Query$GetBirthdayStaff<Variables$Query$GetBirthdayStaff>
      get copyWith => CopyWith$Variables$Query$GetBirthdayStaff(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$GetBirthdayStaff ||
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

abstract class CopyWith$Variables$Query$GetBirthdayStaff<TRes> {
  factory CopyWith$Variables$Query$GetBirthdayStaff(
    Variables$Query$GetBirthdayStaff instance,
    TRes Function(Variables$Query$GetBirthdayStaff) then,
  ) = _CopyWithImpl$Variables$Query$GetBirthdayStaff;

  factory CopyWith$Variables$Query$GetBirthdayStaff.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetBirthdayStaff;

  TRes call({int? page});
}

class _CopyWithImpl$Variables$Query$GetBirthdayStaff<TRes>
    implements CopyWith$Variables$Query$GetBirthdayStaff<TRes> {
  _CopyWithImpl$Variables$Query$GetBirthdayStaff(
    this._instance,
    this._then,
  );

  final Variables$Query$GetBirthdayStaff _instance;

  final TRes Function(Variables$Query$GetBirthdayStaff) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? page = _undefined}) =>
      _then(Variables$Query$GetBirthdayStaff._({
        ..._instance._$data,
        if (page != _undefined) 'page': (page as int?),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetBirthdayStaff<TRes>
    implements CopyWith$Variables$Query$GetBirthdayStaff<TRes> {
  _CopyWithStubImpl$Variables$Query$GetBirthdayStaff(this._res);

  TRes _res;

  call({int? page}) => _res;
}

class Query$GetBirthdayStaff {
  Query$GetBirthdayStaff({
    this.Page,
    this.$__typename = 'Query',
  });

  factory Query$GetBirthdayStaff.fromJson(Map<String, dynamic> json) {
    final l$Page = json['Page'];
    final l$$__typename = json['__typename'];
    return Query$GetBirthdayStaff(
      Page: l$Page == null
          ? null
          : Query$GetBirthdayStaff$Page.fromJson(
              (l$Page as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetBirthdayStaff$Page? Page;

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
    if (other is! Query$GetBirthdayStaff || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$GetBirthdayStaff on Query$GetBirthdayStaff {
  CopyWith$Query$GetBirthdayStaff<Query$GetBirthdayStaff> get copyWith =>
      CopyWith$Query$GetBirthdayStaff(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetBirthdayStaff<TRes> {
  factory CopyWith$Query$GetBirthdayStaff(
    Query$GetBirthdayStaff instance,
    TRes Function(Query$GetBirthdayStaff) then,
  ) = _CopyWithImpl$Query$GetBirthdayStaff;

  factory CopyWith$Query$GetBirthdayStaff.stub(TRes res) =
      _CopyWithStubImpl$Query$GetBirthdayStaff;

  TRes call({
    Query$GetBirthdayStaff$Page? Page,
    String? $__typename,
  });
  CopyWith$Query$GetBirthdayStaff$Page<TRes> get Page;
}

class _CopyWithImpl$Query$GetBirthdayStaff<TRes>
    implements CopyWith$Query$GetBirthdayStaff<TRes> {
  _CopyWithImpl$Query$GetBirthdayStaff(
    this._instance,
    this._then,
  );

  final Query$GetBirthdayStaff _instance;

  final TRes Function(Query$GetBirthdayStaff) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? Page = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetBirthdayStaff(
        Page: Page == _undefined
            ? _instance.Page
            : (Page as Query$GetBirthdayStaff$Page?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetBirthdayStaff$Page<TRes> get Page {
    final local$Page = _instance.Page;
    return local$Page == null
        ? CopyWith$Query$GetBirthdayStaff$Page.stub(_then(_instance))
        : CopyWith$Query$GetBirthdayStaff$Page(
            local$Page, (e) => call(Page: e));
  }
}

class _CopyWithStubImpl$Query$GetBirthdayStaff<TRes>
    implements CopyWith$Query$GetBirthdayStaff<TRes> {
  _CopyWithStubImpl$Query$GetBirthdayStaff(this._res);

  TRes _res;

  call({
    Query$GetBirthdayStaff$Page? Page,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetBirthdayStaff$Page<TRes> get Page =>
      CopyWith$Query$GetBirthdayStaff$Page.stub(_res);
}

const documentNodeQueryGetBirthdayStaff = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetBirthdayStaff'),
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
Query$GetBirthdayStaff _parserFn$Query$GetBirthdayStaff(
        Map<String, dynamic> data) =>
    Query$GetBirthdayStaff.fromJson(data);
typedef OnQueryComplete$Query$GetBirthdayStaff = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$GetBirthdayStaff?,
);

class Options$Query$GetBirthdayStaff
    extends graphql.QueryOptions<Query$GetBirthdayStaff> {
  Options$Query$GetBirthdayStaff({
    String? operationName,
    Variables$Query$GetBirthdayStaff? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetBirthdayStaff? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$GetBirthdayStaff? onComplete,
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
                        : _parserFn$Query$GetBirthdayStaff(data),
                  ),
          onError: onError,
          document: documentNodeQueryGetBirthdayStaff,
          parserFn: _parserFn$Query$GetBirthdayStaff,
        );

  final OnQueryComplete$Query$GetBirthdayStaff? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$GetBirthdayStaff
    extends graphql.WatchQueryOptions<Query$GetBirthdayStaff> {
  WatchOptions$Query$GetBirthdayStaff({
    String? operationName,
    Variables$Query$GetBirthdayStaff? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetBirthdayStaff? typedOptimisticResult,
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
          document: documentNodeQueryGetBirthdayStaff,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetBirthdayStaff,
        );
}

class FetchMoreOptions$Query$GetBirthdayStaff extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetBirthdayStaff({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$GetBirthdayStaff? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryGetBirthdayStaff,
        );
}

extension ClientExtension$Query$GetBirthdayStaff on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetBirthdayStaff>> query$GetBirthdayStaff(
          [Options$Query$GetBirthdayStaff? options]) async =>
      await this.query(options ?? Options$Query$GetBirthdayStaff());
  graphql.ObservableQuery<Query$GetBirthdayStaff> watchQuery$GetBirthdayStaff(
          [WatchOptions$Query$GetBirthdayStaff? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$GetBirthdayStaff());
  void writeQuery$GetBirthdayStaff({
    required Query$GetBirthdayStaff data,
    Variables$Query$GetBirthdayStaff? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryGetBirthdayStaff),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetBirthdayStaff? readQuery$GetBirthdayStaff({
    Variables$Query$GetBirthdayStaff? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation:
            graphql.Operation(document: documentNodeQueryGetBirthdayStaff),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$GetBirthdayStaff.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$GetBirthdayStaff>
    useQuery$GetBirthdayStaff([Options$Query$GetBirthdayStaff? options]) =>
        graphql_flutter.useQuery(options ?? Options$Query$GetBirthdayStaff());
graphql.ObservableQuery<Query$GetBirthdayStaff> useWatchQuery$GetBirthdayStaff(
        [WatchOptions$Query$GetBirthdayStaff? options]) =>
    graphql_flutter
        .useWatchQuery(options ?? WatchOptions$Query$GetBirthdayStaff());

class Query$GetBirthdayStaff$Widget
    extends graphql_flutter.Query<Query$GetBirthdayStaff> {
  Query$GetBirthdayStaff$Widget({
    widgets.Key? key,
    Options$Query$GetBirthdayStaff? options,
    required graphql_flutter.QueryBuilder<Query$GetBirthdayStaff> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$GetBirthdayStaff(),
          builder: builder,
        );
}

class Query$GetBirthdayStaff$Page {
  Query$GetBirthdayStaff$Page({
    this.pageInfo,
    this.staff,
    this.$__typename = 'Page',
  });

  factory Query$GetBirthdayStaff$Page.fromJson(Map<String, dynamic> json) {
    final l$pageInfo = json['pageInfo'];
    final l$staff = json['staff'];
    final l$$__typename = json['__typename'];
    return Query$GetBirthdayStaff$Page(
      pageInfo: l$pageInfo == null
          ? null
          : Query$GetBirthdayStaff$Page$pageInfo.fromJson(
              (l$pageInfo as Map<String, dynamic>)),
      staff: (l$staff as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$StaffShort.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetBirthdayStaff$Page$pageInfo? pageInfo;

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
    if (other is! Query$GetBirthdayStaff$Page ||
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

extension UtilityExtension$Query$GetBirthdayStaff$Page
    on Query$GetBirthdayStaff$Page {
  CopyWith$Query$GetBirthdayStaff$Page<Query$GetBirthdayStaff$Page>
      get copyWith => CopyWith$Query$GetBirthdayStaff$Page(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetBirthdayStaff$Page<TRes> {
  factory CopyWith$Query$GetBirthdayStaff$Page(
    Query$GetBirthdayStaff$Page instance,
    TRes Function(Query$GetBirthdayStaff$Page) then,
  ) = _CopyWithImpl$Query$GetBirthdayStaff$Page;

  factory CopyWith$Query$GetBirthdayStaff$Page.stub(TRes res) =
      _CopyWithStubImpl$Query$GetBirthdayStaff$Page;

  TRes call({
    Query$GetBirthdayStaff$Page$pageInfo? pageInfo,
    List<Fragment$StaffShort?>? staff,
    String? $__typename,
  });
  CopyWith$Query$GetBirthdayStaff$Page$pageInfo<TRes> get pageInfo;
  TRes staff(
      Iterable<Fragment$StaffShort?>? Function(
              Iterable<CopyWith$Fragment$StaffShort<Fragment$StaffShort>?>?)
          _fn);
}

class _CopyWithImpl$Query$GetBirthdayStaff$Page<TRes>
    implements CopyWith$Query$GetBirthdayStaff$Page<TRes> {
  _CopyWithImpl$Query$GetBirthdayStaff$Page(
    this._instance,
    this._then,
  );

  final Query$GetBirthdayStaff$Page _instance;

  final TRes Function(Query$GetBirthdayStaff$Page) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pageInfo = _undefined,
    Object? staff = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetBirthdayStaff$Page(
        pageInfo: pageInfo == _undefined
            ? _instance.pageInfo
            : (pageInfo as Query$GetBirthdayStaff$Page$pageInfo?),
        staff: staff == _undefined
            ? _instance.staff
            : (staff as List<Fragment$StaffShort?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetBirthdayStaff$Page$pageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return local$pageInfo == null
        ? CopyWith$Query$GetBirthdayStaff$Page$pageInfo.stub(_then(_instance))
        : CopyWith$Query$GetBirthdayStaff$Page$pageInfo(
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

class _CopyWithStubImpl$Query$GetBirthdayStaff$Page<TRes>
    implements CopyWith$Query$GetBirthdayStaff$Page<TRes> {
  _CopyWithStubImpl$Query$GetBirthdayStaff$Page(this._res);

  TRes _res;

  call({
    Query$GetBirthdayStaff$Page$pageInfo? pageInfo,
    List<Fragment$StaffShort?>? staff,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetBirthdayStaff$Page$pageInfo<TRes> get pageInfo =>
      CopyWith$Query$GetBirthdayStaff$Page$pageInfo.stub(_res);

  staff(_fn) => _res;
}

class Query$GetBirthdayStaff$Page$pageInfo {
  Query$GetBirthdayStaff$Page$pageInfo({
    this.hasNextPage,
    this.$__typename = 'PageInfo',
  });

  factory Query$GetBirthdayStaff$Page$pageInfo.fromJson(
      Map<String, dynamic> json) {
    final l$hasNextPage = json['hasNextPage'];
    final l$$__typename = json['__typename'];
    return Query$GetBirthdayStaff$Page$pageInfo(
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
    if (other is! Query$GetBirthdayStaff$Page$pageInfo ||
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

extension UtilityExtension$Query$GetBirthdayStaff$Page$pageInfo
    on Query$GetBirthdayStaff$Page$pageInfo {
  CopyWith$Query$GetBirthdayStaff$Page$pageInfo<
          Query$GetBirthdayStaff$Page$pageInfo>
      get copyWith => CopyWith$Query$GetBirthdayStaff$Page$pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetBirthdayStaff$Page$pageInfo<TRes> {
  factory CopyWith$Query$GetBirthdayStaff$Page$pageInfo(
    Query$GetBirthdayStaff$Page$pageInfo instance,
    TRes Function(Query$GetBirthdayStaff$Page$pageInfo) then,
  ) = _CopyWithImpl$Query$GetBirthdayStaff$Page$pageInfo;

  factory CopyWith$Query$GetBirthdayStaff$Page$pageInfo.stub(TRes res) =
      _CopyWithStubImpl$Query$GetBirthdayStaff$Page$pageInfo;

  TRes call({
    bool? hasNextPage,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetBirthdayStaff$Page$pageInfo<TRes>
    implements CopyWith$Query$GetBirthdayStaff$Page$pageInfo<TRes> {
  _CopyWithImpl$Query$GetBirthdayStaff$Page$pageInfo(
    this._instance,
    this._then,
  );

  final Query$GetBirthdayStaff$Page$pageInfo _instance;

  final TRes Function(Query$GetBirthdayStaff$Page$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasNextPage = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetBirthdayStaff$Page$pageInfo(
        hasNextPage: hasNextPage == _undefined
            ? _instance.hasNextPage
            : (hasNextPage as bool?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetBirthdayStaff$Page$pageInfo<TRes>
    implements CopyWith$Query$GetBirthdayStaff$Page$pageInfo<TRes> {
  _CopyWithStubImpl$Query$GetBirthdayStaff$Page$pageInfo(this._res);

  TRes _res;

  call({
    bool? hasNextPage,
    String? $__typename,
  }) =>
      _res;
}
