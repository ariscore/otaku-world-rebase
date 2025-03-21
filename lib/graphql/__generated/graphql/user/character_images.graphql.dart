// GENERATED FILE
// DO NOT MODIFY
// ignore_for_file: type=lint
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Fragment$CharacterImage {
  Fragment$CharacterImage({
    required this.id,
    this.image,
    this.$__typename = 'Character',
  });

  factory Fragment$CharacterImage.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$image = json['image'];
    final l$$__typename = json['__typename'];
    return Fragment$CharacterImage(
      id: (l$id as int),
      image: l$image == null
          ? null
          : Fragment$CharacterImage$image.fromJson(
              (l$image as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final Fragment$CharacterImage$image? image;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$image = image;
    _resultData['image'] = l$image?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$image = image;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$image,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$CharacterImage || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$image = image;
    final lOther$image = other.image;
    if (l$image != lOther$image) {
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

extension UtilityExtension$Fragment$CharacterImage on Fragment$CharacterImage {
  CopyWith$Fragment$CharacterImage<Fragment$CharacterImage> get copyWith =>
      CopyWith$Fragment$CharacterImage(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$CharacterImage<TRes> {
  factory CopyWith$Fragment$CharacterImage(
    Fragment$CharacterImage instance,
    TRes Function(Fragment$CharacterImage) then,
  ) = _CopyWithImpl$Fragment$CharacterImage;

  factory CopyWith$Fragment$CharacterImage.stub(TRes res) =
      _CopyWithStubImpl$Fragment$CharacterImage;

  TRes call({
    int? id,
    Fragment$CharacterImage$image? image,
    String? $__typename,
  });
  CopyWith$Fragment$CharacterImage$image<TRes> get image;
}

class _CopyWithImpl$Fragment$CharacterImage<TRes>
    implements CopyWith$Fragment$CharacterImage<TRes> {
  _CopyWithImpl$Fragment$CharacterImage(
    this._instance,
    this._then,
  );

  final Fragment$CharacterImage _instance;

  final TRes Function(Fragment$CharacterImage) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? image = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$CharacterImage(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        image: image == _undefined
            ? _instance.image
            : (image as Fragment$CharacterImage$image?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$CharacterImage$image<TRes> get image {
    final local$image = _instance.image;
    return local$image == null
        ? CopyWith$Fragment$CharacterImage$image.stub(_then(_instance))
        : CopyWith$Fragment$CharacterImage$image(
            local$image, (e) => call(image: e));
  }
}

class _CopyWithStubImpl$Fragment$CharacterImage<TRes>
    implements CopyWith$Fragment$CharacterImage<TRes> {
  _CopyWithStubImpl$Fragment$CharacterImage(this._res);

  TRes _res;

  call({
    int? id,
    Fragment$CharacterImage$image? image,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$CharacterImage$image<TRes> get image =>
      CopyWith$Fragment$CharacterImage$image.stub(_res);
}

const fragmentDefinitionCharacterImage = FragmentDefinitionNode(
  name: NameNode(value: 'CharacterImage'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Character'),
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
      name: NameNode(value: 'image'),
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
const documentNodeFragmentCharacterImage = DocumentNode(definitions: [
  fragmentDefinitionCharacterImage,
]);

extension ClientExtension$Fragment$CharacterImage on graphql.GraphQLClient {
  void writeFragment$CharacterImage({
    required Fragment$CharacterImage data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'CharacterImage',
            document: documentNodeFragmentCharacterImage,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$CharacterImage? readFragment$CharacterImage({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'CharacterImage',
          document: documentNodeFragmentCharacterImage,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$CharacterImage.fromJson(result);
  }
}

class Fragment$CharacterImage$image {
  Fragment$CharacterImage$image({
    this.medium,
    this.$__typename = 'CharacterImage',
  });

  factory Fragment$CharacterImage$image.fromJson(Map<String, dynamic> json) {
    final l$medium = json['medium'];
    final l$$__typename = json['__typename'];
    return Fragment$CharacterImage$image(
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
    if (other is! Fragment$CharacterImage$image ||
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

extension UtilityExtension$Fragment$CharacterImage$image
    on Fragment$CharacterImage$image {
  CopyWith$Fragment$CharacterImage$image<Fragment$CharacterImage$image>
      get copyWith => CopyWith$Fragment$CharacterImage$image(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$CharacterImage$image<TRes> {
  factory CopyWith$Fragment$CharacterImage$image(
    Fragment$CharacterImage$image instance,
    TRes Function(Fragment$CharacterImage$image) then,
  ) = _CopyWithImpl$Fragment$CharacterImage$image;

  factory CopyWith$Fragment$CharacterImage$image.stub(TRes res) =
      _CopyWithStubImpl$Fragment$CharacterImage$image;

  TRes call({
    String? medium,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$CharacterImage$image<TRes>
    implements CopyWith$Fragment$CharacterImage$image<TRes> {
  _CopyWithImpl$Fragment$CharacterImage$image(
    this._instance,
    this._then,
  );

  final Fragment$CharacterImage$image _instance;

  final TRes Function(Fragment$CharacterImage$image) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? medium = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$CharacterImage$image(
        medium: medium == _undefined ? _instance.medium : (medium as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$CharacterImage$image<TRes>
    implements CopyWith$Fragment$CharacterImage$image<TRes> {
  _CopyWithStubImpl$Fragment$CharacterImage$image(this._res);

  TRes _res;

  call({
    String? medium,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$CharacterImages {
  factory Variables$Query$CharacterImages({
    int? page,
    List<int?>? id_in,
  }) =>
      Variables$Query$CharacterImages._({
        if (page != null) r'page': page,
        if (id_in != null) r'id_in': id_in,
      });

  Variables$Query$CharacterImages._(this._$data);

  factory Variables$Query$CharacterImages.fromJson(Map<String, dynamic> data) {
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
    return Variables$Query$CharacterImages._(result$data);
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

  CopyWith$Variables$Query$CharacterImages<Variables$Query$CharacterImages>
      get copyWith => CopyWith$Variables$Query$CharacterImages(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$CharacterImages ||
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

abstract class CopyWith$Variables$Query$CharacterImages<TRes> {
  factory CopyWith$Variables$Query$CharacterImages(
    Variables$Query$CharacterImages instance,
    TRes Function(Variables$Query$CharacterImages) then,
  ) = _CopyWithImpl$Variables$Query$CharacterImages;

  factory CopyWith$Variables$Query$CharacterImages.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$CharacterImages;

  TRes call({
    int? page,
    List<int?>? id_in,
  });
}

class _CopyWithImpl$Variables$Query$CharacterImages<TRes>
    implements CopyWith$Variables$Query$CharacterImages<TRes> {
  _CopyWithImpl$Variables$Query$CharacterImages(
    this._instance,
    this._then,
  );

  final Variables$Query$CharacterImages _instance;

  final TRes Function(Variables$Query$CharacterImages) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? page = _undefined,
    Object? id_in = _undefined,
  }) =>
      _then(Variables$Query$CharacterImages._({
        ..._instance._$data,
        if (page != _undefined) 'page': (page as int?),
        if (id_in != _undefined) 'id_in': (id_in as List<int?>?),
      }));
}

class _CopyWithStubImpl$Variables$Query$CharacterImages<TRes>
    implements CopyWith$Variables$Query$CharacterImages<TRes> {
  _CopyWithStubImpl$Variables$Query$CharacterImages(this._res);

  TRes _res;

  call({
    int? page,
    List<int?>? id_in,
  }) =>
      _res;
}

class Query$CharacterImages {
  Query$CharacterImages({
    this.Page,
    this.$__typename = 'Query',
  });

  factory Query$CharacterImages.fromJson(Map<String, dynamic> json) {
    final l$Page = json['Page'];
    final l$$__typename = json['__typename'];
    return Query$CharacterImages(
      Page: l$Page == null
          ? null
          : Query$CharacterImages$Page.fromJson(
              (l$Page as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$CharacterImages$Page? Page;

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
    if (other is! Query$CharacterImages || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$CharacterImages on Query$CharacterImages {
  CopyWith$Query$CharacterImages<Query$CharacterImages> get copyWith =>
      CopyWith$Query$CharacterImages(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CharacterImages<TRes> {
  factory CopyWith$Query$CharacterImages(
    Query$CharacterImages instance,
    TRes Function(Query$CharacterImages) then,
  ) = _CopyWithImpl$Query$CharacterImages;

  factory CopyWith$Query$CharacterImages.stub(TRes res) =
      _CopyWithStubImpl$Query$CharacterImages;

  TRes call({
    Query$CharacterImages$Page? Page,
    String? $__typename,
  });
  CopyWith$Query$CharacterImages$Page<TRes> get Page;
}

class _CopyWithImpl$Query$CharacterImages<TRes>
    implements CopyWith$Query$CharacterImages<TRes> {
  _CopyWithImpl$Query$CharacterImages(
    this._instance,
    this._then,
  );

  final Query$CharacterImages _instance;

  final TRes Function(Query$CharacterImages) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? Page = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$CharacterImages(
        Page: Page == _undefined
            ? _instance.Page
            : (Page as Query$CharacterImages$Page?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$CharacterImages$Page<TRes> get Page {
    final local$Page = _instance.Page;
    return local$Page == null
        ? CopyWith$Query$CharacterImages$Page.stub(_then(_instance))
        : CopyWith$Query$CharacterImages$Page(local$Page, (e) => call(Page: e));
  }
}

class _CopyWithStubImpl$Query$CharacterImages<TRes>
    implements CopyWith$Query$CharacterImages<TRes> {
  _CopyWithStubImpl$Query$CharacterImages(this._res);

  TRes _res;

  call({
    Query$CharacterImages$Page? Page,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$CharacterImages$Page<TRes> get Page =>
      CopyWith$Query$CharacterImages$Page.stub(_res);
}

const documentNodeQueryCharacterImages = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'CharacterImages'),
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
            name: NameNode(value: 'characters'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'id_in'),
                value: VariableNode(name: NameNode(value: 'id_in')),
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
                name: NameNode(value: 'CharacterImage'),
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
  fragmentDefinitionCharacterImage,
]);
Query$CharacterImages _parserFn$Query$CharacterImages(
        Map<String, dynamic> data) =>
    Query$CharacterImages.fromJson(data);
typedef OnQueryComplete$Query$CharacterImages = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$CharacterImages?,
);

class Options$Query$CharacterImages
    extends graphql.QueryOptions<Query$CharacterImages> {
  Options$Query$CharacterImages({
    String? operationName,
    Variables$Query$CharacterImages? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$CharacterImages? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$CharacterImages? onComplete,
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
                    data == null ? null : _parserFn$Query$CharacterImages(data),
                  ),
          onError: onError,
          document: documentNodeQueryCharacterImages,
          parserFn: _parserFn$Query$CharacterImages,
        );

  final OnQueryComplete$Query$CharacterImages? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$CharacterImages
    extends graphql.WatchQueryOptions<Query$CharacterImages> {
  WatchOptions$Query$CharacterImages({
    String? operationName,
    Variables$Query$CharacterImages? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$CharacterImages? typedOptimisticResult,
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
          document: documentNodeQueryCharacterImages,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$CharacterImages,
        );
}

class FetchMoreOptions$Query$CharacterImages extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$CharacterImages({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$CharacterImages? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryCharacterImages,
        );
}

extension ClientExtension$Query$CharacterImages on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$CharacterImages>> query$CharacterImages(
          [Options$Query$CharacterImages? options]) async =>
      await this.query(options ?? Options$Query$CharacterImages());
  graphql.ObservableQuery<Query$CharacterImages> watchQuery$CharacterImages(
          [WatchOptions$Query$CharacterImages? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$CharacterImages());
  void writeQuery$CharacterImages({
    required Query$CharacterImages data,
    Variables$Query$CharacterImages? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryCharacterImages),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$CharacterImages? readQuery$CharacterImages({
    Variables$Query$CharacterImages? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation:
            graphql.Operation(document: documentNodeQueryCharacterImages),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$CharacterImages.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$CharacterImages> useQuery$CharacterImages(
        [Options$Query$CharacterImages? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$CharacterImages());
graphql.ObservableQuery<Query$CharacterImages> useWatchQuery$CharacterImages(
        [WatchOptions$Query$CharacterImages? options]) =>
    graphql_flutter
        .useWatchQuery(options ?? WatchOptions$Query$CharacterImages());

class Query$CharacterImages$Widget
    extends graphql_flutter.Query<Query$CharacterImages> {
  Query$CharacterImages$Widget({
    widgets.Key? key,
    Options$Query$CharacterImages? options,
    required graphql_flutter.QueryBuilder<Query$CharacterImages> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$CharacterImages(),
          builder: builder,
        );
}

class Query$CharacterImages$Page {
  Query$CharacterImages$Page({
    this.pageInfo,
    this.characters,
    this.$__typename = 'Page',
  });

  factory Query$CharacterImages$Page.fromJson(Map<String, dynamic> json) {
    final l$pageInfo = json['pageInfo'];
    final l$characters = json['characters'];
    final l$$__typename = json['__typename'];
    return Query$CharacterImages$Page(
      pageInfo: l$pageInfo == null
          ? null
          : Query$CharacterImages$Page$pageInfo.fromJson(
              (l$pageInfo as Map<String, dynamic>)),
      characters: (l$characters as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$CharacterImage.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$CharacterImages$Page$pageInfo? pageInfo;

  final List<Fragment$CharacterImage?>? characters;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$pageInfo = pageInfo;
    _resultData['pageInfo'] = l$pageInfo?.toJson();
    final l$characters = characters;
    _resultData['characters'] = l$characters?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$pageInfo = pageInfo;
    final l$characters = characters;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$pageInfo,
      l$characters == null ? null : Object.hashAll(l$characters.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$CharacterImages$Page ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$pageInfo = pageInfo;
    final lOther$pageInfo = other.pageInfo;
    if (l$pageInfo != lOther$pageInfo) {
      return false;
    }
    final l$characters = characters;
    final lOther$characters = other.characters;
    if (l$characters != null && lOther$characters != null) {
      if (l$characters.length != lOther$characters.length) {
        return false;
      }
      for (int i = 0; i < l$characters.length; i++) {
        final l$characters$entry = l$characters[i];
        final lOther$characters$entry = lOther$characters[i];
        if (l$characters$entry != lOther$characters$entry) {
          return false;
        }
      }
    } else if (l$characters != lOther$characters) {
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

extension UtilityExtension$Query$CharacterImages$Page
    on Query$CharacterImages$Page {
  CopyWith$Query$CharacterImages$Page<Query$CharacterImages$Page>
      get copyWith => CopyWith$Query$CharacterImages$Page(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$CharacterImages$Page<TRes> {
  factory CopyWith$Query$CharacterImages$Page(
    Query$CharacterImages$Page instance,
    TRes Function(Query$CharacterImages$Page) then,
  ) = _CopyWithImpl$Query$CharacterImages$Page;

  factory CopyWith$Query$CharacterImages$Page.stub(TRes res) =
      _CopyWithStubImpl$Query$CharacterImages$Page;

  TRes call({
    Query$CharacterImages$Page$pageInfo? pageInfo,
    List<Fragment$CharacterImage?>? characters,
    String? $__typename,
  });
  CopyWith$Query$CharacterImages$Page$pageInfo<TRes> get pageInfo;
  TRes characters(
      Iterable<Fragment$CharacterImage?>? Function(
              Iterable<
                  CopyWith$Fragment$CharacterImage<Fragment$CharacterImage>?>?)
          _fn);
}

class _CopyWithImpl$Query$CharacterImages$Page<TRes>
    implements CopyWith$Query$CharacterImages$Page<TRes> {
  _CopyWithImpl$Query$CharacterImages$Page(
    this._instance,
    this._then,
  );

  final Query$CharacterImages$Page _instance;

  final TRes Function(Query$CharacterImages$Page) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pageInfo = _undefined,
    Object? characters = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$CharacterImages$Page(
        pageInfo: pageInfo == _undefined
            ? _instance.pageInfo
            : (pageInfo as Query$CharacterImages$Page$pageInfo?),
        characters: characters == _undefined
            ? _instance.characters
            : (characters as List<Fragment$CharacterImage?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$CharacterImages$Page$pageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return local$pageInfo == null
        ? CopyWith$Query$CharacterImages$Page$pageInfo.stub(_then(_instance))
        : CopyWith$Query$CharacterImages$Page$pageInfo(
            local$pageInfo, (e) => call(pageInfo: e));
  }

  TRes characters(
          Iterable<Fragment$CharacterImage?>? Function(
                  Iterable<
                      CopyWith$Fragment$CharacterImage<
                          Fragment$CharacterImage>?>?)
              _fn) =>
      call(
          characters: _fn(_instance.characters?.map((e) => e == null
              ? null
              : CopyWith$Fragment$CharacterImage(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$CharacterImages$Page<TRes>
    implements CopyWith$Query$CharacterImages$Page<TRes> {
  _CopyWithStubImpl$Query$CharacterImages$Page(this._res);

  TRes _res;

  call({
    Query$CharacterImages$Page$pageInfo? pageInfo,
    List<Fragment$CharacterImage?>? characters,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$CharacterImages$Page$pageInfo<TRes> get pageInfo =>
      CopyWith$Query$CharacterImages$Page$pageInfo.stub(_res);

  characters(_fn) => _res;
}

class Query$CharacterImages$Page$pageInfo {
  Query$CharacterImages$Page$pageInfo({
    this.hasNextPage,
    this.$__typename = 'PageInfo',
  });

  factory Query$CharacterImages$Page$pageInfo.fromJson(
      Map<String, dynamic> json) {
    final l$hasNextPage = json['hasNextPage'];
    final l$$__typename = json['__typename'];
    return Query$CharacterImages$Page$pageInfo(
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
    if (other is! Query$CharacterImages$Page$pageInfo ||
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

extension UtilityExtension$Query$CharacterImages$Page$pageInfo
    on Query$CharacterImages$Page$pageInfo {
  CopyWith$Query$CharacterImages$Page$pageInfo<
          Query$CharacterImages$Page$pageInfo>
      get copyWith => CopyWith$Query$CharacterImages$Page$pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$CharacterImages$Page$pageInfo<TRes> {
  factory CopyWith$Query$CharacterImages$Page$pageInfo(
    Query$CharacterImages$Page$pageInfo instance,
    TRes Function(Query$CharacterImages$Page$pageInfo) then,
  ) = _CopyWithImpl$Query$CharacterImages$Page$pageInfo;

  factory CopyWith$Query$CharacterImages$Page$pageInfo.stub(TRes res) =
      _CopyWithStubImpl$Query$CharacterImages$Page$pageInfo;

  TRes call({
    bool? hasNextPage,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$CharacterImages$Page$pageInfo<TRes>
    implements CopyWith$Query$CharacterImages$Page$pageInfo<TRes> {
  _CopyWithImpl$Query$CharacterImages$Page$pageInfo(
    this._instance,
    this._then,
  );

  final Query$CharacterImages$Page$pageInfo _instance;

  final TRes Function(Query$CharacterImages$Page$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasNextPage = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$CharacterImages$Page$pageInfo(
        hasNextPage: hasNextPage == _undefined
            ? _instance.hasNextPage
            : (hasNextPage as bool?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$CharacterImages$Page$pageInfo<TRes>
    implements CopyWith$Query$CharacterImages$Page$pageInfo<TRes> {
  _CopyWithStubImpl$Query$CharacterImages$Page$pageInfo(this._res);

  TRes _res;

  call({
    bool? hasNextPage,
    String? $__typename,
  }) =>
      _res;
}
