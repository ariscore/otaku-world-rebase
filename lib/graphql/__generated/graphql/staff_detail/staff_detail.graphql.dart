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
            name: NameNode(value: 'characterMedia'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'page'),
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
                    name: NameNode(value: 'characterRole'),
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
            name: NameNode(value: 'staffMedia'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'page'),
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
                    name: NameNode(value: 'id'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'node'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                        name: NameNode(value: 'type'),
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
  fragmentDefinitionPageInfo,
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
    this.characterMedia,
    this.staffMedia,
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
    final l$characterMedia = json['characterMedia'];
    final l$staffMedia = json['staffMedia'];
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
      characterMedia: l$characterMedia == null
          ? null
          : Query$getStaffDetail$Staff$characterMedia.fromJson(
              (l$characterMedia as Map<String, dynamic>)),
      staffMedia: l$staffMedia == null
          ? null
          : Query$getStaffDetail$Staff$staffMedia.fromJson(
              (l$staffMedia as Map<String, dynamic>)),
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

  final Query$getStaffDetail$Staff$characterMedia? characterMedia;

  final Query$getStaffDetail$Staff$staffMedia? staffMedia;

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
    final l$characterMedia = characterMedia;
    _resultData['characterMedia'] = l$characterMedia?.toJson();
    final l$staffMedia = staffMedia;
    _resultData['staffMedia'] = l$staffMedia?.toJson();
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
    final l$characterMedia = characterMedia;
    final l$staffMedia = staffMedia;
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
      l$characterMedia,
      l$staffMedia,
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
    final l$characterMedia = characterMedia;
    final lOther$characterMedia = other.characterMedia;
    if (l$characterMedia != lOther$characterMedia) {
      return false;
    }
    final l$staffMedia = staffMedia;
    final lOther$staffMedia = other.staffMedia;
    if (l$staffMedia != lOther$staffMedia) {
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
    Query$getStaffDetail$Staff$characterMedia? characterMedia,
    Query$getStaffDetail$Staff$staffMedia? staffMedia,
    String? $__typename,
  });
  CopyWith$Fragment$FuzzyDate<TRes> get dateOfBirth;
  CopyWith$Fragment$FuzzyDate<TRes> get dateOfDeath;
  CopyWith$Query$getStaffDetail$Staff$image<TRes> get image;
  CopyWith$Query$getStaffDetail$Staff$name<TRes> get name;
  CopyWith$Query$getStaffDetail$Staff$characterMedia<TRes> get characterMedia;
  CopyWith$Query$getStaffDetail$Staff$staffMedia<TRes> get staffMedia;
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
    Object? characterMedia = _undefined,
    Object? staffMedia = _undefined,
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
        characterMedia: characterMedia == _undefined
            ? _instance.characterMedia
            : (characterMedia as Query$getStaffDetail$Staff$characterMedia?),
        staffMedia: staffMedia == _undefined
            ? _instance.staffMedia
            : (staffMedia as Query$getStaffDetail$Staff$staffMedia?),
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

  CopyWith$Query$getStaffDetail$Staff$characterMedia<TRes> get characterMedia {
    final local$characterMedia = _instance.characterMedia;
    return local$characterMedia == null
        ? CopyWith$Query$getStaffDetail$Staff$characterMedia.stub(
            _then(_instance))
        : CopyWith$Query$getStaffDetail$Staff$characterMedia(
            local$characterMedia, (e) => call(characterMedia: e));
  }

  CopyWith$Query$getStaffDetail$Staff$staffMedia<TRes> get staffMedia {
    final local$staffMedia = _instance.staffMedia;
    return local$staffMedia == null
        ? CopyWith$Query$getStaffDetail$Staff$staffMedia.stub(_then(_instance))
        : CopyWith$Query$getStaffDetail$Staff$staffMedia(
            local$staffMedia, (e) => call(staffMedia: e));
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
    Query$getStaffDetail$Staff$characterMedia? characterMedia,
    Query$getStaffDetail$Staff$staffMedia? staffMedia,
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

  CopyWith$Query$getStaffDetail$Staff$characterMedia<TRes> get characterMedia =>
      CopyWith$Query$getStaffDetail$Staff$characterMedia.stub(_res);

  CopyWith$Query$getStaffDetail$Staff$staffMedia<TRes> get staffMedia =>
      CopyWith$Query$getStaffDetail$Staff$staffMedia.stub(_res);
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

class Query$getStaffDetail$Staff$characterMedia {
  Query$getStaffDetail$Staff$characterMedia({
    this.pageInfo,
    this.edges,
    this.$__typename = 'MediaConnection',
  });

  factory Query$getStaffDetail$Staff$characterMedia.fromJson(
      Map<String, dynamic> json) {
    final l$pageInfo = json['pageInfo'];
    final l$edges = json['edges'];
    final l$$__typename = json['__typename'];
    return Query$getStaffDetail$Staff$characterMedia(
      pageInfo: l$pageInfo == null
          ? null
          : Fragment$PageInfo.fromJson((l$pageInfo as Map<String, dynamic>)),
      edges: (l$edges as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$getStaffDetail$Staff$characterMedia$edges.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$PageInfo? pageInfo;

  final List<Query$getStaffDetail$Staff$characterMedia$edges?>? edges;

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
    if (other is! Query$getStaffDetail$Staff$characterMedia ||
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

extension UtilityExtension$Query$getStaffDetail$Staff$characterMedia
    on Query$getStaffDetail$Staff$characterMedia {
  CopyWith$Query$getStaffDetail$Staff$characterMedia<
          Query$getStaffDetail$Staff$characterMedia>
      get copyWith => CopyWith$Query$getStaffDetail$Staff$characterMedia(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getStaffDetail$Staff$characterMedia<TRes> {
  factory CopyWith$Query$getStaffDetail$Staff$characterMedia(
    Query$getStaffDetail$Staff$characterMedia instance,
    TRes Function(Query$getStaffDetail$Staff$characterMedia) then,
  ) = _CopyWithImpl$Query$getStaffDetail$Staff$characterMedia;

  factory CopyWith$Query$getStaffDetail$Staff$characterMedia.stub(TRes res) =
      _CopyWithStubImpl$Query$getStaffDetail$Staff$characterMedia;

  TRes call({
    Fragment$PageInfo? pageInfo,
    List<Query$getStaffDetail$Staff$characterMedia$edges?>? edges,
    String? $__typename,
  });
  CopyWith$Fragment$PageInfo<TRes> get pageInfo;
  TRes edges(
      Iterable<Query$getStaffDetail$Staff$characterMedia$edges?>? Function(
              Iterable<
                  CopyWith$Query$getStaffDetail$Staff$characterMedia$edges<
                      Query$getStaffDetail$Staff$characterMedia$edges>?>?)
          _fn);
}

class _CopyWithImpl$Query$getStaffDetail$Staff$characterMedia<TRes>
    implements CopyWith$Query$getStaffDetail$Staff$characterMedia<TRes> {
  _CopyWithImpl$Query$getStaffDetail$Staff$characterMedia(
    this._instance,
    this._then,
  );

  final Query$getStaffDetail$Staff$characterMedia _instance;

  final TRes Function(Query$getStaffDetail$Staff$characterMedia) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pageInfo = _undefined,
    Object? edges = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getStaffDetail$Staff$characterMedia(
        pageInfo: pageInfo == _undefined
            ? _instance.pageInfo
            : (pageInfo as Fragment$PageInfo?),
        edges: edges == _undefined
            ? _instance.edges
            : (edges
                as List<Query$getStaffDetail$Staff$characterMedia$edges?>?),
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
          Iterable<Query$getStaffDetail$Staff$characterMedia$edges?>? Function(
                  Iterable<
                      CopyWith$Query$getStaffDetail$Staff$characterMedia$edges<
                          Query$getStaffDetail$Staff$characterMedia$edges>?>?)
              _fn) =>
      call(
          edges: _fn(_instance.edges?.map((e) => e == null
              ? null
              : CopyWith$Query$getStaffDetail$Staff$characterMedia$edges(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$getStaffDetail$Staff$characterMedia<TRes>
    implements CopyWith$Query$getStaffDetail$Staff$characterMedia<TRes> {
  _CopyWithStubImpl$Query$getStaffDetail$Staff$characterMedia(this._res);

  TRes _res;

  call({
    Fragment$PageInfo? pageInfo,
    List<Query$getStaffDetail$Staff$characterMedia$edges?>? edges,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$PageInfo<TRes> get pageInfo =>
      CopyWith$Fragment$PageInfo.stub(_res);

  edges(_fn) => _res;
}

class Query$getStaffDetail$Staff$characterMedia$edges {
  Query$getStaffDetail$Staff$characterMedia$edges({
    this.characterRole,
    this.$__typename = 'MediaEdge',
  });

  factory Query$getStaffDetail$Staff$characterMedia$edges.fromJson(
      Map<String, dynamic> json) {
    final l$characterRole = json['characterRole'];
    final l$$__typename = json['__typename'];
    return Query$getStaffDetail$Staff$characterMedia$edges(
      characterRole: l$characterRole == null
          ? null
          : fromJson$Enum$CharacterRole((l$characterRole as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final Enum$CharacterRole? characterRole;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$characterRole = characterRole;
    _resultData['characterRole'] = l$characterRole == null
        ? null
        : toJson$Enum$CharacterRole(l$characterRole);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$characterRole = characterRole;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$characterRole,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$getStaffDetail$Staff$characterMedia$edges ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$characterRole = characterRole;
    final lOther$characterRole = other.characterRole;
    if (l$characterRole != lOther$characterRole) {
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

extension UtilityExtension$Query$getStaffDetail$Staff$characterMedia$edges
    on Query$getStaffDetail$Staff$characterMedia$edges {
  CopyWith$Query$getStaffDetail$Staff$characterMedia$edges<
          Query$getStaffDetail$Staff$characterMedia$edges>
      get copyWith => CopyWith$Query$getStaffDetail$Staff$characterMedia$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getStaffDetail$Staff$characterMedia$edges<TRes> {
  factory CopyWith$Query$getStaffDetail$Staff$characterMedia$edges(
    Query$getStaffDetail$Staff$characterMedia$edges instance,
    TRes Function(Query$getStaffDetail$Staff$characterMedia$edges) then,
  ) = _CopyWithImpl$Query$getStaffDetail$Staff$characterMedia$edges;

  factory CopyWith$Query$getStaffDetail$Staff$characterMedia$edges.stub(
          TRes res) =
      _CopyWithStubImpl$Query$getStaffDetail$Staff$characterMedia$edges;

  TRes call({
    Enum$CharacterRole? characterRole,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$getStaffDetail$Staff$characterMedia$edges<TRes>
    implements CopyWith$Query$getStaffDetail$Staff$characterMedia$edges<TRes> {
  _CopyWithImpl$Query$getStaffDetail$Staff$characterMedia$edges(
    this._instance,
    this._then,
  );

  final Query$getStaffDetail$Staff$characterMedia$edges _instance;

  final TRes Function(Query$getStaffDetail$Staff$characterMedia$edges) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? characterRole = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getStaffDetail$Staff$characterMedia$edges(
        characterRole: characterRole == _undefined
            ? _instance.characterRole
            : (characterRole as Enum$CharacterRole?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$getStaffDetail$Staff$characterMedia$edges<TRes>
    implements CopyWith$Query$getStaffDetail$Staff$characterMedia$edges<TRes> {
  _CopyWithStubImpl$Query$getStaffDetail$Staff$characterMedia$edges(this._res);

  TRes _res;

  call({
    Enum$CharacterRole? characterRole,
    String? $__typename,
  }) =>
      _res;
}

class Query$getStaffDetail$Staff$staffMedia {
  Query$getStaffDetail$Staff$staffMedia({
    this.pageInfo,
    this.edges,
    this.$__typename = 'MediaConnection',
  });

  factory Query$getStaffDetail$Staff$staffMedia.fromJson(
      Map<String, dynamic> json) {
    final l$pageInfo = json['pageInfo'];
    final l$edges = json['edges'];
    final l$$__typename = json['__typename'];
    return Query$getStaffDetail$Staff$staffMedia(
      pageInfo: l$pageInfo == null
          ? null
          : Fragment$PageInfo.fromJson((l$pageInfo as Map<String, dynamic>)),
      edges: (l$edges as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$getStaffDetail$Staff$staffMedia$edges.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$PageInfo? pageInfo;

  final List<Query$getStaffDetail$Staff$staffMedia$edges?>? edges;

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
    if (other is! Query$getStaffDetail$Staff$staffMedia ||
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

extension UtilityExtension$Query$getStaffDetail$Staff$staffMedia
    on Query$getStaffDetail$Staff$staffMedia {
  CopyWith$Query$getStaffDetail$Staff$staffMedia<
          Query$getStaffDetail$Staff$staffMedia>
      get copyWith => CopyWith$Query$getStaffDetail$Staff$staffMedia(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getStaffDetail$Staff$staffMedia<TRes> {
  factory CopyWith$Query$getStaffDetail$Staff$staffMedia(
    Query$getStaffDetail$Staff$staffMedia instance,
    TRes Function(Query$getStaffDetail$Staff$staffMedia) then,
  ) = _CopyWithImpl$Query$getStaffDetail$Staff$staffMedia;

  factory CopyWith$Query$getStaffDetail$Staff$staffMedia.stub(TRes res) =
      _CopyWithStubImpl$Query$getStaffDetail$Staff$staffMedia;

  TRes call({
    Fragment$PageInfo? pageInfo,
    List<Query$getStaffDetail$Staff$staffMedia$edges?>? edges,
    String? $__typename,
  });
  CopyWith$Fragment$PageInfo<TRes> get pageInfo;
  TRes edges(
      Iterable<Query$getStaffDetail$Staff$staffMedia$edges?>? Function(
              Iterable<
                  CopyWith$Query$getStaffDetail$Staff$staffMedia$edges<
                      Query$getStaffDetail$Staff$staffMedia$edges>?>?)
          _fn);
}

class _CopyWithImpl$Query$getStaffDetail$Staff$staffMedia<TRes>
    implements CopyWith$Query$getStaffDetail$Staff$staffMedia<TRes> {
  _CopyWithImpl$Query$getStaffDetail$Staff$staffMedia(
    this._instance,
    this._then,
  );

  final Query$getStaffDetail$Staff$staffMedia _instance;

  final TRes Function(Query$getStaffDetail$Staff$staffMedia) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pageInfo = _undefined,
    Object? edges = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getStaffDetail$Staff$staffMedia(
        pageInfo: pageInfo == _undefined
            ? _instance.pageInfo
            : (pageInfo as Fragment$PageInfo?),
        edges: edges == _undefined
            ? _instance.edges
            : (edges as List<Query$getStaffDetail$Staff$staffMedia$edges?>?),
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
          Iterable<Query$getStaffDetail$Staff$staffMedia$edges?>? Function(
                  Iterable<
                      CopyWith$Query$getStaffDetail$Staff$staffMedia$edges<
                          Query$getStaffDetail$Staff$staffMedia$edges>?>?)
              _fn) =>
      call(
          edges: _fn(_instance.edges?.map((e) => e == null
              ? null
              : CopyWith$Query$getStaffDetail$Staff$staffMedia$edges(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$getStaffDetail$Staff$staffMedia<TRes>
    implements CopyWith$Query$getStaffDetail$Staff$staffMedia<TRes> {
  _CopyWithStubImpl$Query$getStaffDetail$Staff$staffMedia(this._res);

  TRes _res;

  call({
    Fragment$PageInfo? pageInfo,
    List<Query$getStaffDetail$Staff$staffMedia$edges?>? edges,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$PageInfo<TRes> get pageInfo =>
      CopyWith$Fragment$PageInfo.stub(_res);

  edges(_fn) => _res;
}

class Query$getStaffDetail$Staff$staffMedia$edges {
  Query$getStaffDetail$Staff$staffMedia$edges({
    this.id,
    this.node,
    this.$__typename = 'MediaEdge',
  });

  factory Query$getStaffDetail$Staff$staffMedia$edges.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Query$getStaffDetail$Staff$staffMedia$edges(
      id: (l$id as int?),
      node: l$node == null
          ? null
          : Query$getStaffDetail$Staff$staffMedia$edges$node.fromJson(
              (l$node as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int? id;

  final Query$getStaffDetail$Staff$staffMedia$edges$node? node;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$node = node;
    _resultData['node'] = l$node?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$node = node;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$node,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$getStaffDetail$Staff$staffMedia$edges ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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

extension UtilityExtension$Query$getStaffDetail$Staff$staffMedia$edges
    on Query$getStaffDetail$Staff$staffMedia$edges {
  CopyWith$Query$getStaffDetail$Staff$staffMedia$edges<
          Query$getStaffDetail$Staff$staffMedia$edges>
      get copyWith => CopyWith$Query$getStaffDetail$Staff$staffMedia$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getStaffDetail$Staff$staffMedia$edges<TRes> {
  factory CopyWith$Query$getStaffDetail$Staff$staffMedia$edges(
    Query$getStaffDetail$Staff$staffMedia$edges instance,
    TRes Function(Query$getStaffDetail$Staff$staffMedia$edges) then,
  ) = _CopyWithImpl$Query$getStaffDetail$Staff$staffMedia$edges;

  factory CopyWith$Query$getStaffDetail$Staff$staffMedia$edges.stub(TRes res) =
      _CopyWithStubImpl$Query$getStaffDetail$Staff$staffMedia$edges;

  TRes call({
    int? id,
    Query$getStaffDetail$Staff$staffMedia$edges$node? node,
    String? $__typename,
  });
  CopyWith$Query$getStaffDetail$Staff$staffMedia$edges$node<TRes> get node;
}

class _CopyWithImpl$Query$getStaffDetail$Staff$staffMedia$edges<TRes>
    implements CopyWith$Query$getStaffDetail$Staff$staffMedia$edges<TRes> {
  _CopyWithImpl$Query$getStaffDetail$Staff$staffMedia$edges(
    this._instance,
    this._then,
  );

  final Query$getStaffDetail$Staff$staffMedia$edges _instance;

  final TRes Function(Query$getStaffDetail$Staff$staffMedia$edges) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getStaffDetail$Staff$staffMedia$edges(
        id: id == _undefined ? _instance.id : (id as int?),
        node: node == _undefined
            ? _instance.node
            : (node as Query$getStaffDetail$Staff$staffMedia$edges$node?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$getStaffDetail$Staff$staffMedia$edges$node<TRes> get node {
    final local$node = _instance.node;
    return local$node == null
        ? CopyWith$Query$getStaffDetail$Staff$staffMedia$edges$node.stub(
            _then(_instance))
        : CopyWith$Query$getStaffDetail$Staff$staffMedia$edges$node(
            local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Query$getStaffDetail$Staff$staffMedia$edges<TRes>
    implements CopyWith$Query$getStaffDetail$Staff$staffMedia$edges<TRes> {
  _CopyWithStubImpl$Query$getStaffDetail$Staff$staffMedia$edges(this._res);

  TRes _res;

  call({
    int? id,
    Query$getStaffDetail$Staff$staffMedia$edges$node? node,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$getStaffDetail$Staff$staffMedia$edges$node<TRes> get node =>
      CopyWith$Query$getStaffDetail$Staff$staffMedia$edges$node.stub(_res);
}

class Query$getStaffDetail$Staff$staffMedia$edges$node {
  Query$getStaffDetail$Staff$staffMedia$edges$node({
    this.type,
    this.$__typename = 'Media',
  });

  factory Query$getStaffDetail$Staff$staffMedia$edges$node.fromJson(
      Map<String, dynamic> json) {
    final l$type = json['type'];
    final l$$__typename = json['__typename'];
    return Query$getStaffDetail$Staff$staffMedia$edges$node(
      type: l$type == null ? null : fromJson$Enum$MediaType((l$type as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final Enum$MediaType? type;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$type = type;
    _resultData['type'] = l$type == null ? null : toJson$Enum$MediaType(l$type);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$type = type;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$type,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$getStaffDetail$Staff$staffMedia$edges$node ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
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

extension UtilityExtension$Query$getStaffDetail$Staff$staffMedia$edges$node
    on Query$getStaffDetail$Staff$staffMedia$edges$node {
  CopyWith$Query$getStaffDetail$Staff$staffMedia$edges$node<
          Query$getStaffDetail$Staff$staffMedia$edges$node>
      get copyWith => CopyWith$Query$getStaffDetail$Staff$staffMedia$edges$node(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getStaffDetail$Staff$staffMedia$edges$node<TRes> {
  factory CopyWith$Query$getStaffDetail$Staff$staffMedia$edges$node(
    Query$getStaffDetail$Staff$staffMedia$edges$node instance,
    TRes Function(Query$getStaffDetail$Staff$staffMedia$edges$node) then,
  ) = _CopyWithImpl$Query$getStaffDetail$Staff$staffMedia$edges$node;

  factory CopyWith$Query$getStaffDetail$Staff$staffMedia$edges$node.stub(
          TRes res) =
      _CopyWithStubImpl$Query$getStaffDetail$Staff$staffMedia$edges$node;

  TRes call({
    Enum$MediaType? type,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$getStaffDetail$Staff$staffMedia$edges$node<TRes>
    implements CopyWith$Query$getStaffDetail$Staff$staffMedia$edges$node<TRes> {
  _CopyWithImpl$Query$getStaffDetail$Staff$staffMedia$edges$node(
    this._instance,
    this._then,
  );

  final Query$getStaffDetail$Staff$staffMedia$edges$node _instance;

  final TRes Function(Query$getStaffDetail$Staff$staffMedia$edges$node) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? type = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getStaffDetail$Staff$staffMedia$edges$node(
        type: type == _undefined ? _instance.type : (type as Enum$MediaType?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$getStaffDetail$Staff$staffMedia$edges$node<TRes>
    implements CopyWith$Query$getStaffDetail$Staff$staffMedia$edges$node<TRes> {
  _CopyWithStubImpl$Query$getStaffDetail$Staff$staffMedia$edges$node(this._res);

  TRes _res;

  call({
    Enum$MediaType? type,
    String? $__typename,
  }) =>
      _res;
}
