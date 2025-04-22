// GENERATED FILE
// DO NOT MODIFY
// ignore_for_file: type=lint
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$getStudioDetail {
  factory Variables$Query$getStudioDetail({int? id}) =>
      Variables$Query$getStudioDetail._({
        if (id != null) r'id': id,
      });

  Variables$Query$getStudioDetail._(this._$data);

  factory Variables$Query$getStudioDetail.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as int?);
    }
    return Variables$Query$getStudioDetail._(result$data);
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

  CopyWith$Variables$Query$getStudioDetail<Variables$Query$getStudioDetail>
      get copyWith => CopyWith$Variables$Query$getStudioDetail(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$getStudioDetail ||
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

abstract class CopyWith$Variables$Query$getStudioDetail<TRes> {
  factory CopyWith$Variables$Query$getStudioDetail(
    Variables$Query$getStudioDetail instance,
    TRes Function(Variables$Query$getStudioDetail) then,
  ) = _CopyWithImpl$Variables$Query$getStudioDetail;

  factory CopyWith$Variables$Query$getStudioDetail.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$getStudioDetail;

  TRes call({int? id});
}

class _CopyWithImpl$Variables$Query$getStudioDetail<TRes>
    implements CopyWith$Variables$Query$getStudioDetail<TRes> {
  _CopyWithImpl$Variables$Query$getStudioDetail(
    this._instance,
    this._then,
  );

  final Variables$Query$getStudioDetail _instance;

  final TRes Function(Variables$Query$getStudioDetail) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) =>
      _then(Variables$Query$getStudioDetail._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as int?),
      }));
}

class _CopyWithStubImpl$Variables$Query$getStudioDetail<TRes>
    implements CopyWith$Variables$Query$getStudioDetail<TRes> {
  _CopyWithStubImpl$Variables$Query$getStudioDetail(this._res);

  TRes _res;

  call({int? id}) => _res;
}

class Query$getStudioDetail {
  Query$getStudioDetail({
    this.Studio,
    this.$__typename = 'Query',
  });

