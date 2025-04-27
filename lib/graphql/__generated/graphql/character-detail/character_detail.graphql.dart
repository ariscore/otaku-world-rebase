// GENERATED FILE
// DO NOT MODIFY
// ignore_for_file: type=lint
import '../fragments.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$getCharacterDetails {
  factory Variables$Query$getCharacterDetails({int? characterId}) =>
      Variables$Query$getCharacterDetails._({
        if (characterId != null) r'characterId': characterId,
      });

  Variables$Query$getCharacterDetails._(this._$data);

  factory Variables$Query$getCharacterDetails.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('characterId')) {
      final l$characterId = data['characterId'];
      result$data['characterId'] = (l$characterId as int?);
    }
    return Variables$Query$getCharacterDetails._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get characterId => (_$data['characterId'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('characterId')) {
      final l$characterId = characterId;
      result$data['characterId'] = l$characterId;
    }
    return result$data;
  }

  CopyWith$Variables$Query$getCharacterDetails<
          Variables$Query$getCharacterDetails>
      get copyWith => CopyWith$Variables$Query$getCharacterDetails(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$getCharacterDetails ||
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
    return true;
  }

  @override
  int get hashCode {
    final l$characterId = characterId;
    return Object.hashAll(
        [_$data.containsKey('characterId') ? l$characterId : const {}]);
  }
}

abstract class CopyWith$Variables$Query$getCharacterDetails<TRes> {
  factory CopyWith$Variables$Query$getCharacterDetails(
    Variables$Query$getCharacterDetails instance,
    TRes Function(Variables$Query$getCharacterDetails) then,
  ) = _CopyWithImpl$Variables$Query$getCharacterDetails;

  factory CopyWith$Variables$Query$getCharacterDetails.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$getCharacterDetails;

  TRes call({int? characterId});
}

class _CopyWithImpl$Variables$Query$getCharacterDetails<TRes>
    implements CopyWith$Variables$Query$getCharacterDetails<TRes> {
  _CopyWithImpl$Variables$Query$getCharacterDetails(
    this._instance,
    this._then,
  );

  final Variables$Query$getCharacterDetails _instance;

  final TRes Function(Variables$Query$getCharacterDetails) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? characterId = _undefined}) =>
      _then(Variables$Query$getCharacterDetails._({
        ..._instance._$data,
        if (characterId != _undefined) 'characterId': (characterId as int?),
      }));
}

class _CopyWithStubImpl$Variables$Query$getCharacterDetails<TRes>
    implements CopyWith$Variables$Query$getCharacterDetails<TRes> {
  _CopyWithStubImpl$Variables$Query$getCharacterDetails(this._res);

  TRes _res;

  call({int? characterId}) => _res;
}

class Query$getCharacterDetails {
  Query$getCharacterDetails({
    this.Character,
    this.$__typename = 'Query',
  });

