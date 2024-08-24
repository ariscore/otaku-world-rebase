// GENERATED FILE
// DO NOT MODIFY
// ignore_for_file: type=lint
import 'dart:async';

import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

import '../fragments.graphql.dart';
import '../schema.graphql.dart';

class Variables$Query$FilterMedia {
  factory Variables$Query$FilterMedia({
    int? page,
    String? search,
    Enum$MediaType? type,
    List<Enum$MediaSort?>? sort,
    List<String?>? genre,
    String? startDate_greater,
    String? startDate_lesser,
    bool? isLicensed,
    Enum$MediaSeason? season,
    int? seasonYear,
    List<Enum$MediaFormat?>? format_in,
    List<Enum$MediaStatus?>? status_in,
    List<String?>? licensedBy_in,
    String? countryOfOrigin,
    List<Enum$MediaSource?>? source_in,
    int? episodes_greater,
    int? episodes_lesser,
    int? duration_greater,
    int? duration_lesser,
    int? minimumTagRank,
    List<String?>? tagCategory_in,
    List<String?>? tag_in,
    bool? isAdult,
    bool? onList,
    int? chapters_greater,
    int? chapters_lesser,
    int? volumes_greater,
    int? volumes_lesser,
  }) =>
      Variables$Query$FilterMedia._({
        if (page != null) r'page': page,
        if (search != null) r'search': search,
        if (type != null) r'type': type,
        if (sort != null) r'sort': sort,
        if (genre != null) r'genre': genre,
        if (startDate_greater != null) r'startDate_greater': startDate_greater,
        if (startDate_lesser != null) r'startDate_lesser': startDate_lesser,
        if (isLicensed != null) r'isLicensed': isLicensed,
        if (season != null) r'season': season,
        if (seasonYear != null) r'seasonYear': seasonYear,
        if (format_in != null) r'format_in': format_in,
        if (status_in != null) r'status_in': status_in,
        if (licensedBy_in != null) r'licensedBy_in': licensedBy_in,
        if (countryOfOrigin != null) r'countryOfOrigin': countryOfOrigin,
        if (source_in != null) r'source_in': source_in,
        if (episodes_greater != null) r'episodes_greater': episodes_greater,
        if (episodes_lesser != null) r'episodes_lesser': episodes_lesser,
        if (duration_greater != null) r'duration_greater': duration_greater,
        if (duration_lesser != null) r'duration_lesser': duration_lesser,
        if (minimumTagRank != null) r'minimumTagRank': minimumTagRank,
        if (tagCategory_in != null) r'tagCategory_in': tagCategory_in,
        if (tag_in != null) r'tag_in': tag_in,
        if (isAdult != null) r'isAdult': isAdult,
        if (onList != null) r'onList': onList,
        if (chapters_greater != null) r'chapters_greater': chapters_greater,
        if (chapters_lesser != null) r'chapters_lesser': chapters_lesser,
        if (volumes_greater != null) r'volumes_greater': volumes_greater,
        if (volumes_lesser != null) r'volumes_lesser': volumes_lesser,
      });

  Variables$Query$FilterMedia._(this._$data);

