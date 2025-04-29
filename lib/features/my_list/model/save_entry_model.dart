import 'package:otaku_world/graphql/__generated/graphql/schema.graphql.dart';

class SaveEntryModel {
  SaveEntryModel({
    required this.id,
    required this.mediaId,
    required this.status,
    this.score,
    this.progress,
    this.progressVolumes,
    this.repeat,
    this.private,
    this.notes,
    this.customLists,
    this.hiddenFromStatusLists,
    this.advancedScores,
    this.startedAt,
    this.completedAt,
  });

  final int? id;
  final int mediaId;
  final Enum$MediaListStatus status;
  final double? score;
  final int? progress;
  final int? progressVolumes;
  final int? repeat;
  final bool? private;
  final String? notes;
  final List<String>? customLists;
  final bool? hiddenFromStatusLists;
  final List<double>? advancedScores;
  final DateTime? startedAt;
  final DateTime? completedAt;

  @override
  String toString() {
    return 'SaveEntryModel{id: $id, mediaId: $mediaId, status: $status, score: $score, progress: $progress, progressVolumes: $progressVolumes, repeat: $repeat, private: $private, notes: $notes, customLists: $customLists, hiddenFromStatusLists: $hiddenFromStatusLists, advancedScores: $advancedScores, startedAt: $startedAt, completedAt: $completedAt}';
  }
}