// GENERATED FILE
// DO NOT MODIFY
// ignore_for_file: type=lint
import '../fragments.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$GetReviewDetail {
  factory Variables$Query$GetReviewDetail({int? id}) =>
      Variables$Query$GetReviewDetail._({
        if (id != null) r'id': id,
      });

  Variables$Query$GetReviewDetail._(this._$data);

  factory Variables$Query$GetReviewDetail.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as int?);
    }
    return Variables$Query$GetReviewDetail._(result$data);
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

  CopyWith$Variables$Query$GetReviewDetail<Variables$Query$GetReviewDetail>
      get copyWith => CopyWith$Variables$Query$GetReviewDetail(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$GetReviewDetail ||
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

abstract class CopyWith$Variables$Query$GetReviewDetail<TRes> {
  factory CopyWith$Variables$Query$GetReviewDetail(
    Variables$Query$GetReviewDetail instance,
    TRes Function(Variables$Query$GetReviewDetail) then,
  ) = _CopyWithImpl$Variables$Query$GetReviewDetail;

  factory CopyWith$Variables$Query$GetReviewDetail.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetReviewDetail;

  TRes call({int? id});
}

class _CopyWithImpl$Variables$Query$GetReviewDetail<TRes>
    implements CopyWith$Variables$Query$GetReviewDetail<TRes> {
  _CopyWithImpl$Variables$Query$GetReviewDetail(
    this._instance,
    this._then,
  );

  final Variables$Query$GetReviewDetail _instance;

  final TRes Function(Variables$Query$GetReviewDetail) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) =>
      _then(Variables$Query$GetReviewDetail._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as int?),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetReviewDetail<TRes>
    implements CopyWith$Variables$Query$GetReviewDetail<TRes> {
  _CopyWithStubImpl$Variables$Query$GetReviewDetail(this._res);

  TRes _res;

  call({int? id}) => _res;
}

class Query$GetReviewDetail {
  Query$GetReviewDetail({
    this.Review,
    this.$__typename = 'Query',
  });

  factory Query$GetReviewDetail.fromJson(Map<String, dynamic> json) {
    final l$Review = json['Review'];
    final l$$__typename = json['__typename'];
    return Query$GetReviewDetail(
      Review: l$Review == null
          ? null
          : Fragment$ReviewDetail.fromJson((l$Review as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$ReviewDetail? Review;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$Review = Review;
    _resultData['Review'] = l$Review?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$Review = Review;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$Review,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetReviewDetail || runtimeType != other.runtimeType) {
      return false;
    }
    final l$Review = Review;
    final lOther$Review = other.Review;
    if (l$Review != lOther$Review) {
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

extension UtilityExtension$Query$GetReviewDetail on Query$GetReviewDetail {
  CopyWith$Query$GetReviewDetail<Query$GetReviewDetail> get copyWith =>
      CopyWith$Query$GetReviewDetail(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetReviewDetail<TRes> {
  factory CopyWith$Query$GetReviewDetail(
    Query$GetReviewDetail instance,
    TRes Function(Query$GetReviewDetail) then,
  ) = _CopyWithImpl$Query$GetReviewDetail;

  factory CopyWith$Query$GetReviewDetail.stub(TRes res) =
      _CopyWithStubImpl$Query$GetReviewDetail;

  TRes call({
    Fragment$ReviewDetail? Review,
    String? $__typename,
  });
  CopyWith$Fragment$ReviewDetail<TRes> get Review;
}

class _CopyWithImpl$Query$GetReviewDetail<TRes>
    implements CopyWith$Query$GetReviewDetail<TRes> {
  _CopyWithImpl$Query$GetReviewDetail(
    this._instance,
    this._then,
  );

  final Query$GetReviewDetail _instance;

  final TRes Function(Query$GetReviewDetail) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? Review = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetReviewDetail(
        Review: Review == _undefined
            ? _instance.Review
            : (Review as Fragment$ReviewDetail?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$ReviewDetail<TRes> get Review {
    final local$Review = _instance.Review;
    return local$Review == null
        ? CopyWith$Fragment$ReviewDetail.stub(_then(_instance))
        : CopyWith$Fragment$ReviewDetail(local$Review, (e) => call(Review: e));
  }
}

class _CopyWithStubImpl$Query$GetReviewDetail<TRes>
    implements CopyWith$Query$GetReviewDetail<TRes> {
  _CopyWithStubImpl$Query$GetReviewDetail(this._res);

  TRes _res;

  call({
    Fragment$ReviewDetail? Review,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$ReviewDetail<TRes> get Review =>
      CopyWith$Fragment$ReviewDetail.stub(_res);
}

const documentNodeQueryGetReviewDetail = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetReviewDetail'),
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
        name: NameNode(value: 'Review'),
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
            name: NameNode(value: 'ReviewDetail'),
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
  fragmentDefinitionReviewDetail,
]);
Query$GetReviewDetail _parserFn$Query$GetReviewDetail(
        Map<String, dynamic> data) =>
    Query$GetReviewDetail.fromJson(data);
typedef OnQueryComplete$Query$GetReviewDetail = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$GetReviewDetail?,
);

class Options$Query$GetReviewDetail
    extends graphql.QueryOptions<Query$GetReviewDetail> {
  Options$Query$GetReviewDetail({
    String? operationName,
    Variables$Query$GetReviewDetail? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetReviewDetail? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$GetReviewDetail? onComplete,
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
                    data == null ? null : _parserFn$Query$GetReviewDetail(data),
                  ),
          onError: onError,
          document: documentNodeQueryGetReviewDetail,
          parserFn: _parserFn$Query$GetReviewDetail,
        );

  final OnQueryComplete$Query$GetReviewDetail? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$GetReviewDetail
    extends graphql.WatchQueryOptions<Query$GetReviewDetail> {
  WatchOptions$Query$GetReviewDetail({
    String? operationName,
    Variables$Query$GetReviewDetail? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetReviewDetail? typedOptimisticResult,
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
          document: documentNodeQueryGetReviewDetail,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetReviewDetail,
        );
}

class FetchMoreOptions$Query$GetReviewDetail extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetReviewDetail({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$GetReviewDetail? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryGetReviewDetail,
        );
}

extension ClientExtension$Query$GetReviewDetail on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetReviewDetail>> query$GetReviewDetail(
          [Options$Query$GetReviewDetail? options]) async =>
      await this.query(options ?? Options$Query$GetReviewDetail());
  graphql.ObservableQuery<Query$GetReviewDetail> watchQuery$GetReviewDetail(
          [WatchOptions$Query$GetReviewDetail? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$GetReviewDetail());
  void writeQuery$GetReviewDetail({
    required Query$GetReviewDetail data,
    Variables$Query$GetReviewDetail? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryGetReviewDetail),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetReviewDetail? readQuery$GetReviewDetail({
    Variables$Query$GetReviewDetail? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation:
            graphql.Operation(document: documentNodeQueryGetReviewDetail),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$GetReviewDetail.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$GetReviewDetail> useQuery$GetReviewDetail(
        [Options$Query$GetReviewDetail? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$GetReviewDetail());
graphql.ObservableQuery<Query$GetReviewDetail> useWatchQuery$GetReviewDetail(
        [WatchOptions$Query$GetReviewDetail? options]) =>
    graphql_flutter
        .useWatchQuery(options ?? WatchOptions$Query$GetReviewDetail());

class Query$GetReviewDetail$Widget
    extends graphql_flutter.Query<Query$GetReviewDetail> {
  Query$GetReviewDetail$Widget({
    widgets.Key? key,
    Options$Query$GetReviewDetail? options,
    required graphql_flutter.QueryBuilder<Query$GetReviewDetail> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$GetReviewDetail(),
          builder: builder,
        );
}
