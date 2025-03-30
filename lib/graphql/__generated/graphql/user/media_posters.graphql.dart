// GENERATED FILE
// DO NOT MODIFY
// ignore_for_file: type=lint
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Fragment$MediaPoster {
  Fragment$MediaPoster({
    required this.id,
    this.coverImage,
    this.$__typename = 'Media',
  });

  factory Fragment$MediaPoster.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$coverImage = json['coverImage'];
    final l$$__typename = json['__typename'];
    return Fragment$MediaPoster(
      id: (l$id as int),
      coverImage: l$coverImage == null
          ? null
          : Fragment$MediaPoster$coverImage.fromJson(
              (l$coverImage as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final Fragment$MediaPoster$coverImage? coverImage;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$coverImage = coverImage;
    _resultData['coverImage'] = l$coverImage?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$coverImage = coverImage;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$coverImage,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$MediaPoster || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$coverImage = coverImage;
    final lOther$coverImage = other.coverImage;
    if (l$coverImage != lOther$coverImage) {
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

extension UtilityExtension$Fragment$MediaPoster on Fragment$MediaPoster {
  CopyWith$Fragment$MediaPoster<Fragment$MediaPoster> get copyWith =>
      CopyWith$Fragment$MediaPoster(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$MediaPoster<TRes> {
  factory CopyWith$Fragment$MediaPoster(
    Fragment$MediaPoster instance,
    TRes Function(Fragment$MediaPoster) then,
  ) = _CopyWithImpl$Fragment$MediaPoster;

  factory CopyWith$Fragment$MediaPoster.stub(TRes res) =
      _CopyWithStubImpl$Fragment$MediaPoster;

  TRes call({
    int? id,
    Fragment$MediaPoster$coverImage? coverImage,
    String? $__typename,
  });
  CopyWith$Fragment$MediaPoster$coverImage<TRes> get coverImage;
}

class _CopyWithImpl$Fragment$MediaPoster<TRes>
    implements CopyWith$Fragment$MediaPoster<TRes> {
  _CopyWithImpl$Fragment$MediaPoster(
    this._instance,
    this._then,
  );

  final Fragment$MediaPoster _instance;

  final TRes Function(Fragment$MediaPoster) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? coverImage = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$MediaPoster(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        coverImage: coverImage == _undefined
            ? _instance.coverImage
            : (coverImage as Fragment$MediaPoster$coverImage?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$MediaPoster$coverImage<TRes> get coverImage {
    final local$coverImage = _instance.coverImage;
    return local$coverImage == null
        ? CopyWith$Fragment$MediaPoster$coverImage.stub(_then(_instance))
        : CopyWith$Fragment$MediaPoster$coverImage(
            local$coverImage, (e) => call(coverImage: e));
  }
}

class _CopyWithStubImpl$Fragment$MediaPoster<TRes>
    implements CopyWith$Fragment$MediaPoster<TRes> {
  _CopyWithStubImpl$Fragment$MediaPoster(this._res);

  TRes _res;

  call({
    int? id,
    Fragment$MediaPoster$coverImage? coverImage,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$MediaPoster$coverImage<TRes> get coverImage =>
      CopyWith$Fragment$MediaPoster$coverImage.stub(_res);
}

const fragmentDefinitionMediaPoster = FragmentDefinitionNode(
  name: NameNode(value: 'MediaPoster'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Media'),
    isNonNull: false,
  )),
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
      name: NameNode(value: 'coverImage'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
          name: NameNode(value: 'medium'),
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
);
const documentNodeFragmentMediaPoster = DocumentNode(definitions: [
  fragmentDefinitionMediaPoster,
]);

extension ClientExtension$Fragment$MediaPoster on graphql.GraphQLClient {
  void writeFragment$MediaPoster({
    required Fragment$MediaPoster data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'MediaPoster',
            document: documentNodeFragmentMediaPoster,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$MediaPoster? readFragment$MediaPoster({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'MediaPoster',
          document: documentNodeFragmentMediaPoster,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$MediaPoster.fromJson(result);
  }
}

class Fragment$MediaPoster$coverImage {
  Fragment$MediaPoster$coverImage({
    this.medium,
    this.$__typename = 'MediaCoverImage',
  });

  factory Fragment$MediaPoster$coverImage.fromJson(Map<String, dynamic> json) {
    final l$medium = json['medium'];
    final l$$__typename = json['__typename'];
    return Fragment$MediaPoster$coverImage(
      medium: (l$medium as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? medium;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$medium = medium;
    _resultData['medium'] = l$medium;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$medium = medium;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$medium,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$MediaPoster$coverImage ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$medium = medium;
    final lOther$medium = other.medium;
    if (l$medium != lOther$medium) {
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

extension UtilityExtension$Fragment$MediaPoster$coverImage
    on Fragment$MediaPoster$coverImage {
  CopyWith$Fragment$MediaPoster$coverImage<Fragment$MediaPoster$coverImage>
      get copyWith => CopyWith$Fragment$MediaPoster$coverImage(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$MediaPoster$coverImage<TRes> {
  factory CopyWith$Fragment$MediaPoster$coverImage(
    Fragment$MediaPoster$coverImage instance,
    TRes Function(Fragment$MediaPoster$coverImage) then,
  ) = _CopyWithImpl$Fragment$MediaPoster$coverImage;

  factory CopyWith$Fragment$MediaPoster$coverImage.stub(TRes res) =
      _CopyWithStubImpl$Fragment$MediaPoster$coverImage;

  TRes call({
    String? medium,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$MediaPoster$coverImage<TRes>
    implements CopyWith$Fragment$MediaPoster$coverImage<TRes> {
  _CopyWithImpl$Fragment$MediaPoster$coverImage(
    this._instance,
    this._then,
  );

  final Fragment$MediaPoster$coverImage _instance;

  final TRes Function(Fragment$MediaPoster$coverImage) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? medium = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$MediaPoster$coverImage(
        medium: medium == _undefined ? _instance.medium : (medium as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$MediaPoster$coverImage<TRes>
    implements CopyWith$Fragment$MediaPoster$coverImage<TRes> {
  _CopyWithStubImpl$Fragment$MediaPoster$coverImage(this._res);

  TRes _res;

  call({
    String? medium,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$MediaPosters {
  factory Variables$Query$MediaPosters({
    int? page,
    List<int?>? id_in,
  }) =>
      Variables$Query$MediaPosters._({
        if (page != null) r'page': page,
        if (id_in != null) r'id_in': id_in,
      });

  Variables$Query$MediaPosters._(this._$data);

  factory Variables$Query$MediaPosters.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('page')) {
      final l$page = data['page'];
      result$data['page'] = (l$page as int?);
    }
    if (data.containsKey('id_in')) {
      final l$id_in = data['id_in'];
      result$data['id_in'] =
          (l$id_in as List<dynamic>?)?.map((e) => (e as int?)).toList();
    }
    return Variables$Query$MediaPosters._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get page => (_$data['page'] as int?);

  List<int?>? get id_in => (_$data['id_in'] as List<int?>?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('page')) {
      final l$page = page;
      result$data['page'] = l$page;
    }
    if (_$data.containsKey('id_in')) {
      final l$id_in = id_in;
      result$data['id_in'] = l$id_in?.map((e) => e).toList();
    }
    return result$data;
  }

  CopyWith$Variables$Query$MediaPosters<Variables$Query$MediaPosters>
      get copyWith => CopyWith$Variables$Query$MediaPosters(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$MediaPosters ||
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
    final l$id_in = id_in;
    final lOther$id_in = other.id_in;
    if (_$data.containsKey('id_in') != other._$data.containsKey('id_in')) {
      return false;
    }
    if (l$id_in != null && lOther$id_in != null) {
      if (l$id_in.length != lOther$id_in.length) {
        return false;
      }
      for (int i = 0; i < l$id_in.length; i++) {
        final l$id_in$entry = l$id_in[i];
        final lOther$id_in$entry = lOther$id_in[i];
        if (l$id_in$entry != lOther$id_in$entry) {
          return false;
        }
      }
    } else if (l$id_in != lOther$id_in) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$page = page;
    final l$id_in = id_in;
    return Object.hashAll([
      _$data.containsKey('page') ? l$page : const {},
      _$data.containsKey('id_in')
          ? l$id_in == null
              ? null
              : Object.hashAll(l$id_in.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$MediaPosters<TRes> {
  factory CopyWith$Variables$Query$MediaPosters(
    Variables$Query$MediaPosters instance,
    TRes Function(Variables$Query$MediaPosters) then,
  ) = _CopyWithImpl$Variables$Query$MediaPosters;

  factory CopyWith$Variables$Query$MediaPosters.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$MediaPosters;

  TRes call({
    int? page,
    List<int?>? id_in,
  });
}

class _CopyWithImpl$Variables$Query$MediaPosters<TRes>
    implements CopyWith$Variables$Query$MediaPosters<TRes> {
  _CopyWithImpl$Variables$Query$MediaPosters(
    this._instance,
    this._then,
  );

  final Variables$Query$MediaPosters _instance;

  final TRes Function(Variables$Query$MediaPosters) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? page = _undefined,
    Object? id_in = _undefined,
  }) =>
      _then(Variables$Query$MediaPosters._({
        ..._instance._$data,
        if (page != _undefined) 'page': (page as int?),
        if (id_in != _undefined) 'id_in': (id_in as List<int?>?),
      }));
}

class _CopyWithStubImpl$Variables$Query$MediaPosters<TRes>
    implements CopyWith$Variables$Query$MediaPosters<TRes> {
  _CopyWithStubImpl$Variables$Query$MediaPosters(this._res);

  TRes _res;

  call({
    int? page,
    List<int?>? id_in,
  }) =>
      _res;
}

class Query$MediaPosters {
  Query$MediaPosters({
    this.Page,
    this.$__typename = 'Query',
  });

  factory Query$MediaPosters.fromJson(Map<String, dynamic> json) {
    final l$Page = json['Page'];
    final l$$__typename = json['__typename'];
    return Query$MediaPosters(
      Page: l$Page == null
          ? null
          : Query$MediaPosters$Page.fromJson((l$Page as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$MediaPosters$Page? Page;

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
    if (other is! Query$MediaPosters || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$MediaPosters on Query$MediaPosters {
  CopyWith$Query$MediaPosters<Query$MediaPosters> get copyWith =>
      CopyWith$Query$MediaPosters(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$MediaPosters<TRes> {
  factory CopyWith$Query$MediaPosters(
    Query$MediaPosters instance,
    TRes Function(Query$MediaPosters) then,
  ) = _CopyWithImpl$Query$MediaPosters;

  factory CopyWith$Query$MediaPosters.stub(TRes res) =
      _CopyWithStubImpl$Query$MediaPosters;

  TRes call({
    Query$MediaPosters$Page? Page,
    String? $__typename,
  });
  CopyWith$Query$MediaPosters$Page<TRes> get Page;
}

class _CopyWithImpl$Query$MediaPosters<TRes>
    implements CopyWith$Query$MediaPosters<TRes> {
  _CopyWithImpl$Query$MediaPosters(
    this._instance,
    this._then,
  );

  final Query$MediaPosters _instance;

  final TRes Function(Query$MediaPosters) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? Page = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$MediaPosters(
        Page: Page == _undefined
            ? _instance.Page
            : (Page as Query$MediaPosters$Page?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$MediaPosters$Page<TRes> get Page {
    final local$Page = _instance.Page;
    return local$Page == null
        ? CopyWith$Query$MediaPosters$Page.stub(_then(_instance))
        : CopyWith$Query$MediaPosters$Page(local$Page, (e) => call(Page: e));
  }
}

class _CopyWithStubImpl$Query$MediaPosters<TRes>
    implements CopyWith$Query$MediaPosters<TRes> {
  _CopyWithStubImpl$Query$MediaPosters(this._res);

  TRes _res;

  call({
    Query$MediaPosters$Page? Page,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$MediaPosters$Page<TRes> get Page =>
      CopyWith$Query$MediaPosters$Page.stub(_res);
}

const documentNodeQueryMediaPosters = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'MediaPosters'),
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
        variable: VariableNode(name: NameNode(value: 'id_in')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'Int'),
            isNonNull: false,
          ),
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
            value: IntValueNode(value: '20'),
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
            name: NameNode(value: 'media'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'id_in'),
                value: VariableNode(name: NameNode(value: 'id_in')),
              ),
              ArgumentNode(
                name: NameNode(value: 'sort'),
                value: ListValueNode(values: [
                  EnumValueNode(name: NameNode(value: 'POPULARITY_DESC'))
                ]),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                name: NameNode(value: 'MediaPoster'),
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
  fragmentDefinitionMediaPoster,
]);
Query$MediaPosters _parserFn$Query$MediaPosters(Map<String, dynamic> data) =>
    Query$MediaPosters.fromJson(data);
typedef OnQueryComplete$Query$MediaPosters = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$MediaPosters?,
);

class Options$Query$MediaPosters
    extends graphql.QueryOptions<Query$MediaPosters> {
  Options$Query$MediaPosters({
    String? operationName,
    Variables$Query$MediaPosters? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$MediaPosters? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$MediaPosters? onComplete,
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
                    data == null ? null : _parserFn$Query$MediaPosters(data),
                  ),
          onError: onError,
          document: documentNodeQueryMediaPosters,
          parserFn: _parserFn$Query$MediaPosters,
        );

  final OnQueryComplete$Query$MediaPosters? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$MediaPosters
    extends graphql.WatchQueryOptions<Query$MediaPosters> {
  WatchOptions$Query$MediaPosters({
    String? operationName,
    Variables$Query$MediaPosters? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$MediaPosters? typedOptimisticResult,
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
          document: documentNodeQueryMediaPosters,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$MediaPosters,
        );
}

class FetchMoreOptions$Query$MediaPosters extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$MediaPosters({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$MediaPosters? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryMediaPosters,
        );
}

extension ClientExtension$Query$MediaPosters on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$MediaPosters>> query$MediaPosters(
          [Options$Query$MediaPosters? options]) async =>
      await this.query(options ?? Options$Query$MediaPosters());
  graphql.ObservableQuery<Query$MediaPosters> watchQuery$MediaPosters(
          [WatchOptions$Query$MediaPosters? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$MediaPosters());
  void writeQuery$MediaPosters({
    required Query$MediaPosters data,
    Variables$Query$MediaPosters? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryMediaPosters),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$MediaPosters? readQuery$MediaPosters({
    Variables$Query$MediaPosters? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryMediaPosters),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$MediaPosters.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$MediaPosters> useQuery$MediaPosters(
        [Options$Query$MediaPosters? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$MediaPosters());
graphql.ObservableQuery<Query$MediaPosters> useWatchQuery$MediaPosters(
        [WatchOptions$Query$MediaPosters? options]) =>
    graphql_flutter.useWatchQuery(options ?? WatchOptions$Query$MediaPosters());

class Query$MediaPosters$Widget
    extends graphql_flutter.Query<Query$MediaPosters> {
  Query$MediaPosters$Widget({
    widgets.Key? key,
    Options$Query$MediaPosters? options,
    required graphql_flutter.QueryBuilder<Query$MediaPosters> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$MediaPosters(),
          builder: builder,
        );
}

class Query$MediaPosters$Page {
  Query$MediaPosters$Page({
    this.pageInfo,
    this.media,
    this.$__typename = 'Page',
  });

  factory Query$MediaPosters$Page.fromJson(Map<String, dynamic> json) {
    final l$pageInfo = json['pageInfo'];
    final l$media = json['media'];
    final l$$__typename = json['__typename'];
    return Query$MediaPosters$Page(
      pageInfo: l$pageInfo == null
          ? null
          : Query$MediaPosters$Page$pageInfo.fromJson(
              (l$pageInfo as Map<String, dynamic>)),
      media: (l$media as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$MediaPoster.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$MediaPosters$Page$pageInfo? pageInfo;

  final List<Fragment$MediaPoster?>? media;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$pageInfo = pageInfo;
    _resultData['pageInfo'] = l$pageInfo?.toJson();
    final l$media = media;
    _resultData['media'] = l$media?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$pageInfo = pageInfo;
    final l$media = media;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$pageInfo,
      l$media == null ? null : Object.hashAll(l$media.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$MediaPosters$Page || runtimeType != other.runtimeType) {
      return false;
    }
    final l$pageInfo = pageInfo;
    final lOther$pageInfo = other.pageInfo;
    if (l$pageInfo != lOther$pageInfo) {
      return false;
    }
    final l$media = media;
    final lOther$media = other.media;
    if (l$media != null && lOther$media != null) {
      if (l$media.length != lOther$media.length) {
        return false;
      }
      for (int i = 0; i < l$media.length; i++) {
        final l$media$entry = l$media[i];
        final lOther$media$entry = lOther$media[i];
        if (l$media$entry != lOther$media$entry) {
          return false;
        }
      }
    } else if (l$media != lOther$media) {
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

extension UtilityExtension$Query$MediaPosters$Page on Query$MediaPosters$Page {
  CopyWith$Query$MediaPosters$Page<Query$MediaPosters$Page> get copyWith =>
      CopyWith$Query$MediaPosters$Page(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$MediaPosters$Page<TRes> {
  factory CopyWith$Query$MediaPosters$Page(
    Query$MediaPosters$Page instance,
    TRes Function(Query$MediaPosters$Page) then,
  ) = _CopyWithImpl$Query$MediaPosters$Page;

  factory CopyWith$Query$MediaPosters$Page.stub(TRes res) =
      _CopyWithStubImpl$Query$MediaPosters$Page;

  TRes call({
    Query$MediaPosters$Page$pageInfo? pageInfo,
    List<Fragment$MediaPoster?>? media,
    String? $__typename,
  });
  CopyWith$Query$MediaPosters$Page$pageInfo<TRes> get pageInfo;
  TRes media(
      Iterable<Fragment$MediaPoster?>? Function(
              Iterable<CopyWith$Fragment$MediaPoster<Fragment$MediaPoster>?>?)
          _fn);
}

class _CopyWithImpl$Query$MediaPosters$Page<TRes>
    implements CopyWith$Query$MediaPosters$Page<TRes> {
  _CopyWithImpl$Query$MediaPosters$Page(
    this._instance,
    this._then,
  );

  final Query$MediaPosters$Page _instance;

  final TRes Function(Query$MediaPosters$Page) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pageInfo = _undefined,
    Object? media = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$MediaPosters$Page(
        pageInfo: pageInfo == _undefined
            ? _instance.pageInfo
            : (pageInfo as Query$MediaPosters$Page$pageInfo?),
        media: media == _undefined
            ? _instance.media
            : (media as List<Fragment$MediaPoster?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$MediaPosters$Page$pageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return local$pageInfo == null
        ? CopyWith$Query$MediaPosters$Page$pageInfo.stub(_then(_instance))
        : CopyWith$Query$MediaPosters$Page$pageInfo(
            local$pageInfo, (e) => call(pageInfo: e));
  }

  TRes media(
          Iterable<Fragment$MediaPoster?>? Function(
                  Iterable<
                      CopyWith$Fragment$MediaPoster<Fragment$MediaPoster>?>?)
              _fn) =>
      call(
          media: _fn(_instance.media?.map((e) => e == null
              ? null
              : CopyWith$Fragment$MediaPoster(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$MediaPosters$Page<TRes>
    implements CopyWith$Query$MediaPosters$Page<TRes> {
  _CopyWithStubImpl$Query$MediaPosters$Page(this._res);

  TRes _res;

  call({
    Query$MediaPosters$Page$pageInfo? pageInfo,
    List<Fragment$MediaPoster?>? media,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$MediaPosters$Page$pageInfo<TRes> get pageInfo =>
      CopyWith$Query$MediaPosters$Page$pageInfo.stub(_res);

  media(_fn) => _res;
}

class Query$MediaPosters$Page$pageInfo {
  Query$MediaPosters$Page$pageInfo({
    this.hasNextPage,
    this.$__typename = 'PageInfo',
  });

  factory Query$MediaPosters$Page$pageInfo.fromJson(Map<String, dynamic> json) {
    final l$hasNextPage = json['hasNextPage'];
    final l$$__typename = json['__typename'];
    return Query$MediaPosters$Page$pageInfo(
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
    if (other is! Query$MediaPosters$Page$pageInfo ||
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

extension UtilityExtension$Query$MediaPosters$Page$pageInfo
    on Query$MediaPosters$Page$pageInfo {
  CopyWith$Query$MediaPosters$Page$pageInfo<Query$MediaPosters$Page$pageInfo>
      get copyWith => CopyWith$Query$MediaPosters$Page$pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$MediaPosters$Page$pageInfo<TRes> {
  factory CopyWith$Query$MediaPosters$Page$pageInfo(
    Query$MediaPosters$Page$pageInfo instance,
    TRes Function(Query$MediaPosters$Page$pageInfo) then,
  ) = _CopyWithImpl$Query$MediaPosters$Page$pageInfo;

  factory CopyWith$Query$MediaPosters$Page$pageInfo.stub(TRes res) =
      _CopyWithStubImpl$Query$MediaPosters$Page$pageInfo;

  TRes call({
    bool? hasNextPage,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$MediaPosters$Page$pageInfo<TRes>
    implements CopyWith$Query$MediaPosters$Page$pageInfo<TRes> {
  _CopyWithImpl$Query$MediaPosters$Page$pageInfo(
    this._instance,
    this._then,
  );

  final Query$MediaPosters$Page$pageInfo _instance;

  final TRes Function(Query$MediaPosters$Page$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasNextPage = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$MediaPosters$Page$pageInfo(
        hasNextPage: hasNextPage == _undefined
            ? _instance.hasNextPage
            : (hasNextPage as bool?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$MediaPosters$Page$pageInfo<TRes>
    implements CopyWith$Query$MediaPosters$Page$pageInfo<TRes> {
  _CopyWithStubImpl$Query$MediaPosters$Page$pageInfo(this._res);

  TRes _res;

  call({
    bool? hasNextPage,
    String? $__typename,
  }) =>
      _res;
}
