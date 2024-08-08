// GENERATED FILE
// DO NOT MODIFY
// ignore_for_file: type=lint
import '../fragments.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$GetMediaDetail {
  factory Variables$Query$GetMediaDetail({int? id}) =>
      Variables$Query$GetMediaDetail._({
        if (id != null) r'id': id,
      });

  Variables$Query$GetMediaDetail._(this._$data);

  factory Variables$Query$GetMediaDetail.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as int?);
    }
    return Variables$Query$GetMediaDetail._(result$data);
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

  CopyWith$Variables$Query$GetMediaDetail<Variables$Query$GetMediaDetail>
      get copyWith => CopyWith$Variables$Query$GetMediaDetail(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GetMediaDetail) ||
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

abstract class CopyWith$Variables$Query$GetMediaDetail<TRes> {
  factory CopyWith$Variables$Query$GetMediaDetail(
    Variables$Query$GetMediaDetail instance,
    TRes Function(Variables$Query$GetMediaDetail) then,
  ) = _CopyWithImpl$Variables$Query$GetMediaDetail;

  factory CopyWith$Variables$Query$GetMediaDetail.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetMediaDetail;

  TRes call({int? id});
}

class _CopyWithImpl$Variables$Query$GetMediaDetail<TRes>
    implements CopyWith$Variables$Query$GetMediaDetail<TRes> {
  _CopyWithImpl$Variables$Query$GetMediaDetail(
    this._instance,
    this._then,
  );

  final Variables$Query$GetMediaDetail _instance;

  final TRes Function(Variables$Query$GetMediaDetail) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) =>
      _then(Variables$Query$GetMediaDetail._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as int?),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetMediaDetail<TRes>
    implements CopyWith$Variables$Query$GetMediaDetail<TRes> {
  _CopyWithStubImpl$Variables$Query$GetMediaDetail(this._res);

  TRes _res;

  call({int? id}) => _res;
}

class Query$GetMediaDetail {
  Query$GetMediaDetail({
    this.Media,
    this.$__typename = 'Query',
  });

