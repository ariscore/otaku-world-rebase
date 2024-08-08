// GENERATED FILE
// DO NOT MODIFY
// ignore_for_file: type=lint
import '../fragments.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$GetCalendarDay {
  factory Variables$Query$GetCalendarDay({
    int? page,
    int? airingAt_greater,
    int? airingAt_lesser,
  }) =>
      Variables$Query$GetCalendarDay._({
        if (page != null) r'page': page,
        if (airingAt_greater != null) r'airingAt_greater': airingAt_greater,
        if (airingAt_lesser != null) r'airingAt_lesser': airingAt_lesser,
      });

  Variables$Query$GetCalendarDay._(this._$data);

  factory Variables$Query$GetCalendarDay.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('page')) {
      final l$page = data['page'];
      result$data['page'] = (l$page as int?);
    }
    if (data.containsKey('airingAt_greater')) {
      final l$airingAt_greater = data['airingAt_greater'];
      result$data['airingAt_greater'] = (l$airingAt_greater as int?);
    }
    if (data.containsKey('airingAt_lesser')) {
      final l$airingAt_lesser = data['airingAt_lesser'];
      result$data['airingAt_lesser'] = (l$airingAt_lesser as int?);
    }
    return Variables$Query$GetCalendarDay._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get page => (_$data['page'] as int?);

  int? get airingAt_greater => (_$data['airingAt_greater'] as int?);

  int? get airingAt_lesser => (_$data['airingAt_lesser'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('page')) {
      final l$page = page;
      result$data['page'] = l$page;
    }
    if (_$data.containsKey('airingAt_greater')) {
      final l$airingAt_greater = airingAt_greater;
      result$data['airingAt_greater'] = l$airingAt_greater;
    }
    if (_$data.containsKey('airingAt_lesser')) {
      final l$airingAt_lesser = airingAt_lesser;
      result$data['airingAt_lesser'] = l$airingAt_lesser;
    }
    return result$data;
  }

  CopyWith$Variables$Query$GetCalendarDay<Variables$Query$GetCalendarDay>
      get copyWith => CopyWith$Variables$Query$GetCalendarDay(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GetCalendarDay) ||
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
    final l$airingAt_greater = airingAt_greater;
    final lOther$airingAt_greater = other.airingAt_greater;
    if (_$data.containsKey('airingAt_greater') !=
        other._$data.containsKey('airingAt_greater')) {
      return false;
    }
    if (l$airingAt_greater != lOther$airingAt_greater) {
      return false;
    }
    final l$airingAt_lesser = airingAt_lesser;
    final lOther$airingAt_lesser = other.airingAt_lesser;
    if (_$data.containsKey('airingAt_lesser') !=
        other._$data.containsKey('airingAt_lesser')) {
      return false;
    }
    if (l$airingAt_lesser != lOther$airingAt_lesser) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$page = page;
    final l$airingAt_greater = airingAt_greater;
    final l$airingAt_lesser = airingAt_lesser;
    return Object.hashAll([
      _$data.containsKey('page') ? l$page : const {},
      _$data.containsKey('airingAt_greater') ? l$airingAt_greater : const {},
      _$data.containsKey('airingAt_lesser') ? l$airingAt_lesser : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$GetCalendarDay<TRes> {
  factory CopyWith$Variables$Query$GetCalendarDay(
    Variables$Query$GetCalendarDay instance,
    TRes Function(Variables$Query$GetCalendarDay) then,
  ) = _CopyWithImpl$Variables$Query$GetCalendarDay;

  factory CopyWith$Variables$Query$GetCalendarDay.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetCalendarDay;

  TRes call({
    int? page,
    int? airingAt_greater,
    int? airingAt_lesser,
  });
}

class _CopyWithImpl$Variables$Query$GetCalendarDay<TRes>
    implements CopyWith$Variables$Query$GetCalendarDay<TRes> {
  _CopyWithImpl$Variables$Query$GetCalendarDay(
    this._instance,
    this._then,
  );

  final Variables$Query$GetCalendarDay _instance;

  final TRes Function(Variables$Query$GetCalendarDay) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? page = _undefined,
    Object? airingAt_greater = _undefined,
    Object? airingAt_lesser = _undefined,
  }) =>
      _then(Variables$Query$GetCalendarDay._({
        ..._instance._$data,
        if (page != _undefined) 'page': (page as int?),
        if (airingAt_greater != _undefined)
          'airingAt_greater': (airingAt_greater as int?),
        if (airingAt_lesser != _undefined)
          'airingAt_lesser': (airingAt_lesser as int?),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetCalendarDay<TRes>
    implements CopyWith$Variables$Query$GetCalendarDay<TRes> {
  _CopyWithStubImpl$Variables$Query$GetCalendarDay(this._res);

  TRes _res;

  call({
    int? page,
    int? airingAt_greater,
    int? airingAt_lesser,
  }) =>
      _res;
}

class Query$GetCalendarDay {
  Query$GetCalendarDay({
    this.Page,
    this.$__typename = 'Query',
  });

  factory Query$GetCalendarDay.fromJson(Map<String, dynamic> json) {
    final l$Page = json['Page'];
    final l$$__typename = json['__typename'];
    return Query$GetCalendarDay(
      Page: l$Page == null
          ? null
          : Query$GetCalendarDay$Page.fromJson(
              (l$Page as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetCalendarDay$Page? Page;

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
    if (!(other is Query$GetCalendarDay) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$GetCalendarDay on Query$GetCalendarDay {
  CopyWith$Query$GetCalendarDay<Query$GetCalendarDay> get copyWith =>
      CopyWith$Query$GetCalendarDay(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetCalendarDay<TRes> {
  factory CopyWith$Query$GetCalendarDay(
    Query$GetCalendarDay instance,
    TRes Function(Query$GetCalendarDay) then,
  ) = _CopyWithImpl$Query$GetCalendarDay;

  factory CopyWith$Query$GetCalendarDay.stub(TRes res) =
      _CopyWithStubImpl$Query$GetCalendarDay;

  TRes call({
    Query$GetCalendarDay$Page? Page,
    String? $__typename,
  });
  CopyWith$Query$GetCalendarDay$Page<TRes> get Page;
}

class _CopyWithImpl$Query$GetCalendarDay<TRes>
    implements CopyWith$Query$GetCalendarDay<TRes> {
  _CopyWithImpl$Query$GetCalendarDay(
    this._instance,
    this._then,
  );

  final Query$GetCalendarDay _instance;

  final TRes Function(Query$GetCalendarDay) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? Page = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetCalendarDay(
        Page: Page == _undefined
            ? _instance.Page
            : (Page as Query$GetCalendarDay$Page?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetCalendarDay$Page<TRes> get Page {
    final local$Page = _instance.Page;
    return local$Page == null
        ? CopyWith$Query$GetCalendarDay$Page.stub(_then(_instance))
        : CopyWith$Query$GetCalendarDay$Page(local$Page, (e) => call(Page: e));
  }
}

class _CopyWithStubImpl$Query$GetCalendarDay<TRes>
    implements CopyWith$Query$GetCalendarDay<TRes> {
  _CopyWithStubImpl$Query$GetCalendarDay(this._res);

  TRes _res;

  call({
    Query$GetCalendarDay$Page? Page,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetCalendarDay$Page<TRes> get Page =>
      CopyWith$Query$GetCalendarDay$Page.stub(_res);
}

const documentNodeQueryGetCalendarDay = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetCalendarDay'),
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
        variable: VariableNode(name: NameNode(value: 'airingAt_greater')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'airingAt_lesser')),
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
            value: IntValueNode(value: '10'),
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
            name: NameNode(value: 'airingSchedules'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'sort'),
                value: EnumValueNode(name: NameNode(value: 'TIME')),
              ),
              ArgumentNode(
                name: NameNode(value: 'airingAt_greater'),
                value: VariableNode(name: NameNode(value: 'airingAt_greater')),
              ),
              ArgumentNode(
                name: NameNode(value: 'airingAt_lesser'),
                value: VariableNode(name: NameNode(value: 'airingAt_lesser')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                name: NameNode(value: 'CalendarAiringSchedule'),
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
  fragmentDefinitionCalendarAiringSchedule,
]);
Query$GetCalendarDay _parserFn$Query$GetCalendarDay(
        Map<String, dynamic> data) =>
    Query$GetCalendarDay.fromJson(data);
typedef OnQueryComplete$Query$GetCalendarDay = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$GetCalendarDay?,
);

class Options$Query$GetCalendarDay
    extends graphql.QueryOptions<Query$GetCalendarDay> {
  Options$Query$GetCalendarDay({
    String? operationName,
    Variables$Query$GetCalendarDay? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetCalendarDay? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$GetCalendarDay? onComplete,
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
                    data == null ? null : _parserFn$Query$GetCalendarDay(data),
                  ),
          onError: onError,
          document: documentNodeQueryGetCalendarDay,
          parserFn: _parserFn$Query$GetCalendarDay,
        );

  final OnQueryComplete$Query$GetCalendarDay? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$GetCalendarDay
    extends graphql.WatchQueryOptions<Query$GetCalendarDay> {
  WatchOptions$Query$GetCalendarDay({
    String? operationName,
    Variables$Query$GetCalendarDay? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetCalendarDay? typedOptimisticResult,
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
          document: documentNodeQueryGetCalendarDay,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetCalendarDay,
        );
}

class FetchMoreOptions$Query$GetCalendarDay extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetCalendarDay({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$GetCalendarDay? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryGetCalendarDay,
        );
}

extension ClientExtension$Query$GetCalendarDay on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetCalendarDay>> query$GetCalendarDay(
          [Options$Query$GetCalendarDay? options]) async =>
      await this.query(options ?? Options$Query$GetCalendarDay());
  graphql.ObservableQuery<Query$GetCalendarDay> watchQuery$GetCalendarDay(
          [WatchOptions$Query$GetCalendarDay? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$GetCalendarDay());
  void writeQuery$GetCalendarDay({
    required Query$GetCalendarDay data,
    Variables$Query$GetCalendarDay? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryGetCalendarDay),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetCalendarDay? readQuery$GetCalendarDay({
    Variables$Query$GetCalendarDay? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryGetCalendarDay),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$GetCalendarDay.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$GetCalendarDay> useQuery$GetCalendarDay(
        [Options$Query$GetCalendarDay? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$GetCalendarDay());
graphql.ObservableQuery<Query$GetCalendarDay> useWatchQuery$GetCalendarDay(
        [WatchOptions$Query$GetCalendarDay? options]) =>
    graphql_flutter
        .useWatchQuery(options ?? WatchOptions$Query$GetCalendarDay());

class Query$GetCalendarDay$Widget
    extends graphql_flutter.Query<Query$GetCalendarDay> {
  Query$GetCalendarDay$Widget({
    widgets.Key? key,
    Options$Query$GetCalendarDay? options,
    required graphql_flutter.QueryBuilder<Query$GetCalendarDay> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$GetCalendarDay(),
          builder: builder,
        );
}

class Query$GetCalendarDay$Page {
  Query$GetCalendarDay$Page({
    this.pageInfo,
    this.airingSchedules,
    this.$__typename = 'Page',
  });

  factory Query$GetCalendarDay$Page.fromJson(Map<String, dynamic> json) {
    final l$pageInfo = json['pageInfo'];
    final l$airingSchedules = json['airingSchedules'];
    final l$$__typename = json['__typename'];
    return Query$GetCalendarDay$Page(
      pageInfo: l$pageInfo == null
          ? null
          : Query$GetCalendarDay$Page$pageInfo.fromJson(
              (l$pageInfo as Map<String, dynamic>)),
      airingSchedules: (l$airingSchedules as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$CalendarAiringSchedule.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetCalendarDay$Page$pageInfo? pageInfo;

  final List<Fragment$CalendarAiringSchedule?>? airingSchedules;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$pageInfo = pageInfo;
    _resultData['pageInfo'] = l$pageInfo?.toJson();
    final l$airingSchedules = airingSchedules;
    _resultData['airingSchedules'] =
        l$airingSchedules?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$pageInfo = pageInfo;
    final l$airingSchedules = airingSchedules;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$pageInfo,
      l$airingSchedules == null
          ? null
          : Object.hashAll(l$airingSchedules.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetCalendarDay$Page) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$pageInfo = pageInfo;
    final lOther$pageInfo = other.pageInfo;
    if (l$pageInfo != lOther$pageInfo) {
      return false;
    }
    final l$airingSchedules = airingSchedules;
    final lOther$airingSchedules = other.airingSchedules;
    if (l$airingSchedules != null && lOther$airingSchedules != null) {
      if (l$airingSchedules.length != lOther$airingSchedules.length) {
        return false;
      }
      for (int i = 0; i < l$airingSchedules.length; i++) {
        final l$airingSchedules$entry = l$airingSchedules[i];
        final lOther$airingSchedules$entry = lOther$airingSchedules[i];
        if (l$airingSchedules$entry != lOther$airingSchedules$entry) {
          return false;
        }
      }
    } else if (l$airingSchedules != lOther$airingSchedules) {
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

extension UtilityExtension$Query$GetCalendarDay$Page
    on Query$GetCalendarDay$Page {
  CopyWith$Query$GetCalendarDay$Page<Query$GetCalendarDay$Page> get copyWith =>
      CopyWith$Query$GetCalendarDay$Page(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetCalendarDay$Page<TRes> {
  factory CopyWith$Query$GetCalendarDay$Page(
    Query$GetCalendarDay$Page instance,
    TRes Function(Query$GetCalendarDay$Page) then,
  ) = _CopyWithImpl$Query$GetCalendarDay$Page;

  factory CopyWith$Query$GetCalendarDay$Page.stub(TRes res) =
      _CopyWithStubImpl$Query$GetCalendarDay$Page;

  TRes call({
    Query$GetCalendarDay$Page$pageInfo? pageInfo,
    List<Fragment$CalendarAiringSchedule?>? airingSchedules,
    String? $__typename,
  });
  CopyWith$Query$GetCalendarDay$Page$pageInfo<TRes> get pageInfo;
  TRes airingSchedules(
      Iterable<Fragment$CalendarAiringSchedule?>? Function(
              Iterable<
                  CopyWith$Fragment$CalendarAiringSchedule<
                      Fragment$CalendarAiringSchedule>?>?)
          _fn);
}

class _CopyWithImpl$Query$GetCalendarDay$Page<TRes>
    implements CopyWith$Query$GetCalendarDay$Page<TRes> {
  _CopyWithImpl$Query$GetCalendarDay$Page(
    this._instance,
    this._then,
  );

  final Query$GetCalendarDay$Page _instance;

  final TRes Function(Query$GetCalendarDay$Page) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pageInfo = _undefined,
    Object? airingSchedules = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetCalendarDay$Page(
        pageInfo: pageInfo == _undefined
            ? _instance.pageInfo
            : (pageInfo as Query$GetCalendarDay$Page$pageInfo?),
        airingSchedules: airingSchedules == _undefined
            ? _instance.airingSchedules
            : (airingSchedules as List<Fragment$CalendarAiringSchedule?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetCalendarDay$Page$pageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return local$pageInfo == null
        ? CopyWith$Query$GetCalendarDay$Page$pageInfo.stub(_then(_instance))
        : CopyWith$Query$GetCalendarDay$Page$pageInfo(
            local$pageInfo, (e) => call(pageInfo: e));
  }

  TRes airingSchedules(
          Iterable<Fragment$CalendarAiringSchedule?>? Function(
                  Iterable<
                      CopyWith$Fragment$CalendarAiringSchedule<
                          Fragment$CalendarAiringSchedule>?>?)
              _fn) =>
      call(
          airingSchedules: _fn(_instance.airingSchedules?.map((e) => e == null
              ? null
              : CopyWith$Fragment$CalendarAiringSchedule(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$GetCalendarDay$Page<TRes>
    implements CopyWith$Query$GetCalendarDay$Page<TRes> {
  _CopyWithStubImpl$Query$GetCalendarDay$Page(this._res);

  TRes _res;

  call({
    Query$GetCalendarDay$Page$pageInfo? pageInfo,
    List<Fragment$CalendarAiringSchedule?>? airingSchedules,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetCalendarDay$Page$pageInfo<TRes> get pageInfo =>
      CopyWith$Query$GetCalendarDay$Page$pageInfo.stub(_res);

  airingSchedules(_fn) => _res;
}

class Query$GetCalendarDay$Page$pageInfo {
  Query$GetCalendarDay$Page$pageInfo({
    this.hasNextPage,
    this.$__typename = 'PageInfo',
  });

  factory Query$GetCalendarDay$Page$pageInfo.fromJson(
      Map<String, dynamic> json) {
    final l$hasNextPage = json['hasNextPage'];
    final l$$__typename = json['__typename'];
    return Query$GetCalendarDay$Page$pageInfo(
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
    if (!(other is Query$GetCalendarDay$Page$pageInfo) ||
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

extension UtilityExtension$Query$GetCalendarDay$Page$pageInfo
    on Query$GetCalendarDay$Page$pageInfo {
  CopyWith$Query$GetCalendarDay$Page$pageInfo<
          Query$GetCalendarDay$Page$pageInfo>
      get copyWith => CopyWith$Query$GetCalendarDay$Page$pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetCalendarDay$Page$pageInfo<TRes> {
  factory CopyWith$Query$GetCalendarDay$Page$pageInfo(
    Query$GetCalendarDay$Page$pageInfo instance,
    TRes Function(Query$GetCalendarDay$Page$pageInfo) then,
  ) = _CopyWithImpl$Query$GetCalendarDay$Page$pageInfo;

  factory CopyWith$Query$GetCalendarDay$Page$pageInfo.stub(TRes res) =
      _CopyWithStubImpl$Query$GetCalendarDay$Page$pageInfo;

  TRes call({
    bool? hasNextPage,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetCalendarDay$Page$pageInfo<TRes>
    implements CopyWith$Query$GetCalendarDay$Page$pageInfo<TRes> {
  _CopyWithImpl$Query$GetCalendarDay$Page$pageInfo(
    this._instance,
    this._then,
  );

  final Query$GetCalendarDay$Page$pageInfo _instance;

  final TRes Function(Query$GetCalendarDay$Page$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasNextPage = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetCalendarDay$Page$pageInfo(
        hasNextPage: hasNextPage == _undefined
            ? _instance.hasNextPage
            : (hasNextPage as bool?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetCalendarDay$Page$pageInfo<TRes>
    implements CopyWith$Query$GetCalendarDay$Page$pageInfo<TRes> {
  _CopyWithStubImpl$Query$GetCalendarDay$Page$pageInfo(this._res);

  TRes _res;

  call({
    bool? hasNextPage,
    String? $__typename,
  }) =>
      _res;
}
