// GENERATED FILE
// DO NOT MODIFY
// ignore_for_file: type=lint
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$FollowingAndFollowersCount {
  factory Variables$Query$FollowingAndFollowersCount({required int userId}) =>
      Variables$Query$FollowingAndFollowersCount._({
        r'userId': userId,
      });

  Variables$Query$FollowingAndFollowersCount._(this._$data);

  factory Variables$Query$FollowingAndFollowersCount.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$userId = data['userId'];
    result$data['userId'] = (l$userId as int);
    return Variables$Query$FollowingAndFollowersCount._(result$data);
  }

  Map<String, dynamic> _$data;

  int get userId => (_$data['userId'] as int);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$userId = userId;
    result$data['userId'] = l$userId;
    return result$data;
  }

  CopyWith$Variables$Query$FollowingAndFollowersCount<
          Variables$Query$FollowingAndFollowersCount>
      get copyWith => CopyWith$Variables$Query$FollowingAndFollowersCount(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$FollowingAndFollowersCount ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$userId = userId;
    final lOther$userId = other.userId;
    if (l$userId != lOther$userId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$userId = userId;
    return Object.hashAll([l$userId]);
  }
}

abstract class CopyWith$Variables$Query$FollowingAndFollowersCount<TRes> {
  factory CopyWith$Variables$Query$FollowingAndFollowersCount(
    Variables$Query$FollowingAndFollowersCount instance,
    TRes Function(Variables$Query$FollowingAndFollowersCount) then,
  ) = _CopyWithImpl$Variables$Query$FollowingAndFollowersCount;

  factory CopyWith$Variables$Query$FollowingAndFollowersCount.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$FollowingAndFollowersCount;

  TRes call({int? userId});
}

class _CopyWithImpl$Variables$Query$FollowingAndFollowersCount<TRes>
    implements CopyWith$Variables$Query$FollowingAndFollowersCount<TRes> {
  _CopyWithImpl$Variables$Query$FollowingAndFollowersCount(
    this._instance,
    this._then,
  );

  final Variables$Query$FollowingAndFollowersCount _instance;

  final TRes Function(Variables$Query$FollowingAndFollowersCount) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? userId = _undefined}) =>
      _then(Variables$Query$FollowingAndFollowersCount._({
        ..._instance._$data,
        if (userId != _undefined && userId != null) 'userId': (userId as int),
      }));
}

class _CopyWithStubImpl$Variables$Query$FollowingAndFollowersCount<TRes>
    implements CopyWith$Variables$Query$FollowingAndFollowersCount<TRes> {
  _CopyWithStubImpl$Variables$Query$FollowingAndFollowersCount(this._res);

  TRes _res;

  call({int? userId}) => _res;
}

class Query$FollowingAndFollowersCount {
  Query$FollowingAndFollowersCount({
    this.following,
    this.followers,
    this.$__typename = 'Query',
  });

