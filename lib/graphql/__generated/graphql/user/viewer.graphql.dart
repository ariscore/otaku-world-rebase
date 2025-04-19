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

class Query$Viewer {
  Query$Viewer({
    this.Viewer,
    this.$__typename = 'Query',
  });

  factory Query$Viewer.fromJson(Map<String, dynamic> json) {
    final l$Viewer = json['Viewer'];
    final l$$__typename = json['__typename'];
    return Query$Viewer(
      Viewer: l$Viewer == null
          ? null
          : Query$Viewer$Viewer.fromJson((l$Viewer as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$Viewer$Viewer? Viewer;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$Viewer = Viewer;
    _resultData['Viewer'] = l$Viewer?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$Viewer = Viewer;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$Viewer,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Viewer || runtimeType != other.runtimeType) {
      return false;
    }
    final l$Viewer = Viewer;
    final lOther$Viewer = other.Viewer;
    if (l$Viewer != lOther$Viewer) {
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

extension UtilityExtension$Query$Viewer on Query$Viewer {
  CopyWith$Query$Viewer<Query$Viewer> get copyWith => CopyWith$Query$Viewer(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Viewer<TRes> {
  factory CopyWith$Query$Viewer(
    Query$Viewer instance,
    TRes Function(Query$Viewer) then,
  ) = _CopyWithImpl$Query$Viewer;

  factory CopyWith$Query$Viewer.stub(TRes res) = _CopyWithStubImpl$Query$Viewer;

  TRes call({
    Query$Viewer$Viewer? Viewer,
    String? $__typename,
  });
  CopyWith$Query$Viewer$Viewer<TRes> get Viewer;
}

class _CopyWithImpl$Query$Viewer<TRes> implements CopyWith$Query$Viewer<TRes> {
  _CopyWithImpl$Query$Viewer(
    this._instance,
    this._then,
  );

  final Query$Viewer _instance;

  final TRes Function(Query$Viewer) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? Viewer = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Viewer(
        Viewer: Viewer == _undefined
            ? _instance.Viewer
            : (Viewer as Query$Viewer$Viewer?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$Viewer$Viewer<TRes> get Viewer {
    final local$Viewer = _instance.Viewer;
    return local$Viewer == null
        ? CopyWith$Query$Viewer$Viewer.stub(_then(_instance))
        : CopyWith$Query$Viewer$Viewer(local$Viewer, (e) => call(Viewer: e));
  }
}

class _CopyWithStubImpl$Query$Viewer<TRes>
    implements CopyWith$Query$Viewer<TRes> {
  _CopyWithStubImpl$Query$Viewer(this._res);

  TRes _res;

  call({
    Query$Viewer$Viewer? Viewer,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$Viewer$Viewer<TRes> get Viewer =>
      CopyWith$Query$Viewer$Viewer.stub(_res);
}

const documentNodeQueryViewer = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Viewer'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'Viewer'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'User'),
            directives: [],
          ),
          FragmentSpreadNode(
            name: NameNode(value: 'Settings'),
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
  fragmentDefinitionUser,
  fragmentDefinitionSettings,
]);
Query$Viewer _parserFn$Query$Viewer(Map<String, dynamic> data) =>
    Query$Viewer.fromJson(data);
typedef OnQueryComplete$Query$Viewer = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$Viewer?,
);

class Options$Query$Viewer extends graphql.QueryOptions<Query$Viewer> {
  Options$Query$Viewer({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Viewer? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$Viewer? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
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
                    data == null ? null : _parserFn$Query$Viewer(data),
                  ),
          onError: onError,
          document: documentNodeQueryViewer,
          parserFn: _parserFn$Query$Viewer,
        );

  final OnQueryComplete$Query$Viewer? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$Viewer
    extends graphql.WatchQueryOptions<Query$Viewer> {
  WatchOptions$Query$Viewer({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Viewer? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeQueryViewer,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$Viewer,
        );
}

class FetchMoreOptions$Query$Viewer extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$Viewer({required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQueryViewer,
        );
}

extension ClientExtension$Query$Viewer on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$Viewer>> query$Viewer(
          [Options$Query$Viewer? options]) async =>
      await this.query(options ?? Options$Query$Viewer());
  graphql.ObservableQuery<Query$Viewer> watchQuery$Viewer(
          [WatchOptions$Query$Viewer? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$Viewer());
  void writeQuery$Viewer({
    required Query$Viewer data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation: graphql.Operation(document: documentNodeQueryViewer)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$Viewer? readQuery$Viewer({bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryViewer)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$Viewer.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$Viewer> useQuery$Viewer(
        [Options$Query$Viewer? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$Viewer());
graphql.ObservableQuery<Query$Viewer> useWatchQuery$Viewer(
        [WatchOptions$Query$Viewer? options]) =>
    graphql_flutter.useWatchQuery(options ?? WatchOptions$Query$Viewer());

class Query$Viewer$Widget extends graphql_flutter.Query<Query$Viewer> {
  Query$Viewer$Widget({
    widgets.Key? key,
    Options$Query$Viewer? options,
    required graphql_flutter.QueryBuilder<Query$Viewer> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$Viewer(),
          builder: builder,
        );
}

class Query$Viewer$Viewer implements Fragment$User, Fragment$Settings {
  Query$Viewer$Viewer({
    required this.id,
    required this.name,
    this.avatar,
    this.isFollower,
    this.isFollowing,
    this.$__typename = 'User',
    this.about,
    this.bannerImage,
    this.unreadNotificationCount,
    this.donatorTier,
    this.donatorBadge,
    this.moderatorRoles,
    this.options,
    this.mediaListOptions,
  });

  factory Query$Viewer$Viewer.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$avatar = json['avatar'];
    final l$isFollower = json['isFollower'];
    final l$isFollowing = json['isFollowing'];
    final l$$__typename = json['__typename'];
    final l$about = json['about'];
    final l$bannerImage = json['bannerImage'];
    final l$unreadNotificationCount = json['unreadNotificationCount'];
    final l$donatorTier = json['donatorTier'];
    final l$donatorBadge = json['donatorBadge'];
    final l$moderatorRoles = json['moderatorRoles'];
    final l$options = json['options'];
    final l$mediaListOptions = json['mediaListOptions'];
    return Query$Viewer$Viewer(
      id: (l$id as int),
      name: (l$name as String),
      avatar: l$avatar == null
          ? null
          : Query$Viewer$Viewer$avatar.fromJson(
              (l$avatar as Map<String, dynamic>)),
      isFollower: (l$isFollower as bool?),
      isFollowing: (l$isFollowing as bool?),
      $__typename: (l$$__typename as String),
      about: (l$about as String?),
      bannerImage: (l$bannerImage as String?),
      unreadNotificationCount: (l$unreadNotificationCount as int?),
      donatorTier: (l$donatorTier as int?),
      donatorBadge: (l$donatorBadge as String?),
      moderatorRoles: (l$moderatorRoles as List<dynamic>?)
          ?.map((e) => e == null ? null : fromJson$Enum$ModRole((e as String)))
          .toList(),
      options: l$options == null
          ? null
          : Query$Viewer$Viewer$options.fromJson(
              (l$options as Map<String, dynamic>)),
      mediaListOptions: l$mediaListOptions == null
          ? null
          : Query$Viewer$Viewer$mediaListOptions.fromJson(
              (l$mediaListOptions as Map<String, dynamic>)),
    );
  }

  final int id;

  final String name;

  final Query$Viewer$Viewer$avatar? avatar;

  final bool? isFollower;

  final bool? isFollowing;

  final String $__typename;

  final String? about;

  final String? bannerImage;

  final int? unreadNotificationCount;

  final int? donatorTier;

  final String? donatorBadge;

  final List<Enum$ModRole?>? moderatorRoles;

  final Query$Viewer$Viewer$options? options;

  final Query$Viewer$Viewer$mediaListOptions? mediaListOptions;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$avatar = avatar;
    _resultData['avatar'] = l$avatar?.toJson();
    final l$isFollower = isFollower;
    _resultData['isFollower'] = l$isFollower;
    final l$isFollowing = isFollowing;
    _resultData['isFollowing'] = l$isFollowing;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$about = about;
    _resultData['about'] = l$about;
    final l$bannerImage = bannerImage;
    _resultData['bannerImage'] = l$bannerImage;
    final l$unreadNotificationCount = unreadNotificationCount;
    _resultData['unreadNotificationCount'] = l$unreadNotificationCount;
    final l$donatorTier = donatorTier;
    _resultData['donatorTier'] = l$donatorTier;
    final l$donatorBadge = donatorBadge;
    _resultData['donatorBadge'] = l$donatorBadge;
    final l$moderatorRoles = moderatorRoles;
    _resultData['moderatorRoles'] = l$moderatorRoles
        ?.map((e) => e == null ? null : toJson$Enum$ModRole(e))
        .toList();
    final l$options = options;
    _resultData['options'] = l$options?.toJson();
    final l$mediaListOptions = mediaListOptions;
    _resultData['mediaListOptions'] = l$mediaListOptions?.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$avatar = avatar;
    final l$isFollower = isFollower;
    final l$isFollowing = isFollowing;
    final l$$__typename = $__typename;
    final l$about = about;
    final l$bannerImage = bannerImage;
    final l$unreadNotificationCount = unreadNotificationCount;
    final l$donatorTier = donatorTier;
    final l$donatorBadge = donatorBadge;
    final l$moderatorRoles = moderatorRoles;
    final l$options = options;
    final l$mediaListOptions = mediaListOptions;
    return Object.hashAll([
      l$id,
      l$name,
      l$avatar,
      l$isFollower,
      l$isFollowing,
      l$$__typename,
      l$about,
      l$bannerImage,
      l$unreadNotificationCount,
      l$donatorTier,
      l$donatorBadge,
      l$moderatorRoles == null
          ? null
          : Object.hashAll(l$moderatorRoles.map((v) => v)),
      l$options,
      l$mediaListOptions,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Viewer$Viewer || runtimeType != other.runtimeType) {
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
    final l$avatar = avatar;
    final lOther$avatar = other.avatar;
    if (l$avatar != lOther$avatar) {
      return false;
    }
    final l$isFollower = isFollower;
    final lOther$isFollower = other.isFollower;
    if (l$isFollower != lOther$isFollower) {
      return false;
    }
    final l$isFollowing = isFollowing;
    final lOther$isFollowing = other.isFollowing;
    if (l$isFollowing != lOther$isFollowing) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    final l$about = about;
    final lOther$about = other.about;
    if (l$about != lOther$about) {
      return false;
    }
    final l$bannerImage = bannerImage;
    final lOther$bannerImage = other.bannerImage;
    if (l$bannerImage != lOther$bannerImage) {
      return false;
    }
    final l$unreadNotificationCount = unreadNotificationCount;
    final lOther$unreadNotificationCount = other.unreadNotificationCount;
    if (l$unreadNotificationCount != lOther$unreadNotificationCount) {
      return false;
    }
    final l$donatorTier = donatorTier;
    final lOther$donatorTier = other.donatorTier;
    if (l$donatorTier != lOther$donatorTier) {
      return false;
    }
    final l$donatorBadge = donatorBadge;
    final lOther$donatorBadge = other.donatorBadge;
    if (l$donatorBadge != lOther$donatorBadge) {
      return false;
    }
    final l$moderatorRoles = moderatorRoles;
    final lOther$moderatorRoles = other.moderatorRoles;
    if (l$moderatorRoles != null && lOther$moderatorRoles != null) {
      if (l$moderatorRoles.length != lOther$moderatorRoles.length) {
        return false;
      }
      for (int i = 0; i < l$moderatorRoles.length; i++) {
        final l$moderatorRoles$entry = l$moderatorRoles[i];
        final lOther$moderatorRoles$entry = lOther$moderatorRoles[i];
        if (l$moderatorRoles$entry != lOther$moderatorRoles$entry) {
          return false;
        }
      }
    } else if (l$moderatorRoles != lOther$moderatorRoles) {
      return false;
    }
    final l$options = options;
    final lOther$options = other.options;
    if (l$options != lOther$options) {
      return false;
    }
    final l$mediaListOptions = mediaListOptions;
    final lOther$mediaListOptions = other.mediaListOptions;
    if (l$mediaListOptions != lOther$mediaListOptions) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$Viewer$Viewer on Query$Viewer$Viewer {
  CopyWith$Query$Viewer$Viewer<Query$Viewer$Viewer> get copyWith =>
      CopyWith$Query$Viewer$Viewer(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Viewer$Viewer<TRes> {
  factory CopyWith$Query$Viewer$Viewer(
    Query$Viewer$Viewer instance,
    TRes Function(Query$Viewer$Viewer) then,
  ) = _CopyWithImpl$Query$Viewer$Viewer;

  factory CopyWith$Query$Viewer$Viewer.stub(TRes res) =
      _CopyWithStubImpl$Query$Viewer$Viewer;

  TRes call({
    int? id,
    String? name,
    Query$Viewer$Viewer$avatar? avatar,
    bool? isFollower,
    bool? isFollowing,
    String? $__typename,
    String? about,
    String? bannerImage,
    int? unreadNotificationCount,
    int? donatorTier,
    String? donatorBadge,
    List<Enum$ModRole?>? moderatorRoles,
    Query$Viewer$Viewer$options? options,
    Query$Viewer$Viewer$mediaListOptions? mediaListOptions,
  });
  CopyWith$Query$Viewer$Viewer$avatar<TRes> get avatar;
  CopyWith$Query$Viewer$Viewer$options<TRes> get options;
  CopyWith$Query$Viewer$Viewer$mediaListOptions<TRes> get mediaListOptions;
}

class _CopyWithImpl$Query$Viewer$Viewer<TRes>
    implements CopyWith$Query$Viewer$Viewer<TRes> {
  _CopyWithImpl$Query$Viewer$Viewer(
    this._instance,
    this._then,
  );

  final Query$Viewer$Viewer _instance;

  final TRes Function(Query$Viewer$Viewer) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? avatar = _undefined,
    Object? isFollower = _undefined,
    Object? isFollowing = _undefined,
    Object? $__typename = _undefined,
    Object? about = _undefined,
    Object? bannerImage = _undefined,
    Object? unreadNotificationCount = _undefined,
    Object? donatorTier = _undefined,
    Object? donatorBadge = _undefined,
    Object? moderatorRoles = _undefined,
    Object? options = _undefined,
    Object? mediaListOptions = _undefined,
  }) =>
      _then(Query$Viewer$Viewer(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        avatar: avatar == _undefined
            ? _instance.avatar
            : (avatar as Query$Viewer$Viewer$avatar?),
        isFollower: isFollower == _undefined
            ? _instance.isFollower
            : (isFollower as bool?),
        isFollowing: isFollowing == _undefined
            ? _instance.isFollowing
            : (isFollowing as bool?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        about: about == _undefined ? _instance.about : (about as String?),
        bannerImage: bannerImage == _undefined
            ? _instance.bannerImage
            : (bannerImage as String?),
        unreadNotificationCount: unreadNotificationCount == _undefined
            ? _instance.unreadNotificationCount
            : (unreadNotificationCount as int?),
        donatorTier: donatorTier == _undefined
            ? _instance.donatorTier
            : (donatorTier as int?),
        donatorBadge: donatorBadge == _undefined
            ? _instance.donatorBadge
            : (donatorBadge as String?),
        moderatorRoles: moderatorRoles == _undefined
            ? _instance.moderatorRoles
            : (moderatorRoles as List<Enum$ModRole?>?),
        options: options == _undefined
            ? _instance.options
            : (options as Query$Viewer$Viewer$options?),
        mediaListOptions: mediaListOptions == _undefined
            ? _instance.mediaListOptions
            : (mediaListOptions as Query$Viewer$Viewer$mediaListOptions?),
      ));

  CopyWith$Query$Viewer$Viewer$avatar<TRes> get avatar {
    final local$avatar = _instance.avatar;
    return local$avatar == null
        ? CopyWith$Query$Viewer$Viewer$avatar.stub(_then(_instance))
        : CopyWith$Query$Viewer$Viewer$avatar(
            local$avatar, (e) => call(avatar: e));
  }

  CopyWith$Query$Viewer$Viewer$options<TRes> get options {
    final local$options = _instance.options;
    return local$options == null
        ? CopyWith$Query$Viewer$Viewer$options.stub(_then(_instance))
        : CopyWith$Query$Viewer$Viewer$options(
            local$options, (e) => call(options: e));
  }

  CopyWith$Query$Viewer$Viewer$mediaListOptions<TRes> get mediaListOptions {
    final local$mediaListOptions = _instance.mediaListOptions;
    return local$mediaListOptions == null
        ? CopyWith$Query$Viewer$Viewer$mediaListOptions.stub(_then(_instance))
        : CopyWith$Query$Viewer$Viewer$mediaListOptions(
            local$mediaListOptions, (e) => call(mediaListOptions: e));
  }
}

class _CopyWithStubImpl$Query$Viewer$Viewer<TRes>
    implements CopyWith$Query$Viewer$Viewer<TRes> {
  _CopyWithStubImpl$Query$Viewer$Viewer(this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    Query$Viewer$Viewer$avatar? avatar,
    bool? isFollower,
    bool? isFollowing,
    String? $__typename,
    String? about,
    String? bannerImage,
    int? unreadNotificationCount,
    int? donatorTier,
    String? donatorBadge,
    List<Enum$ModRole?>? moderatorRoles,
    Query$Viewer$Viewer$options? options,
    Query$Viewer$Viewer$mediaListOptions? mediaListOptions,
  }) =>
      _res;

  CopyWith$Query$Viewer$Viewer$avatar<TRes> get avatar =>
      CopyWith$Query$Viewer$Viewer$avatar.stub(_res);

  CopyWith$Query$Viewer$Viewer$options<TRes> get options =>
      CopyWith$Query$Viewer$Viewer$options.stub(_res);

  CopyWith$Query$Viewer$Viewer$mediaListOptions<TRes> get mediaListOptions =>
      CopyWith$Query$Viewer$Viewer$mediaListOptions.stub(_res);
}

class Query$Viewer$Viewer$avatar
    implements Fragment$User$avatar, Fragment$Settings$avatar {
  Query$Viewer$Viewer$avatar({
    this.medium,
    this.$__typename = 'UserAvatar',
    this.large,
  });

  factory Query$Viewer$Viewer$avatar.fromJson(Map<String, dynamic> json) {
    final l$medium = json['medium'];
    final l$$__typename = json['__typename'];
    final l$large = json['large'];
    return Query$Viewer$Viewer$avatar(
      medium: (l$medium as String?),
      $__typename: (l$$__typename as String),
      large: (l$large as String?),
    );
  }

  final String? medium;

  final String $__typename;

  final String? large;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$medium = medium;
    _resultData['medium'] = l$medium;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$large = large;
    _resultData['large'] = l$large;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$medium = medium;
    final l$$__typename = $__typename;
    final l$large = large;
    return Object.hashAll([
      l$medium,
      l$$__typename,
      l$large,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Viewer$Viewer$avatar ||
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
    final l$large = large;
    final lOther$large = other.large;
    if (l$large != lOther$large) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$Viewer$Viewer$avatar
    on Query$Viewer$Viewer$avatar {
  CopyWith$Query$Viewer$Viewer$avatar<Query$Viewer$Viewer$avatar>
      get copyWith => CopyWith$Query$Viewer$Viewer$avatar(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Viewer$Viewer$avatar<TRes> {
  factory CopyWith$Query$Viewer$Viewer$avatar(
    Query$Viewer$Viewer$avatar instance,
    TRes Function(Query$Viewer$Viewer$avatar) then,
  ) = _CopyWithImpl$Query$Viewer$Viewer$avatar;

  factory CopyWith$Query$Viewer$Viewer$avatar.stub(TRes res) =
      _CopyWithStubImpl$Query$Viewer$Viewer$avatar;

  TRes call({
    String? medium,
    String? $__typename,
    String? large,
  });
}

class _CopyWithImpl$Query$Viewer$Viewer$avatar<TRes>
    implements CopyWith$Query$Viewer$Viewer$avatar<TRes> {
  _CopyWithImpl$Query$Viewer$Viewer$avatar(
    this._instance,
    this._then,
  );

  final Query$Viewer$Viewer$avatar _instance;

  final TRes Function(Query$Viewer$Viewer$avatar) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? medium = _undefined,
    Object? $__typename = _undefined,
    Object? large = _undefined,
  }) =>
      _then(Query$Viewer$Viewer$avatar(
        medium: medium == _undefined ? _instance.medium : (medium as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        large: large == _undefined ? _instance.large : (large as String?),
      ));
}

class _CopyWithStubImpl$Query$Viewer$Viewer$avatar<TRes>
    implements CopyWith$Query$Viewer$Viewer$avatar<TRes> {
  _CopyWithStubImpl$Query$Viewer$Viewer$avatar(this._res);

  TRes _res;

  call({
    String? medium,
    String? $__typename,
    String? large,
  }) =>
      _res;
}

class Query$Viewer$Viewer$options implements Fragment$Settings$options {
  Query$Viewer$Viewer$options({
    this.titleLanguage,
    this.staffNameLanguage,
    this.restrictMessagesToFollowing,
    this.airingNotifications,
    this.displayAdultContent,
    this.profileColor,
    this.timezone,
    this.activityMergeTime,
    this.notificationOptions,
    this.disabledListActivity,
    this.$__typename = 'UserOptions',
  });

  factory Query$Viewer$Viewer$options.fromJson(Map<String, dynamic> json) {
    final l$titleLanguage = json['titleLanguage'];
    final l$staffNameLanguage = json['staffNameLanguage'];
    final l$restrictMessagesToFollowing = json['restrictMessagesToFollowing'];
    final l$airingNotifications = json['airingNotifications'];
    final l$displayAdultContent = json['displayAdultContent'];
    final l$profileColor = json['profileColor'];
    final l$timezone = json['timezone'];
    final l$activityMergeTime = json['activityMergeTime'];
    final l$notificationOptions = json['notificationOptions'];
    final l$disabledListActivity = json['disabledListActivity'];
    final l$$__typename = json['__typename'];
    return Query$Viewer$Viewer$options(
      titleLanguage: l$titleLanguage == null
          ? null
          : fromJson$Enum$UserTitleLanguage((l$titleLanguage as String)),
      staffNameLanguage: l$staffNameLanguage == null
          ? null
          : fromJson$Enum$UserStaffNameLanguage(
              (l$staffNameLanguage as String)),
      restrictMessagesToFollowing: (l$restrictMessagesToFollowing as bool?),
      airingNotifications: (l$airingNotifications as bool?),
      displayAdultContent: (l$displayAdultContent as bool?),
      profileColor: (l$profileColor as String?),
      timezone: (l$timezone as String?),
      activityMergeTime: (l$activityMergeTime as int?),
      notificationOptions: (l$notificationOptions as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$Viewer$Viewer$options$notificationOptions.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      disabledListActivity: (l$disabledListActivity as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$Viewer$Viewer$options$disabledListActivity.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Enum$UserTitleLanguage? titleLanguage;

  final Enum$UserStaffNameLanguage? staffNameLanguage;

  final bool? restrictMessagesToFollowing;

  final bool? airingNotifications;

  final bool? displayAdultContent;

  final String? profileColor;

  final String? timezone;

  final int? activityMergeTime;

  final List<Query$Viewer$Viewer$options$notificationOptions?>?
      notificationOptions;

  final List<Query$Viewer$Viewer$options$disabledListActivity?>?
      disabledListActivity;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$titleLanguage = titleLanguage;
    _resultData['titleLanguage'] = l$titleLanguage == null
        ? null
        : toJson$Enum$UserTitleLanguage(l$titleLanguage);
    final l$staffNameLanguage = staffNameLanguage;
    _resultData['staffNameLanguage'] = l$staffNameLanguage == null
        ? null
        : toJson$Enum$UserStaffNameLanguage(l$staffNameLanguage);
    final l$restrictMessagesToFollowing = restrictMessagesToFollowing;
    _resultData['restrictMessagesToFollowing'] = l$restrictMessagesToFollowing;
    final l$airingNotifications = airingNotifications;
    _resultData['airingNotifications'] = l$airingNotifications;
    final l$displayAdultContent = displayAdultContent;
    _resultData['displayAdultContent'] = l$displayAdultContent;
    final l$profileColor = profileColor;
    _resultData['profileColor'] = l$profileColor;
    final l$timezone = timezone;
    _resultData['timezone'] = l$timezone;
    final l$activityMergeTime = activityMergeTime;
    _resultData['activityMergeTime'] = l$activityMergeTime;
    final l$notificationOptions = notificationOptions;
    _resultData['notificationOptions'] =
        l$notificationOptions?.map((e) => e?.toJson()).toList();
    final l$disabledListActivity = disabledListActivity;
    _resultData['disabledListActivity'] =
        l$disabledListActivity?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$titleLanguage = titleLanguage;
    final l$staffNameLanguage = staffNameLanguage;
    final l$restrictMessagesToFollowing = restrictMessagesToFollowing;
    final l$airingNotifications = airingNotifications;
    final l$displayAdultContent = displayAdultContent;
    final l$profileColor = profileColor;
    final l$timezone = timezone;
    final l$activityMergeTime = activityMergeTime;
    final l$notificationOptions = notificationOptions;
    final l$disabledListActivity = disabledListActivity;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$titleLanguage,
      l$staffNameLanguage,
      l$restrictMessagesToFollowing,
      l$airingNotifications,
      l$displayAdultContent,
      l$profileColor,
      l$timezone,
      l$activityMergeTime,
      l$notificationOptions == null
          ? null
          : Object.hashAll(l$notificationOptions.map((v) => v)),
      l$disabledListActivity == null
          ? null
          : Object.hashAll(l$disabledListActivity.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Viewer$Viewer$options ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$titleLanguage = titleLanguage;
    final lOther$titleLanguage = other.titleLanguage;
    if (l$titleLanguage != lOther$titleLanguage) {
      return false;
    }
    final l$staffNameLanguage = staffNameLanguage;
    final lOther$staffNameLanguage = other.staffNameLanguage;
    if (l$staffNameLanguage != lOther$staffNameLanguage) {
      return false;
    }
    final l$restrictMessagesToFollowing = restrictMessagesToFollowing;
    final lOther$restrictMessagesToFollowing =
        other.restrictMessagesToFollowing;
    if (l$restrictMessagesToFollowing != lOther$restrictMessagesToFollowing) {
      return false;
    }
    final l$airingNotifications = airingNotifications;
    final lOther$airingNotifications = other.airingNotifications;
    if (l$airingNotifications != lOther$airingNotifications) {
      return false;
    }
    final l$displayAdultContent = displayAdultContent;
    final lOther$displayAdultContent = other.displayAdultContent;
    if (l$displayAdultContent != lOther$displayAdultContent) {
      return false;
    }
    final l$profileColor = profileColor;
    final lOther$profileColor = other.profileColor;
    if (l$profileColor != lOther$profileColor) {
      return false;
    }
    final l$timezone = timezone;
    final lOther$timezone = other.timezone;
    if (l$timezone != lOther$timezone) {
      return false;
    }
    final l$activityMergeTime = activityMergeTime;
    final lOther$activityMergeTime = other.activityMergeTime;
    if (l$activityMergeTime != lOther$activityMergeTime) {
      return false;
    }
    final l$notificationOptions = notificationOptions;
    final lOther$notificationOptions = other.notificationOptions;
    if (l$notificationOptions != null && lOther$notificationOptions != null) {
      if (l$notificationOptions.length != lOther$notificationOptions.length) {
        return false;
      }
      for (int i = 0; i < l$notificationOptions.length; i++) {
        final l$notificationOptions$entry = l$notificationOptions[i];
        final lOther$notificationOptions$entry = lOther$notificationOptions[i];
        if (l$notificationOptions$entry != lOther$notificationOptions$entry) {
          return false;
        }
      }
    } else if (l$notificationOptions != lOther$notificationOptions) {
      return false;
    }
    final l$disabledListActivity = disabledListActivity;
    final lOther$disabledListActivity = other.disabledListActivity;
    if (l$disabledListActivity != null && lOther$disabledListActivity != null) {
      if (l$disabledListActivity.length != lOther$disabledListActivity.length) {
        return false;
      }
      for (int i = 0; i < l$disabledListActivity.length; i++) {
        final l$disabledListActivity$entry = l$disabledListActivity[i];
        final lOther$disabledListActivity$entry =
            lOther$disabledListActivity[i];
        if (l$disabledListActivity$entry != lOther$disabledListActivity$entry) {
          return false;
        }
      }
    } else if (l$disabledListActivity != lOther$disabledListActivity) {
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

extension UtilityExtension$Query$Viewer$Viewer$options
    on Query$Viewer$Viewer$options {
  CopyWith$Query$Viewer$Viewer$options<Query$Viewer$Viewer$options>
      get copyWith => CopyWith$Query$Viewer$Viewer$options(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Viewer$Viewer$options<TRes> {
  factory CopyWith$Query$Viewer$Viewer$options(
    Query$Viewer$Viewer$options instance,
    TRes Function(Query$Viewer$Viewer$options) then,
  ) = _CopyWithImpl$Query$Viewer$Viewer$options;

  factory CopyWith$Query$Viewer$Viewer$options.stub(TRes res) =
      _CopyWithStubImpl$Query$Viewer$Viewer$options;

  TRes call({
    Enum$UserTitleLanguage? titleLanguage,
    Enum$UserStaffNameLanguage? staffNameLanguage,
    bool? restrictMessagesToFollowing,
    bool? airingNotifications,
    bool? displayAdultContent,
    String? profileColor,
    String? timezone,
    int? activityMergeTime,
    List<Query$Viewer$Viewer$options$notificationOptions?>? notificationOptions,
    List<Query$Viewer$Viewer$options$disabledListActivity?>?
        disabledListActivity,
    String? $__typename,
  });
  TRes notificationOptions(
      Iterable<Query$Viewer$Viewer$options$notificationOptions?>? Function(
              Iterable<
                  CopyWith$Query$Viewer$Viewer$options$notificationOptions<
                      Query$Viewer$Viewer$options$notificationOptions>?>?)
          _fn);
  TRes disabledListActivity(
      Iterable<Query$Viewer$Viewer$options$disabledListActivity?>? Function(
              Iterable<
                  CopyWith$Query$Viewer$Viewer$options$disabledListActivity<
                      Query$Viewer$Viewer$options$disabledListActivity>?>?)
          _fn);
}

class _CopyWithImpl$Query$Viewer$Viewer$options<TRes>
    implements CopyWith$Query$Viewer$Viewer$options<TRes> {
  _CopyWithImpl$Query$Viewer$Viewer$options(
    this._instance,
    this._then,
  );

  final Query$Viewer$Viewer$options _instance;

  final TRes Function(Query$Viewer$Viewer$options) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? titleLanguage = _undefined,
    Object? staffNameLanguage = _undefined,
    Object? restrictMessagesToFollowing = _undefined,
    Object? airingNotifications = _undefined,
    Object? displayAdultContent = _undefined,
    Object? profileColor = _undefined,
    Object? timezone = _undefined,
    Object? activityMergeTime = _undefined,
    Object? notificationOptions = _undefined,
    Object? disabledListActivity = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Viewer$Viewer$options(
        titleLanguage: titleLanguage == _undefined
            ? _instance.titleLanguage
            : (titleLanguage as Enum$UserTitleLanguage?),
        staffNameLanguage: staffNameLanguage == _undefined
            ? _instance.staffNameLanguage
            : (staffNameLanguage as Enum$UserStaffNameLanguage?),
        restrictMessagesToFollowing: restrictMessagesToFollowing == _undefined
            ? _instance.restrictMessagesToFollowing
            : (restrictMessagesToFollowing as bool?),
        airingNotifications: airingNotifications == _undefined
            ? _instance.airingNotifications
            : (airingNotifications as bool?),
        displayAdultContent: displayAdultContent == _undefined
            ? _instance.displayAdultContent
            : (displayAdultContent as bool?),
        profileColor: profileColor == _undefined
            ? _instance.profileColor
            : (profileColor as String?),
        timezone:
            timezone == _undefined ? _instance.timezone : (timezone as String?),
        activityMergeTime: activityMergeTime == _undefined
            ? _instance.activityMergeTime
            : (activityMergeTime as int?),
        notificationOptions: notificationOptions == _undefined
            ? _instance.notificationOptions
            : (notificationOptions
                as List<Query$Viewer$Viewer$options$notificationOptions?>?),
        disabledListActivity: disabledListActivity == _undefined
            ? _instance.disabledListActivity
            : (disabledListActivity
                as List<Query$Viewer$Viewer$options$disabledListActivity?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes notificationOptions(
          Iterable<Query$Viewer$Viewer$options$notificationOptions?>? Function(
                  Iterable<
                      CopyWith$Query$Viewer$Viewer$options$notificationOptions<
                          Query$Viewer$Viewer$options$notificationOptions>?>?)
              _fn) =>
      call(
          notificationOptions:
              _fn(_instance.notificationOptions?.map((e) => e == null
                  ? null
                  : CopyWith$Query$Viewer$Viewer$options$notificationOptions(
                      e,
                      (i) => i,
                    )))?.toList());

  TRes disabledListActivity(
          Iterable<Query$Viewer$Viewer$options$disabledListActivity?>? Function(
                  Iterable<
                      CopyWith$Query$Viewer$Viewer$options$disabledListActivity<
                          Query$Viewer$Viewer$options$disabledListActivity>?>?)
              _fn) =>
      call(
          disabledListActivity:
              _fn(_instance.disabledListActivity?.map((e) => e == null
                  ? null
                  : CopyWith$Query$Viewer$Viewer$options$disabledListActivity(
                      e,
                      (i) => i,
                    )))?.toList());
}

class _CopyWithStubImpl$Query$Viewer$Viewer$options<TRes>
    implements CopyWith$Query$Viewer$Viewer$options<TRes> {
  _CopyWithStubImpl$Query$Viewer$Viewer$options(this._res);

  TRes _res;

  call({
    Enum$UserTitleLanguage? titleLanguage,
    Enum$UserStaffNameLanguage? staffNameLanguage,
    bool? restrictMessagesToFollowing,
    bool? airingNotifications,
    bool? displayAdultContent,
    String? profileColor,
    String? timezone,
    int? activityMergeTime,
    List<Query$Viewer$Viewer$options$notificationOptions?>? notificationOptions,
    List<Query$Viewer$Viewer$options$disabledListActivity?>?
        disabledListActivity,
    String? $__typename,
  }) =>
      _res;

  notificationOptions(_fn) => _res;

  disabledListActivity(_fn) => _res;
}

class Query$Viewer$Viewer$options$notificationOptions
    implements Fragment$Settings$options$notificationOptions {
  Query$Viewer$Viewer$options$notificationOptions({
    this.type,
    this.enabled,
    this.$__typename = 'NotificationOption',
  });

  factory Query$Viewer$Viewer$options$notificationOptions.fromJson(
      Map<String, dynamic> json) {
    final l$type = json['type'];
    final l$enabled = json['enabled'];
    final l$$__typename = json['__typename'];
    return Query$Viewer$Viewer$options$notificationOptions(
      type: l$type == null
          ? null
          : fromJson$Enum$NotificationType((l$type as String)),
      enabled: (l$enabled as bool?),
      $__typename: (l$$__typename as String),
    );
  }

  final Enum$NotificationType? type;

  final bool? enabled;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$type = type;
    _resultData['type'] =
        l$type == null ? null : toJson$Enum$NotificationType(l$type);
    final l$enabled = enabled;
    _resultData['enabled'] = l$enabled;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$type = type;
    final l$enabled = enabled;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$type,
      l$enabled,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Viewer$Viewer$options$notificationOptions ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$enabled = enabled;
    final lOther$enabled = other.enabled;
    if (l$enabled != lOther$enabled) {
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

extension UtilityExtension$Query$Viewer$Viewer$options$notificationOptions
    on Query$Viewer$Viewer$options$notificationOptions {
  CopyWith$Query$Viewer$Viewer$options$notificationOptions<
          Query$Viewer$Viewer$options$notificationOptions>
      get copyWith => CopyWith$Query$Viewer$Viewer$options$notificationOptions(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Viewer$Viewer$options$notificationOptions<TRes> {
  factory CopyWith$Query$Viewer$Viewer$options$notificationOptions(
    Query$Viewer$Viewer$options$notificationOptions instance,
    TRes Function(Query$Viewer$Viewer$options$notificationOptions) then,
  ) = _CopyWithImpl$Query$Viewer$Viewer$options$notificationOptions;

  factory CopyWith$Query$Viewer$Viewer$options$notificationOptions.stub(
          TRes res) =
      _CopyWithStubImpl$Query$Viewer$Viewer$options$notificationOptions;

  TRes call({
    Enum$NotificationType? type,
    bool? enabled,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Viewer$Viewer$options$notificationOptions<TRes>
    implements CopyWith$Query$Viewer$Viewer$options$notificationOptions<TRes> {
  _CopyWithImpl$Query$Viewer$Viewer$options$notificationOptions(
    this._instance,
    this._then,
  );

  final Query$Viewer$Viewer$options$notificationOptions _instance;

  final TRes Function(Query$Viewer$Viewer$options$notificationOptions) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? type = _undefined,
    Object? enabled = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Viewer$Viewer$options$notificationOptions(
        type: type == _undefined
            ? _instance.type
            : (type as Enum$NotificationType?),
        enabled: enabled == _undefined ? _instance.enabled : (enabled as bool?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Viewer$Viewer$options$notificationOptions<TRes>
    implements CopyWith$Query$Viewer$Viewer$options$notificationOptions<TRes> {
  _CopyWithStubImpl$Query$Viewer$Viewer$options$notificationOptions(this._res);

  TRes _res;

  call({
    Enum$NotificationType? type,
    bool? enabled,
    String? $__typename,
  }) =>
      _res;
}

class Query$Viewer$Viewer$options$disabledListActivity
    implements Fragment$Settings$options$disabledListActivity {
  Query$Viewer$Viewer$options$disabledListActivity({
    this.type,
    this.disabled,
    this.$__typename = 'ListActivityOption',
  });

  factory Query$Viewer$Viewer$options$disabledListActivity.fromJson(
      Map<String, dynamic> json) {
    final l$type = json['type'];
    final l$disabled = json['disabled'];
    final l$$__typename = json['__typename'];
    return Query$Viewer$Viewer$options$disabledListActivity(
      type: l$type == null
          ? null
          : fromJson$Enum$MediaListStatus((l$type as String)),
      disabled: (l$disabled as bool?),
      $__typename: (l$$__typename as String),
    );
  }

  final Enum$MediaListStatus? type;

  final bool? disabled;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$type = type;
    _resultData['type'] =
        l$type == null ? null : toJson$Enum$MediaListStatus(l$type);
    final l$disabled = disabled;
    _resultData['disabled'] = l$disabled;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$type = type;
    final l$disabled = disabled;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$type,
      l$disabled,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Viewer$Viewer$options$disabledListActivity ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$disabled = disabled;
    final lOther$disabled = other.disabled;
    if (l$disabled != lOther$disabled) {
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

extension UtilityExtension$Query$Viewer$Viewer$options$disabledListActivity
    on Query$Viewer$Viewer$options$disabledListActivity {
  CopyWith$Query$Viewer$Viewer$options$disabledListActivity<
          Query$Viewer$Viewer$options$disabledListActivity>
      get copyWith => CopyWith$Query$Viewer$Viewer$options$disabledListActivity(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Viewer$Viewer$options$disabledListActivity<TRes> {
  factory CopyWith$Query$Viewer$Viewer$options$disabledListActivity(
    Query$Viewer$Viewer$options$disabledListActivity instance,
    TRes Function(Query$Viewer$Viewer$options$disabledListActivity) then,
  ) = _CopyWithImpl$Query$Viewer$Viewer$options$disabledListActivity;

  factory CopyWith$Query$Viewer$Viewer$options$disabledListActivity.stub(
          TRes res) =
      _CopyWithStubImpl$Query$Viewer$Viewer$options$disabledListActivity;

  TRes call({
    Enum$MediaListStatus? type,
    bool? disabled,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Viewer$Viewer$options$disabledListActivity<TRes>
    implements CopyWith$Query$Viewer$Viewer$options$disabledListActivity<TRes> {
  _CopyWithImpl$Query$Viewer$Viewer$options$disabledListActivity(
    this._instance,
    this._then,
  );

  final Query$Viewer$Viewer$options$disabledListActivity _instance;

  final TRes Function(Query$Viewer$Viewer$options$disabledListActivity) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? type = _undefined,
    Object? disabled = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Viewer$Viewer$options$disabledListActivity(
        type: type == _undefined
            ? _instance.type
            : (type as Enum$MediaListStatus?),
        disabled:
            disabled == _undefined ? _instance.disabled : (disabled as bool?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Viewer$Viewer$options$disabledListActivity<TRes>
    implements CopyWith$Query$Viewer$Viewer$options$disabledListActivity<TRes> {
  _CopyWithStubImpl$Query$Viewer$Viewer$options$disabledListActivity(this._res);

  TRes _res;

  call({
    Enum$MediaListStatus? type,
    bool? disabled,
    String? $__typename,
  }) =>
      _res;
}

class Query$Viewer$Viewer$mediaListOptions
    implements Fragment$Settings$mediaListOptions {
  Query$Viewer$Viewer$mediaListOptions({
    this.scoreFormat,
    this.rowOrder,
    this.animeList,
    this.mangaList,
    this.$__typename = 'MediaListOptions',
  });

  factory Query$Viewer$Viewer$mediaListOptions.fromJson(
      Map<String, dynamic> json) {
    final l$scoreFormat = json['scoreFormat'];
    final l$rowOrder = json['rowOrder'];
    final l$animeList = json['animeList'];
    final l$mangaList = json['mangaList'];
    final l$$__typename = json['__typename'];
    return Query$Viewer$Viewer$mediaListOptions(
      scoreFormat: l$scoreFormat == null
          ? null
          : fromJson$Enum$ScoreFormat((l$scoreFormat as String)),
      rowOrder: (l$rowOrder as String?),
      animeList: l$animeList == null
          ? null
          : Query$Viewer$Viewer$mediaListOptions$animeList.fromJson(
              (l$animeList as Map<String, dynamic>)),
      mangaList: l$mangaList == null
          ? null
          : Query$Viewer$Viewer$mediaListOptions$mangaList.fromJson(
              (l$mangaList as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Enum$ScoreFormat? scoreFormat;

  final String? rowOrder;

  final Query$Viewer$Viewer$mediaListOptions$animeList? animeList;

  final Query$Viewer$Viewer$mediaListOptions$mangaList? mangaList;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$scoreFormat = scoreFormat;
    _resultData['scoreFormat'] =
        l$scoreFormat == null ? null : toJson$Enum$ScoreFormat(l$scoreFormat);
    final l$rowOrder = rowOrder;
    _resultData['rowOrder'] = l$rowOrder;
    final l$animeList = animeList;
    _resultData['animeList'] = l$animeList?.toJson();
    final l$mangaList = mangaList;
    _resultData['mangaList'] = l$mangaList?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$scoreFormat = scoreFormat;
    final l$rowOrder = rowOrder;
    final l$animeList = animeList;
    final l$mangaList = mangaList;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$scoreFormat,
      l$rowOrder,
      l$animeList,
      l$mangaList,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Viewer$Viewer$mediaListOptions ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$scoreFormat = scoreFormat;
    final lOther$scoreFormat = other.scoreFormat;
    if (l$scoreFormat != lOther$scoreFormat) {
      return false;
    }
    final l$rowOrder = rowOrder;
    final lOther$rowOrder = other.rowOrder;
    if (l$rowOrder != lOther$rowOrder) {
      return false;
    }
    final l$animeList = animeList;
    final lOther$animeList = other.animeList;
    if (l$animeList != lOther$animeList) {
      return false;
    }
    final l$mangaList = mangaList;
    final lOther$mangaList = other.mangaList;
    if (l$mangaList != lOther$mangaList) {
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

extension UtilityExtension$Query$Viewer$Viewer$mediaListOptions
    on Query$Viewer$Viewer$mediaListOptions {
  CopyWith$Query$Viewer$Viewer$mediaListOptions<
          Query$Viewer$Viewer$mediaListOptions>
      get copyWith => CopyWith$Query$Viewer$Viewer$mediaListOptions(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Viewer$Viewer$mediaListOptions<TRes> {
  factory CopyWith$Query$Viewer$Viewer$mediaListOptions(
    Query$Viewer$Viewer$mediaListOptions instance,
    TRes Function(Query$Viewer$Viewer$mediaListOptions) then,
  ) = _CopyWithImpl$Query$Viewer$Viewer$mediaListOptions;

  factory CopyWith$Query$Viewer$Viewer$mediaListOptions.stub(TRes res) =
      _CopyWithStubImpl$Query$Viewer$Viewer$mediaListOptions;

  TRes call({
    Enum$ScoreFormat? scoreFormat,
    String? rowOrder,
    Query$Viewer$Viewer$mediaListOptions$animeList? animeList,
    Query$Viewer$Viewer$mediaListOptions$mangaList? mangaList,
    String? $__typename,
  });
  CopyWith$Query$Viewer$Viewer$mediaListOptions$animeList<TRes> get animeList;
  CopyWith$Query$Viewer$Viewer$mediaListOptions$mangaList<TRes> get mangaList;
}

class _CopyWithImpl$Query$Viewer$Viewer$mediaListOptions<TRes>
    implements CopyWith$Query$Viewer$Viewer$mediaListOptions<TRes> {
  _CopyWithImpl$Query$Viewer$Viewer$mediaListOptions(
    this._instance,
    this._then,
  );

  final Query$Viewer$Viewer$mediaListOptions _instance;

  final TRes Function(Query$Viewer$Viewer$mediaListOptions) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? scoreFormat = _undefined,
    Object? rowOrder = _undefined,
    Object? animeList = _undefined,
    Object? mangaList = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Viewer$Viewer$mediaListOptions(
        scoreFormat: scoreFormat == _undefined
            ? _instance.scoreFormat
            : (scoreFormat as Enum$ScoreFormat?),
        rowOrder:
            rowOrder == _undefined ? _instance.rowOrder : (rowOrder as String?),
        animeList: animeList == _undefined
            ? _instance.animeList
            : (animeList as Query$Viewer$Viewer$mediaListOptions$animeList?),
        mangaList: mangaList == _undefined
            ? _instance.mangaList
            : (mangaList as Query$Viewer$Viewer$mediaListOptions$mangaList?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$Viewer$Viewer$mediaListOptions$animeList<TRes> get animeList {
    final local$animeList = _instance.animeList;
    return local$animeList == null
        ? CopyWith$Query$Viewer$Viewer$mediaListOptions$animeList.stub(
            _then(_instance))
        : CopyWith$Query$Viewer$Viewer$mediaListOptions$animeList(
            local$animeList, (e) => call(animeList: e));
  }

  CopyWith$Query$Viewer$Viewer$mediaListOptions$mangaList<TRes> get mangaList {
    final local$mangaList = _instance.mangaList;
    return local$mangaList == null
        ? CopyWith$Query$Viewer$Viewer$mediaListOptions$mangaList.stub(
            _then(_instance))
        : CopyWith$Query$Viewer$Viewer$mediaListOptions$mangaList(
            local$mangaList, (e) => call(mangaList: e));
  }
}

class _CopyWithStubImpl$Query$Viewer$Viewer$mediaListOptions<TRes>
    implements CopyWith$Query$Viewer$Viewer$mediaListOptions<TRes> {
  _CopyWithStubImpl$Query$Viewer$Viewer$mediaListOptions(this._res);

  TRes _res;

  call({
    Enum$ScoreFormat? scoreFormat,
    String? rowOrder,
    Query$Viewer$Viewer$mediaListOptions$animeList? animeList,
    Query$Viewer$Viewer$mediaListOptions$mangaList? mangaList,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$Viewer$Viewer$mediaListOptions$animeList<TRes> get animeList =>
      CopyWith$Query$Viewer$Viewer$mediaListOptions$animeList.stub(_res);

  CopyWith$Query$Viewer$Viewer$mediaListOptions$mangaList<TRes> get mangaList =>
      CopyWith$Query$Viewer$Viewer$mediaListOptions$mangaList.stub(_res);
}

class Query$Viewer$Viewer$mediaListOptions$animeList
    implements Fragment$Settings$mediaListOptions$animeList {
  Query$Viewer$Viewer$mediaListOptions$animeList({
    this.customLists,
    this.sectionOrder,
    this.splitCompletedSectionByFormat,
    this.advancedScoring,
    this.advancedScoringEnabled,
    this.$__typename = 'MediaListTypeOptions',
  });

  factory Query$Viewer$Viewer$mediaListOptions$animeList.fromJson(
      Map<String, dynamic> json) {
    final l$customLists = json['customLists'];
    final l$sectionOrder = json['sectionOrder'];
    final l$splitCompletedSectionByFormat =
        json['splitCompletedSectionByFormat'];
    final l$advancedScoring = json['advancedScoring'];
    final l$advancedScoringEnabled = json['advancedScoringEnabled'];
    final l$$__typename = json['__typename'];
    return Query$Viewer$Viewer$mediaListOptions$animeList(
      customLists: (l$customLists as List<dynamic>?)
          ?.map((e) => (e as String?))
          .toList(),
      sectionOrder: (l$sectionOrder as List<dynamic>?)
          ?.map((e) => (e as String?))
          .toList(),
      splitCompletedSectionByFormat: (l$splitCompletedSectionByFormat as bool?),
      advancedScoring: (l$advancedScoring as List<dynamic>?)
          ?.map((e) => (e as String?))
          .toList(),
      advancedScoringEnabled: (l$advancedScoringEnabled as bool?),
      $__typename: (l$$__typename as String),
    );
  }

  final List<String?>? customLists;

  final List<String?>? sectionOrder;

  final bool? splitCompletedSectionByFormat;

  final List<String?>? advancedScoring;

  final bool? advancedScoringEnabled;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$customLists = customLists;
    _resultData['customLists'] = l$customLists?.map((e) => e).toList();
    final l$sectionOrder = sectionOrder;
    _resultData['sectionOrder'] = l$sectionOrder?.map((e) => e).toList();
    final l$splitCompletedSectionByFormat = splitCompletedSectionByFormat;
    _resultData['splitCompletedSectionByFormat'] =
        l$splitCompletedSectionByFormat;
    final l$advancedScoring = advancedScoring;
    _resultData['advancedScoring'] = l$advancedScoring?.map((e) => e).toList();
    final l$advancedScoringEnabled = advancedScoringEnabled;
    _resultData['advancedScoringEnabled'] = l$advancedScoringEnabled;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$customLists = customLists;
    final l$sectionOrder = sectionOrder;
    final l$splitCompletedSectionByFormat = splitCompletedSectionByFormat;
    final l$advancedScoring = advancedScoring;
    final l$advancedScoringEnabled = advancedScoringEnabled;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$customLists == null
          ? null
          : Object.hashAll(l$customLists.map((v) => v)),
      l$sectionOrder == null
          ? null
          : Object.hashAll(l$sectionOrder.map((v) => v)),
      l$splitCompletedSectionByFormat,
      l$advancedScoring == null
          ? null
          : Object.hashAll(l$advancedScoring.map((v) => v)),
      l$advancedScoringEnabled,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Viewer$Viewer$mediaListOptions$animeList ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$customLists = customLists;
    final lOther$customLists = other.customLists;
    if (l$customLists != null && lOther$customLists != null) {
      if (l$customLists.length != lOther$customLists.length) {
        return false;
      }
      for (int i = 0; i < l$customLists.length; i++) {
        final l$customLists$entry = l$customLists[i];
        final lOther$customLists$entry = lOther$customLists[i];
        if (l$customLists$entry != lOther$customLists$entry) {
          return false;
        }
      }
    } else if (l$customLists != lOther$customLists) {
      return false;
    }
    final l$sectionOrder = sectionOrder;
    final lOther$sectionOrder = other.sectionOrder;
    if (l$sectionOrder != null && lOther$sectionOrder != null) {
      if (l$sectionOrder.length != lOther$sectionOrder.length) {
        return false;
      }
      for (int i = 0; i < l$sectionOrder.length; i++) {
        final l$sectionOrder$entry = l$sectionOrder[i];
        final lOther$sectionOrder$entry = lOther$sectionOrder[i];
        if (l$sectionOrder$entry != lOther$sectionOrder$entry) {
          return false;
        }
      }
    } else if (l$sectionOrder != lOther$sectionOrder) {
      return false;
    }
    final l$splitCompletedSectionByFormat = splitCompletedSectionByFormat;
    final lOther$splitCompletedSectionByFormat =
        other.splitCompletedSectionByFormat;
    if (l$splitCompletedSectionByFormat !=
        lOther$splitCompletedSectionByFormat) {
      return false;
    }
    final l$advancedScoring = advancedScoring;
    final lOther$advancedScoring = other.advancedScoring;
    if (l$advancedScoring != null && lOther$advancedScoring != null) {
      if (l$advancedScoring.length != lOther$advancedScoring.length) {
        return false;
      }
      for (int i = 0; i < l$advancedScoring.length; i++) {
        final l$advancedScoring$entry = l$advancedScoring[i];
        final lOther$advancedScoring$entry = lOther$advancedScoring[i];
        if (l$advancedScoring$entry != lOther$advancedScoring$entry) {
          return false;
        }
      }
    } else if (l$advancedScoring != lOther$advancedScoring) {
      return false;
    }
    final l$advancedScoringEnabled = advancedScoringEnabled;
    final lOther$advancedScoringEnabled = other.advancedScoringEnabled;
    if (l$advancedScoringEnabled != lOther$advancedScoringEnabled) {
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

extension UtilityExtension$Query$Viewer$Viewer$mediaListOptions$animeList
    on Query$Viewer$Viewer$mediaListOptions$animeList {
  CopyWith$Query$Viewer$Viewer$mediaListOptions$animeList<
          Query$Viewer$Viewer$mediaListOptions$animeList>
      get copyWith => CopyWith$Query$Viewer$Viewer$mediaListOptions$animeList(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Viewer$Viewer$mediaListOptions$animeList<TRes> {
  factory CopyWith$Query$Viewer$Viewer$mediaListOptions$animeList(
    Query$Viewer$Viewer$mediaListOptions$animeList instance,
    TRes Function(Query$Viewer$Viewer$mediaListOptions$animeList) then,
  ) = _CopyWithImpl$Query$Viewer$Viewer$mediaListOptions$animeList;

  factory CopyWith$Query$Viewer$Viewer$mediaListOptions$animeList.stub(
          TRes res) =
      _CopyWithStubImpl$Query$Viewer$Viewer$mediaListOptions$animeList;

  TRes call({
    List<String?>? customLists,
    List<String?>? sectionOrder,
    bool? splitCompletedSectionByFormat,
    List<String?>? advancedScoring,
    bool? advancedScoringEnabled,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Viewer$Viewer$mediaListOptions$animeList<TRes>
    implements CopyWith$Query$Viewer$Viewer$mediaListOptions$animeList<TRes> {
  _CopyWithImpl$Query$Viewer$Viewer$mediaListOptions$animeList(
    this._instance,
    this._then,
  );

  final Query$Viewer$Viewer$mediaListOptions$animeList _instance;

  final TRes Function(Query$Viewer$Viewer$mediaListOptions$animeList) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? customLists = _undefined,
    Object? sectionOrder = _undefined,
    Object? splitCompletedSectionByFormat = _undefined,
    Object? advancedScoring = _undefined,
    Object? advancedScoringEnabled = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Viewer$Viewer$mediaListOptions$animeList(
        customLists: customLists == _undefined
            ? _instance.customLists
            : (customLists as List<String?>?),
        sectionOrder: sectionOrder == _undefined
            ? _instance.sectionOrder
            : (sectionOrder as List<String?>?),
        splitCompletedSectionByFormat:
            splitCompletedSectionByFormat == _undefined
                ? _instance.splitCompletedSectionByFormat
                : (splitCompletedSectionByFormat as bool?),
        advancedScoring: advancedScoring == _undefined
            ? _instance.advancedScoring
            : (advancedScoring as List<String?>?),
        advancedScoringEnabled: advancedScoringEnabled == _undefined
            ? _instance.advancedScoringEnabled
            : (advancedScoringEnabled as bool?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Viewer$Viewer$mediaListOptions$animeList<TRes>
    implements CopyWith$Query$Viewer$Viewer$mediaListOptions$animeList<TRes> {
  _CopyWithStubImpl$Query$Viewer$Viewer$mediaListOptions$animeList(this._res);

  TRes _res;

  call({
    List<String?>? customLists,
    List<String?>? sectionOrder,
    bool? splitCompletedSectionByFormat,
    List<String?>? advancedScoring,
    bool? advancedScoringEnabled,
    String? $__typename,
  }) =>
      _res;
}

class Query$Viewer$Viewer$mediaListOptions$mangaList
    implements Fragment$Settings$mediaListOptions$mangaList {
  Query$Viewer$Viewer$mediaListOptions$mangaList({
    this.customLists,
    this.sectionOrder,
    this.splitCompletedSectionByFormat,
    this.advancedScoring,
    this.advancedScoringEnabled,
    this.$__typename = 'MediaListTypeOptions',
  });

  factory Query$Viewer$Viewer$mediaListOptions$mangaList.fromJson(
      Map<String, dynamic> json) {
    final l$customLists = json['customLists'];
    final l$sectionOrder = json['sectionOrder'];
    final l$splitCompletedSectionByFormat =
        json['splitCompletedSectionByFormat'];
    final l$advancedScoring = json['advancedScoring'];
    final l$advancedScoringEnabled = json['advancedScoringEnabled'];
    final l$$__typename = json['__typename'];
    return Query$Viewer$Viewer$mediaListOptions$mangaList(
      customLists: (l$customLists as List<dynamic>?)
          ?.map((e) => (e as String?))
          .toList(),
      sectionOrder: (l$sectionOrder as List<dynamic>?)
          ?.map((e) => (e as String?))
          .toList(),
      splitCompletedSectionByFormat: (l$splitCompletedSectionByFormat as bool?),
      advancedScoring: (l$advancedScoring as List<dynamic>?)
          ?.map((e) => (e as String?))
          .toList(),
      advancedScoringEnabled: (l$advancedScoringEnabled as bool?),
      $__typename: (l$$__typename as String),
    );
  }

  final List<String?>? customLists;

  final List<String?>? sectionOrder;

  final bool? splitCompletedSectionByFormat;

  final List<String?>? advancedScoring;

  final bool? advancedScoringEnabled;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$customLists = customLists;
    _resultData['customLists'] = l$customLists?.map((e) => e).toList();
    final l$sectionOrder = sectionOrder;
    _resultData['sectionOrder'] = l$sectionOrder?.map((e) => e).toList();
    final l$splitCompletedSectionByFormat = splitCompletedSectionByFormat;
    _resultData['splitCompletedSectionByFormat'] =
        l$splitCompletedSectionByFormat;
    final l$advancedScoring = advancedScoring;
    _resultData['advancedScoring'] = l$advancedScoring?.map((e) => e).toList();
    final l$advancedScoringEnabled = advancedScoringEnabled;
    _resultData['advancedScoringEnabled'] = l$advancedScoringEnabled;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$customLists = customLists;
    final l$sectionOrder = sectionOrder;
    final l$splitCompletedSectionByFormat = splitCompletedSectionByFormat;
    final l$advancedScoring = advancedScoring;
    final l$advancedScoringEnabled = advancedScoringEnabled;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$customLists == null
          ? null
          : Object.hashAll(l$customLists.map((v) => v)),
      l$sectionOrder == null
          ? null
          : Object.hashAll(l$sectionOrder.map((v) => v)),
      l$splitCompletedSectionByFormat,
      l$advancedScoring == null
          ? null
          : Object.hashAll(l$advancedScoring.map((v) => v)),
      l$advancedScoringEnabled,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Viewer$Viewer$mediaListOptions$mangaList ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$customLists = customLists;
    final lOther$customLists = other.customLists;
    if (l$customLists != null && lOther$customLists != null) {
      if (l$customLists.length != lOther$customLists.length) {
        return false;
      }
      for (int i = 0; i < l$customLists.length; i++) {
        final l$customLists$entry = l$customLists[i];
        final lOther$customLists$entry = lOther$customLists[i];
        if (l$customLists$entry != lOther$customLists$entry) {
          return false;
        }
      }
    } else if (l$customLists != lOther$customLists) {
      return false;
    }
    final l$sectionOrder = sectionOrder;
    final lOther$sectionOrder = other.sectionOrder;
    if (l$sectionOrder != null && lOther$sectionOrder != null) {
      if (l$sectionOrder.length != lOther$sectionOrder.length) {
        return false;
      }
      for (int i = 0; i < l$sectionOrder.length; i++) {
        final l$sectionOrder$entry = l$sectionOrder[i];
        final lOther$sectionOrder$entry = lOther$sectionOrder[i];
        if (l$sectionOrder$entry != lOther$sectionOrder$entry) {
          return false;
        }
      }
    } else if (l$sectionOrder != lOther$sectionOrder) {
      return false;
    }
    final l$splitCompletedSectionByFormat = splitCompletedSectionByFormat;
    final lOther$splitCompletedSectionByFormat =
        other.splitCompletedSectionByFormat;
    if (l$splitCompletedSectionByFormat !=
        lOther$splitCompletedSectionByFormat) {
      return false;
    }
    final l$advancedScoring = advancedScoring;
    final lOther$advancedScoring = other.advancedScoring;
    if (l$advancedScoring != null && lOther$advancedScoring != null) {
      if (l$advancedScoring.length != lOther$advancedScoring.length) {
        return false;
      }
      for (int i = 0; i < l$advancedScoring.length; i++) {
        final l$advancedScoring$entry = l$advancedScoring[i];
        final lOther$advancedScoring$entry = lOther$advancedScoring[i];
        if (l$advancedScoring$entry != lOther$advancedScoring$entry) {
          return false;
        }
      }
    } else if (l$advancedScoring != lOther$advancedScoring) {
      return false;
    }
    final l$advancedScoringEnabled = advancedScoringEnabled;
    final lOther$advancedScoringEnabled = other.advancedScoringEnabled;
    if (l$advancedScoringEnabled != lOther$advancedScoringEnabled) {
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

extension UtilityExtension$Query$Viewer$Viewer$mediaListOptions$mangaList
    on Query$Viewer$Viewer$mediaListOptions$mangaList {
  CopyWith$Query$Viewer$Viewer$mediaListOptions$mangaList<
          Query$Viewer$Viewer$mediaListOptions$mangaList>
      get copyWith => CopyWith$Query$Viewer$Viewer$mediaListOptions$mangaList(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Viewer$Viewer$mediaListOptions$mangaList<TRes> {
  factory CopyWith$Query$Viewer$Viewer$mediaListOptions$mangaList(
    Query$Viewer$Viewer$mediaListOptions$mangaList instance,
    TRes Function(Query$Viewer$Viewer$mediaListOptions$mangaList) then,
  ) = _CopyWithImpl$Query$Viewer$Viewer$mediaListOptions$mangaList;

  factory CopyWith$Query$Viewer$Viewer$mediaListOptions$mangaList.stub(
          TRes res) =
      _CopyWithStubImpl$Query$Viewer$Viewer$mediaListOptions$mangaList;

  TRes call({
    List<String?>? customLists,
    List<String?>? sectionOrder,
    bool? splitCompletedSectionByFormat,
    List<String?>? advancedScoring,
    bool? advancedScoringEnabled,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Viewer$Viewer$mediaListOptions$mangaList<TRes>
    implements CopyWith$Query$Viewer$Viewer$mediaListOptions$mangaList<TRes> {
  _CopyWithImpl$Query$Viewer$Viewer$mediaListOptions$mangaList(
    this._instance,
    this._then,
  );

  final Query$Viewer$Viewer$mediaListOptions$mangaList _instance;

  final TRes Function(Query$Viewer$Viewer$mediaListOptions$mangaList) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? customLists = _undefined,
    Object? sectionOrder = _undefined,
    Object? splitCompletedSectionByFormat = _undefined,
    Object? advancedScoring = _undefined,
    Object? advancedScoringEnabled = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Viewer$Viewer$mediaListOptions$mangaList(
        customLists: customLists == _undefined
            ? _instance.customLists
            : (customLists as List<String?>?),
        sectionOrder: sectionOrder == _undefined
            ? _instance.sectionOrder
            : (sectionOrder as List<String?>?),
        splitCompletedSectionByFormat:
            splitCompletedSectionByFormat == _undefined
                ? _instance.splitCompletedSectionByFormat
                : (splitCompletedSectionByFormat as bool?),
        advancedScoring: advancedScoring == _undefined
            ? _instance.advancedScoring
            : (advancedScoring as List<String?>?),
        advancedScoringEnabled: advancedScoringEnabled == _undefined
            ? _instance.advancedScoringEnabled
            : (advancedScoringEnabled as bool?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Viewer$Viewer$mediaListOptions$mangaList<TRes>
    implements CopyWith$Query$Viewer$Viewer$mediaListOptions$mangaList<TRes> {
  _CopyWithStubImpl$Query$Viewer$Viewer$mediaListOptions$mangaList(this._res);

  TRes _res;

  call({
    List<String?>? customLists,
    List<String?>? sectionOrder,
    bool? splitCompletedSectionByFormat,
    List<String?>? advancedScoring,
    bool? advancedScoringEnabled,
    String? $__typename,
  }) =>
      _res;
}
