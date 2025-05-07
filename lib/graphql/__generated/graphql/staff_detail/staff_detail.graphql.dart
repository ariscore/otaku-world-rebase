// GENERATED FILE
// DO NOT MODIFY
// ignore_for_file: type=lint
import '../fragments.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$getStaffDetail {
  factory Variables$Query$getStaffDetail({int? staffId}) =>
      Variables$Query$getStaffDetail._({
        if (staffId != null) r'staffId': staffId,
      });

  Variables$Query$getStaffDetail._(this._$data);

  factory Variables$Query$getStaffDetail.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('staffId')) {
      final l$staffId = data['staffId'];
      result$data['staffId'] = (l$staffId as int?);
    }
    return Variables$Query$getStaffDetail._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get staffId => (_$data['staffId'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('staffId')) {
      final l$staffId = staffId;
      result$data['staffId'] = l$staffId;
    }
    return result$data;
  }

  CopyWith$Variables$Query$getStaffDetail<Variables$Query$getStaffDetail>
      get copyWith => CopyWith$Variables$Query$getStaffDetail(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$getStaffDetail ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$staffId = staffId;
    final lOther$staffId = other.staffId;
    if (_$data.containsKey('staffId') != other._$data.containsKey('staffId')) {
      return false;
    }
    if (l$staffId != lOther$staffId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$staffId = staffId;
    return Object.hashAll(
        [_$data.containsKey('staffId') ? l$staffId : const {}]);
  }
}

abstract class CopyWith$Variables$Query$getStaffDetail<TRes> {
  factory CopyWith$Variables$Query$getStaffDetail(
    Variables$Query$getStaffDetail instance,
    TRes Function(Variables$Query$getStaffDetail) then,
  ) = _CopyWithImpl$Variables$Query$getStaffDetail;

  factory CopyWith$Variables$Query$getStaffDetail.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$getStaffDetail;

  TRes call({int? staffId});
}

class _CopyWithImpl$Variables$Query$getStaffDetail<TRes>
    implements CopyWith$Variables$Query$getStaffDetail<TRes> {
  _CopyWithImpl$Variables$Query$getStaffDetail(
    this._instance,
    this._then,
  );

  final Variables$Query$getStaffDetail _instance;

  final TRes Function(Variables$Query$getStaffDetail) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? staffId = _undefined}) =>
      _then(Variables$Query$getStaffDetail._({
        ..._instance._$data,
        if (staffId != _undefined) 'staffId': (staffId as int?),
      }));
}

class _CopyWithStubImpl$Variables$Query$getStaffDetail<TRes>
    implements CopyWith$Variables$Query$getStaffDetail<TRes> {
  _CopyWithStubImpl$Variables$Query$getStaffDetail(this._res);

  TRes _res;

  call({int? staffId}) => _res;
}

class Query$getStaffDetail {
  Query$getStaffDetail({
    this.Staff,
    this.$__typename = 'Query',
  });