  factory Query$getCharacterDetails.fromJson(Map<String, dynamic> json) {
    final l$Character = json['Character'];
    final l$$__typename = json['__typename'];
    return Query$getCharacterDetails(
      Character: l$Character == null
          ? null
          : Query$getCharacterDetails$Character.fromJson(
              (l$Character as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$getCharacterDetails$Character? Character;

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
    if (other is! Query$getCharacterDetails ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$getCharacterDetails
    on Query$getCharacterDetails {
  CopyWith$Query$getCharacterDetails<Query$getCharacterDetails> get copyWith =>
      CopyWith$Query$getCharacterDetails(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$getCharacterDetails<TRes> {
  factory CopyWith$Query$getCharacterDetails(
    Query$getCharacterDetails instance,
    TRes Function(Query$getCharacterDetails) then,
  ) = _CopyWithImpl$Query$getCharacterDetails;

  factory CopyWith$Query$getCharacterDetails.stub(TRes res) =
      _CopyWithStubImpl$Query$getCharacterDetails;

  TRes call({
    Query$getCharacterDetails$Character? Character,
    String? $__typename,
  });
  CopyWith$Query$getCharacterDetails$Character<TRes> get Character;
}

class _CopyWithImpl$Query$getCharacterDetails<TRes>
    implements CopyWith$Query$getCharacterDetails<TRes> {
  _CopyWithImpl$Query$getCharacterDetails(
    this._instance,
    this._then,
  );

  final Query$getCharacterDetails _instance;

  final TRes Function(Query$getCharacterDetails) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? Character = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getCharacterDetails(
        Character: Character == _undefined
            ? _instance.Character
            : (Character as Query$getCharacterDetails$Character?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$getCharacterDetails$Character<TRes> get Character {
    final local$Character = _instance.Character;
    return local$Character == null
        ? CopyWith$Query$getCharacterDetails$Character.stub(_then(_instance))
        : CopyWith$Query$getCharacterDetails$Character(
            local$Character, (e) => call(Character: e));
  }
}

class _CopyWithStubImpl$Query$getCharacterDetails<TRes>
    implements CopyWith$Query$getCharacterDetails<TRes> {
  _CopyWithStubImpl$Query$getCharacterDetails(this._res);

  TRes _res;

  call({
    Query$getCharacterDetails$Character? Character,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$getCharacterDetails$Character<TRes> get Character =>
      CopyWith$Query$getCharacterDetails$Character.stub(_res);
}

const documentNodeQuerygetCharacterDetails = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'getCharacterDetails'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'characterId')),
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
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'userPreferred'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'alternative'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'alternativeSpoiler'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'full'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'native'),
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
            name: NameNode(value: 'image'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'large'),
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
            name: NameNode(value: 'favourites'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'description'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'gender'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'age'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'bloodType'),
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
            name: NameNode(value: 'siteUrl'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'isFavouriteBlocked'),
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
            name: NameNode(value: 'dateOfBirth'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                name: NameNode(value: 'FuzzyDate'),
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
  fragmentDefinitionFuzzyDate,
]);
Query$getCharacterDetails _parserFn$Query$getCharacterDetails(
        Map<String, dynamic> data) =>
    Query$getCharacterDetails.fromJson(data);
typedef OnQueryComplete$Query$getCharacterDetails = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$getCharacterDetails?,
);

class Options$Query$getCharacterDetails
    extends graphql.QueryOptions<Query$getCharacterDetails> {
  Options$Query$getCharacterDetails({
    String? operationName,
    Variables$Query$getCharacterDetails? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$getCharacterDetails? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$getCharacterDetails? onComplete,
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
                        : _parserFn$Query$getCharacterDetails(data),
                  ),
          onError: onError,
          document: documentNodeQuerygetCharacterDetails,
          parserFn: _parserFn$Query$getCharacterDetails,
        );

  final OnQueryComplete$Query$getCharacterDetails? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$getCharacterDetails
    extends graphql.WatchQueryOptions<Query$getCharacterDetails> {
  WatchOptions$Query$getCharacterDetails({
    String? operationName,
    Variables$Query$getCharacterDetails? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$getCharacterDetails? typedOptimisticResult,
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
          document: documentNodeQuerygetCharacterDetails,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$getCharacterDetails,
        );
}

class FetchMoreOptions$Query$getCharacterDetails
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$getCharacterDetails({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$getCharacterDetails? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQuerygetCharacterDetails,
        );
}

extension ClientExtension$Query$getCharacterDetails on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$getCharacterDetails>>
      query$getCharacterDetails(
              [Options$Query$getCharacterDetails? options]) async =>
          await this.query(options ?? Options$Query$getCharacterDetails());
  graphql.ObservableQuery<Query$getCharacterDetails>
      watchQuery$getCharacterDetails(
              [WatchOptions$Query$getCharacterDetails? options]) =>
          this.watchQuery(options ?? WatchOptions$Query$getCharacterDetails());
  void writeQuery$getCharacterDetails({
    required Query$getCharacterDetails data,
    Variables$Query$getCharacterDetails? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQuerygetCharacterDetails),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$getCharacterDetails? readQuery$getCharacterDetails({
    Variables$Query$getCharacterDetails? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation:
            graphql.Operation(document: documentNodeQuerygetCharacterDetails),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$getCharacterDetails.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$getCharacterDetails>
    useQuery$getCharacterDetails(
            [Options$Query$getCharacterDetails? options]) =>
        graphql_flutter
            .useQuery(options ?? Options$Query$getCharacterDetails());
graphql.ObservableQuery<Query$getCharacterDetails>
    useWatchQuery$getCharacterDetails(
            [WatchOptions$Query$getCharacterDetails? options]) =>
        graphql_flutter
            .useWatchQuery(options ?? WatchOptions$Query$getCharacterDetails());

class Query$getCharacterDetails$Widget
    extends graphql_flutter.Query<Query$getCharacterDetails> {
  Query$getCharacterDetails$Widget({
    widgets.Key? key,
    Options$Query$getCharacterDetails? options,
    required graphql_flutter.QueryBuilder<Query$getCharacterDetails> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$getCharacterDetails(),
          builder: builder,
        );
}

class Query$getCharacterDetails$Character {
  Query$getCharacterDetails$Character({
    required this.id,
    this.name,
    this.image,
    this.favourites,
    this.description,
    this.gender,
    this.age,
    this.bloodType,
    required this.isFavourite,
    this.siteUrl,
    required this.isFavouriteBlocked,
    this.dateOfBirth,
    this.$__typename = 'Character',
  });

  factory Query$getCharacterDetails$Character.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$image = json['image'];
    final l$favourites = json['favourites'];
    final l$description = json['description'];
    final l$gender = json['gender'];
    final l$age = json['age'];
    final l$bloodType = json['bloodType'];
    final l$isFavourite = json['isFavourite'];
    final l$siteUrl = json['siteUrl'];
    final l$isFavouriteBlocked = json['isFavouriteBlocked'];
    final l$dateOfBirth = json['dateOfBirth'];
    final l$$__typename = json['__typename'];
    return Query$getCharacterDetails$Character(
      id: (l$id as int),
      name: l$name == null
          ? null
          : Query$getCharacterDetails$Character$name.fromJson(
              (l$name as Map<String, dynamic>)),
      image: l$image == null
          ? null
          : Query$getCharacterDetails$Character$image.fromJson(
              (l$image as Map<String, dynamic>)),
      favourites: (l$favourites as int?),
      description: (l$description as String?),
      gender: (l$gender as String?),
      age: (l$age as String?),
      bloodType: (l$bloodType as String?),
      isFavourite: (l$isFavourite as bool),
      siteUrl: (l$siteUrl as String?),
      isFavouriteBlocked: (l$isFavouriteBlocked as bool),
      dateOfBirth: l$dateOfBirth == null
          ? null
          : Fragment$FuzzyDate.fromJson(
              (l$dateOfBirth as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final Query$getCharacterDetails$Character$name? name;

  final Query$getCharacterDetails$Character$image? image;

  final int? favourites;

  final String? description;

  final String? gender;

  final String? age;

  final String? bloodType;

  final bool isFavourite;

  final String? siteUrl;

  final bool isFavouriteBlocked;

  final Fragment$FuzzyDate? dateOfBirth;

  final String $__typename;

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
    final l$description = description;
    _resultData['description'] = l$description;
    final l$gender = gender;
    _resultData['gender'] = l$gender;
    final l$age = age;
    _resultData['age'] = l$age;
    final l$bloodType = bloodType;
    _resultData['bloodType'] = l$bloodType;
    final l$isFavourite = isFavourite;
    _resultData['isFavourite'] = l$isFavourite;
    final l$siteUrl = siteUrl;
    _resultData['siteUrl'] = l$siteUrl;
    final l$isFavouriteBlocked = isFavouriteBlocked;
    _resultData['isFavouriteBlocked'] = l$isFavouriteBlocked;
    final l$dateOfBirth = dateOfBirth;
    _resultData['dateOfBirth'] = l$dateOfBirth?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$image = image;
    final l$favourites = favourites;
    final l$description = description;
    final l$gender = gender;
    final l$age = age;
    final l$bloodType = bloodType;
    final l$isFavourite = isFavourite;
    final l$siteUrl = siteUrl;
    final l$isFavouriteBlocked = isFavouriteBlocked;
    final l$dateOfBirth = dateOfBirth;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$image,
      l$favourites,
      l$description,
      l$gender,
      l$age,
      l$bloodType,
      l$isFavourite,
      l$siteUrl,
      l$isFavouriteBlocked,
      l$dateOfBirth,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$getCharacterDetails$Character ||
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
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
      return false;
    }
    final l$gender = gender;
    final lOther$gender = other.gender;
    if (l$gender != lOther$gender) {
      return false;
    }
    final l$age = age;
    final lOther$age = other.age;
    if (l$age != lOther$age) {
      return false;
    }
    final l$bloodType = bloodType;
    final lOther$bloodType = other.bloodType;
    if (l$bloodType != lOther$bloodType) {
      return false;
    }
    final l$isFavourite = isFavourite;
    final lOther$isFavourite = other.isFavourite;
    if (l$isFavourite != lOther$isFavourite) {
      return false;
    }
    final l$siteUrl = siteUrl;
    final lOther$siteUrl = other.siteUrl;
    if (l$siteUrl != lOther$siteUrl) {
      return false;
    }
    final l$isFavouriteBlocked = isFavouriteBlocked;
    final lOther$isFavouriteBlocked = other.isFavouriteBlocked;
    if (l$isFavouriteBlocked != lOther$isFavouriteBlocked) {
      return false;
    }
    final l$dateOfBirth = dateOfBirth;
    final lOther$dateOfBirth = other.dateOfBirth;
    if (l$dateOfBirth != lOther$dateOfBirth) {
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

extension UtilityExtension$Query$getCharacterDetails$Character
    on Query$getCharacterDetails$Character {
  CopyWith$Query$getCharacterDetails$Character<
          Query$getCharacterDetails$Character>
      get copyWith => CopyWith$Query$getCharacterDetails$Character(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getCharacterDetails$Character<TRes> {
  factory CopyWith$Query$getCharacterDetails$Character(
    Query$getCharacterDetails$Character instance,
    TRes Function(Query$getCharacterDetails$Character) then,
  ) = _CopyWithImpl$Query$getCharacterDetails$Character;

  factory CopyWith$Query$getCharacterDetails$Character.stub(TRes res) =
      _CopyWithStubImpl$Query$getCharacterDetails$Character;

  TRes call({
    int? id,
    Query$getCharacterDetails$Character$name? name,
    Query$getCharacterDetails$Character$image? image,
    int? favourites,
    String? description,
    String? gender,
    String? age,
    String? bloodType,
    bool? isFavourite,
    String? siteUrl,
    bool? isFavouriteBlocked,
    Fragment$FuzzyDate? dateOfBirth,
    String? $__typename,
  });
  CopyWith$Query$getCharacterDetails$Character$name<TRes> get name;
  CopyWith$Query$getCharacterDetails$Character$image<TRes> get image;
  CopyWith$Fragment$FuzzyDate<TRes> get dateOfBirth;
}

class _CopyWithImpl$Query$getCharacterDetails$Character<TRes>
    implements CopyWith$Query$getCharacterDetails$Character<TRes> {
  _CopyWithImpl$Query$getCharacterDetails$Character(
    this._instance,
    this._then,
  );

  final Query$getCharacterDetails$Character _instance;

  final TRes Function(Query$getCharacterDetails$Character) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? image = _undefined,
    Object? favourites = _undefined,
    Object? description = _undefined,
    Object? gender = _undefined,
    Object? age = _undefined,
    Object? bloodType = _undefined,
    Object? isFavourite = _undefined,
    Object? siteUrl = _undefined,
    Object? isFavouriteBlocked = _undefined,
    Object? dateOfBirth = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getCharacterDetails$Character(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        name: name == _undefined
            ? _instance.name
            : (name as Query$getCharacterDetails$Character$name?),
        image: image == _undefined
            ? _instance.image
            : (image as Query$getCharacterDetails$Character$image?),
        favourites: favourites == _undefined
            ? _instance.favourites
            : (favourites as int?),
        description: description == _undefined
            ? _instance.description
            : (description as String?),
        gender: gender == _undefined ? _instance.gender : (gender as String?),
        age: age == _undefined ? _instance.age : (age as String?),
        bloodType: bloodType == _undefined
            ? _instance.bloodType
            : (bloodType as String?),
        isFavourite: isFavourite == _undefined || isFavourite == null
            ? _instance.isFavourite
            : (isFavourite as bool),
        siteUrl:
            siteUrl == _undefined ? _instance.siteUrl : (siteUrl as String?),
        isFavouriteBlocked:
            isFavouriteBlocked == _undefined || isFavouriteBlocked == null
                ? _instance.isFavouriteBlocked
                : (isFavouriteBlocked as bool),
        dateOfBirth: dateOfBirth == _undefined
            ? _instance.dateOfBirth
            : (dateOfBirth as Fragment$FuzzyDate?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$getCharacterDetails$Character$name<TRes> get name {
    final local$name = _instance.name;
    return local$name == null
        ? CopyWith$Query$getCharacterDetails$Character$name.stub(
            _then(_instance))
        : CopyWith$Query$getCharacterDetails$Character$name(
            local$name, (e) => call(name: e));
  }

  CopyWith$Query$getCharacterDetails$Character$image<TRes> get image {
    final local$image = _instance.image;
    return local$image == null
        ? CopyWith$Query$getCharacterDetails$Character$image.stub(
            _then(_instance))
        : CopyWith$Query$getCharacterDetails$Character$image(
            local$image, (e) => call(image: e));
  }

  CopyWith$Fragment$FuzzyDate<TRes> get dateOfBirth {
    final local$dateOfBirth = _instance.dateOfBirth;
    return local$dateOfBirth == null
        ? CopyWith$Fragment$FuzzyDate.stub(_then(_instance))
        : CopyWith$Fragment$FuzzyDate(
            local$dateOfBirth, (e) => call(dateOfBirth: e));
  }
}

class _CopyWithStubImpl$Query$getCharacterDetails$Character<TRes>
    implements CopyWith$Query$getCharacterDetails$Character<TRes> {
  _CopyWithStubImpl$Query$getCharacterDetails$Character(this._res);

  TRes _res;

  call({
    int? id,
    Query$getCharacterDetails$Character$name? name,
    Query$getCharacterDetails$Character$image? image,
    int? favourites,
    String? description,
    String? gender,
    String? age,
    String? bloodType,
    bool? isFavourite,
    String? siteUrl,
    bool? isFavouriteBlocked,
    Fragment$FuzzyDate? dateOfBirth,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$getCharacterDetails$Character$name<TRes> get name =>
      CopyWith$Query$getCharacterDetails$Character$name.stub(_res);

  CopyWith$Query$getCharacterDetails$Character$image<TRes> get image =>
      CopyWith$Query$getCharacterDetails$Character$image.stub(_res);

  CopyWith$Fragment$FuzzyDate<TRes> get dateOfBirth =>
      CopyWith$Fragment$FuzzyDate.stub(_res);
}

class Query$getCharacterDetails$Character$name {
  Query$getCharacterDetails$Character$name({
    this.userPreferred,
    this.alternative,
    this.alternativeSpoiler,
    this.full,
    this.native,
    this.$__typename = 'CharacterName',
  });

  factory Query$getCharacterDetails$Character$name.fromJson(
      Map<String, dynamic> json) {
    final l$userPreferred = json['userPreferred'];
    final l$alternative = json['alternative'];
    final l$alternativeSpoiler = json['alternativeSpoiler'];
    final l$full = json['full'];
    final l$native = json['native'];
    final l$$__typename = json['__typename'];
    return Query$getCharacterDetails$Character$name(
      userPreferred: (l$userPreferred as String?),
      alternative: (l$alternative as List<dynamic>?)
          ?.map((e) => (e as String?))
          .toList(),
      alternativeSpoiler: (l$alternativeSpoiler as List<dynamic>?)
          ?.map((e) => (e as String?))
          .toList(),
      full: (l$full as String?),
      native: (l$native as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? userPreferred;

  final List<String?>? alternative;

  final List<String?>? alternativeSpoiler;

  final String? full;

  final String? native;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$userPreferred = userPreferred;
    _resultData['userPreferred'] = l$userPreferred;
    final l$alternative = alternative;
    _resultData['alternative'] = l$alternative?.map((e) => e).toList();
    final l$alternativeSpoiler = alternativeSpoiler;
    _resultData['alternativeSpoiler'] =
        l$alternativeSpoiler?.map((e) => e).toList();
    final l$full = full;
    _resultData['full'] = l$full;
    final l$native = native;
    _resultData['native'] = l$native;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$userPreferred = userPreferred;
    final l$alternative = alternative;
    final l$alternativeSpoiler = alternativeSpoiler;
    final l$full = full;
    final l$native = native;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$userPreferred,
      l$alternative == null
          ? null
          : Object.hashAll(l$alternative.map((v) => v)),
      l$alternativeSpoiler == null
          ? null
          : Object.hashAll(l$alternativeSpoiler.map((v) => v)),
      l$full,
      l$native,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$getCharacterDetails$Character$name ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$userPreferred = userPreferred;
    final lOther$userPreferred = other.userPreferred;
    if (l$userPreferred != lOther$userPreferred) {
      return false;
    }
    final l$alternative = alternative;
    final lOther$alternative = other.alternative;
    if (l$alternative != null && lOther$alternative != null) {
      if (l$alternative.length != lOther$alternative.length) {
        return false;
      }
      for (int i = 0; i < l$alternative.length; i++) {
        final l$alternative$entry = l$alternative[i];
        final lOther$alternative$entry = lOther$alternative[i];
        if (l$alternative$entry != lOther$alternative$entry) {
          return false;
        }
      }
    } else if (l$alternative != lOther$alternative) {
      return false;
    }
    final l$alternativeSpoiler = alternativeSpoiler;
    final lOther$alternativeSpoiler = other.alternativeSpoiler;
    if (l$alternativeSpoiler != null && lOther$alternativeSpoiler != null) {
      if (l$alternativeSpoiler.length != lOther$alternativeSpoiler.length) {
        return false;
      }
      for (int i = 0; i < l$alternativeSpoiler.length; i++) {
        final l$alternativeSpoiler$entry = l$alternativeSpoiler[i];
        final lOther$alternativeSpoiler$entry = lOther$alternativeSpoiler[i];
        if (l$alternativeSpoiler$entry != lOther$alternativeSpoiler$entry) {
          return false;
        }
      }
    } else if (l$alternativeSpoiler != lOther$alternativeSpoiler) {
      return false;
    }
    final l$full = full;
    final lOther$full = other.full;
    if (l$full != lOther$full) {
      return false;
    }
    final l$native = native;
    final lOther$native = other.native;
    if (l$native != lOther$native) {
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

extension UtilityExtension$Query$getCharacterDetails$Character$name
    on Query$getCharacterDetails$Character$name {
  CopyWith$Query$getCharacterDetails$Character$name<
          Query$getCharacterDetails$Character$name>
      get copyWith => CopyWith$Query$getCharacterDetails$Character$name(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getCharacterDetails$Character$name<TRes> {
  factory CopyWith$Query$getCharacterDetails$Character$name(
    Query$getCharacterDetails$Character$name instance,
    TRes Function(Query$getCharacterDetails$Character$name) then,
  ) = _CopyWithImpl$Query$getCharacterDetails$Character$name;

  factory CopyWith$Query$getCharacterDetails$Character$name.stub(TRes res) =
      _CopyWithStubImpl$Query$getCharacterDetails$Character$name;

  TRes call({
    String? userPreferred,
    List<String?>? alternative,
    List<String?>? alternativeSpoiler,
    String? full,
    String? native,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$getCharacterDetails$Character$name<TRes>
    implements CopyWith$Query$getCharacterDetails$Character$name<TRes> {
  _CopyWithImpl$Query$getCharacterDetails$Character$name(
    this._instance,
    this._then,
  );

  final Query$getCharacterDetails$Character$name _instance;

  final TRes Function(Query$getCharacterDetails$Character$name) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userPreferred = _undefined,
    Object? alternative = _undefined,
    Object? alternativeSpoiler = _undefined,
    Object? full = _undefined,
    Object? native = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getCharacterDetails$Character$name(
        userPreferred: userPreferred == _undefined
            ? _instance.userPreferred
            : (userPreferred as String?),
        alternative: alternative == _undefined
            ? _instance.alternative
            : (alternative as List<String?>?),
        alternativeSpoiler: alternativeSpoiler == _undefined
            ? _instance.alternativeSpoiler
            : (alternativeSpoiler as List<String?>?),
        full: full == _undefined ? _instance.full : (full as String?),
        native: native == _undefined ? _instance.native : (native as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$getCharacterDetails$Character$name<TRes>
    implements CopyWith$Query$getCharacterDetails$Character$name<TRes> {
  _CopyWithStubImpl$Query$getCharacterDetails$Character$name(this._res);

  TRes _res;

  call({
    String? userPreferred,
    List<String?>? alternative,
    List<String?>? alternativeSpoiler,
    String? full,
    String? native,
    String? $__typename,
  }) =>
      _res;
}

class Query$getCharacterDetails$Character$image {
  Query$getCharacterDetails$Character$image({
    this.large,
    this.$__typename = 'CharacterImage',
  });

  factory Query$getCharacterDetails$Character$image.fromJson(
      Map<String, dynamic> json) {
    final l$large = json['large'];
    final l$$__typename = json['__typename'];
    return Query$getCharacterDetails$Character$image(
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
    if (other is! Query$getCharacterDetails$Character$image ||
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

extension UtilityExtension$Query$getCharacterDetails$Character$image
    on Query$getCharacterDetails$Character$image {
  CopyWith$Query$getCharacterDetails$Character$image<
          Query$getCharacterDetails$Character$image>
      get copyWith => CopyWith$Query$getCharacterDetails$Character$image(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getCharacterDetails$Character$image<TRes> {
  factory CopyWith$Query$getCharacterDetails$Character$image(
    Query$getCharacterDetails$Character$image instance,
    TRes Function(Query$getCharacterDetails$Character$image) then,
  ) = _CopyWithImpl$Query$getCharacterDetails$Character$image;

  factory CopyWith$Query$getCharacterDetails$Character$image.stub(TRes res) =
      _CopyWithStubImpl$Query$getCharacterDetails$Character$image;

  TRes call({
    String? large,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$getCharacterDetails$Character$image<TRes>
    implements CopyWith$Query$getCharacterDetails$Character$image<TRes> {
  _CopyWithImpl$Query$getCharacterDetails$Character$image(
    this._instance,
    this._then,
  );

  final Query$getCharacterDetails$Character$image _instance;

  final TRes Function(Query$getCharacterDetails$Character$image) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? large = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getCharacterDetails$Character$image(
        large: large == _undefined ? _instance.large : (large as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$getCharacterDetails$Character$image<TRes>
    implements CopyWith$Query$getCharacterDetails$Character$image<TRes> {
  _CopyWithStubImpl$Query$getCharacterDetails$Character$image(this._res);

  TRes _res;

  call({
    String? large,
    String? $__typename,
  }) =>
      _res;
}
