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

class Variables$Query$MediaList {
  factory Variables$Query$MediaList({
    int? userId,
    Enum$MediaType? type,
  }) =>
      Variables$Query$MediaList._({
        if (userId != null) r'userId': userId,
        if (type != null) r'type': type,
      });

  Variables$Query$MediaList._(this._$data);

  factory Variables$Query$MediaList.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('userId')) {
      final l$userId = data['userId'];
      result$data['userId'] = (l$userId as int?);
    }
    if (data.containsKey('type')) {
      final l$type = data['type'];
      result$data['type'] =
          l$type == null ? null : fromJson$Enum$MediaType((l$type as String));
    }
    return Variables$Query$MediaList._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get userId => (_$data['userId'] as int?);

  Enum$MediaType? get type => (_$data['type'] as Enum$MediaType?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('userId')) {
      final l$userId = userId;
      result$data['userId'] = l$userId;
    }
    if (_$data.containsKey('type')) {
      final l$type = type;
      result$data['type'] =
          l$type == null ? null : toJson$Enum$MediaType(l$type);
    }
    return result$data;
  }

  CopyWith$Variables$Query$MediaList<Variables$Query$MediaList> get copyWith =>
      CopyWith$Variables$Query$MediaList(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$MediaList ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$userId = userId;
    final lOther$userId = other.userId;
    if (_$data.containsKey('userId') != other._$data.containsKey('userId')) {
      return false;
    }
    if (l$userId != lOther$userId) {
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
    return true;
  }

  @override
  int get hashCode {
    final l$userId = userId;
    final l$type = type;
    return Object.hashAll([
      _$data.containsKey('userId') ? l$userId : const {},
      _$data.containsKey('type') ? l$type : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$MediaList<TRes> {
  factory CopyWith$Variables$Query$MediaList(
    Variables$Query$MediaList instance,
    TRes Function(Variables$Query$MediaList) then,
  ) = _CopyWithImpl$Variables$Query$MediaList;

  factory CopyWith$Variables$Query$MediaList.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$MediaList;

  TRes call({
    int? userId,
    Enum$MediaType? type,
  });
}

class _CopyWithImpl$Variables$Query$MediaList<TRes>
    implements CopyWith$Variables$Query$MediaList<TRes> {
  _CopyWithImpl$Variables$Query$MediaList(
    this._instance,
    this._then,
  );

  final Variables$Query$MediaList _instance;

  final TRes Function(Variables$Query$MediaList) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userId = _undefined,
    Object? type = _undefined,
  }) =>
      _then(Variables$Query$MediaList._({
        ..._instance._$data,
        if (userId != _undefined) 'userId': (userId as int?),
        if (type != _undefined) 'type': (type as Enum$MediaType?),
      }));
}

class _CopyWithStubImpl$Variables$Query$MediaList<TRes>
    implements CopyWith$Variables$Query$MediaList<TRes> {
  _CopyWithStubImpl$Variables$Query$MediaList(this._res);

  TRes _res;

  call({
    int? userId,
    Enum$MediaType? type,
  }) =>
      _res;
}

class Query$MediaList {
  Query$MediaList({
    this.MediaListCollection,
    this.$__typename = 'Query',
  });

  factory Query$MediaList.fromJson(Map<String, dynamic> json) {
    final l$MediaListCollection = json['MediaListCollection'];
    final l$$__typename = json['__typename'];
    return Query$MediaList(
      MediaListCollection: l$MediaListCollection == null
          ? null
          : Query$MediaList$MediaListCollection.fromJson(
              (l$MediaListCollection as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$MediaList$MediaListCollection? MediaListCollection;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$MediaListCollection = MediaListCollection;
    _resultData['MediaListCollection'] = l$MediaListCollection?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$MediaListCollection = MediaListCollection;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$MediaListCollection,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$MediaList || runtimeType != other.runtimeType) {
      return false;
    }
    final l$MediaListCollection = MediaListCollection;
    final lOther$MediaListCollection = other.MediaListCollection;
    if (l$MediaListCollection != lOther$MediaListCollection) {
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

extension UtilityExtension$Query$MediaList on Query$MediaList {
  CopyWith$Query$MediaList<Query$MediaList> get copyWith =>
      CopyWith$Query$MediaList(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$MediaList<TRes> {
  factory CopyWith$Query$MediaList(
    Query$MediaList instance,
    TRes Function(Query$MediaList) then,
  ) = _CopyWithImpl$Query$MediaList;

  factory CopyWith$Query$MediaList.stub(TRes res) =
      _CopyWithStubImpl$Query$MediaList;

  TRes call({
    Query$MediaList$MediaListCollection? MediaListCollection,
    String? $__typename,
  });
  CopyWith$Query$MediaList$MediaListCollection<TRes> get MediaListCollection;
}

class _CopyWithImpl$Query$MediaList<TRes>
    implements CopyWith$Query$MediaList<TRes> {
  _CopyWithImpl$Query$MediaList(
    this._instance,
    this._then,
  );

  final Query$MediaList _instance;

  final TRes Function(Query$MediaList) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? MediaListCollection = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$MediaList(
        MediaListCollection: MediaListCollection == _undefined
            ? _instance.MediaListCollection
            : (MediaListCollection as Query$MediaList$MediaListCollection?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$MediaList$MediaListCollection<TRes> get MediaListCollection {
    final local$MediaListCollection = _instance.MediaListCollection;
    return local$MediaListCollection == null
        ? CopyWith$Query$MediaList$MediaListCollection.stub(_then(_instance))
        : CopyWith$Query$MediaList$MediaListCollection(
            local$MediaListCollection, (e) => call(MediaListCollection: e));
  }
}

class _CopyWithStubImpl$Query$MediaList<TRes>
    implements CopyWith$Query$MediaList<TRes> {
  _CopyWithStubImpl$Query$MediaList(this._res);

  TRes _res;

  call({
    Query$MediaList$MediaListCollection? MediaListCollection,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$MediaList$MediaListCollection<TRes> get MediaListCollection =>
      CopyWith$Query$MediaList$MediaListCollection.stub(_res);
}

const documentNodeQueryMediaList = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'MediaList'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'userId')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
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
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'MediaListCollection'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'userId'),
            value: VariableNode(name: NameNode(value: 'userId')),
          ),
          ArgumentNode(
            name: NameNode(value: 'type'),
            value: VariableNode(name: NameNode(value: 'type')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'lists'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'name'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'isSplitCompletedList'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'entries'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FragmentSpreadNode(
                    name: NameNode(value: 'MediaListEntry'),
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
            name: NameNode(value: 'user'),
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
                name: NameNode(value: 'name'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'avatar'),
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
                name: NameNode(value: 'mediaListOptions'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FragmentSpreadNode(
                    name: NameNode(value: 'MediaListOptions'),
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
  fragmentDefinitionMediaListEntry,
  fragmentDefinitionMediaShort,
  fragmentDefinitionFuzzyDate,
  fragmentDefinitionMediaListOptions,
]);
Query$MediaList _parserFn$Query$MediaList(Map<String, dynamic> data) =>
    Query$MediaList.fromJson(data);
typedef OnQueryComplete$Query$MediaList = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$MediaList?,
);

class Options$Query$MediaList extends graphql.QueryOptions<Query$MediaList> {
  Options$Query$MediaList({
    String? operationName,
    Variables$Query$MediaList? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$MediaList? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$MediaList? onComplete,
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
                    data == null ? null : _parserFn$Query$MediaList(data),
                  ),
          onError: onError,
          document: documentNodeQueryMediaList,
          parserFn: _parserFn$Query$MediaList,
        );

  final OnQueryComplete$Query$MediaList? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$MediaList
    extends graphql.WatchQueryOptions<Query$MediaList> {
  WatchOptions$Query$MediaList({
    String? operationName,
    Variables$Query$MediaList? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$MediaList? typedOptimisticResult,
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
          document: documentNodeQueryMediaList,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$MediaList,
        );
}

class FetchMoreOptions$Query$MediaList extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$MediaList({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$MediaList? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryMediaList,
        );
}

extension ClientExtension$Query$MediaList on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$MediaList>> query$MediaList(
          [Options$Query$MediaList? options]) async =>
      await this.query(options ?? Options$Query$MediaList());
  graphql.ObservableQuery<Query$MediaList> watchQuery$MediaList(
          [WatchOptions$Query$MediaList? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$MediaList());
  void writeQuery$MediaList({
    required Query$MediaList data,
    Variables$Query$MediaList? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryMediaList),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$MediaList? readQuery$MediaList({
    Variables$Query$MediaList? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryMediaList),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$MediaList.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$MediaList> useQuery$MediaList(
        [Options$Query$MediaList? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$MediaList());
graphql.ObservableQuery<Query$MediaList> useWatchQuery$MediaList(
        [WatchOptions$Query$MediaList? options]) =>
    graphql_flutter.useWatchQuery(options ?? WatchOptions$Query$MediaList());

class Query$MediaList$Widget extends graphql_flutter.Query<Query$MediaList> {
  Query$MediaList$Widget({
    widgets.Key? key,
    Options$Query$MediaList? options,
    required graphql_flutter.QueryBuilder<Query$MediaList> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$MediaList(),
          builder: builder,
        );
}

class Query$MediaList$MediaListCollection {
  Query$MediaList$MediaListCollection({
    this.lists,
    this.user,
    this.$__typename = 'MediaListCollection',
  });

  factory Query$MediaList$MediaListCollection.fromJson(
      Map<String, dynamic> json) {
    final l$lists = json['lists'];
    final l$user = json['user'];
    final l$$__typename = json['__typename'];
    return Query$MediaList$MediaListCollection(
      lists: (l$lists as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$MediaList$MediaListCollection$lists.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      user: l$user == null
          ? null
          : Query$MediaList$MediaListCollection$user.fromJson(
              (l$user as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$MediaList$MediaListCollection$lists?>? lists;

  final Query$MediaList$MediaListCollection$user? user;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$lists = lists;
    _resultData['lists'] = l$lists?.map((e) => e?.toJson()).toList();
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$lists = lists;
    final l$user = user;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$lists == null ? null : Object.hashAll(l$lists.map((v) => v)),
      l$user,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$MediaList$MediaListCollection ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$lists = lists;
    final lOther$lists = other.lists;
    if (l$lists != null && lOther$lists != null) {
      if (l$lists.length != lOther$lists.length) {
        return false;
      }
      for (int i = 0; i < l$lists.length; i++) {
        final l$lists$entry = l$lists[i];
        final lOther$lists$entry = lOther$lists[i];
        if (l$lists$entry != lOther$lists$entry) {
          return false;
        }
      }
    } else if (l$lists != lOther$lists) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
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

extension UtilityExtension$Query$MediaList$MediaListCollection
    on Query$MediaList$MediaListCollection {
  CopyWith$Query$MediaList$MediaListCollection<
          Query$MediaList$MediaListCollection>
      get copyWith => CopyWith$Query$MediaList$MediaListCollection(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$MediaList$MediaListCollection<TRes> {
  factory CopyWith$Query$MediaList$MediaListCollection(
    Query$MediaList$MediaListCollection instance,
    TRes Function(Query$MediaList$MediaListCollection) then,
  ) = _CopyWithImpl$Query$MediaList$MediaListCollection;

  factory CopyWith$Query$MediaList$MediaListCollection.stub(TRes res) =
      _CopyWithStubImpl$Query$MediaList$MediaListCollection;

  TRes call({
    List<Query$MediaList$MediaListCollection$lists?>? lists,
    Query$MediaList$MediaListCollection$user? user,
    String? $__typename,
  });
  TRes lists(
      Iterable<Query$MediaList$MediaListCollection$lists?>? Function(
              Iterable<
                  CopyWith$Query$MediaList$MediaListCollection$lists<
                      Query$MediaList$MediaListCollection$lists>?>?)
          _fn);
  CopyWith$Query$MediaList$MediaListCollection$user<TRes> get user;
}

class _CopyWithImpl$Query$MediaList$MediaListCollection<TRes>
    implements CopyWith$Query$MediaList$MediaListCollection<TRes> {
  _CopyWithImpl$Query$MediaList$MediaListCollection(
    this._instance,
    this._then,
  );

  final Query$MediaList$MediaListCollection _instance;

  final TRes Function(Query$MediaList$MediaListCollection) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? lists = _undefined,
    Object? user = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$MediaList$MediaListCollection(
        lists: lists == _undefined
            ? _instance.lists
            : (lists as List<Query$MediaList$MediaListCollection$lists?>?),
        user: user == _undefined
            ? _instance.user
            : (user as Query$MediaList$MediaListCollection$user?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes lists(
          Iterable<Query$MediaList$MediaListCollection$lists?>? Function(
                  Iterable<
                      CopyWith$Query$MediaList$MediaListCollection$lists<
                          Query$MediaList$MediaListCollection$lists>?>?)
              _fn) =>
      call(
          lists: _fn(_instance.lists?.map((e) => e == null
              ? null
              : CopyWith$Query$MediaList$MediaListCollection$lists(
                  e,
                  (i) => i,
                )))?.toList());

  CopyWith$Query$MediaList$MediaListCollection$user<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith$Query$MediaList$MediaListCollection$user.stub(
            _then(_instance))
        : CopyWith$Query$MediaList$MediaListCollection$user(
            local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl$Query$MediaList$MediaListCollection<TRes>
    implements CopyWith$Query$MediaList$MediaListCollection<TRes> {
  _CopyWithStubImpl$Query$MediaList$MediaListCollection(this._res);

  TRes _res;

  call({
    List<Query$MediaList$MediaListCollection$lists?>? lists,
    Query$MediaList$MediaListCollection$user? user,
    String? $__typename,
  }) =>
      _res;

  lists(_fn) => _res;

  CopyWith$Query$MediaList$MediaListCollection$user<TRes> get user =>
      CopyWith$Query$MediaList$MediaListCollection$user.stub(_res);
}

class Query$MediaList$MediaListCollection$lists {
  Query$MediaList$MediaListCollection$lists({
    this.name,
    this.isSplitCompletedList,
    this.entries,
    this.$__typename = 'MediaListGroup',
  });

  factory Query$MediaList$MediaListCollection$lists.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$isSplitCompletedList = json['isSplitCompletedList'];
    final l$entries = json['entries'];
    final l$$__typename = json['__typename'];
    return Query$MediaList$MediaListCollection$lists(
      name: (l$name as String?),
      isSplitCompletedList: (l$isSplitCompletedList as bool?),
      entries: (l$entries as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$MediaListEntry.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String? name;

  final bool? isSplitCompletedList;

  final List<Fragment$MediaListEntry?>? entries;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$isSplitCompletedList = isSplitCompletedList;
    _resultData['isSplitCompletedList'] = l$isSplitCompletedList;
    final l$entries = entries;
    _resultData['entries'] = l$entries?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$isSplitCompletedList = isSplitCompletedList;
    final l$entries = entries;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$isSplitCompletedList,
      l$entries == null ? null : Object.hashAll(l$entries.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$MediaList$MediaListCollection$lists ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$isSplitCompletedList = isSplitCompletedList;
    final lOther$isSplitCompletedList = other.isSplitCompletedList;
    if (l$isSplitCompletedList != lOther$isSplitCompletedList) {
      return false;
    }
    final l$entries = entries;
    final lOther$entries = other.entries;
    if (l$entries != null && lOther$entries != null) {
      if (l$entries.length != lOther$entries.length) {
        return false;
      }
      for (int i = 0; i < l$entries.length; i++) {
        final l$entries$entry = l$entries[i];
        final lOther$entries$entry = lOther$entries[i];
        if (l$entries$entry != lOther$entries$entry) {
          return false;
        }
      }
    } else if (l$entries != lOther$entries) {
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

extension UtilityExtension$Query$MediaList$MediaListCollection$lists
    on Query$MediaList$MediaListCollection$lists {
  CopyWith$Query$MediaList$MediaListCollection$lists<
          Query$MediaList$MediaListCollection$lists>
      get copyWith => CopyWith$Query$MediaList$MediaListCollection$lists(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$MediaList$MediaListCollection$lists<TRes> {
  factory CopyWith$Query$MediaList$MediaListCollection$lists(
    Query$MediaList$MediaListCollection$lists instance,
    TRes Function(Query$MediaList$MediaListCollection$lists) then,
  ) = _CopyWithImpl$Query$MediaList$MediaListCollection$lists;

  factory CopyWith$Query$MediaList$MediaListCollection$lists.stub(TRes res) =
      _CopyWithStubImpl$Query$MediaList$MediaListCollection$lists;

  TRes call({
    String? name,
    bool? isSplitCompletedList,
    List<Fragment$MediaListEntry?>? entries,
    String? $__typename,
  });
  TRes entries(
      Iterable<Fragment$MediaListEntry?>? Function(
              Iterable<
                  CopyWith$Fragment$MediaListEntry<Fragment$MediaListEntry>?>?)
          _fn);
}

class _CopyWithImpl$Query$MediaList$MediaListCollection$lists<TRes>
    implements CopyWith$Query$MediaList$MediaListCollection$lists<TRes> {
  _CopyWithImpl$Query$MediaList$MediaListCollection$lists(
    this._instance,
    this._then,
  );

  final Query$MediaList$MediaListCollection$lists _instance;

  final TRes Function(Query$MediaList$MediaListCollection$lists) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? isSplitCompletedList = _undefined,
    Object? entries = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$MediaList$MediaListCollection$lists(
        name: name == _undefined ? _instance.name : (name as String?),
        isSplitCompletedList: isSplitCompletedList == _undefined
            ? _instance.isSplitCompletedList
            : (isSplitCompletedList as bool?),
        entries: entries == _undefined
            ? _instance.entries
            : (entries as List<Fragment$MediaListEntry?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes entries(
          Iterable<Fragment$MediaListEntry?>? Function(
                  Iterable<
                      CopyWith$Fragment$MediaListEntry<
                          Fragment$MediaListEntry>?>?)
              _fn) =>
      call(
          entries: _fn(_instance.entries?.map((e) => e == null
              ? null
              : CopyWith$Fragment$MediaListEntry(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$MediaList$MediaListCollection$lists<TRes>
    implements CopyWith$Query$MediaList$MediaListCollection$lists<TRes> {
  _CopyWithStubImpl$Query$MediaList$MediaListCollection$lists(this._res);

  TRes _res;

  call({
    String? name,
    bool? isSplitCompletedList,
    List<Fragment$MediaListEntry?>? entries,
    String? $__typename,
  }) =>
      _res;

  entries(_fn) => _res;
}

class Query$MediaList$MediaListCollection$user {
  Query$MediaList$MediaListCollection$user({
    required this.id,
    required this.name,
    this.avatar,
    this.mediaListOptions,
    this.$__typename = 'User',
  });

  factory Query$MediaList$MediaListCollection$user.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$avatar = json['avatar'];
    final l$mediaListOptions = json['mediaListOptions'];
    final l$$__typename = json['__typename'];
    return Query$MediaList$MediaListCollection$user(
      id: (l$id as int),
      name: (l$name as String),
      avatar: l$avatar == null
          ? null
          : Query$MediaList$MediaListCollection$user$avatar.fromJson(
              (l$avatar as Map<String, dynamic>)),
      mediaListOptions: l$mediaListOptions == null
          ? null
          : Fragment$MediaListOptions.fromJson(
              (l$mediaListOptions as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String name;

  final Query$MediaList$MediaListCollection$user$avatar? avatar;

  final Fragment$MediaListOptions? mediaListOptions;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$avatar = avatar;
    _resultData['avatar'] = l$avatar?.toJson();
    final l$mediaListOptions = mediaListOptions;
    _resultData['mediaListOptions'] = l$mediaListOptions?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$avatar = avatar;
    final l$mediaListOptions = mediaListOptions;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$avatar,
      l$mediaListOptions,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$MediaList$MediaListCollection$user ||
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
    final l$avatar = avatar;
    final lOther$avatar = other.avatar;
    if (l$avatar != lOther$avatar) {
      return false;
    }
    final l$mediaListOptions = mediaListOptions;
    final lOther$mediaListOptions = other.mediaListOptions;
    if (l$mediaListOptions != lOther$mediaListOptions) {
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

extension UtilityExtension$Query$MediaList$MediaListCollection$user
    on Query$MediaList$MediaListCollection$user {
  CopyWith$Query$MediaList$MediaListCollection$user<
          Query$MediaList$MediaListCollection$user>
      get copyWith => CopyWith$Query$MediaList$MediaListCollection$user(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$MediaList$MediaListCollection$user<TRes> {
  factory CopyWith$Query$MediaList$MediaListCollection$user(
    Query$MediaList$MediaListCollection$user instance,
    TRes Function(Query$MediaList$MediaListCollection$user) then,
  ) = _CopyWithImpl$Query$MediaList$MediaListCollection$user;

  factory CopyWith$Query$MediaList$MediaListCollection$user.stub(TRes res) =
      _CopyWithStubImpl$Query$MediaList$MediaListCollection$user;

  TRes call({
    int? id,
    String? name,
    Query$MediaList$MediaListCollection$user$avatar? avatar,
    Fragment$MediaListOptions? mediaListOptions,
    String? $__typename,
  });
  CopyWith$Query$MediaList$MediaListCollection$user$avatar<TRes> get avatar;
  CopyWith$Fragment$MediaListOptions<TRes> get mediaListOptions;
}

class _CopyWithImpl$Query$MediaList$MediaListCollection$user<TRes>
    implements CopyWith$Query$MediaList$MediaListCollection$user<TRes> {
  _CopyWithImpl$Query$MediaList$MediaListCollection$user(
    this._instance,
    this._then,
  );

  final Query$MediaList$MediaListCollection$user _instance;

  final TRes Function(Query$MediaList$MediaListCollection$user) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? avatar = _undefined,
    Object? mediaListOptions = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$MediaList$MediaListCollection$user(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        avatar: avatar == _undefined
            ? _instance.avatar
            : (avatar as Query$MediaList$MediaListCollection$user$avatar?),
        mediaListOptions: mediaListOptions == _undefined
            ? _instance.mediaListOptions
            : (mediaListOptions as Fragment$MediaListOptions?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$MediaList$MediaListCollection$user$avatar<TRes> get avatar {
    final local$avatar = _instance.avatar;
    return local$avatar == null
        ? CopyWith$Query$MediaList$MediaListCollection$user$avatar.stub(
            _then(_instance))
        : CopyWith$Query$MediaList$MediaListCollection$user$avatar(
            local$avatar, (e) => call(avatar: e));
  }

  CopyWith$Fragment$MediaListOptions<TRes> get mediaListOptions {
    final local$mediaListOptions = _instance.mediaListOptions;
    return local$mediaListOptions == null
        ? CopyWith$Fragment$MediaListOptions.stub(_then(_instance))
        : CopyWith$Fragment$MediaListOptions(
            local$mediaListOptions, (e) => call(mediaListOptions: e));
  }
}

class _CopyWithStubImpl$Query$MediaList$MediaListCollection$user<TRes>
    implements CopyWith$Query$MediaList$MediaListCollection$user<TRes> {
  _CopyWithStubImpl$Query$MediaList$MediaListCollection$user(this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    Query$MediaList$MediaListCollection$user$avatar? avatar,
    Fragment$MediaListOptions? mediaListOptions,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$MediaList$MediaListCollection$user$avatar<TRes> get avatar =>
      CopyWith$Query$MediaList$MediaListCollection$user$avatar.stub(_res);

  CopyWith$Fragment$MediaListOptions<TRes> get mediaListOptions =>
      CopyWith$Fragment$MediaListOptions.stub(_res);
}

class Query$MediaList$MediaListCollection$user$avatar {
  Query$MediaList$MediaListCollection$user$avatar({
    this.large,
    this.$__typename = 'UserAvatar',
  });

  factory Query$MediaList$MediaListCollection$user$avatar.fromJson(
      Map<String, dynamic> json) {
    final l$large = json['large'];
    final l$$__typename = json['__typename'];
    return Query$MediaList$MediaListCollection$user$avatar(
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
    if (other is! Query$MediaList$MediaListCollection$user$avatar ||
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

extension UtilityExtension$Query$MediaList$MediaListCollection$user$avatar
    on Query$MediaList$MediaListCollection$user$avatar {
  CopyWith$Query$MediaList$MediaListCollection$user$avatar<
          Query$MediaList$MediaListCollection$user$avatar>
      get copyWith => CopyWith$Query$MediaList$MediaListCollection$user$avatar(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$MediaList$MediaListCollection$user$avatar<TRes> {
  factory CopyWith$Query$MediaList$MediaListCollection$user$avatar(
    Query$MediaList$MediaListCollection$user$avatar instance,
    TRes Function(Query$MediaList$MediaListCollection$user$avatar) then,
  ) = _CopyWithImpl$Query$MediaList$MediaListCollection$user$avatar;

  factory CopyWith$Query$MediaList$MediaListCollection$user$avatar.stub(
          TRes res) =
      _CopyWithStubImpl$Query$MediaList$MediaListCollection$user$avatar;

  TRes call({
    String? large,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$MediaList$MediaListCollection$user$avatar<TRes>
    implements CopyWith$Query$MediaList$MediaListCollection$user$avatar<TRes> {
  _CopyWithImpl$Query$MediaList$MediaListCollection$user$avatar(
    this._instance,
    this._then,
  );

  final Query$MediaList$MediaListCollection$user$avatar _instance;

  final TRes Function(Query$MediaList$MediaListCollection$user$avatar) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? large = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$MediaList$MediaListCollection$user$avatar(
        large: large == _undefined ? _instance.large : (large as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$MediaList$MediaListCollection$user$avatar<TRes>
    implements CopyWith$Query$MediaList$MediaListCollection$user$avatar<TRes> {
  _CopyWithStubImpl$Query$MediaList$MediaListCollection$user$avatar(this._res);

  TRes _res;

  call({
    String? large,
    String? $__typename,
  }) =>
      _res;
}
