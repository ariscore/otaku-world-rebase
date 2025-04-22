// GENERATED FILE
// DO NOT MODIFY
// ignore_for_file: type=lint
import '../fragments.graphql.dart';
import '../schema.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$getCharacterMedia {
  factory Variables$Query$getCharacterMedia({
    int? characterId,
    List<Enum$MediaSort?>? sort,
    Enum$MediaType? type,
    bool? onList,
    int? page,
  }) =>
      Variables$Query$getCharacterMedia._({
        if (characterId != null) r'characterId': characterId,
        if (sort != null) r'sort': sort,
        if (type != null) r'type': type,
        if (onList != null) r'onList': onList,
        if (page != null) r'page': page,
      });

  Variables$Query$getCharacterMedia._(this._$data);

  factory Variables$Query$getCharacterMedia.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('characterId')) {
      final l$characterId = data['characterId'];
      result$data['characterId'] = (l$characterId as int?);
    }
    if (data.containsKey('sort')) {
      final l$sort = data['sort'];
      result$data['sort'] = (l$sort as List<dynamic>?)
          ?.map(
              (e) => e == null ? null : fromJson$Enum$MediaSort((e as String)))
          .toList();
    }
    if (data.containsKey('type')) {
      final l$type = data['type'];
      result$data['type'] =
          l$type == null ? null : fromJson$Enum$MediaType((l$type as String));
    }
    if (data.containsKey('onList')) {
      final l$onList = data['onList'];
      result$data['onList'] = (l$onList as bool?);
    }
    if (data.containsKey('page')) {
      final l$page = data['page'];
      result$data['page'] = (l$page as int?);
    }
    return Variables$Query$getCharacterMedia._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get characterId => (_$data['characterId'] as int?);

  List<Enum$MediaSort?>? get sort => (_$data['sort'] as List<Enum$MediaSort?>?);

  Enum$MediaType? get type => (_$data['type'] as Enum$MediaType?);

  bool? get onList => (_$data['onList'] as bool?);

  int? get page => (_$data['page'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('characterId')) {
      final l$characterId = characterId;
      result$data['characterId'] = l$characterId;
    }
    if (_$data.containsKey('sort')) {
      final l$sort = sort;
      result$data['sort'] = l$sort
          ?.map((e) => e == null ? null : toJson$Enum$MediaSort(e))
          .toList();
    }
    if (_$data.containsKey('type')) {
      final l$type = type;
      result$data['type'] =
          l$type == null ? null : toJson$Enum$MediaType(l$type);
    }
    if (_$data.containsKey('onList')) {
      final l$onList = onList;
      result$data['onList'] = l$onList;
    }
    if (_$data.containsKey('page')) {
      final l$page = page;
      result$data['page'] = l$page;
    }
    return result$data;
  }

  CopyWith$Variables$Query$getCharacterMedia<Variables$Query$getCharacterMedia>
      get copyWith => CopyWith$Variables$Query$getCharacterMedia(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$getCharacterMedia ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$characterId = characterId;
    final lOther$characterId = other.characterId;
    if (_$data.containsKey('characterId') !=
        other._$data.containsKey('characterId')) {
      return false;
    }
    if (l$characterId != lOther$characterId) {
      return false;
    }
    final l$sort = sort;
    final lOther$sort = other.sort;
    if (_$data.containsKey('sort') != other._$data.containsKey('sort')) {
      return false;
    }
    if (l$sort != null && lOther$sort != null) {
      if (l$sort.length != lOther$sort.length) {
        return false;
      }
      for (int i = 0; i < l$sort.length; i++) {
        final l$sort$entry = l$sort[i];
        final lOther$sort$entry = lOther$sort[i];
        if (l$sort$entry != lOther$sort$entry) {
          return false;
        }
      }
    } else if (l$sort != lOther$sort) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (_$data.containsKey('type') != other._$data.containsKey('type')) {
      return false;
    }
    if (l$type != lOther$type) {
      return false;
    }
    final l$onList = onList;
    final lOther$onList = other.onList;
    if (_$data.containsKey('onList') != other._$data.containsKey('onList')) {
      return false;
    }
    if (l$onList != lOther$onList) {
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
    final l$characterId = characterId;
    final l$sort = sort;
    final l$type = type;
    final l$onList = onList;
    final l$page = page;
    return Object.hashAll([
      _$data.containsKey('characterId') ? l$characterId : const {},
      _$data.containsKey('sort')
          ? l$sort == null
              ? null
              : Object.hashAll(l$sort.map((v) => v))
          : const {},
      _$data.containsKey('type') ? l$type : const {},
      _$data.containsKey('onList') ? l$onList : const {},
      _$data.containsKey('page') ? l$page : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$getCharacterMedia<TRes> {
  factory CopyWith$Variables$Query$getCharacterMedia(
    Variables$Query$getCharacterMedia instance,
    TRes Function(Variables$Query$getCharacterMedia) then,
  ) = _CopyWithImpl$Variables$Query$getCharacterMedia;

  factory CopyWith$Variables$Query$getCharacterMedia.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$getCharacterMedia;

  TRes call({
    int? characterId,
    List<Enum$MediaSort?>? sort,
    Enum$MediaType? type,
    bool? onList,
    int? page,
  });
}

class _CopyWithImpl$Variables$Query$getCharacterMedia<TRes>
    implements CopyWith$Variables$Query$getCharacterMedia<TRes> {
  _CopyWithImpl$Variables$Query$getCharacterMedia(
    this._instance,
    this._then,
  );

  final Variables$Query$getCharacterMedia _instance;

  final TRes Function(Variables$Query$getCharacterMedia) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? characterId = _undefined,
    Object? sort = _undefined,
    Object? type = _undefined,
    Object? onList = _undefined,
    Object? page = _undefined,
  }) =>
      _then(Variables$Query$getCharacterMedia._({
        ..._instance._$data,
        if (characterId != _undefined) 'characterId': (characterId as int?),
        if (sort != _undefined) 'sort': (sort as List<Enum$MediaSort?>?),
        if (type != _undefined) 'type': (type as Enum$MediaType?),
        if (onList != _undefined) 'onList': (onList as bool?),
        if (page != _undefined) 'page': (page as int?),
      }));
}

class _CopyWithStubImpl$Variables$Query$getCharacterMedia<TRes>
    implements CopyWith$Variables$Query$getCharacterMedia<TRes> {
  _CopyWithStubImpl$Variables$Query$getCharacterMedia(this._res);

  TRes _res;

  call({
    int? characterId,
    List<Enum$MediaSort?>? sort,
    Enum$MediaType? type,
    bool? onList,
    int? page,
  }) =>
      _res;
}

class Query$getCharacterMedia {
  Query$getCharacterMedia({
    this.Character,
    this.$__typename = 'Query',
  });

  factory Query$getCharacterMedia.fromJson(Map<String, dynamic> json) {
    final l$Character = json['Character'];
    final l$$__typename = json['__typename'];
    return Query$getCharacterMedia(
      Character: l$Character == null
          ? null
          : Query$getCharacterMedia$Character.fromJson(
              (l$Character as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$getCharacterMedia$Character? Character;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$Character = Character;
    _resultData['Character'] = l$Character?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$Character = Character;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$Character,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$getCharacterMedia || runtimeType != other.runtimeType) {
      return false;
    }
    final l$Character = Character;
    final lOther$Character = other.Character;
    if (l$Character != lOther$Character) {
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

extension UtilityExtension$Query$getCharacterMedia on Query$getCharacterMedia {
  CopyWith$Query$getCharacterMedia<Query$getCharacterMedia> get copyWith =>
      CopyWith$Query$getCharacterMedia(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$getCharacterMedia<TRes> {
  factory CopyWith$Query$getCharacterMedia(
    Query$getCharacterMedia instance,
    TRes Function(Query$getCharacterMedia) then,
  ) = _CopyWithImpl$Query$getCharacterMedia;

  factory CopyWith$Query$getCharacterMedia.stub(TRes res) =
      _CopyWithStubImpl$Query$getCharacterMedia;

  TRes call({
    Query$getCharacterMedia$Character? Character,
    String? $__typename,
  });
  CopyWith$Query$getCharacterMedia$Character<TRes> get Character;
}

class _CopyWithImpl$Query$getCharacterMedia<TRes>
    implements CopyWith$Query$getCharacterMedia<TRes> {
  _CopyWithImpl$Query$getCharacterMedia(
    this._instance,
    this._then,
  );

  final Query$getCharacterMedia _instance;

  final TRes Function(Query$getCharacterMedia) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? Character = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getCharacterMedia(
        Character: Character == _undefined
            ? _instance.Character
            : (Character as Query$getCharacterMedia$Character?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$getCharacterMedia$Character<TRes> get Character {
    final local$Character = _instance.Character;
    return local$Character == null
        ? CopyWith$Query$getCharacterMedia$Character.stub(_then(_instance))
        : CopyWith$Query$getCharacterMedia$Character(
            local$Character, (e) => call(Character: e));
  }
}

class _CopyWithStubImpl$Query$getCharacterMedia<TRes>
    implements CopyWith$Query$getCharacterMedia<TRes> {
  _CopyWithStubImpl$Query$getCharacterMedia(this._res);

  TRes _res;

  call({
    Query$getCharacterMedia$Character? Character,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$getCharacterMedia$Character<TRes> get Character =>
      CopyWith$Query$getCharacterMedia$Character.stub(_res);
}

const documentNodeQuerygetCharacterMedia = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'getCharacterMedia'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'characterId')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'sort')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'MediaSort'),
            isNonNull: false,
          ),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'type')),
        type: NamedTypeNode(
          name: NameNode(value: 'MediaType'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'onList')),
        type: NamedTypeNode(
          name: NameNode(value: 'Boolean'),
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
        name: NameNode(value: 'Character'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'characterId')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'media'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'sort'),
                value: VariableNode(name: NameNode(value: 'sort')),
              ),
              ArgumentNode(
                name: NameNode(value: 'page'),
                value: VariableNode(name: NameNode(value: 'page')),
              ),
              ArgumentNode(
                name: NameNode(value: 'onList'),
                value: VariableNode(name: NameNode(value: 'onList')),
              ),
              ArgumentNode(
                name: NameNode(value: 'type'),
                value: VariableNode(name: NameNode(value: 'type')),
              ),
              ArgumentNode(
                name: NameNode(value: 'perPage'),
                value: IntValueNode(value: '24'),
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
                  FragmentSpreadNode(
                    name: NameNode(value: 'PageInfo'),
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
                name: NameNode(value: 'edges'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'voiceActorRoles'),
                    alias: null,
                    arguments: [
                      ArgumentNode(
                        name: NameNode(value: 'sort'),
                        value: EnumValueNode(name: NameNode(value: 'LANGUAGE')),
                      )
                    ],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                        name: NameNode(value: 'roleNotes'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'dubGroup'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'voiceActor'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FragmentSpreadNode(
                            name: NameNode(value: 'SearchResultStaff'),
                            directives: [],
                          ),
                          FieldNode(
                            name: NameNode(value: 'languageV2'),
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
                    name: NameNode(value: 'node'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FragmentSpreadNode(
                        name: NameNode(value: 'MediaShort'),
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
  fragmentDefinitionPageInfo,
  fragmentDefinitionSearchResultStaff,
  fragmentDefinitionMediaShort,
  fragmentDefinitionFuzzyDate,
]);
Query$getCharacterMedia _parserFn$Query$getCharacterMedia(
        Map<String, dynamic> data) =>
    Query$getCharacterMedia.fromJson(data);
typedef OnQueryComplete$Query$getCharacterMedia = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$getCharacterMedia?,
);

class Options$Query$getCharacterMedia
    extends graphql.QueryOptions<Query$getCharacterMedia> {
  Options$Query$getCharacterMedia({
    String? operationName,
    Variables$Query$getCharacterMedia? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$getCharacterMedia? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$getCharacterMedia? onComplete,
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
                        : _parserFn$Query$getCharacterMedia(data),
                  ),
          onError: onError,
          document: documentNodeQuerygetCharacterMedia,
          parserFn: _parserFn$Query$getCharacterMedia,
        );

  final OnQueryComplete$Query$getCharacterMedia? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$getCharacterMedia
    extends graphql.WatchQueryOptions<Query$getCharacterMedia> {
  WatchOptions$Query$getCharacterMedia({
    String? operationName,
    Variables$Query$getCharacterMedia? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$getCharacterMedia? typedOptimisticResult,
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
          document: documentNodeQuerygetCharacterMedia,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$getCharacterMedia,
        );
}

class FetchMoreOptions$Query$getCharacterMedia
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$getCharacterMedia({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$getCharacterMedia? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQuerygetCharacterMedia,
        );
}

extension ClientExtension$Query$getCharacterMedia on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$getCharacterMedia>> query$getCharacterMedia(
          [Options$Query$getCharacterMedia? options]) async =>
      await this.query(options ?? Options$Query$getCharacterMedia());
  graphql.ObservableQuery<Query$getCharacterMedia> watchQuery$getCharacterMedia(
          [WatchOptions$Query$getCharacterMedia? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$getCharacterMedia());
  void writeQuery$getCharacterMedia({
    required Query$getCharacterMedia data,
    Variables$Query$getCharacterMedia? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQuerygetCharacterMedia),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$getCharacterMedia? readQuery$getCharacterMedia({
    Variables$Query$getCharacterMedia? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation:
            graphql.Operation(document: documentNodeQuerygetCharacterMedia),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$getCharacterMedia.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$getCharacterMedia>
    useQuery$getCharacterMedia([Options$Query$getCharacterMedia? options]) =>
        graphql_flutter.useQuery(options ?? Options$Query$getCharacterMedia());
graphql.ObservableQuery<Query$getCharacterMedia>
    useWatchQuery$getCharacterMedia(
            [WatchOptions$Query$getCharacterMedia? options]) =>
        graphql_flutter
            .useWatchQuery(options ?? WatchOptions$Query$getCharacterMedia());

class Query$getCharacterMedia$Widget
    extends graphql_flutter.Query<Query$getCharacterMedia> {
  Query$getCharacterMedia$Widget({
    widgets.Key? key,
    Options$Query$getCharacterMedia? options,
    required graphql_flutter.QueryBuilder<Query$getCharacterMedia> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$getCharacterMedia(),
          builder: builder,
        );
}

class Query$getCharacterMedia$Character {
  Query$getCharacterMedia$Character({
    this.media,
    this.$__typename = 'Character',
  });

  factory Query$getCharacterMedia$Character.fromJson(
      Map<String, dynamic> json) {
    final l$media = json['media'];
    final l$$__typename = json['__typename'];
    return Query$getCharacterMedia$Character(
      media: l$media == null
          ? null
          : Query$getCharacterMedia$Character$media.fromJson(
              (l$media as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$getCharacterMedia$Character$media? media;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$media = media;
    _resultData['media'] = l$media?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$media = media;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$media,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$getCharacterMedia$Character ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$media = media;
    final lOther$media = other.media;
    if (l$media != lOther$media) {
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

extension UtilityExtension$Query$getCharacterMedia$Character
    on Query$getCharacterMedia$Character {
  CopyWith$Query$getCharacterMedia$Character<Query$getCharacterMedia$Character>
      get copyWith => CopyWith$Query$getCharacterMedia$Character(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getCharacterMedia$Character<TRes> {
  factory CopyWith$Query$getCharacterMedia$Character(
    Query$getCharacterMedia$Character instance,
    TRes Function(Query$getCharacterMedia$Character) then,
  ) = _CopyWithImpl$Query$getCharacterMedia$Character;

  factory CopyWith$Query$getCharacterMedia$Character.stub(TRes res) =
      _CopyWithStubImpl$Query$getCharacterMedia$Character;

  TRes call({
    Query$getCharacterMedia$Character$media? media,
    String? $__typename,
  });
  CopyWith$Query$getCharacterMedia$Character$media<TRes> get media;
}

class _CopyWithImpl$Query$getCharacterMedia$Character<TRes>
    implements CopyWith$Query$getCharacterMedia$Character<TRes> {
  _CopyWithImpl$Query$getCharacterMedia$Character(
    this._instance,
    this._then,
  );

  final Query$getCharacterMedia$Character _instance;

  final TRes Function(Query$getCharacterMedia$Character) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? media = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getCharacterMedia$Character(
        media: media == _undefined
            ? _instance.media
            : (media as Query$getCharacterMedia$Character$media?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$getCharacterMedia$Character$media<TRes> get media {
    final local$media = _instance.media;
    return local$media == null
        ? CopyWith$Query$getCharacterMedia$Character$media.stub(
            _then(_instance))
        : CopyWith$Query$getCharacterMedia$Character$media(
            local$media, (e) => call(media: e));
  }
}

class _CopyWithStubImpl$Query$getCharacterMedia$Character<TRes>
    implements CopyWith$Query$getCharacterMedia$Character<TRes> {
  _CopyWithStubImpl$Query$getCharacterMedia$Character(this._res);

  TRes _res;

  call({
    Query$getCharacterMedia$Character$media? media,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$getCharacterMedia$Character$media<TRes> get media =>
      CopyWith$Query$getCharacterMedia$Character$media.stub(_res);
}

class Query$getCharacterMedia$Character$media {
  Query$getCharacterMedia$Character$media({
    this.pageInfo,
    this.edges,
    this.$__typename = 'MediaConnection',
  });

  factory Query$getCharacterMedia$Character$media.fromJson(
      Map<String, dynamic> json) {
    final l$pageInfo = json['pageInfo'];
    final l$edges = json['edges'];
    final l$$__typename = json['__typename'];
    return Query$getCharacterMedia$Character$media(
      pageInfo: l$pageInfo == null
          ? null
          : Fragment$PageInfo.fromJson((l$pageInfo as Map<String, dynamic>)),
      edges: (l$edges as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$getCharacterMedia$Character$media$edges.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$PageInfo? pageInfo;

  final List<Query$getCharacterMedia$Character$media$edges?>? edges;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$pageInfo = pageInfo;
    _resultData['pageInfo'] = l$pageInfo?.toJson();
    final l$edges = edges;
    _resultData['edges'] = l$edges?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$pageInfo = pageInfo;
    final l$edges = edges;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$pageInfo,
      l$edges == null ? null : Object.hashAll(l$edges.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$getCharacterMedia$Character$media ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$pageInfo = pageInfo;
    final lOther$pageInfo = other.pageInfo;
    if (l$pageInfo != lOther$pageInfo) {
      return false;
    }
    final l$edges = edges;
    final lOther$edges = other.edges;
    if (l$edges != null && lOther$edges != null) {
      if (l$edges.length != lOther$edges.length) {
        return false;
      }
      for (int i = 0; i < l$edges.length; i++) {
        final l$edges$entry = l$edges[i];
        final lOther$edges$entry = lOther$edges[i];
        if (l$edges$entry != lOther$edges$entry) {
          return false;
        }
      }
    } else if (l$edges != lOther$edges) {
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

extension UtilityExtension$Query$getCharacterMedia$Character$media
    on Query$getCharacterMedia$Character$media {
  CopyWith$Query$getCharacterMedia$Character$media<
          Query$getCharacterMedia$Character$media>
      get copyWith => CopyWith$Query$getCharacterMedia$Character$media(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getCharacterMedia$Character$media<TRes> {
  factory CopyWith$Query$getCharacterMedia$Character$media(
    Query$getCharacterMedia$Character$media instance,
    TRes Function(Query$getCharacterMedia$Character$media) then,
  ) = _CopyWithImpl$Query$getCharacterMedia$Character$media;

  factory CopyWith$Query$getCharacterMedia$Character$media.stub(TRes res) =
      _CopyWithStubImpl$Query$getCharacterMedia$Character$media;

  TRes call({
    Fragment$PageInfo? pageInfo,
    List<Query$getCharacterMedia$Character$media$edges?>? edges,
    String? $__typename,
  });
  CopyWith$Fragment$PageInfo<TRes> get pageInfo;
  TRes edges(
      Iterable<Query$getCharacterMedia$Character$media$edges?>? Function(
              Iterable<
                  CopyWith$Query$getCharacterMedia$Character$media$edges<
                      Query$getCharacterMedia$Character$media$edges>?>?)
          _fn);
}

class _CopyWithImpl$Query$getCharacterMedia$Character$media<TRes>
    implements CopyWith$Query$getCharacterMedia$Character$media<TRes> {
  _CopyWithImpl$Query$getCharacterMedia$Character$media(
    this._instance,
    this._then,
  );

  final Query$getCharacterMedia$Character$media _instance;

  final TRes Function(Query$getCharacterMedia$Character$media) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pageInfo = _undefined,
    Object? edges = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getCharacterMedia$Character$media(
        pageInfo: pageInfo == _undefined
            ? _instance.pageInfo
            : (pageInfo as Fragment$PageInfo?),
        edges: edges == _undefined
            ? _instance.edges
            : (edges as List<Query$getCharacterMedia$Character$media$edges?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$PageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return local$pageInfo == null
        ? CopyWith$Fragment$PageInfo.stub(_then(_instance))
        : CopyWith$Fragment$PageInfo(local$pageInfo, (e) => call(pageInfo: e));
  }

  TRes edges(
          Iterable<Query$getCharacterMedia$Character$media$edges?>? Function(
                  Iterable<
                      CopyWith$Query$getCharacterMedia$Character$media$edges<
                          Query$getCharacterMedia$Character$media$edges>?>?)
              _fn) =>
      call(
          edges: _fn(_instance.edges?.map((e) => e == null
              ? null
              : CopyWith$Query$getCharacterMedia$Character$media$edges(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$getCharacterMedia$Character$media<TRes>
    implements CopyWith$Query$getCharacterMedia$Character$media<TRes> {
  _CopyWithStubImpl$Query$getCharacterMedia$Character$media(this._res);

  TRes _res;

  call({
    Fragment$PageInfo? pageInfo,
    List<Query$getCharacterMedia$Character$media$edges?>? edges,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$PageInfo<TRes> get pageInfo =>
      CopyWith$Fragment$PageInfo.stub(_res);

  edges(_fn) => _res;
}

class Query$getCharacterMedia$Character$media$edges {
  Query$getCharacterMedia$Character$media$edges({
    this.voiceActorRoles,
    this.node,
    this.$__typename = 'MediaEdge',
  });

  factory Query$getCharacterMedia$Character$media$edges.fromJson(
      Map<String, dynamic> json) {
    final l$voiceActorRoles = json['voiceActorRoles'];
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Query$getCharacterMedia$Character$media$edges(
      voiceActorRoles: (l$voiceActorRoles as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$getCharacterMedia$Character$media$edges$voiceActorRoles
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      node: l$node == null
          ? null
          : Fragment$MediaShort.fromJson((l$node as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$getCharacterMedia$Character$media$edges$voiceActorRoles?>?
      voiceActorRoles;

  final Fragment$MediaShort? node;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$voiceActorRoles = voiceActorRoles;
    _resultData['voiceActorRoles'] =
        l$voiceActorRoles?.map((e) => e?.toJson()).toList();
    final l$node = node;
    _resultData['node'] = l$node?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$voiceActorRoles = voiceActorRoles;
    final l$node = node;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$voiceActorRoles == null
          ? null
          : Object.hashAll(l$voiceActorRoles.map((v) => v)),
      l$node,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$getCharacterMedia$Character$media$edges ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$voiceActorRoles = voiceActorRoles;
    final lOther$voiceActorRoles = other.voiceActorRoles;
    if (l$voiceActorRoles != null && lOther$voiceActorRoles != null) {
      if (l$voiceActorRoles.length != lOther$voiceActorRoles.length) {
        return false;
      }
      for (int i = 0; i < l$voiceActorRoles.length; i++) {
        final l$voiceActorRoles$entry = l$voiceActorRoles[i];
        final lOther$voiceActorRoles$entry = lOther$voiceActorRoles[i];
        if (l$voiceActorRoles$entry != lOther$voiceActorRoles$entry) {
          return false;
        }
      }
    } else if (l$voiceActorRoles != lOther$voiceActorRoles) {
      return false;
    }
    final l$node = node;
    final lOther$node = other.node;
    if (l$node != lOther$node) {
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

extension UtilityExtension$Query$getCharacterMedia$Character$media$edges
    on Query$getCharacterMedia$Character$media$edges {
  CopyWith$Query$getCharacterMedia$Character$media$edges<
          Query$getCharacterMedia$Character$media$edges>
      get copyWith => CopyWith$Query$getCharacterMedia$Character$media$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getCharacterMedia$Character$media$edges<TRes> {
  factory CopyWith$Query$getCharacterMedia$Character$media$edges(
    Query$getCharacterMedia$Character$media$edges instance,
    TRes Function(Query$getCharacterMedia$Character$media$edges) then,
  ) = _CopyWithImpl$Query$getCharacterMedia$Character$media$edges;

  factory CopyWith$Query$getCharacterMedia$Character$media$edges.stub(
          TRes res) =
      _CopyWithStubImpl$Query$getCharacterMedia$Character$media$edges;

  TRes call({
    List<Query$getCharacterMedia$Character$media$edges$voiceActorRoles?>?
        voiceActorRoles,
    Fragment$MediaShort? node,
    String? $__typename,
  });
  TRes voiceActorRoles(
      Iterable<Query$getCharacterMedia$Character$media$edges$voiceActorRoles?>? Function(
              Iterable<
                  CopyWith$Query$getCharacterMedia$Character$media$edges$voiceActorRoles<
                      Query$getCharacterMedia$Character$media$edges$voiceActorRoles>?>?)
          _fn);
  CopyWith$Fragment$MediaShort<TRes> get node;
}

class _CopyWithImpl$Query$getCharacterMedia$Character$media$edges<TRes>
    implements CopyWith$Query$getCharacterMedia$Character$media$edges<TRes> {
  _CopyWithImpl$Query$getCharacterMedia$Character$media$edges(
    this._instance,
    this._then,
  );

  final Query$getCharacterMedia$Character$media$edges _instance;

  final TRes Function(Query$getCharacterMedia$Character$media$edges) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? voiceActorRoles = _undefined,
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getCharacterMedia$Character$media$edges(
        voiceActorRoles: voiceActorRoles == _undefined
            ? _instance.voiceActorRoles
            : (voiceActorRoles as List<
                Query$getCharacterMedia$Character$media$edges$voiceActorRoles?>?),
        node: node == _undefined
            ? _instance.node
            : (node as Fragment$MediaShort?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes voiceActorRoles(
          Iterable<Query$getCharacterMedia$Character$media$edges$voiceActorRoles?>? Function(
                  Iterable<
                      CopyWith$Query$getCharacterMedia$Character$media$edges$voiceActorRoles<
                          Query$getCharacterMedia$Character$media$edges$voiceActorRoles>?>?)
              _fn) =>
      call(
          voiceActorRoles: _fn(_instance.voiceActorRoles?.map((e) => e == null
              ? null
              : CopyWith$Query$getCharacterMedia$Character$media$edges$voiceActorRoles(
                  e,
                  (i) => i,
                )))?.toList());

  CopyWith$Fragment$MediaShort<TRes> get node {
    final local$node = _instance.node;
    return local$node == null
        ? CopyWith$Fragment$MediaShort.stub(_then(_instance))
        : CopyWith$Fragment$MediaShort(local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Query$getCharacterMedia$Character$media$edges<TRes>
    implements CopyWith$Query$getCharacterMedia$Character$media$edges<TRes> {
  _CopyWithStubImpl$Query$getCharacterMedia$Character$media$edges(this._res);

  TRes _res;

  call({
    List<Query$getCharacterMedia$Character$media$edges$voiceActorRoles?>?
        voiceActorRoles,
    Fragment$MediaShort? node,
    String? $__typename,
  }) =>
      _res;

  voiceActorRoles(_fn) => _res;

  CopyWith$Fragment$MediaShort<TRes> get node =>
      CopyWith$Fragment$MediaShort.stub(_res);
}

class Query$getCharacterMedia$Character$media$edges$voiceActorRoles {
  Query$getCharacterMedia$Character$media$edges$voiceActorRoles({
    this.roleNotes,
    this.dubGroup,
    this.voiceActor,
    this.$__typename = 'StaffRoleType',
  });

  factory Query$getCharacterMedia$Character$media$edges$voiceActorRoles.fromJson(
      Map<String, dynamic> json) {
    final l$roleNotes = json['roleNotes'];
    final l$dubGroup = json['dubGroup'];
    final l$voiceActor = json['voiceActor'];
    final l$$__typename = json['__typename'];
    return Query$getCharacterMedia$Character$media$edges$voiceActorRoles(
      roleNotes: (l$roleNotes as String?),
      dubGroup: (l$dubGroup as String?),
      voiceActor: l$voiceActor == null
          ? null
          : Query$getCharacterMedia$Character$media$edges$voiceActorRoles$voiceActor
              .fromJson((l$voiceActor as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String? roleNotes;

  final String? dubGroup;

  final Query$getCharacterMedia$Character$media$edges$voiceActorRoles$voiceActor?
      voiceActor;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$roleNotes = roleNotes;
    _resultData['roleNotes'] = l$roleNotes;
    final l$dubGroup = dubGroup;
    _resultData['dubGroup'] = l$dubGroup;
    final l$voiceActor = voiceActor;
    _resultData['voiceActor'] = l$voiceActor?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$roleNotes = roleNotes;
    final l$dubGroup = dubGroup;
    final l$voiceActor = voiceActor;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$roleNotes,
      l$dubGroup,
      l$voiceActor,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$getCharacterMedia$Character$media$edges$voiceActorRoles ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$roleNotes = roleNotes;
    final lOther$roleNotes = other.roleNotes;
    if (l$roleNotes != lOther$roleNotes) {
      return false;
    }
    final l$dubGroup = dubGroup;
    final lOther$dubGroup = other.dubGroup;
    if (l$dubGroup != lOther$dubGroup) {
      return false;
    }
    final l$voiceActor = voiceActor;
    final lOther$voiceActor = other.voiceActor;
    if (l$voiceActor != lOther$voiceActor) {
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

extension UtilityExtension$Query$getCharacterMedia$Character$media$edges$voiceActorRoles
    on Query$getCharacterMedia$Character$media$edges$voiceActorRoles {
  CopyWith$Query$getCharacterMedia$Character$media$edges$voiceActorRoles<
          Query$getCharacterMedia$Character$media$edges$voiceActorRoles>
      get copyWith =>
          CopyWith$Query$getCharacterMedia$Character$media$edges$voiceActorRoles(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getCharacterMedia$Character$media$edges$voiceActorRoles<
    TRes> {
  factory CopyWith$Query$getCharacterMedia$Character$media$edges$voiceActorRoles(
    Query$getCharacterMedia$Character$media$edges$voiceActorRoles instance,
    TRes Function(Query$getCharacterMedia$Character$media$edges$voiceActorRoles)
        then,
  ) = _CopyWithImpl$Query$getCharacterMedia$Character$media$edges$voiceActorRoles;

  factory CopyWith$Query$getCharacterMedia$Character$media$edges$voiceActorRoles.stub(
          TRes res) =
      _CopyWithStubImpl$Query$getCharacterMedia$Character$media$edges$voiceActorRoles;

  TRes call({
    String? roleNotes,
    String? dubGroup,
    Query$getCharacterMedia$Character$media$edges$voiceActorRoles$voiceActor?
        voiceActor,
    String? $__typename,
  });
  CopyWith$Query$getCharacterMedia$Character$media$edges$voiceActorRoles$voiceActor<
      TRes> get voiceActor;
}

class _CopyWithImpl$Query$getCharacterMedia$Character$media$edges$voiceActorRoles<
        TRes>
    implements
        CopyWith$Query$getCharacterMedia$Character$media$edges$voiceActorRoles<
            TRes> {
  _CopyWithImpl$Query$getCharacterMedia$Character$media$edges$voiceActorRoles(
    this._instance,
    this._then,
  );

  final Query$getCharacterMedia$Character$media$edges$voiceActorRoles _instance;

  final TRes Function(
      Query$getCharacterMedia$Character$media$edges$voiceActorRoles) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? roleNotes = _undefined,
    Object? dubGroup = _undefined,
    Object? voiceActor = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getCharacterMedia$Character$media$edges$voiceActorRoles(
        roleNotes: roleNotes == _undefined
            ? _instance.roleNotes
            : (roleNotes as String?),
        dubGroup:
            dubGroup == _undefined ? _instance.dubGroup : (dubGroup as String?),
        voiceActor: voiceActor == _undefined
            ? _instance.voiceActor
            : (voiceActor
                as Query$getCharacterMedia$Character$media$edges$voiceActorRoles$voiceActor?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$getCharacterMedia$Character$media$edges$voiceActorRoles$voiceActor<
      TRes> get voiceActor {
    final local$voiceActor = _instance.voiceActor;
    return local$voiceActor == null
        ? CopyWith$Query$getCharacterMedia$Character$media$edges$voiceActorRoles$voiceActor
            .stub(_then(_instance))
        : CopyWith$Query$getCharacterMedia$Character$media$edges$voiceActorRoles$voiceActor(
            local$voiceActor, (e) => call(voiceActor: e));
  }
}

class _CopyWithStubImpl$Query$getCharacterMedia$Character$media$edges$voiceActorRoles<
        TRes>
    implements
        CopyWith$Query$getCharacterMedia$Character$media$edges$voiceActorRoles<
            TRes> {
  _CopyWithStubImpl$Query$getCharacterMedia$Character$media$edges$voiceActorRoles(
      this._res);

  TRes _res;

  call({
    String? roleNotes,
    String? dubGroup,
    Query$getCharacterMedia$Character$media$edges$voiceActorRoles$voiceActor?
        voiceActor,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$getCharacterMedia$Character$media$edges$voiceActorRoles$voiceActor<
          TRes>
      get voiceActor =>
          CopyWith$Query$getCharacterMedia$Character$media$edges$voiceActorRoles$voiceActor
              .stub(_res);
}

class Query$getCharacterMedia$Character$media$edges$voiceActorRoles$voiceActor
    implements Fragment$SearchResultStaff {
  Query$getCharacterMedia$Character$media$edges$voiceActorRoles$voiceActor({
    required this.id,
    this.name,
    this.image,
    this.favourites,
    this.$__typename = 'Staff',
    this.languageV2,
  });

  factory Query$getCharacterMedia$Character$media$edges$voiceActorRoles$voiceActor.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$image = json['image'];
    final l$favourites = json['favourites'];
    final l$$__typename = json['__typename'];
    final l$languageV2 = json['languageV2'];
    return Query$getCharacterMedia$Character$media$edges$voiceActorRoles$voiceActor(
      id: (l$id as int),
      name: l$name == null
          ? null
          : Query$getCharacterMedia$Character$media$edges$voiceActorRoles$voiceActor$name
              .fromJson((l$name as Map<String, dynamic>)),
      image: l$image == null
          ? null
          : Query$getCharacterMedia$Character$media$edges$voiceActorRoles$voiceActor$image
              .fromJson((l$image as Map<String, dynamic>)),
      favourites: (l$favourites as int?),
      $__typename: (l$$__typename as String),
      languageV2: (l$languageV2 as String?),
    );
  }

  final int id;

  final Query$getCharacterMedia$Character$media$edges$voiceActorRoles$voiceActor$name?
      name;

  final Query$getCharacterMedia$Character$media$edges$voiceActorRoles$voiceActor$image?
      image;

  final int? favourites;

  final String $__typename;

  final String? languageV2;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name?.toJson();
    final l$image = image;
    _resultData['image'] = l$image?.toJson();
    final l$favourites = favourites;
    _resultData['favourites'] = l$favourites;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$languageV2 = languageV2;
    _resultData['languageV2'] = l$languageV2;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$image = image;
    final l$favourites = favourites;
    final l$$__typename = $__typename;
    final l$languageV2 = languageV2;
    return Object.hashAll([
      l$id,
      l$name,
      l$image,
      l$favourites,
      l$$__typename,
      l$languageV2,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$getCharacterMedia$Character$media$edges$voiceActorRoles$voiceActor ||
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
    final l$image = image;
    final lOther$image = other.image;
    if (l$image != lOther$image) {
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
    final l$languageV2 = languageV2;
    final lOther$languageV2 = other.languageV2;
    if (l$languageV2 != lOther$languageV2) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$getCharacterMedia$Character$media$edges$voiceActorRoles$voiceActor
    on Query$getCharacterMedia$Character$media$edges$voiceActorRoles$voiceActor {
  CopyWith$Query$getCharacterMedia$Character$media$edges$voiceActorRoles$voiceActor<
          Query$getCharacterMedia$Character$media$edges$voiceActorRoles$voiceActor>
      get copyWith =>
          CopyWith$Query$getCharacterMedia$Character$media$edges$voiceActorRoles$voiceActor(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getCharacterMedia$Character$media$edges$voiceActorRoles$voiceActor<
    TRes> {
  factory CopyWith$Query$getCharacterMedia$Character$media$edges$voiceActorRoles$voiceActor(
    Query$getCharacterMedia$Character$media$edges$voiceActorRoles$voiceActor
        instance,
    TRes Function(
            Query$getCharacterMedia$Character$media$edges$voiceActorRoles$voiceActor)
        then,
  ) = _CopyWithImpl$Query$getCharacterMedia$Character$media$edges$voiceActorRoles$voiceActor;

  factory CopyWith$Query$getCharacterMedia$Character$media$edges$voiceActorRoles$voiceActor.stub(
          TRes res) =
      _CopyWithStubImpl$Query$getCharacterMedia$Character$media$edges$voiceActorRoles$voiceActor;

  TRes call({
    int? id,
    Query$getCharacterMedia$Character$media$edges$voiceActorRoles$voiceActor$name?
        name,
    Query$getCharacterMedia$Character$media$edges$voiceActorRoles$voiceActor$image?
        image,
    int? favourites,
    String? $__typename,
    String? languageV2,
  });
  CopyWith$Query$getCharacterMedia$Character$media$edges$voiceActorRoles$voiceActor$name<
      TRes> get name;
  CopyWith$Query$getCharacterMedia$Character$media$edges$voiceActorRoles$voiceActor$image<
      TRes> get image;
}

class _CopyWithImpl$Query$getCharacterMedia$Character$media$edges$voiceActorRoles$voiceActor<
        TRes>
    implements
        CopyWith$Query$getCharacterMedia$Character$media$edges$voiceActorRoles$voiceActor<
            TRes> {
  _CopyWithImpl$Query$getCharacterMedia$Character$media$edges$voiceActorRoles$voiceActor(
    this._instance,
    this._then,
  );

  final Query$getCharacterMedia$Character$media$edges$voiceActorRoles$voiceActor
      _instance;

  final TRes Function(
          Query$getCharacterMedia$Character$media$edges$voiceActorRoles$voiceActor)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? image = _undefined,
    Object? favourites = _undefined,
    Object? $__typename = _undefined,
    Object? languageV2 = _undefined,
  }) =>
      _then(
          Query$getCharacterMedia$Character$media$edges$voiceActorRoles$voiceActor(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        name: name == _undefined
            ? _instance.name
            : (name
                as Query$getCharacterMedia$Character$media$edges$voiceActorRoles$voiceActor$name?),
        image: image == _undefined
            ? _instance.image
            : (image
                as Query$getCharacterMedia$Character$media$edges$voiceActorRoles$voiceActor$image?),
        favourites: favourites == _undefined
            ? _instance.favourites
            : (favourites as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        languageV2: languageV2 == _undefined
            ? _instance.languageV2
            : (languageV2 as String?),
      ));

  CopyWith$Query$getCharacterMedia$Character$media$edges$voiceActorRoles$voiceActor$name<
      TRes> get name {
    final local$name = _instance.name;
    return local$name == null
        ? CopyWith$Query$getCharacterMedia$Character$media$edges$voiceActorRoles$voiceActor$name
            .stub(_then(_instance))
        : CopyWith$Query$getCharacterMedia$Character$media$edges$voiceActorRoles$voiceActor$name(
            local$name, (e) => call(name: e));
  }

  CopyWith$Query$getCharacterMedia$Character$media$edges$voiceActorRoles$voiceActor$image<
      TRes> get image {
    final local$image = _instance.image;
    return local$image == null
        ? CopyWith$Query$getCharacterMedia$Character$media$edges$voiceActorRoles$voiceActor$image
            .stub(_then(_instance))
        : CopyWith$Query$getCharacterMedia$Character$media$edges$voiceActorRoles$voiceActor$image(
            local$image, (e) => call(image: e));
  }
}

class _CopyWithStubImpl$Query$getCharacterMedia$Character$media$edges$voiceActorRoles$voiceActor<
        TRes>
    implements
        CopyWith$Query$getCharacterMedia$Character$media$edges$voiceActorRoles$voiceActor<
            TRes> {
  _CopyWithStubImpl$Query$getCharacterMedia$Character$media$edges$voiceActorRoles$voiceActor(
      this._res);

  TRes _res;

  call({
    int? id,
    Query$getCharacterMedia$Character$media$edges$voiceActorRoles$voiceActor$name?
        name,
    Query$getCharacterMedia$Character$media$edges$voiceActorRoles$voiceActor$image?
        image,
    int? favourites,
    String? $__typename,
    String? languageV2,
  }) =>
      _res;

  CopyWith$Query$getCharacterMedia$Character$media$edges$voiceActorRoles$voiceActor$name<
          TRes>
      get name =>
          CopyWith$Query$getCharacterMedia$Character$media$edges$voiceActorRoles$voiceActor$name
              .stub(_res);

  CopyWith$Query$getCharacterMedia$Character$media$edges$voiceActorRoles$voiceActor$image<
          TRes>
      get image =>
          CopyWith$Query$getCharacterMedia$Character$media$edges$voiceActorRoles$voiceActor$image
              .stub(_res);
}

class Query$getCharacterMedia$Character$media$edges$voiceActorRoles$voiceActor$name
    implements Fragment$SearchResultStaff$name {
  Query$getCharacterMedia$Character$media$edges$voiceActorRoles$voiceActor$name({
    this.userPreferred,
    this.$__typename = 'StaffName',
  });

  factory Query$getCharacterMedia$Character$media$edges$voiceActorRoles$voiceActor$name.fromJson(
      Map<String, dynamic> json) {
    final l$userPreferred = json['userPreferred'];
    final l$$__typename = json['__typename'];
    return Query$getCharacterMedia$Character$media$edges$voiceActorRoles$voiceActor$name(
      userPreferred: (l$userPreferred as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? userPreferred;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$userPreferred = userPreferred;
    _resultData['userPreferred'] = l$userPreferred;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$userPreferred = userPreferred;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$userPreferred,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$getCharacterMedia$Character$media$edges$voiceActorRoles$voiceActor$name ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$userPreferred = userPreferred;
    final lOther$userPreferred = other.userPreferred;
    if (l$userPreferred != lOther$userPreferred) {
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

extension UtilityExtension$Query$getCharacterMedia$Character$media$edges$voiceActorRoles$voiceActor$name
    on Query$getCharacterMedia$Character$media$edges$voiceActorRoles$voiceActor$name {
  CopyWith$Query$getCharacterMedia$Character$media$edges$voiceActorRoles$voiceActor$name<
          Query$getCharacterMedia$Character$media$edges$voiceActorRoles$voiceActor$name>
      get copyWith =>
          CopyWith$Query$getCharacterMedia$Character$media$edges$voiceActorRoles$voiceActor$name(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getCharacterMedia$Character$media$edges$voiceActorRoles$voiceActor$name<
    TRes> {
  factory CopyWith$Query$getCharacterMedia$Character$media$edges$voiceActorRoles$voiceActor$name(
    Query$getCharacterMedia$Character$media$edges$voiceActorRoles$voiceActor$name
        instance,
    TRes Function(
            Query$getCharacterMedia$Character$media$edges$voiceActorRoles$voiceActor$name)
        then,
  ) = _CopyWithImpl$Query$getCharacterMedia$Character$media$edges$voiceActorRoles$voiceActor$name;

  factory CopyWith$Query$getCharacterMedia$Character$media$edges$voiceActorRoles$voiceActor$name.stub(
          TRes res) =
      _CopyWithStubImpl$Query$getCharacterMedia$Character$media$edges$voiceActorRoles$voiceActor$name;

  TRes call({
    String? userPreferred,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$getCharacterMedia$Character$media$edges$voiceActorRoles$voiceActor$name<
        TRes>
    implements
        CopyWith$Query$getCharacterMedia$Character$media$edges$voiceActorRoles$voiceActor$name<
            TRes> {
  _CopyWithImpl$Query$getCharacterMedia$Character$media$edges$voiceActorRoles$voiceActor$name(
    this._instance,
    this._then,
  );

  final Query$getCharacterMedia$Character$media$edges$voiceActorRoles$voiceActor$name
      _instance;

  final TRes Function(
          Query$getCharacterMedia$Character$media$edges$voiceActorRoles$voiceActor$name)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userPreferred = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$getCharacterMedia$Character$media$edges$voiceActorRoles$voiceActor$name(
        userPreferred: userPreferred == _undefined
            ? _instance.userPreferred
            : (userPreferred as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$getCharacterMedia$Character$media$edges$voiceActorRoles$voiceActor$name<
        TRes>
    implements
        CopyWith$Query$getCharacterMedia$Character$media$edges$voiceActorRoles$voiceActor$name<
            TRes> {
  _CopyWithStubImpl$Query$getCharacterMedia$Character$media$edges$voiceActorRoles$voiceActor$name(
      this._res);

  TRes _res;

  call({
    String? userPreferred,
    String? $__typename,
  }) =>
      _res;
}

class Query$getCharacterMedia$Character$media$edges$voiceActorRoles$voiceActor$image
    implements Fragment$SearchResultStaff$image {
  Query$getCharacterMedia$Character$media$edges$voiceActorRoles$voiceActor$image({
    this.large,
    this.$__typename = 'StaffImage',
  });

  factory Query$getCharacterMedia$Character$media$edges$voiceActorRoles$voiceActor$image.fromJson(
      Map<String, dynamic> json) {
    final l$large = json['large'];
    final l$$__typename = json['__typename'];
    return Query$getCharacterMedia$Character$media$edges$voiceActorRoles$voiceActor$image(
      large: (l$large as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? large;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$large = large;
    _resultData['large'] = l$large;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$large = large;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$large,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$getCharacterMedia$Character$media$edges$voiceActorRoles$voiceActor$image ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$large = large;
    final lOther$large = other.large;
    if (l$large != lOther$large) {
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

extension UtilityExtension$Query$getCharacterMedia$Character$media$edges$voiceActorRoles$voiceActor$image
    on Query$getCharacterMedia$Character$media$edges$voiceActorRoles$voiceActor$image {
  CopyWith$Query$getCharacterMedia$Character$media$edges$voiceActorRoles$voiceActor$image<
          Query$getCharacterMedia$Character$media$edges$voiceActorRoles$voiceActor$image>
      get copyWith =>
          CopyWith$Query$getCharacterMedia$Character$media$edges$voiceActorRoles$voiceActor$image(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getCharacterMedia$Character$media$edges$voiceActorRoles$voiceActor$image<
    TRes> {
  factory CopyWith$Query$getCharacterMedia$Character$media$edges$voiceActorRoles$voiceActor$image(
    Query$getCharacterMedia$Character$media$edges$voiceActorRoles$voiceActor$image
        instance,
    TRes Function(
            Query$getCharacterMedia$Character$media$edges$voiceActorRoles$voiceActor$image)
        then,
  ) = _CopyWithImpl$Query$getCharacterMedia$Character$media$edges$voiceActorRoles$voiceActor$image;

  factory CopyWith$Query$getCharacterMedia$Character$media$edges$voiceActorRoles$voiceActor$image.stub(
          TRes res) =
      _CopyWithStubImpl$Query$getCharacterMedia$Character$media$edges$voiceActorRoles$voiceActor$image;

  TRes call({
    String? large,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$getCharacterMedia$Character$media$edges$voiceActorRoles$voiceActor$image<
        TRes>
    implements
        CopyWith$Query$getCharacterMedia$Character$media$edges$voiceActorRoles$voiceActor$image<
            TRes> {
  _CopyWithImpl$Query$getCharacterMedia$Character$media$edges$voiceActorRoles$voiceActor$image(
    this._instance,
    this._then,
  );

  final Query$getCharacterMedia$Character$media$edges$voiceActorRoles$voiceActor$image
      _instance;

  final TRes Function(
          Query$getCharacterMedia$Character$media$edges$voiceActorRoles$voiceActor$image)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? large = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$getCharacterMedia$Character$media$edges$voiceActorRoles$voiceActor$image(
        large: large == _undefined ? _instance.large : (large as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$getCharacterMedia$Character$media$edges$voiceActorRoles$voiceActor$image<
        TRes>
    implements
        CopyWith$Query$getCharacterMedia$Character$media$edges$voiceActorRoles$voiceActor$image<
            TRes> {
  _CopyWithStubImpl$Query$getCharacterMedia$Character$media$edges$voiceActorRoles$voiceActor$image(
      this._res);

  TRes _res;

  call({
    String? large,
    String? $__typename,
  }) =>
      _res;
}
