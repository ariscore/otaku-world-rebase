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

class Variables$Mutation$SaveListEntry {
  factory Variables$Mutation$SaveListEntry({
    int? id,
    int? mediaId,
    Enum$MediaListStatus? status,
    double? score,
    int? progress,
    int? progressVolumes,
    int? repeat,
    bool? private,
    String? notes,
    List<String?>? customLists,
    bool? hiddenFromStatusLists,
    List<double?>? advancedScores,
    Input$FuzzyDateInput? startedAt,
    Input$FuzzyDateInput? completedAt,
  }) =>
      Variables$Mutation$SaveListEntry._({
        if (id != null) r'id': id,
        if (mediaId != null) r'mediaId': mediaId,
        if (status != null) r'status': status,
        if (score != null) r'score': score,
        if (progress != null) r'progress': progress,
        if (progressVolumes != null) r'progressVolumes': progressVolumes,
        if (repeat != null) r'repeat': repeat,
        if (private != null) r'private': private,
        if (notes != null) r'notes': notes,
        if (customLists != null) r'customLists': customLists,
        if (hiddenFromStatusLists != null)
          r'hiddenFromStatusLists': hiddenFromStatusLists,
        if (advancedScores != null) r'advancedScores': advancedScores,
        if (startedAt != null) r'startedAt': startedAt,
        if (completedAt != null) r'completedAt': completedAt,
      });

  Variables$Mutation$SaveListEntry._(this._$data);