  factory Query$FollowingAndFollowersCount.fromJson(Map<String, dynamic> json) {
    final l$following = json['following'];
    final l$followers = json['followers'];
    final l$$__typename = json['__typename'];
    return Query$FollowingAndFollowersCount(
      following: l$following == null
          ? null
          : Query$FollowingAndFollowersCount$following.fromJson(
              (l$following as Map<String, dynamic>)),
      followers: l$followers == null
          ? null
          : Query$FollowingAndFollowersCount$followers.fromJson(
              (l$followers as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$FollowingAndFollowersCount$following? following;

  final Query$FollowingAndFollowersCount$followers? followers;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$following = following;
    _resultData['following'] = l$following?.toJson();
    final l$followers = followers;
    _resultData['followers'] = l$followers?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$following = following;
    final l$followers = followers;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$following,
      l$followers,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$FollowingAndFollowersCount ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$following = following;
    final lOther$following = other.following;
    if (l$following != lOther$following) {
      return false;
    }
    final l$followers = followers;
    final lOther$followers = other.followers;
    if (l$followers != lOther$followers) {
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

extension UtilityExtension$Query$FollowingAndFollowersCount
    on Query$FollowingAndFollowersCount {
  CopyWith$Query$FollowingAndFollowersCount<Query$FollowingAndFollowersCount>
      get copyWith => CopyWith$Query$FollowingAndFollowersCount(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FollowingAndFollowersCount<TRes> {
  factory CopyWith$Query$FollowingAndFollowersCount(
    Query$FollowingAndFollowersCount instance,
    TRes Function(Query$FollowingAndFollowersCount) then,
  ) = _CopyWithImpl$Query$FollowingAndFollowersCount;

  factory CopyWith$Query$FollowingAndFollowersCount.stub(TRes res) =
      _CopyWithStubImpl$Query$FollowingAndFollowersCount;

  TRes call({
    Query$FollowingAndFollowersCount$following? following,
    Query$FollowingAndFollowersCount$followers? followers,
    String? $__typename,
  });
  CopyWith$Query$FollowingAndFollowersCount$following<TRes> get following;
  CopyWith$Query$FollowingAndFollowersCount$followers<TRes> get followers;
}

class _CopyWithImpl$Query$FollowingAndFollowersCount<TRes>
    implements CopyWith$Query$FollowingAndFollowersCount<TRes> {
  _CopyWithImpl$Query$FollowingAndFollowersCount(
    this._instance,
    this._then,
  );

  final Query$FollowingAndFollowersCount _instance;

  final TRes Function(Query$FollowingAndFollowersCount) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? following = _undefined,
    Object? followers = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FollowingAndFollowersCount(
        following: following == _undefined
            ? _instance.following
            : (following as Query$FollowingAndFollowersCount$following?),
        followers: followers == _undefined
            ? _instance.followers
            : (followers as Query$FollowingAndFollowersCount$followers?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$FollowingAndFollowersCount$following<TRes> get following {
    final local$following = _instance.following;
    return local$following == null
        ? CopyWith$Query$FollowingAndFollowersCount$following.stub(
            _then(_instance))
        : CopyWith$Query$FollowingAndFollowersCount$following(
            local$following, (e) => call(following: e));
  }

  CopyWith$Query$FollowingAndFollowersCount$followers<TRes> get followers {
    final local$followers = _instance.followers;
    return local$followers == null
        ? CopyWith$Query$FollowingAndFollowersCount$followers.stub(
            _then(_instance))
        : CopyWith$Query$FollowingAndFollowersCount$followers(
            local$followers, (e) => call(followers: e));
  }
}

class _CopyWithStubImpl$Query$FollowingAndFollowersCount<TRes>
    implements CopyWith$Query$FollowingAndFollowersCount<TRes> {
  _CopyWithStubImpl$Query$FollowingAndFollowersCount(this._res);

  TRes _res;

  call({
    Query$FollowingAndFollowersCount$following? following,
    Query$FollowingAndFollowersCount$followers? followers,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$FollowingAndFollowersCount$following<TRes> get following =>
      CopyWith$Query$FollowingAndFollowersCount$following.stub(_res);

  CopyWith$Query$FollowingAndFollowersCount$followers<TRes> get followers =>
      CopyWith$Query$FollowingAndFollowersCount$followers.stub(_res);
}

const documentNodeQueryFollowingAndFollowersCount = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'FollowingAndFollowersCount'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'userId')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'Page'),
        alias: NameNode(value: 'following'),
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'perPage'),
            value: IntValueNode(value: '1'),
          )
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
                name: NameNode(value: 'total'),
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
            name: NameNode(value: 'following'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'userId'),
                value: VariableNode(name: NameNode(value: 'userId')),
              )
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'id'),
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
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: 'Page'),
        alias: NameNode(value: 'followers'),
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'perPage'),
            value: IntValueNode(value: '1'),
          )
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
                name: NameNode(value: 'total'),
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
            name: NameNode(value: 'followers'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'userId'),
                value: VariableNode(name: NameNode(value: 'userId')),
              )
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'id'),
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
]);
Query$FollowingAndFollowersCount _parserFn$Query$FollowingAndFollowersCount(
        Map<String, dynamic> data) =>
    Query$FollowingAndFollowersCount.fromJson(data);