  factory Variables$Query$FilterMedia.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('page')) {
      final l$page = data['page'];
      result$data['page'] = (l$page as int?);
    }
    if (data.containsKey('search')) {
      final l$search = data['search'];
      result$data['search'] = (l$search as String?);
    }
    if (data.containsKey('type')) {
      final l$type = data['type'];
      result$data['type'] =
          l$type == null ? null : fromJson$Enum$MediaType((l$type as String));
    }
    if (data.containsKey('sort')) {
      final l$sort = data['sort'];
      result$data['sort'] = (l$sort as List<dynamic>?)
          ?.map(
              (e) => e == null ? null : fromJson$Enum$MediaSort((e as String)))
          .toList();
    }
    if (data.containsKey('genre')) {
      final l$genre = data['genre'];
      result$data['genre'] =
          (l$genre as List<dynamic>?)?.map((e) => (e as String?)).toList();
    }
    if (data.containsKey('startDate_greater')) {
      final l$startDate_greater = data['startDate_greater'];
      result$data['startDate_greater'] = (l$startDate_greater as String?);
    }
    if (data.containsKey('startDate_lesser')) {
      final l$startDate_lesser = data['startDate_lesser'];
      result$data['startDate_lesser'] = (l$startDate_lesser as String?);
    }
    if (data.containsKey('isLicensed')) {
      final l$isLicensed = data['isLicensed'];
      result$data['isLicensed'] = (l$isLicensed as bool?);
    }
    if (data.containsKey('season')) {
      final l$season = data['season'];
      result$data['season'] = l$season == null
          ? null
          : fromJson$Enum$MediaSeason((l$season as String));
    }
    if (data.containsKey('seasonYear')) {
      final l$seasonYear = data['seasonYear'];
      result$data['seasonYear'] = (l$seasonYear as int?);
    }
    if (data.containsKey('format_in')) {
      final l$format_in = data['format_in'];
      result$data['format_in'] = (l$format_in as List<dynamic>?)
          ?.map((e) =>
              e == null ? null : fromJson$Enum$MediaFormat((e as String)))
          .toList();
    }
    if (data.containsKey('status_in')) {
      final l$status_in = data['status_in'];
      result$data['status_in'] = (l$status_in as List<dynamic>?)
          ?.map((e) =>
              e == null ? null : fromJson$Enum$MediaStatus((e as String)))
          .toList();
    }
    if (data.containsKey('licensedBy_in')) {
      final l$licensedBy_in = data['licensedBy_in'];
      result$data['licensedBy_in'] = (l$licensedBy_in as List<dynamic>?)
          ?.map((e) => (e as String?))
          .toList();
    }
    if (data.containsKey('countryOfOrigin')) {
      final l$countryOfOrigin = data['countryOfOrigin'];
      result$data['countryOfOrigin'] = (l$countryOfOrigin as String?);
    }
    if (data.containsKey('source_in')) {
      final l$source_in = data['source_in'];
      result$data['source_in'] = (l$source_in as List<dynamic>?)
          ?.map((e) =>
              e == null ? null : fromJson$Enum$MediaSource((e as String)))
          .toList();
    }
    if (data.containsKey('episodes_greater')) {
      final l$episodes_greater = data['episodes_greater'];
      result$data['episodes_greater'] = (l$episodes_greater as int?);
    }
    if (data.containsKey('episodes_lesser')) {
      final l$episodes_lesser = data['episodes_lesser'];
      result$data['episodes_lesser'] = (l$episodes_lesser as int?);
    }
    if (data.containsKey('duration_greater')) {
      final l$duration_greater = data['duration_greater'];
      result$data['duration_greater'] = (l$duration_greater as int?);
    }
    if (data.containsKey('duration_lesser')) {
      final l$duration_lesser = data['duration_lesser'];
      result$data['duration_lesser'] = (l$duration_lesser as int?);
    }
    if (data.containsKey('minimumTagRank')) {
      final l$minimumTagRank = data['minimumTagRank'];
      result$data['minimumTagRank'] = (l$minimumTagRank as int?);
    }
    if (data.containsKey('tagCategory_in')) {
      final l$tagCategory_in = data['tagCategory_in'];
      result$data['tagCategory_in'] = (l$tagCategory_in as List<dynamic>?)
          ?.map((e) => (e as String?))
          .toList();
    }
    if (data.containsKey('tag_in')) {
      final l$tag_in = data['tag_in'];
      result$data['tag_in'] =
          (l$tag_in as List<dynamic>?)?.map((e) => (e as String?)).toList();
    }
    if (data.containsKey('isAdult')) {
      final l$isAdult = data['isAdult'];
      result$data['isAdult'] = (l$isAdult as bool?);
    }
    if (data.containsKey('onList')) {
      final l$onList = data['onList'];
      result$data['onList'] = (l$onList as bool?);
    }
    if (data.containsKey('chapters_greater')) {
      final l$chapters_greater = data['chapters_greater'];
      result$data['chapters_greater'] = (l$chapters_greater as int?);
    }
    if (data.containsKey('chapters_lesser')) {
      final l$chapters_lesser = data['chapters_lesser'];
      result$data['chapters_lesser'] = (l$chapters_lesser as int?);
    }
    if (data.containsKey('volumes_greater')) {
      final l$volumes_greater = data['volumes_greater'];
      result$data['volumes_greater'] = (l$volumes_greater as int?);
    }
    if (data.containsKey('volumes_lesser')) {
      final l$volumes_lesser = data['volumes_lesser'];
      result$data['volumes_lesser'] = (l$volumes_lesser as int?);
    }
    return Variables$Query$FilterMedia._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get page => (_$data['page'] as int?);

  String? get search => (_$data['search'] as String?);

  Enum$MediaType? get type => (_$data['type'] as Enum$MediaType?);

  List<Enum$MediaSort?>? get sort => (_$data['sort'] as List<Enum$MediaSort?>?);

  List<String?>? get genre => (_$data['genre'] as List<String?>?);

  String? get startDate_greater => (_$data['startDate_greater'] as String?);

  String? get startDate_lesser => (_$data['startDate_lesser'] as String?);

  bool? get isLicensed => (_$data['isLicensed'] as bool?);

  Enum$MediaSeason? get season => (_$data['season'] as Enum$MediaSeason?);

  int? get seasonYear => (_$data['seasonYear'] as int?);

  List<Enum$MediaFormat?>? get format_in =>
      (_$data['format_in'] as List<Enum$MediaFormat?>?);

  List<Enum$MediaStatus?>? get status_in =>
      (_$data['status_in'] as List<Enum$MediaStatus?>?);

  List<String?>? get licensedBy_in =>
      (_$data['licensedBy_in'] as List<String?>?);

  String? get countryOfOrigin => (_$data['countryOfOrigin'] as String?);

  List<Enum$MediaSource?>? get source_in =>
      (_$data['source_in'] as List<Enum$MediaSource?>?);

  int? get episodes_greater => (_$data['episodes_greater'] as int?);

  int? get episodes_lesser => (_$data['episodes_lesser'] as int?);

  int? get duration_greater => (_$data['duration_greater'] as int?);

  int? get duration_lesser => (_$data['duration_lesser'] as int?);

  int? get minimumTagRank => (_$data['minimumTagRank'] as int?);

  List<String?>? get tagCategory_in =>
      (_$data['tagCategory_in'] as List<String?>?);

  List<String?>? get tag_in => (_$data['tag_in'] as List<String?>?);

  bool? get isAdult => (_$data['isAdult'] as bool?);

  bool? get onList => (_$data['onList'] as bool?);

  int? get chapters_greater => (_$data['chapters_greater'] as int?);

  int? get chapters_lesser => (_$data['chapters_lesser'] as int?);

  int? get volumes_greater => (_$data['volumes_greater'] as int?);

  int? get volumes_lesser => (_$data['volumes_lesser'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('page')) {
      final l$page = page;
      result$data['page'] = l$page;
    }
    if (_$data.containsKey('search')) {
      final l$search = search;
      result$data['search'] = l$search;
    }
    if (_$data.containsKey('type')) {
      final l$type = type;
      result$data['type'] =
          l$type == null ? null : toJson$Enum$MediaType(l$type);
    }
    if (_$data.containsKey('sort')) {
      final l$sort = sort;
      result$data['sort'] = l$sort
          ?.map((e) => e == null ? null : toJson$Enum$MediaSort(e))
          .toList();
    }
    if (_$data.containsKey('genre')) {
      final l$genre = genre;
      result$data['genre'] = l$genre?.map((e) => e).toList();
    }
    if (_$data.containsKey('startDate_greater')) {
      final l$startDate_greater = startDate_greater;
      result$data['startDate_greater'] = l$startDate_greater;
    }
    if (_$data.containsKey('startDate_lesser')) {
      final l$startDate_lesser = startDate_lesser;
      result$data['startDate_lesser'] = l$startDate_lesser;
    }
    if (_$data.containsKey('isLicensed')) {
      final l$isLicensed = isLicensed;
      result$data['isLicensed'] = l$isLicensed;
    }
    if (_$data.containsKey('season')) {
      final l$season = season;
      result$data['season'] =
          l$season == null ? null : toJson$Enum$MediaSeason(l$season);
    }
    if (_$data.containsKey('seasonYear')) {
      final l$seasonYear = seasonYear;
      result$data['seasonYear'] = l$seasonYear;
    }
    if (_$data.containsKey('format_in')) {
      final l$format_in = format_in;
      result$data['format_in'] = l$format_in
          ?.map((e) => e == null ? null : toJson$Enum$MediaFormat(e))
          .toList();
    }
    if (_$data.containsKey('status_in')) {
      final l$status_in = status_in;
      result$data['status_in'] = l$status_in
          ?.map((e) => e == null ? null : toJson$Enum$MediaStatus(e))
          .toList();
    }
    if (_$data.containsKey('licensedBy_in')) {
      final l$licensedBy_in = licensedBy_in;
      result$data['licensedBy_in'] = l$licensedBy_in?.map((e) => e).toList();
    }
    if (_$data.containsKey('countryOfOrigin')) {
      final l$countryOfOrigin = countryOfOrigin;
      result$data['countryOfOrigin'] = l$countryOfOrigin;
    }
    if (_$data.containsKey('source_in')) {
      final l$source_in = source_in;
      result$data['source_in'] = l$source_in
          ?.map((e) => e == null ? null : toJson$Enum$MediaSource(e))
          .toList();
    }
    if (_$data.containsKey('episodes_greater')) {
      final l$episodes_greater = episodes_greater;
      result$data['episodes_greater'] = l$episodes_greater;
    }
    if (_$data.containsKey('episodes_lesser')) {
      final l$episodes_lesser = episodes_lesser;
      result$data['episodes_lesser'] = l$episodes_lesser;
    }
    if (_$data.containsKey('duration_greater')) {
      final l$duration_greater = duration_greater;
      result$data['duration_greater'] = l$duration_greater;
    }
    if (_$data.containsKey('duration_lesser')) {
      final l$duration_lesser = duration_lesser;
      result$data['duration_lesser'] = l$duration_lesser;
    }
    if (_$data.containsKey('minimumTagRank')) {
      final l$minimumTagRank = minimumTagRank;
      result$data['minimumTagRank'] = l$minimumTagRank;
    }
    if (_$data.containsKey('tagCategory_in')) {
      final l$tagCategory_in = tagCategory_in;
      result$data['tagCategory_in'] = l$tagCategory_in?.map((e) => e).toList();
    }
    if (_$data.containsKey('tag_in')) {
      final l$tag_in = tag_in;
      result$data['tag_in'] = l$tag_in?.map((e) => e).toList();
    }
    if (_$data.containsKey('isAdult')) {
      final l$isAdult = isAdult;
      result$data['isAdult'] = l$isAdult;
    }
    if (_$data.containsKey('onList')) {
      final l$onList = onList;
      result$data['onList'] = l$onList;
    }
    if (_$data.containsKey('chapters_greater')) {
      final l$chapters_greater = chapters_greater;
      result$data['chapters_greater'] = l$chapters_greater;
    }
    if (_$data.containsKey('chapters_lesser')) {
      final l$chapters_lesser = chapters_lesser;
      result$data['chapters_lesser'] = l$chapters_lesser;
    }
    if (_$data.containsKey('volumes_greater')) {
      final l$volumes_greater = volumes_greater;
      result$data['volumes_greater'] = l$volumes_greater;
    }
    if (_$data.containsKey('volumes_lesser')) {
      final l$volumes_lesser = volumes_lesser;
      result$data['volumes_lesser'] = l$volumes_lesser;
    }
    return result$data;
  }

  CopyWith$Variables$Query$FilterMedia<Variables$Query$FilterMedia>
      get copyWith => CopyWith$Variables$Query$FilterMedia(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$FilterMedia) ||
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
    final l$search = search;
    final lOther$search = other.search;
    if (_$data.containsKey('search') != other._$data.containsKey('search')) {
      return false;
    }
    if (l$search != lOther$search) {
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
    final l$genre = genre;
    final lOther$genre = other.genre;
    if (_$data.containsKey('genre') != other._$data.containsKey('genre')) {
      return false;
    }
    if (l$genre != null && lOther$genre != null) {
      if (l$genre.length != lOther$genre.length) {
        return false;
      }
      for (int i = 0; i < l$genre.length; i++) {
        final l$genre$entry = l$genre[i];
        final lOther$genre$entry = lOther$genre[i];
        if (l$genre$entry != lOther$genre$entry) {
          return false;
        }
      }
    } else if (l$genre != lOther$genre) {
      return false;
    }
    final l$startDate_greater = startDate_greater;
    final lOther$startDate_greater = other.startDate_greater;
    if (_$data.containsKey('startDate_greater') !=
        other._$data.containsKey('startDate_greater')) {
      return false;
    }
    if (l$startDate_greater != lOther$startDate_greater) {
      return false;
    }
    final l$startDate_lesser = startDate_lesser;
    final lOther$startDate_lesser = other.startDate_lesser;
    if (_$data.containsKey('startDate_lesser') !=
        other._$data.containsKey('startDate_lesser')) {
      return false;
    }
    if (l$startDate_lesser != lOther$startDate_lesser) {
      return false;
    }
    final l$isLicensed = isLicensed;
    final lOther$isLicensed = other.isLicensed;
    if (_$data.containsKey('isLicensed') !=
        other._$data.containsKey('isLicensed')) {
      return false;
    }
    if (l$isLicensed != lOther$isLicensed) {
      return false;
    }
    final l$season = season;
    final lOther$season = other.season;
    if (_$data.containsKey('season') != other._$data.containsKey('season')) {
      return false;
    }
    if (l$season != lOther$season) {
      return false;
    }
    final l$seasonYear = seasonYear;
    final lOther$seasonYear = other.seasonYear;
    if (_$data.containsKey('seasonYear') !=
        other._$data.containsKey('seasonYear')) {
      return false;
    }
    if (l$seasonYear != lOther$seasonYear) {
      return false;
    }
    final l$format_in = format_in;
    final lOther$format_in = other.format_in;
    if (_$data.containsKey('format_in') !=
        other._$data.containsKey('format_in')) {
      return false;
    }
    if (l$format_in != null && lOther$format_in != null) {
      if (l$format_in.length != lOther$format_in.length) {
        return false;
      }
      for (int i = 0; i < l$format_in.length; i++) {
        final l$format_in$entry = l$format_in[i];
        final lOther$format_in$entry = lOther$format_in[i];
        if (l$format_in$entry != lOther$format_in$entry) {
          return false;
        }
      }
    } else if (l$format_in != lOther$format_in) {
      return false;
    }
    final l$status_in = status_in;
    final lOther$status_in = other.status_in;
    if (_$data.containsKey('status_in') !=
        other._$data.containsKey('status_in')) {
      return false;
    }
    if (l$status_in != null && lOther$status_in != null) {
      if (l$status_in.length != lOther$status_in.length) {
        return false;
      }
      for (int i = 0; i < l$status_in.length; i++) {
        final l$status_in$entry = l$status_in[i];
        final lOther$status_in$entry = lOther$status_in[i];
        if (l$status_in$entry != lOther$status_in$entry) {
          return false;
        }
      }
    } else if (l$status_in != lOther$status_in) {
      return false;
    }
    final l$licensedBy_in = licensedBy_in;
    final lOther$licensedBy_in = other.licensedBy_in;
    if (_$data.containsKey('licensedBy_in') !=
        other._$data.containsKey('licensedBy_in')) {
      return false;
    }
    if (l$licensedBy_in != null && lOther$licensedBy_in != null) {
      if (l$licensedBy_in.length != lOther$licensedBy_in.length) {
        return false;
      }
      for (int i = 0; i < l$licensedBy_in.length; i++) {
        final l$licensedBy_in$entry = l$licensedBy_in[i];
        final lOther$licensedBy_in$entry = lOther$licensedBy_in[i];
        if (l$licensedBy_in$entry != lOther$licensedBy_in$entry) {
          return false;
        }
      }
    } else if (l$licensedBy_in != lOther$licensedBy_in) {
      return false;
    }
    final l$countryOfOrigin = countryOfOrigin;
    final lOther$countryOfOrigin = other.countryOfOrigin;
    if (_$data.containsKey('countryOfOrigin') !=
        other._$data.containsKey('countryOfOrigin')) {
      return false;
    }
    if (l$countryOfOrigin != lOther$countryOfOrigin) {
      return false;
    }
    final l$source_in = source_in;
    final lOther$source_in = other.source_in;
    if (_$data.containsKey('source_in') !=
        other._$data.containsKey('source_in')) {
      return false;
    }
    if (l$source_in != null && lOther$source_in != null) {
      if (l$source_in.length != lOther$source_in.length) {
        return false;
      }
      for (int i = 0; i < l$source_in.length; i++) {
        final l$source_in$entry = l$source_in[i];
        final lOther$source_in$entry = lOther$source_in[i];
        if (l$source_in$entry != lOther$source_in$entry) {
          return false;
        }
      }
    } else if (l$source_in != lOther$source_in) {
      return false;
    }
    final l$episodes_greater = episodes_greater;
    final lOther$episodes_greater = other.episodes_greater;
    if (_$data.containsKey('episodes_greater') !=
        other._$data.containsKey('episodes_greater')) {
      return false;
    }
    if (l$episodes_greater != lOther$episodes_greater) {
      return false;
    }
    final l$episodes_lesser = episodes_lesser;
    final lOther$episodes_lesser = other.episodes_lesser;
    if (_$data.containsKey('episodes_lesser') !=
        other._$data.containsKey('episodes_lesser')) {
      return false;
    }
    if (l$episodes_lesser != lOther$episodes_lesser) {
      return false;
    }
    final l$duration_greater = duration_greater;
    final lOther$duration_greater = other.duration_greater;
    if (_$data.containsKey('duration_greater') !=
        other._$data.containsKey('duration_greater')) {
      return false;
    }
    if (l$duration_greater != lOther$duration_greater) {
      return false;
    }
    final l$duration_lesser = duration_lesser;
    final lOther$duration_lesser = other.duration_lesser;
    if (_$data.containsKey('duration_lesser') !=
        other._$data.containsKey('duration_lesser')) {
      return false;
    }
    if (l$duration_lesser != lOther$duration_lesser) {
      return false;
    }
    final l$minimumTagRank = minimumTagRank;
    final lOther$minimumTagRank = other.minimumTagRank;
    if (_$data.containsKey('minimumTagRank') !=
        other._$data.containsKey('minimumTagRank')) {
      return false;
    }
    if (l$minimumTagRank != lOther$minimumTagRank) {
      return false;
    }
    final l$tagCategory_in = tagCategory_in;
    final lOther$tagCategory_in = other.tagCategory_in;
    if (_$data.containsKey('tagCategory_in') !=
        other._$data.containsKey('tagCategory_in')) {
      return false;
    }
    if (l$tagCategory_in != null && lOther$tagCategory_in != null) {
      if (l$tagCategory_in.length != lOther$tagCategory_in.length) {
        return false;
      }
      for (int i = 0; i < l$tagCategory_in.length; i++) {
        final l$tagCategory_in$entry = l$tagCategory_in[i];
        final lOther$tagCategory_in$entry = lOther$tagCategory_in[i];
        if (l$tagCategory_in$entry != lOther$tagCategory_in$entry) {
          return false;
        }
      }
    } else if (l$tagCategory_in != lOther$tagCategory_in) {
      return false;
    }
    final l$tag_in = tag_in;
    final lOther$tag_in = other.tag_in;
    if (_$data.containsKey('tag_in') != other._$data.containsKey('tag_in')) {
      return false;
    }
    if (l$tag_in != null && lOther$tag_in != null) {
      if (l$tag_in.length != lOther$tag_in.length) {
        return false;
      }
      for (int i = 0; i < l$tag_in.length; i++) {
        final l$tag_in$entry = l$tag_in[i];
        final lOther$tag_in$entry = lOther$tag_in[i];
        if (l$tag_in$entry != lOther$tag_in$entry) {
          return false;
        }
      }
    } else if (l$tag_in != lOther$tag_in) {
      return false;
    }
    final l$isAdult = isAdult;
    final lOther$isAdult = other.isAdult;
    if (_$data.containsKey('isAdult') != other._$data.containsKey('isAdult')) {
      return false;
    }
    if (l$isAdult != lOther$isAdult) {
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
    final l$chapters_greater = chapters_greater;
    final lOther$chapters_greater = other.chapters_greater;
    if (_$data.containsKey('chapters_greater') !=
        other._$data.containsKey('chapters_greater')) {
      return false;
    }
    if (l$chapters_greater != lOther$chapters_greater) {
      return false;
    }
    final l$chapters_lesser = chapters_lesser;
    final lOther$chapters_lesser = other.chapters_lesser;
    if (_$data.containsKey('chapters_lesser') !=
        other._$data.containsKey('chapters_lesser')) {
      return false;
    }
    if (l$chapters_lesser != lOther$chapters_lesser) {
      return false;
    }
    final l$volumes_greater = volumes_greater;
    final lOther$volumes_greater = other.volumes_greater;
    if (_$data.containsKey('volumes_greater') !=
        other._$data.containsKey('volumes_greater')) {
      return false;
    }
    if (l$volumes_greater != lOther$volumes_greater) {
      return false;
    }
    final l$volumes_lesser = volumes_lesser;
    final lOther$volumes_lesser = other.volumes_lesser;
    if (_$data.containsKey('volumes_lesser') !=
        other._$data.containsKey('volumes_lesser')) {
      return false;
    }
    if (l$volumes_lesser != lOther$volumes_lesser) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$page = page;
    final l$search = search;
    final l$type = type;
    final l$sort = sort;
    final l$genre = genre;
    final l$startDate_greater = startDate_greater;
    final l$startDate_lesser = startDate_lesser;
    final l$isLicensed = isLicensed;
    final l$season = season;
    final l$seasonYear = seasonYear;
    final l$format_in = format_in;
    final l$status_in = status_in;
    final l$licensedBy_in = licensedBy_in;
    final l$countryOfOrigin = countryOfOrigin;
    final l$source_in = source_in;
    final l$episodes_greater = episodes_greater;
    final l$episodes_lesser = episodes_lesser;
    final l$duration_greater = duration_greater;
    final l$duration_lesser = duration_lesser;
    final l$minimumTagRank = minimumTagRank;
    final l$tagCategory_in = tagCategory_in;
    final l$tag_in = tag_in;
    final l$isAdult = isAdult;
    final l$onList = onList;
    final l$chapters_greater = chapters_greater;
    final l$chapters_lesser = chapters_lesser;
    final l$volumes_greater = volumes_greater;
    final l$volumes_lesser = volumes_lesser;
    return Object.hashAll([
      _$data.containsKey('page') ? l$page : const {},
      _$data.containsKey('search') ? l$search : const {},
      _$data.containsKey('type') ? l$type : const {},
      _$data.containsKey('sort')
          ? l$sort == null
              ? null
              : Object.hashAll(l$sort.map((v) => v))
          : const {},
      _$data.containsKey('genre')
          ? l$genre == null
              ? null
              : Object.hashAll(l$genre.map((v) => v))
          : const {},
      _$data.containsKey('startDate_greater') ? l$startDate_greater : const {},
      _$data.containsKey('startDate_lesser') ? l$startDate_lesser : const {},
      _$data.containsKey('isLicensed') ? l$isLicensed : const {},
      _$data.containsKey('season') ? l$season : const {},
      _$data.containsKey('seasonYear') ? l$seasonYear : const {},
      _$data.containsKey('format_in')
          ? l$format_in == null
              ? null
              : Object.hashAll(l$format_in.map((v) => v))
          : const {},
      _$data.containsKey('status_in')
          ? l$status_in == null
              ? null
              : Object.hashAll(l$status_in.map((v) => v))
          : const {},
      _$data.containsKey('licensedBy_in')
          ? l$licensedBy_in == null
              ? null
              : Object.hashAll(l$licensedBy_in.map((v) => v))
          : const {},
      _$data.containsKey('countryOfOrigin') ? l$countryOfOrigin : const {},
      _$data.containsKey('source_in')
          ? l$source_in == null
              ? null
              : Object.hashAll(l$source_in.map((v) => v))
          : const {},
      _$data.containsKey('episodes_greater') ? l$episodes_greater : const {},
      _$data.containsKey('episodes_lesser') ? l$episodes_lesser : const {},
      _$data.containsKey('duration_greater') ? l$duration_greater : const {},
      _$data.containsKey('duration_lesser') ? l$duration_lesser : const {},
      _$data.containsKey('minimumTagRank') ? l$minimumTagRank : const {},
      _$data.containsKey('tagCategory_in')
          ? l$tagCategory_in == null
              ? null
              : Object.hashAll(l$tagCategory_in.map((v) => v))
          : const {},
      _$data.containsKey('tag_in')
          ? l$tag_in == null
              ? null
              : Object.hashAll(l$tag_in.map((v) => v))
          : const {},
      _$data.containsKey('isAdult') ? l$isAdult : const {},
      _$data.containsKey('onList') ? l$onList : const {},
      _$data.containsKey('chapters_greater') ? l$chapters_greater : const {},
      _$data.containsKey('chapters_lesser') ? l$chapters_lesser : const {},
      _$data.containsKey('volumes_greater') ? l$volumes_greater : const {},
      _$data.containsKey('volumes_lesser') ? l$volumes_lesser : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$FilterMedia<TRes> {
  factory CopyWith$Variables$Query$FilterMedia(
    Variables$Query$FilterMedia instance,
    TRes Function(Variables$Query$FilterMedia) then,
  ) = _CopyWithImpl$Variables$Query$FilterMedia;

  factory CopyWith$Variables$Query$FilterMedia.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$FilterMedia;

  TRes call({
    int? page,
    String? search,
    Enum$MediaType? type,
    List<Enum$MediaSort?>? sort,
    List<String?>? genre,
    String? startDate_greater,
    String? startDate_lesser,
    bool? isLicensed,
    Enum$MediaSeason? season,
    int? seasonYear,
    List<Enum$MediaFormat?>? format_in,
    List<Enum$MediaStatus?>? status_in,
    List<String?>? licensedBy_in,
    String? countryOfOrigin,
    List<Enum$MediaSource?>? source_in,
    int? episodes_greater,
    int? episodes_lesser,
    int? duration_greater,
    int? duration_lesser,
    int? minimumTagRank,
    List<String?>? tagCategory_in,
    List<String?>? tag_in,
    bool? isAdult,
    bool? onList,
    int? chapters_greater,
    int? chapters_lesser,
    int? volumes_greater,
    int? volumes_lesser,
  });
}

class _CopyWithImpl$Variables$Query$FilterMedia<TRes>
    implements CopyWith$Variables$Query$FilterMedia<TRes> {
  _CopyWithImpl$Variables$Query$FilterMedia(
    this._instance,
    this._then,
  );

  final Variables$Query$FilterMedia _instance;

  final TRes Function(Variables$Query$FilterMedia) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? page = _undefined,
    Object? search = _undefined,
    Object? type = _undefined,
    Object? sort = _undefined,
    Object? genre = _undefined,
    Object? startDate_greater = _undefined,
    Object? startDate_lesser = _undefined,
    Object? isLicensed = _undefined,
    Object? season = _undefined,
    Object? seasonYear = _undefined,
    Object? format_in = _undefined,
    Object? status_in = _undefined,
    Object? licensedBy_in = _undefined,
    Object? countryOfOrigin = _undefined,
    Object? source_in = _undefined,
    Object? episodes_greater = _undefined,
    Object? episodes_lesser = _undefined,
    Object? duration_greater = _undefined,
    Object? duration_lesser = _undefined,
    Object? minimumTagRank = _undefined,
    Object? tagCategory_in = _undefined,
    Object? tag_in = _undefined,
    Object? isAdult = _undefined,
    Object? onList = _undefined,
    Object? chapters_greater = _undefined,
    Object? chapters_lesser = _undefined,
    Object? volumes_greater = _undefined,
    Object? volumes_lesser = _undefined,
  }) =>
      _then(Variables$Query$FilterMedia._({
        ..._instance._$data,
        if (page != _undefined) 'page': (page as int?),
        if (search != _undefined) 'search': (search as String?),
        if (type != _undefined) 'type': (type as Enum$MediaType?),
        if (sort != _undefined) 'sort': (sort as List<Enum$MediaSort?>?),
        if (genre != _undefined) 'genre': (genre as List<String?>?),
        if (startDate_greater != _undefined)
          'startDate_greater': (startDate_greater as String?),
        if (startDate_lesser != _undefined)
          'startDate_lesser': (startDate_lesser as String?),
        if (isLicensed != _undefined) 'isLicensed': (isLicensed as bool?),
        if (season != _undefined) 'season': (season as Enum$MediaSeason?),
        if (seasonYear != _undefined) 'seasonYear': (seasonYear as int?),
        if (format_in != _undefined)
          'format_in': (format_in as List<Enum$MediaFormat?>?),
        if (status_in != _undefined)
          'status_in': (status_in as List<Enum$MediaStatus?>?),
        if (licensedBy_in != _undefined)
          'licensedBy_in': (licensedBy_in as List<String?>?),
        if (countryOfOrigin != _undefined)
          'countryOfOrigin': (countryOfOrigin as String?),
        if (source_in != _undefined)
          'source_in': (source_in as List<Enum$MediaSource?>?),
        if (episodes_greater != _undefined)
          'episodes_greater': (episodes_greater as int?),
        if (episodes_lesser != _undefined)
          'episodes_lesser': (episodes_lesser as int?),
        if (duration_greater != _undefined)
          'duration_greater': (duration_greater as int?),
        if (duration_lesser != _undefined)
          'duration_lesser': (duration_lesser as int?),
        if (minimumTagRank != _undefined)
          'minimumTagRank': (minimumTagRank as int?),
        if (tagCategory_in != _undefined)
          'tagCategory_in': (tagCategory_in as List<String?>?),
        if (tag_in != _undefined) 'tag_in': (tag_in as List<String?>?),
        if (isAdult != _undefined) 'isAdult': (isAdult as bool?),
        if (onList != _undefined) 'onList': (onList as bool?),
        if (chapters_greater != _undefined)
          'chapters_greater': (chapters_greater as int?),
        if (chapters_lesser != _undefined)
          'chapters_lesser': (chapters_lesser as int?),
        if (volumes_greater != _undefined)
          'volumes_greater': (volumes_greater as int?),
        if (volumes_lesser != _undefined)
          'volumes_lesser': (volumes_lesser as int?),
      }));
}

class _CopyWithStubImpl$Variables$Query$FilterMedia<TRes>
    implements CopyWith$Variables$Query$FilterMedia<TRes> {
  _CopyWithStubImpl$Variables$Query$FilterMedia(this._res);

  TRes _res;

  call({
    int? page,
    String? search,
    Enum$MediaType? type,
    List<Enum$MediaSort?>? sort,
    List<String?>? genre,
    String? startDate_greater,
    String? startDate_lesser,
    bool? isLicensed,
    Enum$MediaSeason? season,
    int? seasonYear,
    List<Enum$MediaFormat?>? format_in,
    List<Enum$MediaStatus?>? status_in,
    List<String?>? licensedBy_in,
    String? countryOfOrigin,
    List<Enum$MediaSource?>? source_in,
    int? episodes_greater,
    int? episodes_lesser,
    int? duration_greater,
    int? duration_lesser,
    int? minimumTagRank,
    List<String?>? tagCategory_in,
    List<String?>? tag_in,
    bool? isAdult,
    bool? onList,
    int? chapters_greater,
    int? chapters_lesser,
    int? volumes_greater,
    int? volumes_lesser,
  }) =>
      _res;
}

class Query$FilterMedia {
  Query$FilterMedia({
    this.Page,
    this.$__typename = 'Query',
  });

  factory Query$FilterMedia.fromJson(Map<String, dynamic> json) {
    final l$Page = json['Page'];
    final l$$__typename = json['__typename'];
    return Query$FilterMedia(
      Page: l$Page == null
          ? null
          : Query$FilterMedia$Page.fromJson((l$Page as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$FilterMedia$Page? Page;

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
    if (!(other is Query$FilterMedia) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$FilterMedia on Query$FilterMedia {
  CopyWith$Query$FilterMedia<Query$FilterMedia> get copyWith =>
      CopyWith$Query$FilterMedia(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$FilterMedia<TRes> {
  factory CopyWith$Query$FilterMedia(
    Query$FilterMedia instance,
    TRes Function(Query$FilterMedia) then,
  ) = _CopyWithImpl$Query$FilterMedia;

  factory CopyWith$Query$FilterMedia.stub(TRes res) =
      _CopyWithStubImpl$Query$FilterMedia;

  TRes call({
    Query$FilterMedia$Page? Page,
    String? $__typename,
  });
  CopyWith$Query$FilterMedia$Page<TRes> get Page;
}

class _CopyWithImpl$Query$FilterMedia<TRes>
    implements CopyWith$Query$FilterMedia<TRes> {
  _CopyWithImpl$Query$FilterMedia(
    this._instance,
    this._then,
  );

  final Query$FilterMedia _instance;

  final TRes Function(Query$FilterMedia) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? Page = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FilterMedia(
        Page: Page == _undefined
            ? _instance.Page
            : (Page as Query$FilterMedia$Page?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$FilterMedia$Page<TRes> get Page {
    final local$Page = _instance.Page;
    return local$Page == null
        ? CopyWith$Query$FilterMedia$Page.stub(_then(_instance))
        : CopyWith$Query$FilterMedia$Page(local$Page, (e) => call(Page: e));
  }
}

class _CopyWithStubImpl$Query$FilterMedia<TRes>
    implements CopyWith$Query$FilterMedia<TRes> {
  _CopyWithStubImpl$Query$FilterMedia(this._res);

  TRes _res;

  call({
    Query$FilterMedia$Page? Page,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$FilterMedia$Page<TRes> get Page =>
      CopyWith$Query$FilterMedia$Page.stub(_res);
}

const documentNodeQueryFilterMedia = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'FilterMedia'),
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
        variable: VariableNode(name: NameNode(value: 'search')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
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
        variable: VariableNode(name: NameNode(value: 'genre')),
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
        variable: VariableNode(name: NameNode(value: 'startDate_greater')),
        type: NamedTypeNode(
          name: NameNode(value: 'FuzzyDateInt'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'startDate_lesser')),
        type: NamedTypeNode(
          name: NameNode(value: 'FuzzyDateInt'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'isLicensed')),
        type: NamedTypeNode(
          name: NameNode(value: 'Boolean'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'season')),
        type: NamedTypeNode(
          name: NameNode(value: 'MediaSeason'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'seasonYear')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'format_in')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'MediaFormat'),
            isNonNull: false,
          ),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'status_in')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'MediaStatus'),
            isNonNull: false,
          ),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'licensedBy_in')),
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
        variable: VariableNode(name: NameNode(value: 'countryOfOrigin')),
        type: NamedTypeNode(
          name: NameNode(value: 'CountryCode'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'source_in')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'MediaSource'),
            isNonNull: false,
          ),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'episodes_greater')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'episodes_lesser')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'duration_greater')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'duration_lesser')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'minimumTagRank')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'tagCategory_in')),
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
        variable: VariableNode(name: NameNode(value: 'tag_in')),
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
        variable: VariableNode(name: NameNode(value: 'isAdult')),
        type: NamedTypeNode(
          name: NameNode(value: 'Boolean'),
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
        variable: VariableNode(name: NameNode(value: 'chapters_greater')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'chapters_lesser')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'volumes_greater')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'volumes_lesser')),
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
        name: NameNode(value: 'Page'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'page'),
            value: VariableNode(name: NameNode(value: 'page')),
          ),
          ArgumentNode(
            name: NameNode(value: 'perPage'),
            value: IntValueNode(value: '50'),
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
                name: NameNode(value: 'type'),
                value: VariableNode(name: NameNode(value: 'type')),
              ),
              ArgumentNode(
                name: NameNode(value: 'search'),
                value: VariableNode(name: NameNode(value: 'search')),
              ),
              ArgumentNode(
                name: NameNode(value: 'sort'),
                value: VariableNode(name: NameNode(value: 'sort')),
              ),
              ArgumentNode(
                name: NameNode(value: 'genre_in'),
                value: VariableNode(name: NameNode(value: 'genre')),
              ),
              ArgumentNode(
                name: NameNode(value: 'startDate_greater'),
                value: VariableNode(name: NameNode(value: 'startDate_greater')),
              ),
              ArgumentNode(
                name: NameNode(value: 'startDate_lesser'),
                value: VariableNode(name: NameNode(value: 'startDate_lesser')),
              ),
              ArgumentNode(
                name: NameNode(value: 'isLicensed'),
                value: VariableNode(name: NameNode(value: 'isLicensed')),
              ),
              ArgumentNode(
                name: NameNode(value: 'season'),
                value: VariableNode(name: NameNode(value: 'season')),
              ),
              ArgumentNode(
                name: NameNode(value: 'seasonYear'),
                value: VariableNode(name: NameNode(value: 'seasonYear')),
              ),
              ArgumentNode(
                name: NameNode(value: 'format_in'),
                value: VariableNode(name: NameNode(value: 'format_in')),
              ),
              ArgumentNode(
                name: NameNode(value: 'status_in'),
                value: VariableNode(name: NameNode(value: 'status_in')),
              ),
              ArgumentNode(
                name: NameNode(value: 'licensedBy_in'),
                value: VariableNode(name: NameNode(value: 'licensedBy_in')),
              ),
              ArgumentNode(
                name: NameNode(value: 'countryOfOrigin'),
                value: VariableNode(name: NameNode(value: 'countryOfOrigin')),
              ),
              ArgumentNode(
                name: NameNode(value: 'source_in'),
                value: VariableNode(name: NameNode(value: 'source_in')),
              ),
              ArgumentNode(
                name: NameNode(value: 'episodes_greater'),
                value: VariableNode(name: NameNode(value: 'episodes_greater')),
              ),
              ArgumentNode(
                name: NameNode(value: 'episodes_lesser'),
                value: VariableNode(name: NameNode(value: 'episodes_lesser')),
              ),
              ArgumentNode(
                name: NameNode(value: 'duration_greater'),
                value: VariableNode(name: NameNode(value: 'duration_greater')),
              ),
              ArgumentNode(
                name: NameNode(value: 'duration_lesser'),
                value: VariableNode(name: NameNode(value: 'duration_lesser')),
              ),
              ArgumentNode(
                name: NameNode(value: 'isAdult'),
                value: VariableNode(name: NameNode(value: 'isAdult')),
              ),
              ArgumentNode(
                name: NameNode(value: 'minimumTagRank'),
                value: VariableNode(name: NameNode(value: 'minimumTagRank')),
              ),
              ArgumentNode(
                name: NameNode(value: 'tagCategory_in'),
                value: VariableNode(name: NameNode(value: 'tagCategory_in')),
              ),
              ArgumentNode(
                name: NameNode(value: 'tag_in'),
                value: VariableNode(name: NameNode(value: 'tag_in')),
              ),
              ArgumentNode(
                name: NameNode(value: 'onList'),
                value: VariableNode(name: NameNode(value: 'onList')),
              ),
              ArgumentNode(
                name: NameNode(value: 'chapters_greater'),
                value: VariableNode(name: NameNode(value: 'chapters_greater')),
              ),
              ArgumentNode(
                name: NameNode(value: 'chapters_lesser'),
                value: VariableNode(name: NameNode(value: 'chapters_lesser')),
              ),
              ArgumentNode(
                name: NameNode(value: 'volumes_greater'),
                value: VariableNode(name: NameNode(value: 'volumes_greater')),
              ),
              ArgumentNode(
                name: NameNode(value: 'volumes_lesser'),
                value: VariableNode(name: NameNode(value: 'volumes_lesser')),
              ),
            ],
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
  fragmentDefinitionMediaShort,
  fragmentDefinitionFuzzyDate,
]);
Query$FilterMedia _parserFn$Query$FilterMedia(Map<String, dynamic> data) =>
    Query$FilterMedia.fromJson(data);