  factory Query$GetMediaDetail.fromJson(Map<String, dynamic> json) {
    final l$Media = json['Media'];
    final l$$__typename = json['__typename'];
    return Query$GetMediaDetail(
      Media: l$Media == null
          ? null
          : Fragment$MediaDetailed.fromJson((l$Media as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$MediaDetailed? Media;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$Media = Media;
    _resultData['Media'] = l$Media?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$Media = Media;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$Media,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetMediaDetail) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$Media = Media;
    final lOther$Media = other.Media;
    if (l$Media != lOther$Media) {
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

extension UtilityExtension$Query$GetMediaDetail on Query$GetMediaDetail {
  CopyWith$Query$GetMediaDetail<Query$GetMediaDetail> get copyWith =>
      CopyWith$Query$GetMediaDetail(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetMediaDetail<TRes> {
  factory CopyWith$Query$GetMediaDetail(
    Query$GetMediaDetail instance,
    TRes Function(Query$GetMediaDetail) then,
  ) = _CopyWithImpl$Query$GetMediaDetail;

  factory CopyWith$Query$GetMediaDetail.stub(TRes res) =
      _CopyWithStubImpl$Query$GetMediaDetail;

  TRes call({
    Fragment$MediaDetailed? Media,
    String? $__typename,
  });
  CopyWith$Fragment$MediaDetailed<TRes> get Media;
}

class _CopyWithImpl$Query$GetMediaDetail<TRes>
    implements CopyWith$Query$GetMediaDetail<TRes> {
  _CopyWithImpl$Query$GetMediaDetail(
    this._instance,
    this._then,
  );

  final Query$GetMediaDetail _instance;

  final TRes Function(Query$GetMediaDetail) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? Media = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetMediaDetail(
        Media: Media == _undefined
            ? _instance.Media
            : (Media as Fragment$MediaDetailed?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$MediaDetailed<TRes> get Media {
    final local$Media = _instance.Media;
    return local$Media == null
        ? CopyWith$Fragment$MediaDetailed.stub(_then(_instance))
        : CopyWith$Fragment$MediaDetailed(local$Media, (e) => call(Media: e));
  }
}

class _CopyWithStubImpl$Query$GetMediaDetail<TRes>
    implements CopyWith$Query$GetMediaDetail<TRes> {
  _CopyWithStubImpl$Query$GetMediaDetail(this._res);

  TRes _res;

  call({
    Fragment$MediaDetailed? Media,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$MediaDetailed<TRes> get Media =>
      CopyWith$Fragment$MediaDetailed.stub(_res);
}

const documentNodeQueryGetMediaDetail = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetMediaDetail'),
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
        name: NameNode(value: 'Media'),
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
            name: NameNode(value: 'MediaDetailed'),
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
  fragmentDefinitionMediaDetailed,
  fragmentDefinitionMediaShort,
  fragmentDefinitionFuzzyDate,
]);
Query$GetMediaDetail _parserFn$Query$GetMediaDetail(
        Map<String, dynamic> data) =>
    Query$GetMediaDetail.fromJson(data);
typedef OnQueryComplete$Query$GetMediaDetail = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$GetMediaDetail?,
);

class Options$Query$GetMediaDetail
    extends graphql.QueryOptions<Query$GetMediaDetail> {
  Options$Query$GetMediaDetail({
    String? operationName,
    Variables$Query$GetMediaDetail? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetMediaDetail? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$GetMediaDetail? onComplete,
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
                    data == null ? null : _parserFn$Query$GetMediaDetail(data),
                  ),
          onError: onError,
          document: documentNodeQueryGetMediaDetail,
          parserFn: _parserFn$Query$GetMediaDetail,
        );

  final OnQueryComplete$Query$GetMediaDetail? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$GetMediaDetail
    extends graphql.WatchQueryOptions<Query$GetMediaDetail> {
  WatchOptions$Query$GetMediaDetail({
    String? operationName,
    Variables$Query$GetMediaDetail? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetMediaDetail? typedOptimisticResult,
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
          document: documentNodeQueryGetMediaDetail,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetMediaDetail,
        );
}

class FetchMoreOptions$Query$GetMediaDetail extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetMediaDetail({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$GetMediaDetail? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryGetMediaDetail,
        );
}

extension ClientExtension$Query$GetMediaDetail on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetMediaDetail>> query$GetMediaDetail(
          [Options$Query$GetMediaDetail? options]) async =>
      await this.query(options ?? Options$Query$GetMediaDetail());
  graphql.ObservableQuery<Query$GetMediaDetail> watchQuery$GetMediaDetail(
          [WatchOptions$Query$GetMediaDetail? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$GetMediaDetail());
  void writeQuery$GetMediaDetail({
    required Query$GetMediaDetail data,
    Variables$Query$GetMediaDetail? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryGetMediaDetail),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetMediaDetail? readQuery$GetMediaDetail({
    Variables$Query$GetMediaDetail? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryGetMediaDetail),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$GetMediaDetail.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$GetMediaDetail> useQuery$GetMediaDetail(
        [Options$Query$GetMediaDetail? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$GetMediaDetail());
graphql.ObservableQuery<Query$GetMediaDetail> useWatchQuery$GetMediaDetail(
        [WatchOptions$Query$GetMediaDetail? options]) =>
    graphql_flutter
        .useWatchQuery(options ?? WatchOptions$Query$GetMediaDetail());

class Query$GetMediaDetail$Widget
    extends graphql_flutter.Query<Query$GetMediaDetail> {
  Query$GetMediaDetail$Widget({
    widgets.Key? key,
    Options$Query$GetMediaDetail? options,
    required graphql_flutter.QueryBuilder<Query$GetMediaDetail> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$GetMediaDetail(),
          builder: builder,
        );
}