typedef OnQueryComplete$Query$FollowingAndFollowersCount = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Query$FollowingAndFollowersCount?,
);

class Options$Query$FollowingAndFollowersCount
    extends graphql.QueryOptions<Query$FollowingAndFollowersCount> {
  Options$Query$FollowingAndFollowersCount({
    String? operationName,
    required Variables$Query$FollowingAndFollowersCount variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$FollowingAndFollowersCount? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$FollowingAndFollowersCount? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
          variables: variables.toJson(),
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
                        : _parserFn$Query$FollowingAndFollowersCount(data),
                  ),
          onError: onError,
          document: documentNodeQueryFollowingAndFollowersCount,
          parserFn: _parserFn$Query$FollowingAndFollowersCount,
        );

  final OnQueryComplete$Query$FollowingAndFollowersCount? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$FollowingAndFollowersCount
    extends graphql.WatchQueryOptions<Query$FollowingAndFollowersCount> {
  WatchOptions$Query$FollowingAndFollowersCount({
    String? operationName,
    required Variables$Query$FollowingAndFollowersCount variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$FollowingAndFollowersCount? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeQueryFollowingAndFollowersCount,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$FollowingAndFollowersCount,
        );
}

class FetchMoreOptions$Query$FollowingAndFollowersCount
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$FollowingAndFollowersCount({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$FollowingAndFollowersCount variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryFollowingAndFollowersCount,
        );
}

extension ClientExtension$Query$FollowingAndFollowersCount
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$FollowingAndFollowersCount>>
      query$FollowingAndFollowersCount(
              Options$Query$FollowingAndFollowersCount options) async =>
          await this.query(options);
  graphql.ObservableQuery<Query$FollowingAndFollowersCount>
      watchQuery$FollowingAndFollowersCount(
              WatchOptions$Query$FollowingAndFollowersCount options) =>
          this.watchQuery(options);
  void writeQuery$FollowingAndFollowersCount({
    required Query$FollowingAndFollowersCount data,
    required Variables$Query$FollowingAndFollowersCount variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(
              document: documentNodeQueryFollowingAndFollowersCount),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$FollowingAndFollowersCount? readQuery$FollowingAndFollowersCount({
    required Variables$Query$FollowingAndFollowersCount variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(
            document: documentNodeQueryFollowingAndFollowersCount),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null
        ? null
        : Query$FollowingAndFollowersCount.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$FollowingAndFollowersCount>
    useQuery$FollowingAndFollowersCount(
            Options$Query$FollowingAndFollowersCount options) =>
        graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$FollowingAndFollowersCount>
    useWatchQuery$FollowingAndFollowersCount(
            WatchOptions$Query$FollowingAndFollowersCount options) =>
        graphql_flutter.useWatchQuery(options);

class Query$FollowingAndFollowersCount$Widget
    extends graphql_flutter.Query<Query$FollowingAndFollowersCount> {
  Query$FollowingAndFollowersCount$Widget({
    widgets.Key? key,
    required Options$Query$FollowingAndFollowersCount options,
    required graphql_flutter.QueryBuilder<Query$FollowingAndFollowersCount>
        builder,
  }) : super(
          key: key,
          options: options,
          builder: builder,
        );
}

class Query$FollowingAndFollowersCount$following {
  Query$FollowingAndFollowersCount$following({
    this.pageInfo,
    this.following,
    this.$__typename = 'Page',
  });

  factory Query$FollowingAndFollowersCount$following.fromJson(
      Map<String, dynamic> json) {
    final l$pageInfo = json['pageInfo'];
    final l$following = json['following'];
    final l$$__typename = json['__typename'];
    return Query$FollowingAndFollowersCount$following(
      pageInfo: l$pageInfo == null
          ? null
          : Query$FollowingAndFollowersCount$following$pageInfo.fromJson(
              (l$pageInfo as Map<String, dynamic>)),
      following: (l$following as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$FollowingAndFollowersCount$following$following.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$FollowingAndFollowersCount$following$pageInfo? pageInfo;

  final List<Query$FollowingAndFollowersCount$following$following?>? following;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$pageInfo = pageInfo;
    _resultData['pageInfo'] = l$pageInfo?.toJson();
    final l$following = following;
    _resultData['following'] = l$following?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$pageInfo = pageInfo;
    final l$following = following;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$pageInfo,
      l$following == null ? null : Object.hashAll(l$following.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$FollowingAndFollowersCount$following ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$pageInfo = pageInfo;
    final lOther$pageInfo = other.pageInfo;
    if (l$pageInfo != lOther$pageInfo) {
      return false;
    }
    final l$following = following;
    final lOther$following = other.following;
    if (l$following != null && lOther$following != null) {
      if (l$following.length != lOther$following.length) {
        return false;
      }
      for (int i = 0; i < l$following.length; i++) {
        final l$following$entry = l$following[i];
        final lOther$following$entry = lOther$following[i];
        if (l$following$entry != lOther$following$entry) {
          return false;
        }
      }
    } else if (l$following != lOther$following) {
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

extension UtilityExtension$Query$FollowingAndFollowersCount$following
    on Query$FollowingAndFollowersCount$following {
  CopyWith$Query$FollowingAndFollowersCount$following<
          Query$FollowingAndFollowersCount$following>
      get copyWith => CopyWith$Query$FollowingAndFollowersCount$following(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FollowingAndFollowersCount$following<TRes> {
  factory CopyWith$Query$FollowingAndFollowersCount$following(
    Query$FollowingAndFollowersCount$following instance,
    TRes Function(Query$FollowingAndFollowersCount$following) then,
  ) = _CopyWithImpl$Query$FollowingAndFollowersCount$following;

  factory CopyWith$Query$FollowingAndFollowersCount$following.stub(TRes res) =
      _CopyWithStubImpl$Query$FollowingAndFollowersCount$following;

  TRes call({
    Query$FollowingAndFollowersCount$following$pageInfo? pageInfo,
    List<Query$FollowingAndFollowersCount$following$following?>? following,
    String? $__typename,
  });
  CopyWith$Query$FollowingAndFollowersCount$following$pageInfo<TRes>
      get pageInfo;
  TRes following(
      Iterable<Query$FollowingAndFollowersCount$following$following?>? Function(
              Iterable<
                  CopyWith$Query$FollowingAndFollowersCount$following$following<
                      Query$FollowingAndFollowersCount$following$following>?>?)
          _fn);
}

class _CopyWithImpl$Query$FollowingAndFollowersCount$following<TRes>
    implements CopyWith$Query$FollowingAndFollowersCount$following<TRes> {
  _CopyWithImpl$Query$FollowingAndFollowersCount$following(
    this._instance,
    this._then,
  );

  final Query$FollowingAndFollowersCount$following _instance;

  final TRes Function(Query$FollowingAndFollowersCount$following) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pageInfo = _undefined,
    Object? following = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FollowingAndFollowersCount$following(
        pageInfo: pageInfo == _undefined
            ? _instance.pageInfo
            : (pageInfo
                as Query$FollowingAndFollowersCount$following$pageInfo?),
        following: following == _undefined
            ? _instance.following
            : (following as List<
                Query$FollowingAndFollowersCount$following$following?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$FollowingAndFollowersCount$following$pageInfo<TRes>
      get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return local$pageInfo == null
        ? CopyWith$Query$FollowingAndFollowersCount$following$pageInfo.stub(
            _then(_instance))
        : CopyWith$Query$FollowingAndFollowersCount$following$pageInfo(
            local$pageInfo, (e) => call(pageInfo: e));
  }

  TRes following(
          Iterable<Query$FollowingAndFollowersCount$following$following?>? Function(
                  Iterable<
                      CopyWith$Query$FollowingAndFollowersCount$following$following<
                          Query$FollowingAndFollowersCount$following$following>?>?)
              _fn) =>
      call(
          following: _fn(_instance.following?.map((e) => e == null
              ? null
              : CopyWith$Query$FollowingAndFollowersCount$following$following(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$FollowingAndFollowersCount$following<TRes>
    implements CopyWith$Query$FollowingAndFollowersCount$following<TRes> {
  _CopyWithStubImpl$Query$FollowingAndFollowersCount$following(this._res);

  TRes _res;

  call({
    Query$FollowingAndFollowersCount$following$pageInfo? pageInfo,
    List<Query$FollowingAndFollowersCount$following$following?>? following,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$FollowingAndFollowersCount$following$pageInfo<TRes>
      get pageInfo =>
          CopyWith$Query$FollowingAndFollowersCount$following$pageInfo.stub(
              _res);

  following(_fn) => _res;
}

class Query$FollowingAndFollowersCount$following$pageInfo {
  Query$FollowingAndFollowersCount$following$pageInfo({
    this.total,
    this.$__typename = 'PageInfo',
  });

  factory Query$FollowingAndFollowersCount$following$pageInfo.fromJson(
      Map<String, dynamic> json) {
    final l$total = json['total'];
    final l$$__typename = json['__typename'];
    return Query$FollowingAndFollowersCount$following$pageInfo(
      total: (l$total as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final int? total;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$total = total;
    _resultData['total'] = l$total;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$total = total;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$total,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$FollowingAndFollowersCount$following$pageInfo ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$total = total;
    final lOther$total = other.total;
    if (l$total != lOther$total) {
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

extension UtilityExtension$Query$FollowingAndFollowersCount$following$pageInfo
    on Query$FollowingAndFollowersCount$following$pageInfo {
  CopyWith$Query$FollowingAndFollowersCount$following$pageInfo<
          Query$FollowingAndFollowersCount$following$pageInfo>
      get copyWith =>
          CopyWith$Query$FollowingAndFollowersCount$following$pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FollowingAndFollowersCount$following$pageInfo<
    TRes> {
  factory CopyWith$Query$FollowingAndFollowersCount$following$pageInfo(
    Query$FollowingAndFollowersCount$following$pageInfo instance,
    TRes Function(Query$FollowingAndFollowersCount$following$pageInfo) then,
  ) = _CopyWithImpl$Query$FollowingAndFollowersCount$following$pageInfo;

  factory CopyWith$Query$FollowingAndFollowersCount$following$pageInfo.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FollowingAndFollowersCount$following$pageInfo;

  TRes call({
    int? total,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FollowingAndFollowersCount$following$pageInfo<TRes>
    implements
        CopyWith$Query$FollowingAndFollowersCount$following$pageInfo<TRes> {
  _CopyWithImpl$Query$FollowingAndFollowersCount$following$pageInfo(
    this._instance,
    this._then,
  );

  final Query$FollowingAndFollowersCount$following$pageInfo _instance;

  final TRes Function(Query$FollowingAndFollowersCount$following$pageInfo)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? total = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FollowingAndFollowersCount$following$pageInfo(
        total: total == _undefined ? _instance.total : (total as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FollowingAndFollowersCount$following$pageInfo<
        TRes>
    implements
        CopyWith$Query$FollowingAndFollowersCount$following$pageInfo<TRes> {
  _CopyWithStubImpl$Query$FollowingAndFollowersCount$following$pageInfo(
      this._res);

  TRes _res;

  call({
    int? total,
    String? $__typename,
  }) =>
      _res;
}

class Query$FollowingAndFollowersCount$following$following {
  Query$FollowingAndFollowersCount$following$following({
    required this.id,
    this.$__typename = 'User',
  });

  factory Query$FollowingAndFollowersCount$following$following.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$FollowingAndFollowersCount$following$following(
      id: (l$id as int),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$FollowingAndFollowersCount$following$following ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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

extension UtilityExtension$Query$FollowingAndFollowersCount$following$following
    on Query$FollowingAndFollowersCount$following$following {
  CopyWith$Query$FollowingAndFollowersCount$following$following<
          Query$FollowingAndFollowersCount$following$following>
      get copyWith =>
          CopyWith$Query$FollowingAndFollowersCount$following$following(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FollowingAndFollowersCount$following$following<
    TRes> {
  factory CopyWith$Query$FollowingAndFollowersCount$following$following(
    Query$FollowingAndFollowersCount$following$following instance,
    TRes Function(Query$FollowingAndFollowersCount$following$following) then,
  ) = _CopyWithImpl$Query$FollowingAndFollowersCount$following$following;

  factory CopyWith$Query$FollowingAndFollowersCount$following$following.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FollowingAndFollowersCount$following$following;

  TRes call({
    int? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FollowingAndFollowersCount$following$following<TRes>
    implements
        CopyWith$Query$FollowingAndFollowersCount$following$following<TRes> {
  _CopyWithImpl$Query$FollowingAndFollowersCount$following$following(
    this._instance,
    this._then,
  );

  final Query$FollowingAndFollowersCount$following$following _instance;

  final TRes Function(Query$FollowingAndFollowersCount$following$following)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FollowingAndFollowersCount$following$following(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FollowingAndFollowersCount$following$following<
        TRes>
    implements
        CopyWith$Query$FollowingAndFollowersCount$following$following<TRes> {
  _CopyWithStubImpl$Query$FollowingAndFollowersCount$following$following(
      this._res);

  TRes _res;

  call({
    int? id,
    String? $__typename,
  }) =>
      _res;
}

class Query$FollowingAndFollowersCount$followers {
  Query$FollowingAndFollowersCount$followers({
    this.pageInfo,
    this.followers,
    this.$__typename = 'Page',
  });

  factory Query$FollowingAndFollowersCount$followers.fromJson(
      Map<String, dynamic> json) {
    final l$pageInfo = json['pageInfo'];
    final l$followers = json['followers'];
    final l$$__typename = json['__typename'];
    return Query$FollowingAndFollowersCount$followers(
      pageInfo: l$pageInfo == null
          ? null
          : Query$FollowingAndFollowersCount$followers$pageInfo.fromJson(
              (l$pageInfo as Map<String, dynamic>)),
      followers: (l$followers as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$FollowingAndFollowersCount$followers$followers.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$FollowingAndFollowersCount$followers$pageInfo? pageInfo;

  final List<Query$FollowingAndFollowersCount$followers$followers?>? followers;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$pageInfo = pageInfo;
    _resultData['pageInfo'] = l$pageInfo?.toJson();
    final l$followers = followers;
    _resultData['followers'] = l$followers?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$pageInfo = pageInfo;
    final l$followers = followers;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$pageInfo,
      l$followers == null ? null : Object.hashAll(l$followers.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$FollowingAndFollowersCount$followers ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$pageInfo = pageInfo;
    final lOther$pageInfo = other.pageInfo;
    if (l$pageInfo != lOther$pageInfo) {
      return false;
    }
    final l$followers = followers;
    final lOther$followers = other.followers;
    if (l$followers != null && lOther$followers != null) {
      if (l$followers.length != lOther$followers.length) {
        return false;
      }
      for (int i = 0; i < l$followers.length; i++) {
        final l$followers$entry = l$followers[i];
        final lOther$followers$entry = lOther$followers[i];
        if (l$followers$entry != lOther$followers$entry) {
          return false;
        }
      }
    } else if (l$followers != lOther$followers) {
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

extension UtilityExtension$Query$FollowingAndFollowersCount$followers
    on Query$FollowingAndFollowersCount$followers {
  CopyWith$Query$FollowingAndFollowersCount$followers<
          Query$FollowingAndFollowersCount$followers>
      get copyWith => CopyWith$Query$FollowingAndFollowersCount$followers(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FollowingAndFollowersCount$followers<TRes> {
  factory CopyWith$Query$FollowingAndFollowersCount$followers(
    Query$FollowingAndFollowersCount$followers instance,
    TRes Function(Query$FollowingAndFollowersCount$followers) then,
  ) = _CopyWithImpl$Query$FollowingAndFollowersCount$followers;

  factory CopyWith$Query$FollowingAndFollowersCount$followers.stub(TRes res) =
      _CopyWithStubImpl$Query$FollowingAndFollowersCount$followers;

  TRes call({
    Query$FollowingAndFollowersCount$followers$pageInfo? pageInfo,
    List<Query$FollowingAndFollowersCount$followers$followers?>? followers,
    String? $__typename,
  });
  CopyWith$Query$FollowingAndFollowersCount$followers$pageInfo<TRes>
      get pageInfo;
  TRes followers(
      Iterable<Query$FollowingAndFollowersCount$followers$followers?>? Function(
              Iterable<
                  CopyWith$Query$FollowingAndFollowersCount$followers$followers<
                      Query$FollowingAndFollowersCount$followers$followers>?>?)
          _fn);
}

class _CopyWithImpl$Query$FollowingAndFollowersCount$followers<TRes>
    implements CopyWith$Query$FollowingAndFollowersCount$followers<TRes> {
  _CopyWithImpl$Query$FollowingAndFollowersCount$followers(
    this._instance,
    this._then,
  );

  final Query$FollowingAndFollowersCount$followers _instance;

  final TRes Function(Query$FollowingAndFollowersCount$followers) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pageInfo = _undefined,
    Object? followers = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FollowingAndFollowersCount$followers(
        pageInfo: pageInfo == _undefined
            ? _instance.pageInfo
            : (pageInfo
                as Query$FollowingAndFollowersCount$followers$pageInfo?),
        followers: followers == _undefined
            ? _instance.followers
            : (followers as List<
                Query$FollowingAndFollowersCount$followers$followers?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$FollowingAndFollowersCount$followers$pageInfo<TRes>
      get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return local$pageInfo == null
        ? CopyWith$Query$FollowingAndFollowersCount$followers$pageInfo.stub(
            _then(_instance))
        : CopyWith$Query$FollowingAndFollowersCount$followers$pageInfo(
            local$pageInfo, (e) => call(pageInfo: e));
  }

  TRes followers(
          Iterable<Query$FollowingAndFollowersCount$followers$followers?>? Function(
                  Iterable<
                      CopyWith$Query$FollowingAndFollowersCount$followers$followers<
                          Query$FollowingAndFollowersCount$followers$followers>?>?)
              _fn) =>
      call(
          followers: _fn(_instance.followers?.map((e) => e == null
              ? null
              : CopyWith$Query$FollowingAndFollowersCount$followers$followers(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$FollowingAndFollowersCount$followers<TRes>
    implements CopyWith$Query$FollowingAndFollowersCount$followers<TRes> {
  _CopyWithStubImpl$Query$FollowingAndFollowersCount$followers(this._res);

  TRes _res;

  call({
    Query$FollowingAndFollowersCount$followers$pageInfo? pageInfo,
    List<Query$FollowingAndFollowersCount$followers$followers?>? followers,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$FollowingAndFollowersCount$followers$pageInfo<TRes>
      get pageInfo =>
          CopyWith$Query$FollowingAndFollowersCount$followers$pageInfo.stub(
              _res);

  followers(_fn) => _res;
}

class Query$FollowingAndFollowersCount$followers$pageInfo {
  Query$FollowingAndFollowersCount$followers$pageInfo({
    this.total,
    this.$__typename = 'PageInfo',
  });

  factory Query$FollowingAndFollowersCount$followers$pageInfo.fromJson(
      Map<String, dynamic> json) {
    final l$total = json['total'];
    final l$$__typename = json['__typename'];
    return Query$FollowingAndFollowersCount$followers$pageInfo(
      total: (l$total as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final int? total;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$total = total;
    _resultData['total'] = l$total;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$total = total;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$total,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$FollowingAndFollowersCount$followers$pageInfo ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$total = total;
    final lOther$total = other.total;
    if (l$total != lOther$total) {
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

extension UtilityExtension$Query$FollowingAndFollowersCount$followers$pageInfo
    on Query$FollowingAndFollowersCount$followers$pageInfo {
  CopyWith$Query$FollowingAndFollowersCount$followers$pageInfo<
          Query$FollowingAndFollowersCount$followers$pageInfo>
      get copyWith =>
          CopyWith$Query$FollowingAndFollowersCount$followers$pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FollowingAndFollowersCount$followers$pageInfo<
    TRes> {
  factory CopyWith$Query$FollowingAndFollowersCount$followers$pageInfo(
    Query$FollowingAndFollowersCount$followers$pageInfo instance,
    TRes Function(Query$FollowingAndFollowersCount$followers$pageInfo) then,
  ) = _CopyWithImpl$Query$FollowingAndFollowersCount$followers$pageInfo;

  factory CopyWith$Query$FollowingAndFollowersCount$followers$pageInfo.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FollowingAndFollowersCount$followers$pageInfo;

  TRes call({
    int? total,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FollowingAndFollowersCount$followers$pageInfo<TRes>
    implements
        CopyWith$Query$FollowingAndFollowersCount$followers$pageInfo<TRes> {
  _CopyWithImpl$Query$FollowingAndFollowersCount$followers$pageInfo(
    this._instance,
    this._then,
  );

  final Query$FollowingAndFollowersCount$followers$pageInfo _instance;

  final TRes Function(Query$FollowingAndFollowersCount$followers$pageInfo)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? total = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FollowingAndFollowersCount$followers$pageInfo(
        total: total == _undefined ? _instance.total : (total as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FollowingAndFollowersCount$followers$pageInfo<
        TRes>
    implements
        CopyWith$Query$FollowingAndFollowersCount$followers$pageInfo<TRes> {
  _CopyWithStubImpl$Query$FollowingAndFollowersCount$followers$pageInfo(
      this._res);

  TRes _res;

  call({
    int? total,
    String? $__typename,
  }) =>
      _res;
}

class Query$FollowingAndFollowersCount$followers$followers {
  Query$FollowingAndFollowersCount$followers$followers({
    required this.id,
    this.$__typename = 'User',
  });

  factory Query$FollowingAndFollowersCount$followers$followers.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$FollowingAndFollowersCount$followers$followers(
      id: (l$id as int),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$FollowingAndFollowersCount$followers$followers ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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

extension UtilityExtension$Query$FollowingAndFollowersCount$followers$followers
    on Query$FollowingAndFollowersCount$followers$followers {
  CopyWith$Query$FollowingAndFollowersCount$followers$followers<
          Query$FollowingAndFollowersCount$followers$followers>
      get copyWith =>
          CopyWith$Query$FollowingAndFollowersCount$followers$followers(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FollowingAndFollowersCount$followers$followers<
    TRes> {
  factory CopyWith$Query$FollowingAndFollowersCount$followers$followers(
    Query$FollowingAndFollowersCount$followers$followers instance,
    TRes Function(Query$FollowingAndFollowersCount$followers$followers) then,
  ) = _CopyWithImpl$Query$FollowingAndFollowersCount$followers$followers;

  factory CopyWith$Query$FollowingAndFollowersCount$followers$followers.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FollowingAndFollowersCount$followers$followers;

  TRes call({
    int? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FollowingAndFollowersCount$followers$followers<TRes>
    implements
        CopyWith$Query$FollowingAndFollowersCount$followers$followers<TRes> {
  _CopyWithImpl$Query$FollowingAndFollowersCount$followers$followers(
    this._instance,
    this._then,
  );

  final Query$FollowingAndFollowersCount$followers$followers _instance;

  final TRes Function(Query$FollowingAndFollowersCount$followers$followers)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FollowingAndFollowersCount$followers$followers(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FollowingAndFollowersCount$followers$followers<
        TRes>
    implements
        CopyWith$Query$FollowingAndFollowersCount$followers$followers<TRes> {
  _CopyWithStubImpl$Query$FollowingAndFollowersCount$followers$followers(
      this._res);

  TRes _res;

  call({
    int? id,
    String? $__typename,
  }) =>
      _res;
}