typedef OnQueryComplete$Query$FilterMedia = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$FilterMedia?,
);

class Options$Query$FilterMedia
    extends graphql.QueryOptions<Query$FilterMedia> {
  Options$Query$FilterMedia({
    String? operationName,
    Variables$Query$FilterMedia? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$FilterMedia? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$FilterMedia? onComplete,
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
                    data == null ? null : _parserFn$Query$FilterMedia(data),
                  ),
          onError: onError,
          document: documentNodeQueryFilterMedia,
          parserFn: _parserFn$Query$FilterMedia,
        );

  final OnQueryComplete$Query$FilterMedia? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$FilterMedia
    extends graphql.WatchQueryOptions<Query$FilterMedia> {
  WatchOptions$Query$FilterMedia({
    String? operationName,
    Variables$Query$FilterMedia? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$FilterMedia? typedOptimisticResult,
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
          document: documentNodeQueryFilterMedia,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$FilterMedia,
        );
}

class FetchMoreOptions$Query$FilterMedia extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$FilterMedia({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$FilterMedia? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryFilterMedia,
        );
}

extension ClientExtension$Query$FilterMedia on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$FilterMedia>> query$FilterMedia(
          [Options$Query$FilterMedia? options]) async =>
      await this.query(options ?? Options$Query$FilterMedia());
  graphql.ObservableQuery<Query$FilterMedia> watchQuery$FilterMedia(
          [WatchOptions$Query$FilterMedia? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$FilterMedia());
  void writeQuery$FilterMedia({
    required Query$FilterMedia data,
    Variables$Query$FilterMedia? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryFilterMedia),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$FilterMedia? readQuery$FilterMedia({
    Variables$Query$FilterMedia? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryFilterMedia),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$FilterMedia.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$FilterMedia> useQuery$FilterMedia(
        [Options$Query$FilterMedia? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$FilterMedia());
graphql.ObservableQuery<Query$FilterMedia> useWatchQuery$FilterMedia(
        [WatchOptions$Query$FilterMedia? options]) =>
    graphql_flutter.useWatchQuery(options ?? WatchOptions$Query$FilterMedia());

class Query$FilterMedia$Widget
    extends graphql_flutter.Query<Query$FilterMedia> {
  Query$FilterMedia$Widget({
    widgets.Key? key,
    Options$Query$FilterMedia? options,
    required graphql_flutter.QueryBuilder<Query$FilterMedia> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$FilterMedia(),
          builder: builder,
        );
}

class Query$FilterMedia$Page {
  Query$FilterMedia$Page({
    this.pageInfo,
    this.media,
    this.$__typename = 'Page',
  });

  factory Query$FilterMedia$Page.fromJson(Map<String, dynamic> json) {
    final l$pageInfo = json['pageInfo'];
    final l$media = json['media'];
    final l$$__typename = json['__typename'];
    return Query$FilterMedia$Page(
      pageInfo: l$pageInfo == null
          ? null
          : Query$FilterMedia$Page$pageInfo.fromJson(
              (l$pageInfo as Map<String, dynamic>)),
      media: (l$media as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$MediaShort.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$FilterMedia$Page$pageInfo? pageInfo;

  final List<Fragment$MediaShort?>? media;

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
    if (!(other is Query$FilterMedia$Page) ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$FilterMedia$Page on Query$FilterMedia$Page {
  CopyWith$Query$FilterMedia$Page<Query$FilterMedia$Page> get copyWith =>
      CopyWith$Query$FilterMedia$Page(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$FilterMedia$Page<TRes> {
  factory CopyWith$Query$FilterMedia$Page(
    Query$FilterMedia$Page instance,
    TRes Function(Query$FilterMedia$Page) then,
  ) = _CopyWithImpl$Query$FilterMedia$Page;

  factory CopyWith$Query$FilterMedia$Page.stub(TRes res) =
      _CopyWithStubImpl$Query$FilterMedia$Page;

  TRes call({
    Query$FilterMedia$Page$pageInfo? pageInfo,
    List<Fragment$MediaShort?>? media,
    String? $__typename,
  });
  CopyWith$Query$FilterMedia$Page$pageInfo<TRes> get pageInfo;
  TRes media(
      Iterable<Fragment$MediaShort?>? Function(
              Iterable<CopyWith$Fragment$MediaShort<Fragment$MediaShort>?>?)
          _fn);
}

class _CopyWithImpl$Query$FilterMedia$Page<TRes>
    implements CopyWith$Query$FilterMedia$Page<TRes> {
  _CopyWithImpl$Query$FilterMedia$Page(
    this._instance,
    this._then,
  );

  final Query$FilterMedia$Page _instance;

  final TRes Function(Query$FilterMedia$Page) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pageInfo = _undefined,
    Object? media = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FilterMedia$Page(
        pageInfo: pageInfo == _undefined
            ? _instance.pageInfo
            : (pageInfo as Query$FilterMedia$Page$pageInfo?),
        media: media == _undefined
            ? _instance.media
            : (media as List<Fragment$MediaShort?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$FilterMedia$Page$pageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return local$pageInfo == null
        ? CopyWith$Query$FilterMedia$Page$pageInfo.stub(_then(_instance))
        : CopyWith$Query$FilterMedia$Page$pageInfo(
            local$pageInfo, (e) => call(pageInfo: e));
  }

  TRes media(
          Iterable<Fragment$MediaShort?>? Function(
                  Iterable<CopyWith$Fragment$MediaShort<Fragment$MediaShort>?>?)
              _fn) =>
      call(
          media: _fn(_instance.media?.map((e) => e == null
              ? null
              : CopyWith$Fragment$MediaShort(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$FilterMedia$Page<TRes>
    implements CopyWith$Query$FilterMedia$Page<TRes> {
  _CopyWithStubImpl$Query$FilterMedia$Page(this._res);

  TRes _res;

  call({
    Query$FilterMedia$Page$pageInfo? pageInfo,
    List<Fragment$MediaShort?>? media,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$FilterMedia$Page$pageInfo<TRes> get pageInfo =>
      CopyWith$Query$FilterMedia$Page$pageInfo.stub(_res);

  media(_fn) => _res;
}

class Query$FilterMedia$Page$pageInfo {
  Query$FilterMedia$Page$pageInfo({
    this.hasNextPage,
    this.$__typename = 'PageInfo',
  });

  factory Query$FilterMedia$Page$pageInfo.fromJson(Map<String, dynamic> json) {
    final l$hasNextPage = json['hasNextPage'];
    final l$$__typename = json['__typename'];
    return Query$FilterMedia$Page$pageInfo(
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
    if (!(other is Query$FilterMedia$Page$pageInfo) ||
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

extension UtilityExtension$Query$FilterMedia$Page$pageInfo
    on Query$FilterMedia$Page$pageInfo {
  CopyWith$Query$FilterMedia$Page$pageInfo<Query$FilterMedia$Page$pageInfo>
      get copyWith => CopyWith$Query$FilterMedia$Page$pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FilterMedia$Page$pageInfo<TRes> {
  factory CopyWith$Query$FilterMedia$Page$pageInfo(
    Query$FilterMedia$Page$pageInfo instance,
    TRes Function(Query$FilterMedia$Page$pageInfo) then,
  ) = _CopyWithImpl$Query$FilterMedia$Page$pageInfo;

  factory CopyWith$Query$FilterMedia$Page$pageInfo.stub(TRes res) =
      _CopyWithStubImpl$Query$FilterMedia$Page$pageInfo;

  TRes call({
    bool? hasNextPage,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FilterMedia$Page$pageInfo<TRes>
    implements CopyWith$Query$FilterMedia$Page$pageInfo<TRes> {
  _CopyWithImpl$Query$FilterMedia$Page$pageInfo(
    this._instance,
    this._then,
  );

  final Query$FilterMedia$Page$pageInfo _instance;

  final TRes Function(Query$FilterMedia$Page$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasNextPage = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FilterMedia$Page$pageInfo(
        hasNextPage: hasNextPage == _undefined
            ? _instance.hasNextPage
            : (hasNextPage as bool?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FilterMedia$Page$pageInfo<TRes>
    implements CopyWith$Query$FilterMedia$Page$pageInfo<TRes> {
  _CopyWithStubImpl$Query$FilterMedia$Page$pageInfo(this._res);

  TRes _res;

  call({
    bool? hasNextPage,
    String? $__typename,
  }) =>
      _res;
}