  factory Variables$Mutation$SaveListEntry.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as int?);
    }
    if (data.containsKey('mediaId')) {
      final l$mediaId = data['mediaId'];
      result$data['mediaId'] = (l$mediaId as int?);
    }
    if (data.containsKey('status')) {
      final l$status = data['status'];
      result$data['status'] = l$status == null
          ? null
          : fromJson$Enum$MediaListStatus((l$status as String));
    }
    if (data.containsKey('score')) {
      final l$score = data['score'];
      result$data['score'] = (l$score as num?)?.toDouble();
    }
    if (data.containsKey('progress')) {
      final l$progress = data['progress'];
      result$data['progress'] = (l$progress as int?);
    }
    if (data.containsKey('progressVolumes')) {
      final l$progressVolumes = data['progressVolumes'];
      result$data['progressVolumes'] = (l$progressVolumes as int?);
    }
    if (data.containsKey('repeat')) {
      final l$repeat = data['repeat'];
      result$data['repeat'] = (l$repeat as int?);
    }
    if (data.containsKey('private')) {
      final l$private = data['private'];
      result$data['private'] = (l$private as bool?);
    }
    if (data.containsKey('notes')) {
      final l$notes = data['notes'];
      result$data['notes'] = (l$notes as String?);
    }
    if (data.containsKey('customLists')) {
      final l$customLists = data['customLists'];
      result$data['customLists'] = (l$customLists as List<dynamic>?)
          ?.map((e) => (e as String?))
          .toList();
    }
    if (data.containsKey('hiddenFromStatusLists')) {
      final l$hiddenFromStatusLists = data['hiddenFromStatusLists'];
      result$data['hiddenFromStatusLists'] = (l$hiddenFromStatusLists as bool?);
    }
    if (data.containsKey('advancedScores')) {
      final l$advancedScores = data['advancedScores'];
      result$data['advancedScores'] = (l$advancedScores as List<dynamic>?)
          ?.map((e) => (e as num?)?.toDouble())
          .toList();
    }
    if (data.containsKey('startedAt')) {
      final l$startedAt = data['startedAt'];
      result$data['startedAt'] = l$startedAt == null
          ? null
          : Input$FuzzyDateInput.fromJson(
              (l$startedAt as Map<String, dynamic>));
    }
    if (data.containsKey('completedAt')) {
      final l$completedAt = data['completedAt'];
      result$data['completedAt'] = l$completedAt == null
          ? null
          : Input$FuzzyDateInput.fromJson(
              (l$completedAt as Map<String, dynamic>));
    }
    return Variables$Mutation$SaveListEntry._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get id => (_$data['id'] as int?);

  int? get mediaId => (_$data['mediaId'] as int?);

  Enum$MediaListStatus? get status =>
      (_$data['status'] as Enum$MediaListStatus?);

  double? get score => (_$data['score'] as double?);

  int? get progress => (_$data['progress'] as int?);

  int? get progressVolumes => (_$data['progressVolumes'] as int?);

  int? get repeat => (_$data['repeat'] as int?);

  bool? get private => (_$data['private'] as bool?);

  String? get notes => (_$data['notes'] as String?);

  List<String?>? get customLists => (_$data['customLists'] as List<String?>?);

  bool? get hiddenFromStatusLists => (_$data['hiddenFromStatusLists'] as bool?);

  List<double?>? get advancedScores =>
      (_$data['advancedScores'] as List<double?>?);

  Input$FuzzyDateInput? get startedAt =>
      (_$data['startedAt'] as Input$FuzzyDateInput?);

  Input$FuzzyDateInput? get completedAt =>
      (_$data['completedAt'] as Input$FuzzyDateInput?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    if (_$data.containsKey('mediaId')) {
      final l$mediaId = mediaId;
      result$data['mediaId'] = l$mediaId;
    }
    if (_$data.containsKey('status')) {
      final l$status = status;
      result$data['status'] =
          l$status == null ? null : toJson$Enum$MediaListStatus(l$status);
    }
    if (_$data.containsKey('score')) {
      final l$score = score;
      result$data['score'] = l$score;
    }
    if (_$data.containsKey('progress')) {
      final l$progress = progress;
      result$data['progress'] = l$progress;
    }
    if (_$data.containsKey('progressVolumes')) {
      final l$progressVolumes = progressVolumes;
      result$data['progressVolumes'] = l$progressVolumes;
    }
    if (_$data.containsKey('repeat')) {
      final l$repeat = repeat;
      result$data['repeat'] = l$repeat;
    }
    if (_$data.containsKey('private')) {
      final l$private = private;
      result$data['private'] = l$private;
    }
    if (_$data.containsKey('notes')) {
      final l$notes = notes;
      result$data['notes'] = l$notes;
    }
    if (_$data.containsKey('customLists')) {
      final l$customLists = customLists;
      result$data['customLists'] = l$customLists?.map((e) => e).toList();
    }
    if (_$data.containsKey('hiddenFromStatusLists')) {
      final l$hiddenFromStatusLists = hiddenFromStatusLists;
      result$data['hiddenFromStatusLists'] = l$hiddenFromStatusLists;
    }
    if (_$data.containsKey('advancedScores')) {
      final l$advancedScores = advancedScores;
      result$data['advancedScores'] = l$advancedScores?.map((e) => e).toList();
    }
    if (_$data.containsKey('startedAt')) {
      final l$startedAt = startedAt;
      result$data['startedAt'] = l$startedAt?.toJson();
    }
    if (_$data.containsKey('completedAt')) {
      final l$completedAt = completedAt;
      result$data['completedAt'] = l$completedAt?.toJson();
    }
    return result$data;
  }

  CopyWith$Variables$Mutation$SaveListEntry<Variables$Mutation$SaveListEntry>
      get copyWith => CopyWith$Variables$Mutation$SaveListEntry(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$SaveListEntry ||
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
    final l$mediaId = mediaId;
    final lOther$mediaId = other.mediaId;
    if (_$data.containsKey('mediaId') != other._$data.containsKey('mediaId')) {
      return false;
    }
    if (l$mediaId != lOther$mediaId) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (_$data.containsKey('status') != other._$data.containsKey('status')) {
      return false;
    }
    if (l$status != lOther$status) {
      return false;
    }
    final l$score = score;
    final lOther$score = other.score;
    if (_$data.containsKey('score') != other._$data.containsKey('score')) {
      return false;
    }
    if (l$score != lOther$score) {
      return false;
    }
    final l$progress = progress;
    final lOther$progress = other.progress;
    if (_$data.containsKey('progress') !=
        other._$data.containsKey('progress')) {
      return false;
    }
    if (l$progress != lOther$progress) {
      return false;
    }
    final l$progressVolumes = progressVolumes;
    final lOther$progressVolumes = other.progressVolumes;
    if (_$data.containsKey('progressVolumes') !=
        other._$data.containsKey('progressVolumes')) {
      return false;
    }
    if (l$progressVolumes != lOther$progressVolumes) {
      return false;
    }
    final l$repeat = repeat;
    final lOther$repeat = other.repeat;
    if (_$data.containsKey('repeat') != other._$data.containsKey('repeat')) {
      return false;
    }
    if (l$repeat != lOther$repeat) {
      return false;
    }
    final l$private = private;
    final lOther$private = other.private;
    if (_$data.containsKey('private') != other._$data.containsKey('private')) {
      return false;
    }
    if (l$private != lOther$private) {
      return false;
    }
    final l$notes = notes;
    final lOther$notes = other.notes;
    if (_$data.containsKey('notes') != other._$data.containsKey('notes')) {
      return false;
    }
    if (l$notes != lOther$notes) {
      return false;
    }
    final l$customLists = customLists;
    final lOther$customLists = other.customLists;
    if (_$data.containsKey('customLists') !=
        other._$data.containsKey('customLists')) {
      return false;
    }
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
    final l$hiddenFromStatusLists = hiddenFromStatusLists;
    final lOther$hiddenFromStatusLists = other.hiddenFromStatusLists;
    if (_$data.containsKey('hiddenFromStatusLists') !=
        other._$data.containsKey('hiddenFromStatusLists')) {
      return false;
    }
    if (l$hiddenFromStatusLists != lOther$hiddenFromStatusLists) {
      return false;
    }
    final l$advancedScores = advancedScores;
    final lOther$advancedScores = other.advancedScores;
    if (_$data.containsKey('advancedScores') !=
        other._$data.containsKey('advancedScores')) {
      return false;
    }
    if (l$advancedScores != null && lOther$advancedScores != null) {
      if (l$advancedScores.length != lOther$advancedScores.length) {
        return false;
      }
      for (int i = 0; i < l$advancedScores.length; i++) {
        final l$advancedScores$entry = l$advancedScores[i];
        final lOther$advancedScores$entry = lOther$advancedScores[i];
        if (l$advancedScores$entry != lOther$advancedScores$entry) {
          return false;
        }
      }
    } else if (l$advancedScores != lOther$advancedScores) {
      return false;
    }
    final l$startedAt = startedAt;
    final lOther$startedAt = other.startedAt;
    if (_$data.containsKey('startedAt') !=
        other._$data.containsKey('startedAt')) {
      return false;
    }
    if (l$startedAt != lOther$startedAt) {
      return false;
    }
    final l$completedAt = completedAt;
    final lOther$completedAt = other.completedAt;
    if (_$data.containsKey('completedAt') !=
        other._$data.containsKey('completedAt')) {
      return false;
    }
    if (l$completedAt != lOther$completedAt) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$mediaId = mediaId;
    final l$status = status;
    final l$score = score;
    final l$progress = progress;
    final l$progressVolumes = progressVolumes;
    final l$repeat = repeat;
    final l$private = private;
    final l$notes = notes;
    final l$customLists = customLists;
    final l$hiddenFromStatusLists = hiddenFromStatusLists;
    final l$advancedScores = advancedScores;
    final l$startedAt = startedAt;
    final l$completedAt = completedAt;
    return Object.hashAll([
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('mediaId') ? l$mediaId : const {},
      _$data.containsKey('status') ? l$status : const {},
      _$data.containsKey('score') ? l$score : const {},
      _$data.containsKey('progress') ? l$progress : const {},
      _$data.containsKey('progressVolumes') ? l$progressVolumes : const {},
      _$data.containsKey('repeat') ? l$repeat : const {},
      _$data.containsKey('private') ? l$private : const {},
      _$data.containsKey('notes') ? l$notes : const {},
      _$data.containsKey('customLists')
          ? l$customLists == null
              ? null
              : Object.hashAll(l$customLists.map((v) => v))
          : const {},
      _$data.containsKey('hiddenFromStatusLists')
          ? l$hiddenFromStatusLists
          : const {},
      _$data.containsKey('advancedScores')
          ? l$advancedScores == null
              ? null
              : Object.hashAll(l$advancedScores.map((v) => v))
          : const {},
      _$data.containsKey('startedAt') ? l$startedAt : const {},
      _$data.containsKey('completedAt') ? l$completedAt : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$SaveListEntry<TRes> {
  factory CopyWith$Variables$Mutation$SaveListEntry(
    Variables$Mutation$SaveListEntry instance,
    TRes Function(Variables$Mutation$SaveListEntry) then,
  ) = _CopyWithImpl$Variables$Mutation$SaveListEntry;

  factory CopyWith$Variables$Mutation$SaveListEntry.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$SaveListEntry;

  TRes call({
    int? id,
    int? mediaId,
    Enum$MediaListStatus? status,
    double? score,
    int? progress,
    int? progressVolumes,
    int? repeat,
    bool? private,
    String? notes,
    List<String?>? customLists,
    bool? hiddenFromStatusLists,
    List<double?>? advancedScores,
    Input$FuzzyDateInput? startedAt,
    Input$FuzzyDateInput? completedAt,
  });
}

class _CopyWithImpl$Variables$Mutation$SaveListEntry<TRes>
    implements CopyWith$Variables$Mutation$SaveListEntry<TRes> {
  _CopyWithImpl$Variables$Mutation$SaveListEntry(
    this._instance,
    this._then,
  );

  final Variables$Mutation$SaveListEntry _instance;

  final TRes Function(Variables$Mutation$SaveListEntry) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? mediaId = _undefined,
    Object? status = _undefined,
    Object? score = _undefined,
    Object? progress = _undefined,
    Object? progressVolumes = _undefined,
    Object? repeat = _undefined,
    Object? private = _undefined,
    Object? notes = _undefined,
    Object? customLists = _undefined,
    Object? hiddenFromStatusLists = _undefined,
    Object? advancedScores = _undefined,
    Object? startedAt = _undefined,
    Object? completedAt = _undefined,
  }) =>
      _then(Variables$Mutation$SaveListEntry._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as int?),
        if (mediaId != _undefined) 'mediaId': (mediaId as int?),
        if (status != _undefined) 'status': (status as Enum$MediaListStatus?),
        if (score != _undefined) 'score': (score as double?),
        if (progress != _undefined) 'progress': (progress as int?),
        if (progressVolumes != _undefined)
          'progressVolumes': (progressVolumes as int?),
        if (repeat != _undefined) 'repeat': (repeat as int?),
        if (private != _undefined) 'private': (private as bool?),
        if (notes != _undefined) 'notes': (notes as String?),
        if (customLists != _undefined)
          'customLists': (customLists as List<String?>?),
        if (hiddenFromStatusLists != _undefined)
          'hiddenFromStatusLists': (hiddenFromStatusLists as bool?),
        if (advancedScores != _undefined)
          'advancedScores': (advancedScores as List<double?>?),
        if (startedAt != _undefined)
          'startedAt': (startedAt as Input$FuzzyDateInput?),
        if (completedAt != _undefined)
          'completedAt': (completedAt as Input$FuzzyDateInput?),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$SaveListEntry<TRes>
    implements CopyWith$Variables$Mutation$SaveListEntry<TRes> {
  _CopyWithStubImpl$Variables$Mutation$SaveListEntry(this._res);

  TRes _res;

  call({
    int? id,
    int? mediaId,
    Enum$MediaListStatus? status,
    double? score,
    int? progress,
    int? progressVolumes,
    int? repeat,
    bool? private,
    String? notes,
    List<String?>? customLists,
    bool? hiddenFromStatusLists,
    List<double?>? advancedScores,
    Input$FuzzyDateInput? startedAt,
    Input$FuzzyDateInput? completedAt,
  }) =>
      _res;
}

class Mutation$SaveListEntry {
  Mutation$SaveListEntry({
    this.SaveMediaListEntry,
    this.$__typename = 'Mutation',
  });

  factory Mutation$SaveListEntry.fromJson(Map<String, dynamic> json) {
    final l$SaveMediaListEntry = json['SaveMediaListEntry'];
    final l$$__typename = json['__typename'];
    return Mutation$SaveListEntry(
      SaveMediaListEntry: l$SaveMediaListEntry == null
          ? null
          : Fragment$MediaListEntry.fromJson(
              (l$SaveMediaListEntry as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$MediaListEntry? SaveMediaListEntry;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$SaveMediaListEntry = SaveMediaListEntry;
    _resultData['SaveMediaListEntry'] = l$SaveMediaListEntry?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$SaveMediaListEntry = SaveMediaListEntry;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$SaveMediaListEntry,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$SaveListEntry || runtimeType != other.runtimeType) {
      return false;
    }
    final l$SaveMediaListEntry = SaveMediaListEntry;
    final lOther$SaveMediaListEntry = other.SaveMediaListEntry;
    if (l$SaveMediaListEntry != lOther$SaveMediaListEntry) {
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

extension UtilityExtension$Mutation$SaveListEntry on Mutation$SaveListEntry {
  CopyWith$Mutation$SaveListEntry<Mutation$SaveListEntry> get copyWith =>
      CopyWith$Mutation$SaveListEntry(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$SaveListEntry<TRes> {
  factory CopyWith$Mutation$SaveListEntry(
    Mutation$SaveListEntry instance,
    TRes Function(Mutation$SaveListEntry) then,
  ) = _CopyWithImpl$Mutation$SaveListEntry;

  factory CopyWith$Mutation$SaveListEntry.stub(TRes res) =
      _CopyWithStubImpl$Mutation$SaveListEntry;

  TRes call({
    Fragment$MediaListEntry? SaveMediaListEntry,
    String? $__typename,
  });
  CopyWith$Fragment$MediaListEntry<TRes> get SaveMediaListEntry;
}

class _CopyWithImpl$Mutation$SaveListEntry<TRes>
    implements CopyWith$Mutation$SaveListEntry<TRes> {
  _CopyWithImpl$Mutation$SaveListEntry(
    this._instance,
    this._then,
  );

  final Mutation$SaveListEntry _instance;

  final TRes Function(Mutation$SaveListEntry) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? SaveMediaListEntry = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$SaveListEntry(
        SaveMediaListEntry: SaveMediaListEntry == _undefined
            ? _instance.SaveMediaListEntry
            : (SaveMediaListEntry as Fragment$MediaListEntry?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$MediaListEntry<TRes> get SaveMediaListEntry {
    final local$SaveMediaListEntry = _instance.SaveMediaListEntry;
    return local$SaveMediaListEntry == null
        ? CopyWith$Fragment$MediaListEntry.stub(_then(_instance))
        : CopyWith$Fragment$MediaListEntry(
            local$SaveMediaListEntry, (e) => call(SaveMediaListEntry: e));
  }
}

class _CopyWithStubImpl$Mutation$SaveListEntry<TRes>
    implements CopyWith$Mutation$SaveListEntry<TRes> {
  _CopyWithStubImpl$Mutation$SaveListEntry(this._res);

  TRes _res;

  call({
    Fragment$MediaListEntry? SaveMediaListEntry,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$MediaListEntry<TRes> get SaveMediaListEntry =>
      CopyWith$Fragment$MediaListEntry.stub(_res);
}

const documentNodeMutationSaveListEntry = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'SaveListEntry'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'id')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'mediaId')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'status')),
        type: NamedTypeNode(
          name: NameNode(value: 'MediaListStatus'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'score')),
        type: NamedTypeNode(
          name: NameNode(value: 'Float'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'progress')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'progressVolumes')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'repeat')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'private')),
        type: NamedTypeNode(
          name: NameNode(value: 'Boolean'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'notes')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'customLists')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'String'),
            isNonNull: false,
          ),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'hiddenFromStatusLists')),
        type: NamedTypeNode(
          name: NameNode(value: 'Boolean'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'advancedScores')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'Float'),
            isNonNull: false,
          ),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'startedAt')),
        type: NamedTypeNode(
          name: NameNode(value: 'FuzzyDateInput'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'completedAt')),
        type: NamedTypeNode(
          name: NameNode(value: 'FuzzyDateInput'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'SaveMediaListEntry'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'id')),
          ),
          ArgumentNode(
            name: NameNode(value: 'mediaId'),
            value: VariableNode(name: NameNode(value: 'mediaId')),
          ),
          ArgumentNode(
            name: NameNode(value: 'status'),
            value: VariableNode(name: NameNode(value: 'status')),
          ),
          ArgumentNode(
            name: NameNode(value: 'score'),
            value: VariableNode(name: NameNode(value: 'score')),
          ),
          ArgumentNode(
            name: NameNode(value: 'progress'),
            value: VariableNode(name: NameNode(value: 'progress')),
          ),
          ArgumentNode(
            name: NameNode(value: 'progressVolumes'),
            value: VariableNode(name: NameNode(value: 'progressVolumes')),
          ),
          ArgumentNode(
            name: NameNode(value: 'repeat'),
            value: VariableNode(name: NameNode(value: 'repeat')),
          ),
          ArgumentNode(
            name: NameNode(value: 'private'),
            value: VariableNode(name: NameNode(value: 'private')),
          ),
          ArgumentNode(
            name: NameNode(value: 'notes'),
            value: VariableNode(name: NameNode(value: 'notes')),
          ),
          ArgumentNode(
            name: NameNode(value: 'customLists'),
            value: VariableNode(name: NameNode(value: 'customLists')),
          ),
          ArgumentNode(
            name: NameNode(value: 'hiddenFromStatusLists'),
            value: VariableNode(name: NameNode(value: 'hiddenFromStatusLists')),
          ),
          ArgumentNode(
            name: NameNode(value: 'advancedScores'),
            value: VariableNode(name: NameNode(value: 'advancedScores')),
          ),
          ArgumentNode(
            name: NameNode(value: 'startedAt'),
            value: VariableNode(name: NameNode(value: 'startedAt')),
          ),
          ArgumentNode(
            name: NameNode(value: 'completedAt'),
            value: VariableNode(name: NameNode(value: 'completedAt')),
          ),
        ],
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
  fragmentDefinitionMediaListEntry,
  fragmentDefinitionMediaShort,
  fragmentDefinitionFuzzyDate,
]);
Mutation$SaveListEntry _parserFn$Mutation$SaveListEntry(
        Map<String, dynamic> data) =>
    Mutation$SaveListEntry.fromJson(data);