  factory Query$getStudioDetail.fromJson(Map<String, dynamic> json) {
    final l$Studio = json['Studio'];
    final l$$__typename = json['__typename'];
    return Query$getStudioDetail(
      Studio: l$Studio == null
          ? null
          : Query$getStudioDetail$Studio.fromJson(
              (l$Studio as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$getStudioDetail$Studio? Studio;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$Studio = Studio;
    _resultData['Studio'] = l$Studio?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$Studio = Studio;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$Studio,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$getStudioDetail || runtimeType != other.runtimeType) {
      return false;
    }
    final l$Studio = Studio;
    final lOther$Studio = other.Studio;
    if (l$Studio != lOther$Studio) {
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

extension UtilityExtension$Query$getStudioDetail on Query$getStudioDetail {
  CopyWith$Query$getStudioDetail<Query$getStudioDetail> get copyWith =>
      CopyWith$Query$getStudioDetail(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$getStudioDetail<TRes> {
  factory CopyWith$Query$getStudioDetail(
    Query$getStudioDetail instance,
    TRes Function(Query$getStudioDetail) then,
  ) = _CopyWithImpl$Query$getStudioDetail;

  factory CopyWith$Query$getStudioDetail.stub(TRes res) =
      _CopyWithStubImpl$Query$getStudioDetail;

  TRes call({
    Query$getStudioDetail$Studio? Studio,
    String? $__typename,
  });
  CopyWith$Query$getStudioDetail$Studio<TRes> get Studio;
}

class _CopyWithImpl$Query$getStudioDetail<TRes>
    implements CopyWith$Query$getStudioDetail<TRes> {
  _CopyWithImpl$Query$getStudioDetail(
    this._instance,
    this._then,
  );

  final Query$getStudioDetail _instance;

  final TRes Function(Query$getStudioDetail) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? Studio = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getStudioDetail(
        Studio: Studio == _undefined
            ? _instance.Studio
            : (Studio as Query$getStudioDetail$Studio?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$getStudioDetail$Studio<TRes> get Studio {
    final local$Studio = _instance.Studio;
    return local$Studio == null
        ? CopyWith$Query$getStudioDetail$Studio.stub(_then(_instance))
        : CopyWith$Query$getStudioDetail$Studio(
            local$Studio, (e) => call(Studio: e));
  }
}

class _CopyWithStubImpl$Query$getStudioDetail<TRes>
    implements CopyWith$Query$getStudioDetail<TRes> {
  _CopyWithStubImpl$Query$getStudioDetail(this._res);

  TRes _res;

  call({
    Query$getStudioDetail$Studio? Studio,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$getStudioDetail$Studio<TRes> get Studio =>
      CopyWith$Query$getStudioDetail$Studio.stub(_res);
}

const documentNodeQuerygetStudioDetail = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'getStudioDetail'),
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
        name: NameNode(value: 'Studio'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'id')),
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
            name: NameNode(value: 'name'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'isAnimationStudio'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'siteUrl'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'isFavourite'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'favourites'),
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
]);
Query$getStudioDetail _parserFn$Query$getStudioDetail(
        Map<String, dynamic> data) =>
    Query$getStudioDetail.fromJson(data);
typedef OnQueryComplete$Query$getStudioDetail = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$getStudioDetail?,
);

class Options$Query$getStudioDetail
    extends graphql.QueryOptions<Query$getStudioDetail> {
  Options$Query$getStudioDetail({
    String? operationName,
    Variables$Query$getStudioDetail? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$getStudioDetail? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$getStudioDetail? onComplete,
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
                    data == null ? null : _parserFn$Query$getStudioDetail(data),
                  ),
          onError: onError,
          document: documentNodeQuerygetStudioDetail,
          parserFn: _parserFn$Query$getStudioDetail,
        );

  final OnQueryComplete$Query$getStudioDetail? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$getStudioDetail
    extends graphql.WatchQueryOptions<Query$getStudioDetail> {
  WatchOptions$Query$getStudioDetail({
    String? operationName,
    Variables$Query$getStudioDetail? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$getStudioDetail? typedOptimisticResult,
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
          document: documentNodeQuerygetStudioDetail,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$getStudioDetail,
        );
}

class FetchMoreOptions$Query$getStudioDetail extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$getStudioDetail({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$getStudioDetail? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQuerygetStudioDetail,
        );
}

extension ClientExtension$Query$getStudioDetail on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$getStudioDetail>> query$getStudioDetail(
          [Options$Query$getStudioDetail? options]) async =>
      await this.query(options ?? Options$Query$getStudioDetail());
  graphql.ObservableQuery<Query$getStudioDetail> watchQuery$getStudioDetail(
          [WatchOptions$Query$getStudioDetail? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$getStudioDetail());
  void writeQuery$getStudioDetail({
    required Query$getStudioDetail data,
    Variables$Query$getStudioDetail? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQuerygetStudioDetail),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$getStudioDetail? readQuery$getStudioDetail({
    Variables$Query$getStudioDetail? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation:
            graphql.Operation(document: documentNodeQuerygetStudioDetail),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$getStudioDetail.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$getStudioDetail> useQuery$getStudioDetail(
        [Options$Query$getStudioDetail? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$getStudioDetail());
graphql.ObservableQuery<Query$getStudioDetail> useWatchQuery$getStudioDetail(
        [WatchOptions$Query$getStudioDetail? options]) =>
    graphql_flutter
        .useWatchQuery(options ?? WatchOptions$Query$getStudioDetail());

class Query$getStudioDetail$Widget
    extends graphql_flutter.Query<Query$getStudioDetail> {
  Query$getStudioDetail$Widget({
    widgets.Key? key,
    Options$Query$getStudioDetail? options,
    required graphql_flutter.QueryBuilder<Query$getStudioDetail> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$getStudioDetail(),
          builder: builder,
        );
}

class Query$getStudioDetail$Studio {
  Query$getStudioDetail$Studio({
    required this.id,
    required this.name,
    required this.isAnimationStudio,
    this.siteUrl,
    required this.isFavourite,
    this.favourites,
    this.$__typename = 'Studio',
  });

  factory Query$getStudioDetail$Studio.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$isAnimationStudio = json['isAnimationStudio'];
    final l$siteUrl = json['siteUrl'];
    final l$isFavourite = json['isFavourite'];
    final l$favourites = json['favourites'];
    final l$$__typename = json['__typename'];
    return Query$getStudioDetail$Studio(
      id: (l$id as int),
      name: (l$name as String),
      isAnimationStudio: (l$isAnimationStudio as bool),
      siteUrl: (l$siteUrl as String?),
      isFavourite: (l$isFavourite as bool),
      favourites: (l$favourites as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String name;

  final bool isAnimationStudio;

  final String? siteUrl;

  final bool isFavourite;

  final int? favourites;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$isAnimationStudio = isAnimationStudio;
    _resultData['isAnimationStudio'] = l$isAnimationStudio;
    final l$siteUrl = siteUrl;
    _resultData['siteUrl'] = l$siteUrl;
    final l$isFavourite = isFavourite;
    _resultData['isFavourite'] = l$isFavourite;
    final l$favourites = favourites;
    _resultData['favourites'] = l$favourites;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$isAnimationStudio = isAnimationStudio;
    final l$siteUrl = siteUrl;
    final l$isFavourite = isFavourite;
    final l$favourites = favourites;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$isAnimationStudio,
      l$siteUrl,
      l$isFavourite,
      l$favourites,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$getStudioDetail$Studio ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$isAnimationStudio = isAnimationStudio;
    final lOther$isAnimationStudio = other.isAnimationStudio;
    if (l$isAnimationStudio != lOther$isAnimationStudio) {
      return false;
    }
    final l$siteUrl = siteUrl;
    final lOther$siteUrl = other.siteUrl;
    if (l$siteUrl != lOther$siteUrl) {
      return false;
    }
    final l$isFavourite = isFavourite;
    final lOther$isFavourite = other.isFavourite;
    if (l$isFavourite != lOther$isFavourite) {
      return false;
    }
    final l$favourites = favourites;
    final lOther$favourites = other.favourites;
    if (l$favourites != lOther$favourites) {
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

extension UtilityExtension$Query$getStudioDetail$Studio
    on Query$getStudioDetail$Studio {
  CopyWith$Query$getStudioDetail$Studio<Query$getStudioDetail$Studio>
      get copyWith => CopyWith$Query$getStudioDetail$Studio(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getStudioDetail$Studio<TRes> {
  factory CopyWith$Query$getStudioDetail$Studio(
    Query$getStudioDetail$Studio instance,
    TRes Function(Query$getStudioDetail$Studio) then,
  ) = _CopyWithImpl$Query$getStudioDetail$Studio;

  factory CopyWith$Query$getStudioDetail$Studio.stub(TRes res) =
      _CopyWithStubImpl$Query$getStudioDetail$Studio;

  TRes call({
    int? id,
    String? name,
    bool? isAnimationStudio,
    String? siteUrl,
    bool? isFavourite,
    int? favourites,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$getStudioDetail$Studio<TRes>
    implements CopyWith$Query$getStudioDetail$Studio<TRes> {
  _CopyWithImpl$Query$getStudioDetail$Studio(
    this._instance,
    this._then,
  );

  final Query$getStudioDetail$Studio _instance;

  final TRes Function(Query$getStudioDetail$Studio) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? isAnimationStudio = _undefined,
    Object? siteUrl = _undefined,
    Object? isFavourite = _undefined,
    Object? favourites = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getStudioDetail$Studio(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        isAnimationStudio:
            isAnimationStudio == _undefined || isAnimationStudio == null
                ? _instance.isAnimationStudio
                : (isAnimationStudio as bool),
        siteUrl:
            siteUrl == _undefined ? _instance.siteUrl : (siteUrl as String?),
        isFavourite: isFavourite == _undefined || isFavourite == null
            ? _instance.isFavourite
            : (isFavourite as bool),
        favourites: favourites == _undefined
            ? _instance.favourites
            : (favourites as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$getStudioDetail$Studio<TRes>
    implements CopyWith$Query$getStudioDetail$Studio<TRes> {
  _CopyWithStubImpl$Query$getStudioDetail$Studio(this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    bool? isAnimationStudio,
    String? siteUrl,
    bool? isFavourite,
    int? favourites,
    String? $__typename,
  }) =>
      _res;
}
