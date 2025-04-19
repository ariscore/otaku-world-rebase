// GENERATED FILE
// DO NOT MODIFY
// ignore_for_file: type=lint
import '../fragments.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$UserInfo {
  factory Variables$Query$UserInfo({int? id}) => Variables$Query$UserInfo._({
        if (id != null) r'id': id,
      });

  Variables$Query$UserInfo._(this._$data);

  factory Variables$Query$UserInfo.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as int?);
    }
    return Variables$Query$UserInfo._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get id => (_$data['id'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    return result$data;
  }

  CopyWith$Variables$Query$UserInfo<Variables$Query$UserInfo> get copyWith =>
      CopyWith$Variables$Query$UserInfo(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$UserInfo ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    return Object.hashAll([_$data.containsKey('id') ? l$id : const {}]);
  }
}

abstract class CopyWith$Variables$Query$UserInfo<TRes> {
  factory CopyWith$Variables$Query$UserInfo(
    Variables$Query$UserInfo instance,
    TRes Function(Variables$Query$UserInfo) then,
  ) = _CopyWithImpl$Variables$Query$UserInfo;

  factory CopyWith$Variables$Query$UserInfo.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$UserInfo;

  TRes call({int? id});
}

class _CopyWithImpl$Variables$Query$UserInfo<TRes>
    implements CopyWith$Variables$Query$UserInfo<TRes> {
  _CopyWithImpl$Variables$Query$UserInfo(
    this._instance,
    this._then,
  );

  final Variables$Query$UserInfo _instance;

  final TRes Function(Variables$Query$UserInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) => _then(Variables$Query$UserInfo._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as int?),
      }));
}

class _CopyWithStubImpl$Variables$Query$UserInfo<TRes>
    implements CopyWith$Variables$Query$UserInfo<TRes> {
  _CopyWithStubImpl$Variables$Query$UserInfo(this._res);

  TRes _res;

  call({int? id}) => _res;
}

class Query$UserInfo {
  Query$UserInfo({
    this.User,
    this.$__typename = 'Query',
  });

  factory Query$UserInfo.fromJson(Map<String, dynamic> json) {
    final l$User = json['User'];
    final l$$__typename = json['__typename'];
    return Query$UserInfo(
      User: l$User == null
          ? null
          : Fragment$UserInfo.fromJson((l$User as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$UserInfo? User;

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
    if (other is! Query$UserInfo || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$UserInfo on Query$UserInfo {
  CopyWith$Query$UserInfo<Query$UserInfo> get copyWith =>
      CopyWith$Query$UserInfo(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$UserInfo<TRes> {
  factory CopyWith$Query$UserInfo(
    Query$UserInfo instance,
    TRes Function(Query$UserInfo) then,
  ) = _CopyWithImpl$Query$UserInfo;

  factory CopyWith$Query$UserInfo.stub(TRes res) =
      _CopyWithStubImpl$Query$UserInfo;

  TRes call({
    Fragment$UserInfo? User,
    String? $__typename,
  });
  CopyWith$Fragment$UserInfo<TRes> get User;
}

class _CopyWithImpl$Query$UserInfo<TRes>
    implements CopyWith$Query$UserInfo<TRes> {
  _CopyWithImpl$Query$UserInfo(
    this._instance,
    this._then,
  );

  final Query$UserInfo _instance;

  final TRes Function(Query$UserInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? User = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$UserInfo(
        User:
            User == _undefined ? _instance.User : (User as Fragment$UserInfo?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$UserInfo<TRes> get User {
    final local$User = _instance.User;
    return local$User == null
        ? CopyWith$Fragment$UserInfo.stub(_then(_instance))
        : CopyWith$Fragment$UserInfo(local$User, (e) => call(User: e));
  }
}

class _CopyWithStubImpl$Query$UserInfo<TRes>
    implements CopyWith$Query$UserInfo<TRes> {
  _CopyWithStubImpl$Query$UserInfo(this._res);

  TRes _res;

  call({
    Fragment$UserInfo? User,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$UserInfo<TRes> get User =>
      CopyWith$Fragment$UserInfo.stub(_res);
}

const documentNodeQueryUserInfo = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'UserInfo'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'id')),
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
        name: NameNode(value: 'User'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'id')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'UserInfo'),
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
  fragmentDefinitionUserInfo,
]);
Query$UserInfo _parserFn$Query$UserInfo(Map<String, dynamic> data) =>
    Query$UserInfo.fromJson(data);
typedef OnQueryComplete$Query$UserInfo = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$UserInfo?,
);

class Options$Query$UserInfo extends graphql.QueryOptions<Query$UserInfo> {
  Options$Query$UserInfo({
    String? operationName,
    Variables$Query$UserInfo? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$UserInfo? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$UserInfo? onComplete,
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
                    data == null ? null : _parserFn$Query$UserInfo(data),
                  ),
          onError: onError,
          document: documentNodeQueryUserInfo,
          parserFn: _parserFn$Query$UserInfo,
        );

  final OnQueryComplete$Query$UserInfo? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$UserInfo
    extends graphql.WatchQueryOptions<Query$UserInfo> {
  WatchOptions$Query$UserInfo({
    String? operationName,
    Variables$Query$UserInfo? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$UserInfo? typedOptimisticResult,
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
          document: documentNodeQueryUserInfo,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$UserInfo,
        );
}

class FetchMoreOptions$Query$UserInfo extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$UserInfo({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$UserInfo? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryUserInfo,
        );
}

extension ClientExtension$Query$UserInfo on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$UserInfo>> query$UserInfo(
          [Options$Query$UserInfo? options]) async =>
      await this.query(options ?? Options$Query$UserInfo());
  graphql.ObservableQuery<Query$UserInfo> watchQuery$UserInfo(
          [WatchOptions$Query$UserInfo? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$UserInfo());
  void writeQuery$UserInfo({
    required Query$UserInfo data,
    Variables$Query$UserInfo? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryUserInfo),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$UserInfo? readQuery$UserInfo({
    Variables$Query$UserInfo? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryUserInfo),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$UserInfo.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$UserInfo> useQuery$UserInfo(
        [Options$Query$UserInfo? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$UserInfo());
graphql.ObservableQuery<Query$UserInfo> useWatchQuery$UserInfo(
        [WatchOptions$Query$UserInfo? options]) =>
    graphql_flutter.useWatchQuery(options ?? WatchOptions$Query$UserInfo());

class Query$UserInfo$Widget extends graphql_flutter.Query<Query$UserInfo> {
  Query$UserInfo$Widget({
    widgets.Key? key,
    Options$Query$UserInfo? options,
    required graphql_flutter.QueryBuilder<Query$UserInfo> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$UserInfo(),
          builder: builder,
        );
}