  factory Query$getStaffDetail.fromJson(Map<String, dynamic> json) {
    final l$Staff = json['Staff'];
    final l$$__typename = json['__typename'];
    return Query$getStaffDetail(
      Staff: l$Staff == null
          ? null
          : Query$getStaffDetail$Staff.fromJson(
              (l$Staff as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$getStaffDetail$Staff? Staff;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$Staff = Staff;
    _resultData['Staff'] = l$Staff?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$Staff = Staff;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$Staff,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$getStaffDetail || runtimeType != other.runtimeType) {
      return false;
    }
    final l$Staff = Staff;
    final lOther$Staff = other.Staff;
    if (l$Staff != lOther$Staff) {
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

extension UtilityExtension$Query$getStaffDetail on Query$getStaffDetail {
  CopyWith$Query$getStaffDetail<Query$getStaffDetail> get copyWith =>
      CopyWith$Query$getStaffDetail(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$getStaffDetail<TRes> {
  factory CopyWith$Query$getStaffDetail(
    Query$getStaffDetail instance,
    TRes Function(Query$getStaffDetail) then,
  ) = _CopyWithImpl$Query$getStaffDetail;

  factory CopyWith$Query$getStaffDetail.stub(TRes res) =
      _CopyWithStubImpl$Query$getStaffDetail;

  TRes call({
    Query$getStaffDetail$Staff? Staff,
    String? $__typename,
  });
  CopyWith$Query$getStaffDetail$Staff<TRes> get Staff;
}

class _CopyWithImpl$Query$getStaffDetail<TRes>
    implements CopyWith$Query$getStaffDetail<TRes> {
  _CopyWithImpl$Query$getStaffDetail(
    this._instance,
    this._then,
  );

  final Query$getStaffDetail _instance;

  final TRes Function(Query$getStaffDetail) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? Staff = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getStaffDetail(
        Staff: Staff == _undefined
            ? _instance.Staff
            : (Staff as Query$getStaffDetail$Staff?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$getStaffDetail$Staff<TRes> get Staff {
    final local$Staff = _instance.Staff;
    return local$Staff == null
        ? CopyWith$Query$getStaffDetail$Staff.stub(_then(_instance))
        : CopyWith$Query$getStaffDetail$Staff(
            local$Staff, (e) => call(Staff: e));
  }
}

class _CopyWithStubImpl$Query$getStaffDetail<TRes>
    implements CopyWith$Query$getStaffDetail<TRes> {
  _CopyWithStubImpl$Query$getStaffDetail(this._res);

  TRes _res;

  call({
    Query$getStaffDetail$Staff? Staff,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$getStaffDetail$Staff<TRes> get Staff =>
      CopyWith$Query$getStaffDetail$Staff.stub(_res);
}

const documentNodeQuerygetStaffDetail = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'getStaffDetail'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'staffId')),
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
        name: NameNode(value: 'Staff'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'staffId')),
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
            name: NameNode(value: 'dateOfDeath'),
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
            name: NameNode(value: 'description'),
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
            name: NameNode(value: 'gender'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'homeTown'),
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
            name: NameNode(value: 'languageV2'),
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
            name: NameNode(value: 'isFavourite'),
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
                name: NameNode(value: 'native'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'userPreferred'),
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
            name: NameNode(value: 'primaryOccupations'),
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
Query$getStaffDetail _parserFn$Query$getStaffDetail(
        Map<String, dynamic> data) =>
    Query$getStaffDetail.fromJson(data);
typedef OnQueryComplete$Query$getStaffDetail = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$getStaffDetail?,
);

class Options$Query$getStaffDetail
    extends graphql.QueryOptions<Query$getStaffDetail> {
  Options$Query$getStaffDetail({
    String? operationName,
    Variables$Query$getStaffDetail? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$getStaffDetail? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$getStaffDetail? onComplete,
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
                    data == null ? null : _parserFn$Query$getStaffDetail(data),
                  ),
          onError: onError,
          document: documentNodeQuerygetStaffDetail,
          parserFn: _parserFn$Query$getStaffDetail,
        );

  final OnQueryComplete$Query$getStaffDetail? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$getStaffDetail
    extends graphql.WatchQueryOptions<Query$getStaffDetail> {
  WatchOptions$Query$getStaffDetail({
    String? operationName,
    Variables$Query$getStaffDetail? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$getStaffDetail? typedOptimisticResult,
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
          document: documentNodeQuerygetStaffDetail,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$getStaffDetail,
        );
}

class FetchMoreOptions$Query$getStaffDetail extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$getStaffDetail({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$getStaffDetail? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQuerygetStaffDetail,
        );
}

extension ClientExtension$Query$getStaffDetail on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$getStaffDetail>> query$getStaffDetail(
          [Options$Query$getStaffDetail? options]) async =>
      await this.query(options ?? Options$Query$getStaffDetail());
  graphql.ObservableQuery<Query$getStaffDetail> watchQuery$getStaffDetail(
          [WatchOptions$Query$getStaffDetail? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$getStaffDetail());
  void writeQuery$getStaffDetail({
    required Query$getStaffDetail data,
    Variables$Query$getStaffDetail? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQuerygetStaffDetail),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$getStaffDetail? readQuery$getStaffDetail({
    Variables$Query$getStaffDetail? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQuerygetStaffDetail),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$getStaffDetail.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$getStaffDetail> useQuery$getStaffDetail(
        [Options$Query$getStaffDetail? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$getStaffDetail());
graphql.ObservableQuery<Query$getStaffDetail> useWatchQuery$getStaffDetail(
        [WatchOptions$Query$getStaffDetail? options]) =>
    graphql_flutter
        .useWatchQuery(options ?? WatchOptions$Query$getStaffDetail());

class Query$getStaffDetail$Widget
    extends graphql_flutter.Query<Query$getStaffDetail> {
  Query$getStaffDetail$Widget({
    widgets.Key? key,
    Options$Query$getStaffDetail? options,
    required graphql_flutter.QueryBuilder<Query$getStaffDetail> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$getStaffDetail(),
          builder: builder,
        );
}

class Query$getStaffDetail$Staff {
  Query$getStaffDetail$Staff({
    required this.id,
    this.age,
    this.bloodType,
    this.dateOfBirth,
    this.dateOfDeath,
    this.description,
    this.favourites,
    this.gender,
    this.homeTown,
    this.image,
    this.languageV2,
    required this.isFavouriteBlocked,
    required this.isFavourite,
    this.name,
    this.primaryOccupations,
    this.siteUrl,
    this.$__typename = 'Staff',
  });

  factory Query$getStaffDetail$Staff.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$age = json['age'];
    final l$bloodType = json['bloodType'];
    final l$dateOfBirth = json['dateOfBirth'];
    final l$dateOfDeath = json['dateOfDeath'];
    final l$description = json['description'];
    final l$favourites = json['favourites'];
    final l$gender = json['gender'];
    final l$homeTown = json['homeTown'];
    final l$image = json['image'];
    final l$languageV2 = json['languageV2'];
    final l$isFavouriteBlocked = json['isFavouriteBlocked'];
    final l$isFavourite = json['isFavourite'];
    final l$name = json['name'];
    final l$primaryOccupations = json['primaryOccupations'];
    final l$siteUrl = json['siteUrl'];
    final l$$__typename = json['__typename'];
    return Query$getStaffDetail$Staff(
      id: (l$id as int),
      age: (l$age as int?),
      bloodType: (l$bloodType as String?),
      dateOfBirth: l$dateOfBirth == null
          ? null
          : Fragment$FuzzyDate.fromJson(
              (l$dateOfBirth as Map<String, dynamic>)),
      dateOfDeath: l$dateOfDeath == null
          ? null
          : Fragment$FuzzyDate.fromJson(
              (l$dateOfDeath as Map<String, dynamic>)),
      description: (l$description as String?),
      favourites: (l$favourites as int?),
      gender: (l$gender as String?),
      homeTown: (l$homeTown as String?),
      image: l$image == null
          ? null
          : Query$getStaffDetail$Staff$image.fromJson(
              (l$image as Map<String, dynamic>)),
      languageV2: (l$languageV2 as String?),
      isFavouriteBlocked: (l$isFavouriteBlocked as bool),
      isFavourite: (l$isFavourite as bool),
      name: l$name == null
          ? null
          : Query$getStaffDetail$Staff$name.fromJson(
              (l$name as Map<String, dynamic>)),
      primaryOccupations: (l$primaryOccupations as List<dynamic>?)
          ?.map((e) => (e as String?))
          .toList(),
      siteUrl: (l$siteUrl as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final int? age;

  final String? bloodType;

  final Fragment$FuzzyDate? dateOfBirth;

  final Fragment$FuzzyDate? dateOfDeath;

  final String? description;

  final int? favourites;

  final String? gender;

  final String? homeTown;

  final Query$getStaffDetail$Staff$image? image;

  final String? languageV2;

  final bool isFavouriteBlocked;

  final bool isFavourite;

  final Query$getStaffDetail$Staff$name? name;

  final List<String?>? primaryOccupations;

  final String? siteUrl;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$age = age;
    _resultData['age'] = l$age;
    final l$bloodType = bloodType;
    _resultData['bloodType'] = l$bloodType;
    final l$dateOfBirth = dateOfBirth;
    _resultData['dateOfBirth'] = l$dateOfBirth?.toJson();
    final l$dateOfDeath = dateOfDeath;
    _resultData['dateOfDeath'] = l$dateOfDeath?.toJson();
    final l$description = description;
    _resultData['description'] = l$description;
    final l$favourites = favourites;
    _resultData['favourites'] = l$favourites;
    final l$gender = gender;
    _resultData['gender'] = l$gender;
    final l$homeTown = homeTown;
    _resultData['homeTown'] = l$homeTown;
    final l$image = image;
    _resultData['image'] = l$image?.toJson();
    final l$languageV2 = languageV2;
    _resultData['languageV2'] = l$languageV2;
    final l$isFavouriteBlocked = isFavouriteBlocked;
    _resultData['isFavouriteBlocked'] = l$isFavouriteBlocked;
    final l$isFavourite = isFavourite;
    _resultData['isFavourite'] = l$isFavourite;
    final l$name = name;
    _resultData['name'] = l$name?.toJson();
    final l$primaryOccupations = primaryOccupations;
    _resultData['primaryOccupations'] =
        l$primaryOccupations?.map((e) => e).toList();
    final l$siteUrl = siteUrl;
    _resultData['siteUrl'] = l$siteUrl;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$age = age;
    final l$bloodType = bloodType;
    final l$dateOfBirth = dateOfBirth;
    final l$dateOfDeath = dateOfDeath;
    final l$description = description;
    final l$favourites = favourites;
    final l$gender = gender;
    final l$homeTown = homeTown;
    final l$image = image;
    final l$languageV2 = languageV2;
    final l$isFavouriteBlocked = isFavouriteBlocked;
    final l$isFavourite = isFavourite;
    final l$name = name;
    final l$primaryOccupations = primaryOccupations;
    final l$siteUrl = siteUrl;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$age,
      l$bloodType,
      l$dateOfBirth,
      l$dateOfDeath,
      l$description,
      l$favourites,
      l$gender,
      l$homeTown,
      l$image,
      l$languageV2,
      l$isFavouriteBlocked,
      l$isFavourite,
      l$name,
      l$primaryOccupations == null
          ? null
          : Object.hashAll(l$primaryOccupations.map((v) => v)),
      l$siteUrl,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$getStaffDetail$Staff ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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
    final l$dateOfBirth = dateOfBirth;
    final lOther$dateOfBirth = other.dateOfBirth;
    if (l$dateOfBirth != lOther$dateOfBirth) {
      return false;
    }
    final l$dateOfDeath = dateOfDeath;
    final lOther$dateOfDeath = other.dateOfDeath;
    if (l$dateOfDeath != lOther$dateOfDeath) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
      return false;
    }
    final l$favourites = favourites;
    final lOther$favourites = other.favourites;
    if (l$favourites != lOther$favourites) {
      return false;
    }
    final l$gender = gender;
    final lOther$gender = other.gender;
    if (l$gender != lOther$gender) {
      return false;
    }
    final l$homeTown = homeTown;
    final lOther$homeTown = other.homeTown;
    if (l$homeTown != lOther$homeTown) {
      return false;
    }
    final l$image = image;
    final lOther$image = other.image;
    if (l$image != lOther$image) {
      return false;
    }
    final l$languageV2 = languageV2;
    final lOther$languageV2 = other.languageV2;
    if (l$languageV2 != lOther$languageV2) {
      return false;
    }
    final l$isFavouriteBlocked = isFavouriteBlocked;
    final lOther$isFavouriteBlocked = other.isFavouriteBlocked;
    if (l$isFavouriteBlocked != lOther$isFavouriteBlocked) {
      return false;
    }
    final l$isFavourite = isFavourite;
    final lOther$isFavourite = other.isFavourite;
    if (l$isFavourite != lOther$isFavourite) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$primaryOccupations = primaryOccupations;
    final lOther$primaryOccupations = other.primaryOccupations;
    if (l$primaryOccupations != null && lOther$primaryOccupations != null) {
      if (l$primaryOccupations.length != lOther$primaryOccupations.length) {
        return false;
      }
      for (int i = 0; i < l$primaryOccupations.length; i++) {
        final l$primaryOccupations$entry = l$primaryOccupations[i];
        final lOther$primaryOccupations$entry = lOther$primaryOccupations[i];
        if (l$primaryOccupations$entry != lOther$primaryOccupations$entry) {
          return false;
        }
      }
    } else if (l$primaryOccupations != lOther$primaryOccupations) {
      return false;
    }
    final l$siteUrl = siteUrl;
    final lOther$siteUrl = other.siteUrl;
    if (l$siteUrl != lOther$siteUrl) {
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

extension UtilityExtension$Query$getStaffDetail$Staff
    on Query$getStaffDetail$Staff {
  CopyWith$Query$getStaffDetail$Staff<Query$getStaffDetail$Staff>
      get copyWith => CopyWith$Query$getStaffDetail$Staff(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getStaffDetail$Staff<TRes> {
  factory CopyWith$Query$getStaffDetail$Staff(
    Query$getStaffDetail$Staff instance,
    TRes Function(Query$getStaffDetail$Staff) then,
  ) = _CopyWithImpl$Query$getStaffDetail$Staff;

  factory CopyWith$Query$getStaffDetail$Staff.stub(TRes res) =
      _CopyWithStubImpl$Query$getStaffDetail$Staff;

  TRes call({
    int? id,
    int? age,
    String? bloodType,
    Fragment$FuzzyDate? dateOfBirth,
    Fragment$FuzzyDate? dateOfDeath,
    String? description,
    int? favourites,
    String? gender,
    String? homeTown,
    Query$getStaffDetail$Staff$image? image,
    String? languageV2,
    bool? isFavouriteBlocked,
    bool? isFavourite,
    Query$getStaffDetail$Staff$name? name,
    List<String?>? primaryOccupations,
    String? siteUrl,
    String? $__typename,
  });
  CopyWith$Fragment$FuzzyDate<TRes> get dateOfBirth;
  CopyWith$Fragment$FuzzyDate<TRes> get dateOfDeath;
  CopyWith$Query$getStaffDetail$Staff$image<TRes> get image;
  CopyWith$Query$getStaffDetail$Staff$name<TRes> get name;
}

class _CopyWithImpl$Query$getStaffDetail$Staff<TRes>
    implements CopyWith$Query$getStaffDetail$Staff<TRes> {
  _CopyWithImpl$Query$getStaffDetail$Staff(
    this._instance,
    this._then,
  );

  final Query$getStaffDetail$Staff _instance;

  final TRes Function(Query$getStaffDetail$Staff) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? age = _undefined,
    Object? bloodType = _undefined,
    Object? dateOfBirth = _undefined,
    Object? dateOfDeath = _undefined,
    Object? description = _undefined,
    Object? favourites = _undefined,
    Object? gender = _undefined,
    Object? homeTown = _undefined,
    Object? image = _undefined,
    Object? languageV2 = _undefined,
    Object? isFavouriteBlocked = _undefined,
    Object? isFavourite = _undefined,
    Object? name = _undefined,
    Object? primaryOccupations = _undefined,
    Object? siteUrl = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getStaffDetail$Staff(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        age: age == _undefined ? _instance.age : (age as int?),
        bloodType: bloodType == _undefined
            ? _instance.bloodType
            : (bloodType as String?),
        dateOfBirth: dateOfBirth == _undefined
            ? _instance.dateOfBirth
            : (dateOfBirth as Fragment$FuzzyDate?),
        dateOfDeath: dateOfDeath == _undefined
            ? _instance.dateOfDeath
            : (dateOfDeath as Fragment$FuzzyDate?),
        description: description == _undefined
            ? _instance.description
            : (description as String?),
        favourites: favourites == _undefined
            ? _instance.favourites
            : (favourites as int?),
        gender: gender == _undefined ? _instance.gender : (gender as String?),
        homeTown:
            homeTown == _undefined ? _instance.homeTown : (homeTown as String?),
        image: image == _undefined
            ? _instance.image
            : (image as Query$getStaffDetail$Staff$image?),
        languageV2: languageV2 == _undefined
            ? _instance.languageV2
            : (languageV2 as String?),
        isFavouriteBlocked:
            isFavouriteBlocked == _undefined || isFavouriteBlocked == null
                ? _instance.isFavouriteBlocked
                : (isFavouriteBlocked as bool),
        isFavourite: isFavourite == _undefined || isFavourite == null
            ? _instance.isFavourite
            : (isFavourite as bool),
        name: name == _undefined
            ? _instance.name
            : (name as Query$getStaffDetail$Staff$name?),
        primaryOccupations: primaryOccupations == _undefined
            ? _instance.primaryOccupations
            : (primaryOccupations as List<String?>?),
        siteUrl:
            siteUrl == _undefined ? _instance.siteUrl : (siteUrl as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$FuzzyDate<TRes> get dateOfBirth {
    final local$dateOfBirth = _instance.dateOfBirth;
    return local$dateOfBirth == null
        ? CopyWith$Fragment$FuzzyDate.stub(_then(_instance))
        : CopyWith$Fragment$FuzzyDate(
            local$dateOfBirth, (e) => call(dateOfBirth: e));
  }

  CopyWith$Fragment$FuzzyDate<TRes> get dateOfDeath {
    final local$dateOfDeath = _instance.dateOfDeath;
    return local$dateOfDeath == null
        ? CopyWith$Fragment$FuzzyDate.stub(_then(_instance))
        : CopyWith$Fragment$FuzzyDate(
            local$dateOfDeath, (e) => call(dateOfDeath: e));
  }

  CopyWith$Query$getStaffDetail$Staff$image<TRes> get image {
    final local$image = _instance.image;
    return local$image == null
        ? CopyWith$Query$getStaffDetail$Staff$image.stub(_then(_instance))
        : CopyWith$Query$getStaffDetail$Staff$image(
            local$image, (e) => call(image: e));
  }

  CopyWith$Query$getStaffDetail$Staff$name<TRes> get name {
    final local$name = _instance.name;
    return local$name == null
        ? CopyWith$Query$getStaffDetail$Staff$name.stub(_then(_instance))
        : CopyWith$Query$getStaffDetail$Staff$name(
            local$name, (e) => call(name: e));
  }
}

class _CopyWithStubImpl$Query$getStaffDetail$Staff<TRes>
    implements CopyWith$Query$getStaffDetail$Staff<TRes> {
  _CopyWithStubImpl$Query$getStaffDetail$Staff(this._res);

  TRes _res;

  call({
    int? id,
    int? age,
    String? bloodType,
    Fragment$FuzzyDate? dateOfBirth,
    Fragment$FuzzyDate? dateOfDeath,
    String? description,
    int? favourites,
    String? gender,
    String? homeTown,
    Query$getStaffDetail$Staff$image? image,
    String? languageV2,
    bool? isFavouriteBlocked,
    bool? isFavourite,
    Query$getStaffDetail$Staff$name? name,
    List<String?>? primaryOccupations,
    String? siteUrl,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$FuzzyDate<TRes> get dateOfBirth =>
      CopyWith$Fragment$FuzzyDate.stub(_res);

  CopyWith$Fragment$FuzzyDate<TRes> get dateOfDeath =>
      CopyWith$Fragment$FuzzyDate.stub(_res);

  CopyWith$Query$getStaffDetail$Staff$image<TRes> get image =>
      CopyWith$Query$getStaffDetail$Staff$image.stub(_res);

  CopyWith$Query$getStaffDetail$Staff$name<TRes> get name =>
      CopyWith$Query$getStaffDetail$Staff$name.stub(_res);
}

class Query$getStaffDetail$Staff$image {
  Query$getStaffDetail$Staff$image({
    this.large,
    this.$__typename = 'StaffImage',
  });

  factory Query$getStaffDetail$Staff$image.fromJson(Map<String, dynamic> json) {
    final l$large = json['large'];
    final l$$__typename = json['__typename'];
    return Query$getStaffDetail$Staff$image(
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
    if (other is! Query$getStaffDetail$Staff$image ||
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

extension UtilityExtension$Query$getStaffDetail$Staff$image
    on Query$getStaffDetail$Staff$image {
  CopyWith$Query$getStaffDetail$Staff$image<Query$getStaffDetail$Staff$image>
      get copyWith => CopyWith$Query$getStaffDetail$Staff$image(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getStaffDetail$Staff$image<TRes> {
  factory CopyWith$Query$getStaffDetail$Staff$image(
    Query$getStaffDetail$Staff$image instance,
    TRes Function(Query$getStaffDetail$Staff$image) then,
  ) = _CopyWithImpl$Query$getStaffDetail$Staff$image;

  factory CopyWith$Query$getStaffDetail$Staff$image.stub(TRes res) =
      _CopyWithStubImpl$Query$getStaffDetail$Staff$image;

  TRes call({
    String? large,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$getStaffDetail$Staff$image<TRes>
    implements CopyWith$Query$getStaffDetail$Staff$image<TRes> {
  _CopyWithImpl$Query$getStaffDetail$Staff$image(
    this._instance,
    this._then,
  );

  final Query$getStaffDetail$Staff$image _instance;

  final TRes Function(Query$getStaffDetail$Staff$image) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? large = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getStaffDetail$Staff$image(
        large: large == _undefined ? _instance.large : (large as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$getStaffDetail$Staff$image<TRes>
    implements CopyWith$Query$getStaffDetail$Staff$image<TRes> {
  _CopyWithStubImpl$Query$getStaffDetail$Staff$image(this._res);

  TRes _res;

  call({
    String? large,
    String? $__typename,
  }) =>
      _res;
}

class Query$getStaffDetail$Staff$name {
  Query$getStaffDetail$Staff$name({
    this.native,
    this.userPreferred,
    this.$__typename = 'StaffName',
  });

  factory Query$getStaffDetail$Staff$name.fromJson(Map<String, dynamic> json) {
    final l$native = json['native'];
    final l$userPreferred = json['userPreferred'];
    final l$$__typename = json['__typename'];
    return Query$getStaffDetail$Staff$name(
      native: (l$native as String?),
      userPreferred: (l$userPreferred as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? native;

  final String? userPreferred;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$native = native;
    _resultData['native'] = l$native;
    final l$userPreferred = userPreferred;
    _resultData['userPreferred'] = l$userPreferred;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$native = native;
    final l$userPreferred = userPreferred;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$native,
      l$userPreferred,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$getStaffDetail$Staff$name ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$native = native;
    final lOther$native = other.native;
    if (l$native != lOther$native) {
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

extension UtilityExtension$Query$getStaffDetail$Staff$name
    on Query$getStaffDetail$Staff$name {
  CopyWith$Query$getStaffDetail$Staff$name<Query$getStaffDetail$Staff$name>
      get copyWith => CopyWith$Query$getStaffDetail$Staff$name(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getStaffDetail$Staff$name<TRes> {
  factory CopyWith$Query$getStaffDetail$Staff$name(
    Query$getStaffDetail$Staff$name instance,
    TRes Function(Query$getStaffDetail$Staff$name) then,
  ) = _CopyWithImpl$Query$getStaffDetail$Staff$name;

  factory CopyWith$Query$getStaffDetail$Staff$name.stub(TRes res) =
      _CopyWithStubImpl$Query$getStaffDetail$Staff$name;

  TRes call({
    String? native,
    String? userPreferred,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$getStaffDetail$Staff$name<TRes>
    implements CopyWith$Query$getStaffDetail$Staff$name<TRes> {
  _CopyWithImpl$Query$getStaffDetail$Staff$name(
    this._instance,
    this._then,
  );

  final Query$getStaffDetail$Staff$name _instance;

  final TRes Function(Query$getStaffDetail$Staff$name) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? native = _undefined,
    Object? userPreferred = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getStaffDetail$Staff$name(
        native: native == _undefined ? _instance.native : (native as String?),
        userPreferred: userPreferred == _undefined
            ? _instance.userPreferred
            : (userPreferred as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$getStaffDetail$Staff$name<TRes>
    implements CopyWith$Query$getStaffDetail$Staff$name<TRes> {
  _CopyWithStubImpl$Query$getStaffDetail$Staff$name(this._res);

  TRes _res;

  call({
    String? native,
    String? userPreferred,
    String? $__typename,
  }) =>
      _res;
}