typedef OnMutationCompleted$Mutation$SaveListEntry = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$SaveListEntry?,
);

class Options$Mutation$SaveListEntry
    extends graphql.MutationOptions<Mutation$SaveListEntry> {
  Options$Mutation$SaveListEntry({
    String? operationName,
    Variables$Mutation$SaveListEntry? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$SaveListEntry? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$SaveListEntry? onCompleted,
    graphql.OnMutationUpdate<Mutation$SaveListEntry>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables?.toJson() ?? {},
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$SaveListEntry(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationSaveListEntry,
          parserFn: _parserFn$Mutation$SaveListEntry,
        );

  final OnMutationCompleted$Mutation$SaveListEntry? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$SaveListEntry
    extends graphql.WatchQueryOptions<Mutation$SaveListEntry> {
  WatchOptions$Mutation$SaveListEntry({
    String? operationName,
    Variables$Mutation$SaveListEntry? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$SaveListEntry? typedOptimisticResult,
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
          document: documentNodeMutationSaveListEntry,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$SaveListEntry,
        );
}

extension ClientExtension$Mutation$SaveListEntry on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$SaveListEntry>> mutate$SaveListEntry(
          [Options$Mutation$SaveListEntry? options]) async =>
      await this.mutate(options ?? Options$Mutation$SaveListEntry());
  graphql.ObservableQuery<Mutation$SaveListEntry> watchMutation$SaveListEntry(
          [WatchOptions$Mutation$SaveListEntry? options]) =>
      this.watchMutation(options ?? WatchOptions$Mutation$SaveListEntry());
}

class Mutation$SaveListEntry$HookResult {
  Mutation$SaveListEntry$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$SaveListEntry runMutation;

  final graphql.QueryResult<Mutation$SaveListEntry> result;
}

Mutation$SaveListEntry$HookResult useMutation$SaveListEntry(
    [WidgetOptions$Mutation$SaveListEntry? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$SaveListEntry());
  return Mutation$SaveListEntry$HookResult(
    ({variables, optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables?.toJson() ?? const {},
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$SaveListEntry> useWatchMutation$SaveListEntry(
        [WatchOptions$Mutation$SaveListEntry? options]) =>
    graphql_flutter
        .useWatchMutation(options ?? WatchOptions$Mutation$SaveListEntry());

class WidgetOptions$Mutation$SaveListEntry
    extends graphql.MutationOptions<Mutation$SaveListEntry> {
  WidgetOptions$Mutation$SaveListEntry({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$SaveListEntry? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$SaveListEntry? onCompleted,
    graphql.OnMutationUpdate<Mutation$SaveListEntry>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$SaveListEntry(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationSaveListEntry,
          parserFn: _parserFn$Mutation$SaveListEntry,
        );

  final OnMutationCompleted$Mutation$SaveListEntry? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$SaveListEntry
    = graphql.MultiSourceResult<Mutation$SaveListEntry> Function({
  Variables$Mutation$SaveListEntry? variables,
  Object? optimisticResult,
  Mutation$SaveListEntry? typedOptimisticResult,
});
typedef Builder$Mutation$SaveListEntry = widgets.Widget Function(
  RunMutation$Mutation$SaveListEntry,
  graphql.QueryResult<Mutation$SaveListEntry>?,
);

class Mutation$SaveListEntry$Widget
    extends graphql_flutter.Mutation<Mutation$SaveListEntry> {
  Mutation$SaveListEntry$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$SaveListEntry? options,
    required Builder$Mutation$SaveListEntry builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$SaveListEntry(),
          builder: (
            run,
            result,
          ) =>
              builder(
            ({
              variables,
              optimisticResult,
              typedOptimisticResult,
            }) =>
                run(
              variables?.toJson() ?? const {},
              optimisticResult:
                  optimisticResult ?? typedOptimisticResult?.toJson(),
            ),
            result,
          ),
        );
}
