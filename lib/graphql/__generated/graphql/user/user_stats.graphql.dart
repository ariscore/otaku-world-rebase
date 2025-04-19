// GENERATED FILE
// DO NOT MODIFY
// ignore_for_file: type=lint
import '../schema.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Fragment$UserStatistics {
  factory Variables$Fragment$UserStatistics(
          {List<Enum$UserStatisticsSort?>? sort}) =>
      Variables$Fragment$UserStatistics._({
        if (sort != null) r'sort': sort,
      });

  Variables$Fragment$UserStatistics._(this._$data);

  factory Variables$Fragment$UserStatistics.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('sort')) {
      final l$sort = data['sort'];
      result$data['sort'] = (l$sort as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : fromJson$Enum$UserStatisticsSort((e as String)))
          .toList();
    }
    return Variables$Fragment$UserStatistics._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Enum$UserStatisticsSort?>? get sort =>
      (_$data['sort'] as List<Enum$UserStatisticsSort?>?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('sort')) {
      final l$sort = sort;
      result$data['sort'] = l$sort
          ?.map((e) => e == null ? null : toJson$Enum$UserStatisticsSort(e))
          .toList();
    }
    return result$data;
  }

  CopyWith$Variables$Fragment$UserStatistics<Variables$Fragment$UserStatistics>
      get copyWith => CopyWith$Variables$Fragment$UserStatistics(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Fragment$UserStatistics ||
        runtimeType != other.runtimeType) {
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
    return true;
  }

  @override
  int get hashCode {
    final l$sort = sort;
    return Object.hashAll([
      _$data.containsKey('sort')
          ? l$sort == null
              ? null
              : Object.hashAll(l$sort.map((v) => v))
          : const {}
    ]);
  }
}

abstract class CopyWith$Variables$Fragment$UserStatistics<TRes> {
  factory CopyWith$Variables$Fragment$UserStatistics(
    Variables$Fragment$UserStatistics instance,
    TRes Function(Variables$Fragment$UserStatistics) then,
  ) = _CopyWithImpl$Variables$Fragment$UserStatistics;

  factory CopyWith$Variables$Fragment$UserStatistics.stub(TRes res) =
      _CopyWithStubImpl$Variables$Fragment$UserStatistics;

  TRes call({List<Enum$UserStatisticsSort?>? sort});
}

class _CopyWithImpl$Variables$Fragment$UserStatistics<TRes>
    implements CopyWith$Variables$Fragment$UserStatistics<TRes> {
  _CopyWithImpl$Variables$Fragment$UserStatistics(
    this._instance,
    this._then,
  );

  final Variables$Fragment$UserStatistics _instance;

  final TRes Function(Variables$Fragment$UserStatistics) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? sort = _undefined}) =>
      _then(Variables$Fragment$UserStatistics._({
        ..._instance._$data,
        if (sort != _undefined)
          'sort': (sort as List<Enum$UserStatisticsSort?>?),
      }));
}

class _CopyWithStubImpl$Variables$Fragment$UserStatistics<TRes>
    implements CopyWith$Variables$Fragment$UserStatistics<TRes> {
  _CopyWithStubImpl$Variables$Fragment$UserStatistics(this._res);

  TRes _res;

  call({List<Enum$UserStatisticsSort?>? sort}) => _res;
}

class Fragment$UserStatistics {
  Fragment$UserStatistics({
    required this.count,
    required this.meanScore,
    required this.standardDeviation,
    required this.minutesWatched,
    required this.episodesWatched,
    required this.chaptersRead,
    required this.volumesRead,
    this.formats,
    this.statuses,
    this.scores,
    this.lengths,
    this.releaseYears,
    this.startYears,
    this.genres,
    this.tags,
    this.countries,
    this.voiceActors,
    this.staff,
    this.studios,
    this.$__typename = 'UserStatistics',
  });

  factory Fragment$UserStatistics.fromJson(Map<String, dynamic> json) {
    final l$count = json['count'];
    final l$meanScore = json['meanScore'];
    final l$standardDeviation = json['standardDeviation'];
    final l$minutesWatched = json['minutesWatched'];
    final l$episodesWatched = json['episodesWatched'];
    final l$chaptersRead = json['chaptersRead'];
    final l$volumesRead = json['volumesRead'];
    final l$formats = json['formats'];
    final l$statuses = json['statuses'];
    final l$scores = json['scores'];
    final l$lengths = json['lengths'];
    final l$releaseYears = json['releaseYears'];
    final l$startYears = json['startYears'];
    final l$genres = json['genres'];
    final l$tags = json['tags'];
    final l$countries = json['countries'];
    final l$voiceActors = json['voiceActors'];
    final l$staff = json['staff'];
    final l$studios = json['studios'];
    final l$$__typename = json['__typename'];
    return Fragment$UserStatistics(
      count: (l$count as int),
      meanScore: (l$meanScore as num).toDouble(),
      standardDeviation: (l$standardDeviation as num).toDouble(),
      minutesWatched: (l$minutesWatched as int),
      episodesWatched: (l$episodesWatched as int),
      chaptersRead: (l$chaptersRead as int),
      volumesRead: (l$volumesRead as int),
      formats: (l$formats as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$UserStatistics$formats.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      statuses: (l$statuses as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$UserStatistics$statuses.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      scores: (l$scores as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$UserStatistics$scores.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      lengths: (l$lengths as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$UserStatistics$lengths.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      releaseYears: (l$releaseYears as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$UserStatistics$releaseYears.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      startYears: (l$startYears as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$UserStatistics$startYears.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      genres: (l$genres as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$UserStatistics$genres.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      tags: (l$tags as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$UserStatistics$tags.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      countries: (l$countries as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$UserStatistics$countries.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      voiceActors: (l$voiceActors as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$UserStatistics$voiceActors.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      staff: (l$staff as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$UserStatistics$staff.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      studios: (l$studios as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$UserStatistics$studios.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int count;

  final double meanScore;

  final double standardDeviation;

  final int minutesWatched;

  final int episodesWatched;

  final int chaptersRead;

  final int volumesRead;

  final List<Fragment$UserStatistics$formats?>? formats;

  final List<Fragment$UserStatistics$statuses?>? statuses;

  final List<Fragment$UserStatistics$scores?>? scores;

  final List<Fragment$UserStatistics$lengths?>? lengths;

  final List<Fragment$UserStatistics$releaseYears?>? releaseYears;

  final List<Fragment$UserStatistics$startYears?>? startYears;

  final List<Fragment$UserStatistics$genres?>? genres;

  final List<Fragment$UserStatistics$tags?>? tags;

  final List<Fragment$UserStatistics$countries?>? countries;

  final List<Fragment$UserStatistics$voiceActors?>? voiceActors;

  final List<Fragment$UserStatistics$staff?>? staff;

  final List<Fragment$UserStatistics$studios?>? studios;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$count = count;
    _resultData['count'] = l$count;
    final l$meanScore = meanScore;
    _resultData['meanScore'] = l$meanScore;
    final l$standardDeviation = standardDeviation;
    _resultData['standardDeviation'] = l$standardDeviation;
    final l$minutesWatched = minutesWatched;
    _resultData['minutesWatched'] = l$minutesWatched;
    final l$episodesWatched = episodesWatched;
    _resultData['episodesWatched'] = l$episodesWatched;
    final l$chaptersRead = chaptersRead;
    _resultData['chaptersRead'] = l$chaptersRead;
    final l$volumesRead = volumesRead;
    _resultData['volumesRead'] = l$volumesRead;
    final l$formats = formats;
    _resultData['formats'] = l$formats?.map((e) => e?.toJson()).toList();
    final l$statuses = statuses;
    _resultData['statuses'] = l$statuses?.map((e) => e?.toJson()).toList();
    final l$scores = scores;
    _resultData['scores'] = l$scores?.map((e) => e?.toJson()).toList();
    final l$lengths = lengths;
    _resultData['lengths'] = l$lengths?.map((e) => e?.toJson()).toList();
    final l$releaseYears = releaseYears;
    _resultData['releaseYears'] =
        l$releaseYears?.map((e) => e?.toJson()).toList();
    final l$startYears = startYears;
    _resultData['startYears'] = l$startYears?.map((e) => e?.toJson()).toList();
    final l$genres = genres;
    _resultData['genres'] = l$genres?.map((e) => e?.toJson()).toList();
    final l$tags = tags;
    _resultData['tags'] = l$tags?.map((e) => e?.toJson()).toList();
    final l$countries = countries;
    _resultData['countries'] = l$countries?.map((e) => e?.toJson()).toList();
    final l$voiceActors = voiceActors;
    _resultData['voiceActors'] =
        l$voiceActors?.map((e) => e?.toJson()).toList();
    final l$staff = staff;
    _resultData['staff'] = l$staff?.map((e) => e?.toJson()).toList();
    final l$studios = studios;
    _resultData['studios'] = l$studios?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$count = count;
    final l$meanScore = meanScore;
    final l$standardDeviation = standardDeviation;
    final l$minutesWatched = minutesWatched;
    final l$episodesWatched = episodesWatched;
    final l$chaptersRead = chaptersRead;
    final l$volumesRead = volumesRead;
    final l$formats = formats;
    final l$statuses = statuses;
    final l$scores = scores;
    final l$lengths = lengths;
    final l$releaseYears = releaseYears;
    final l$startYears = startYears;
    final l$genres = genres;
    final l$tags = tags;
    final l$countries = countries;
    final l$voiceActors = voiceActors;
    final l$staff = staff;
    final l$studios = studios;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$count,
      l$meanScore,
      l$standardDeviation,
      l$minutesWatched,
      l$episodesWatched,
      l$chaptersRead,
      l$volumesRead,
      l$formats == null ? null : Object.hashAll(l$formats.map((v) => v)),
      l$statuses == null ? null : Object.hashAll(l$statuses.map((v) => v)),
      l$scores == null ? null : Object.hashAll(l$scores.map((v) => v)),
      l$lengths == null ? null : Object.hashAll(l$lengths.map((v) => v)),
      l$releaseYears == null
          ? null
          : Object.hashAll(l$releaseYears.map((v) => v)),
      l$startYears == null ? null : Object.hashAll(l$startYears.map((v) => v)),
      l$genres == null ? null : Object.hashAll(l$genres.map((v) => v)),
      l$tags == null ? null : Object.hashAll(l$tags.map((v) => v)),
      l$countries == null ? null : Object.hashAll(l$countries.map((v) => v)),
      l$voiceActors == null
          ? null
          : Object.hashAll(l$voiceActors.map((v) => v)),
      l$staff == null ? null : Object.hashAll(l$staff.map((v) => v)),
      l$studios == null ? null : Object.hashAll(l$studios.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$UserStatistics || runtimeType != other.runtimeType) {
      return false;
    }
    final l$count = count;
    final lOther$count = other.count;
    if (l$count != lOther$count) {
      return false;
    }
    final l$meanScore = meanScore;
    final lOther$meanScore = other.meanScore;
    if (l$meanScore != lOther$meanScore) {
      return false;
    }
    final l$standardDeviation = standardDeviation;
    final lOther$standardDeviation = other.standardDeviation;
    if (l$standardDeviation != lOther$standardDeviation) {
      return false;
    }
    final l$minutesWatched = minutesWatched;
    final lOther$minutesWatched = other.minutesWatched;
    if (l$minutesWatched != lOther$minutesWatched) {
      return false;
    }
    final l$episodesWatched = episodesWatched;
    final lOther$episodesWatched = other.episodesWatched;
    if (l$episodesWatched != lOther$episodesWatched) {
      return false;
    }
    final l$chaptersRead = chaptersRead;
    final lOther$chaptersRead = other.chaptersRead;
    if (l$chaptersRead != lOther$chaptersRead) {
      return false;
    }
    final l$volumesRead = volumesRead;
    final lOther$volumesRead = other.volumesRead;
    if (l$volumesRead != lOther$volumesRead) {
      return false;
    }
    final l$formats = formats;
    final lOther$formats = other.formats;
    if (l$formats != null && lOther$formats != null) {
      if (l$formats.length != lOther$formats.length) {
        return false;
      }
      for (int i = 0; i < l$formats.length; i++) {
        final l$formats$entry = l$formats[i];
        final lOther$formats$entry = lOther$formats[i];
        if (l$formats$entry != lOther$formats$entry) {
          return false;
        }
      }
    } else if (l$formats != lOther$formats) {
      return false;
    }
    final l$statuses = statuses;
    final lOther$statuses = other.statuses;
    if (l$statuses != null && lOther$statuses != null) {
      if (l$statuses.length != lOther$statuses.length) {
        return false;
      }
      for (int i = 0; i < l$statuses.length; i++) {
        final l$statuses$entry = l$statuses[i];
        final lOther$statuses$entry = lOther$statuses[i];
        if (l$statuses$entry != lOther$statuses$entry) {
          return false;
        }
      }
    } else if (l$statuses != lOther$statuses) {
      return false;
    }
    final l$scores = scores;
    final lOther$scores = other.scores;
    if (l$scores != null && lOther$scores != null) {
      if (l$scores.length != lOther$scores.length) {
        return false;
      }
      for (int i = 0; i < l$scores.length; i++) {
        final l$scores$entry = l$scores[i];
        final lOther$scores$entry = lOther$scores[i];
        if (l$scores$entry != lOther$scores$entry) {
          return false;
        }
      }
    } else if (l$scores != lOther$scores) {
      return false;
    }
    final l$lengths = lengths;
    final lOther$lengths = other.lengths;
    if (l$lengths != null && lOther$lengths != null) {
      if (l$lengths.length != lOther$lengths.length) {
        return false;
      }
      for (int i = 0; i < l$lengths.length; i++) {
        final l$lengths$entry = l$lengths[i];
        final lOther$lengths$entry = lOther$lengths[i];
        if (l$lengths$entry != lOther$lengths$entry) {
          return false;
        }
      }
    } else if (l$lengths != lOther$lengths) {
      return false;
    }
    final l$releaseYears = releaseYears;
    final lOther$releaseYears = other.releaseYears;
    if (l$releaseYears != null && lOther$releaseYears != null) {
      if (l$releaseYears.length != lOther$releaseYears.length) {
        return false;
      }
      for (int i = 0; i < l$releaseYears.length; i++) {
        final l$releaseYears$entry = l$releaseYears[i];
        final lOther$releaseYears$entry = lOther$releaseYears[i];
        if (l$releaseYears$entry != lOther$releaseYears$entry) {
          return false;
        }
      }
    } else if (l$releaseYears != lOther$releaseYears) {
      return false;
    }
    final l$startYears = startYears;
    final lOther$startYears = other.startYears;
    if (l$startYears != null && lOther$startYears != null) {
      if (l$startYears.length != lOther$startYears.length) {
        return false;
      }
      for (int i = 0; i < l$startYears.length; i++) {
        final l$startYears$entry = l$startYears[i];
        final lOther$startYears$entry = lOther$startYears[i];
        if (l$startYears$entry != lOther$startYears$entry) {
          return false;
        }
      }
    } else if (l$startYears != lOther$startYears) {
      return false;
    }
    final l$genres = genres;
    final lOther$genres = other.genres;
    if (l$genres != null && lOther$genres != null) {
      if (l$genres.length != lOther$genres.length) {
        return false;
      }
      for (int i = 0; i < l$genres.length; i++) {
        final l$genres$entry = l$genres[i];
        final lOther$genres$entry = lOther$genres[i];
        if (l$genres$entry != lOther$genres$entry) {
          return false;
        }
      }
    } else if (l$genres != lOther$genres) {
      return false;
    }
    final l$tags = tags;
    final lOther$tags = other.tags;
    if (l$tags != null && lOther$tags != null) {
      if (l$tags.length != lOther$tags.length) {
        return false;
      }
      for (int i = 0; i < l$tags.length; i++) {
        final l$tags$entry = l$tags[i];
        final lOther$tags$entry = lOther$tags[i];
        if (l$tags$entry != lOther$tags$entry) {
          return false;
        }
      }
    } else if (l$tags != lOther$tags) {
      return false;
    }
    final l$countries = countries;
    final lOther$countries = other.countries;
    if (l$countries != null && lOther$countries != null) {
      if (l$countries.length != lOther$countries.length) {
        return false;
      }
      for (int i = 0; i < l$countries.length; i++) {
        final l$countries$entry = l$countries[i];
        final lOther$countries$entry = lOther$countries[i];
        if (l$countries$entry != lOther$countries$entry) {
          return false;
        }
      }
    } else if (l$countries != lOther$countries) {
      return false;
    }
    final l$voiceActors = voiceActors;
    final lOther$voiceActors = other.voiceActors;
    if (l$voiceActors != null && lOther$voiceActors != null) {
      if (l$voiceActors.length != lOther$voiceActors.length) {
        return false;
      }
      for (int i = 0; i < l$voiceActors.length; i++) {
        final l$voiceActors$entry = l$voiceActors[i];
        final lOther$voiceActors$entry = lOther$voiceActors[i];
        if (l$voiceActors$entry != lOther$voiceActors$entry) {
          return false;
        }
      }
    } else if (l$voiceActors != lOther$voiceActors) {
      return false;
    }
    final l$staff = staff;
    final lOther$staff = other.staff;
    if (l$staff != null && lOther$staff != null) {
      if (l$staff.length != lOther$staff.length) {
        return false;
      }
      for (int i = 0; i < l$staff.length; i++) {
        final l$staff$entry = l$staff[i];
        final lOther$staff$entry = lOther$staff[i];
        if (l$staff$entry != lOther$staff$entry) {
          return false;
        }
      }
    } else if (l$staff != lOther$staff) {
      return false;
    }
    final l$studios = studios;
    final lOther$studios = other.studios;
    if (l$studios != null && lOther$studios != null) {
      if (l$studios.length != lOther$studios.length) {
        return false;
      }
      for (int i = 0; i < l$studios.length; i++) {
        final l$studios$entry = l$studios[i];
        final lOther$studios$entry = lOther$studios[i];
        if (l$studios$entry != lOther$studios$entry) {
          return false;
        }
      }
    } else if (l$studios != lOther$studios) {
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

extension UtilityExtension$Fragment$UserStatistics on Fragment$UserStatistics {
  CopyWith$Fragment$UserStatistics<Fragment$UserStatistics> get copyWith =>
      CopyWith$Fragment$UserStatistics(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$UserStatistics<TRes> {
  factory CopyWith$Fragment$UserStatistics(
    Fragment$UserStatistics instance,
    TRes Function(Fragment$UserStatistics) then,
  ) = _CopyWithImpl$Fragment$UserStatistics;

  factory CopyWith$Fragment$UserStatistics.stub(TRes res) =
      _CopyWithStubImpl$Fragment$UserStatistics;

  TRes call({
    int? count,
    double? meanScore,
    double? standardDeviation,
    int? minutesWatched,
    int? episodesWatched,
    int? chaptersRead,
    int? volumesRead,
    List<Fragment$UserStatistics$formats?>? formats,
    List<Fragment$UserStatistics$statuses?>? statuses,
    List<Fragment$UserStatistics$scores?>? scores,
    List<Fragment$UserStatistics$lengths?>? lengths,
    List<Fragment$UserStatistics$releaseYears?>? releaseYears,
    List<Fragment$UserStatistics$startYears?>? startYears,
    List<Fragment$UserStatistics$genres?>? genres,
    List<Fragment$UserStatistics$tags?>? tags,
    List<Fragment$UserStatistics$countries?>? countries,
    List<Fragment$UserStatistics$voiceActors?>? voiceActors,
    List<Fragment$UserStatistics$staff?>? staff,
    List<Fragment$UserStatistics$studios?>? studios,
    String? $__typename,
  });
  TRes formats(
      Iterable<Fragment$UserStatistics$formats?>? Function(
              Iterable<
                  CopyWith$Fragment$UserStatistics$formats<
                      Fragment$UserStatistics$formats>?>?)
          _fn);
  TRes statuses(
      Iterable<Fragment$UserStatistics$statuses?>? Function(
              Iterable<
                  CopyWith$Fragment$UserStatistics$statuses<
                      Fragment$UserStatistics$statuses>?>?)
          _fn);
  TRes scores(
      Iterable<Fragment$UserStatistics$scores?>? Function(
              Iterable<
                  CopyWith$Fragment$UserStatistics$scores<
                      Fragment$UserStatistics$scores>?>?)
          _fn);
  TRes lengths(
      Iterable<Fragment$UserStatistics$lengths?>? Function(
              Iterable<
                  CopyWith$Fragment$UserStatistics$lengths<
                      Fragment$UserStatistics$lengths>?>?)
          _fn);
  TRes releaseYears(
      Iterable<Fragment$UserStatistics$releaseYears?>? Function(
              Iterable<
                  CopyWith$Fragment$UserStatistics$releaseYears<
                      Fragment$UserStatistics$releaseYears>?>?)
          _fn);
  TRes startYears(
      Iterable<Fragment$UserStatistics$startYears?>? Function(
              Iterable<
                  CopyWith$Fragment$UserStatistics$startYears<
                      Fragment$UserStatistics$startYears>?>?)
          _fn);
  TRes genres(
      Iterable<Fragment$UserStatistics$genres?>? Function(
              Iterable<
                  CopyWith$Fragment$UserStatistics$genres<
                      Fragment$UserStatistics$genres>?>?)
          _fn);
  TRes tags(
      Iterable<Fragment$UserStatistics$tags?>? Function(
              Iterable<
                  CopyWith$Fragment$UserStatistics$tags<
                      Fragment$UserStatistics$tags>?>?)
          _fn);
  TRes countries(
      Iterable<Fragment$UserStatistics$countries?>? Function(
              Iterable<
                  CopyWith$Fragment$UserStatistics$countries<
                      Fragment$UserStatistics$countries>?>?)
          _fn);
  TRes voiceActors(
      Iterable<Fragment$UserStatistics$voiceActors?>? Function(
              Iterable<
                  CopyWith$Fragment$UserStatistics$voiceActors<
                      Fragment$UserStatistics$voiceActors>?>?)
          _fn);
  TRes staff(
      Iterable<Fragment$UserStatistics$staff?>? Function(
              Iterable<
                  CopyWith$Fragment$UserStatistics$staff<
                      Fragment$UserStatistics$staff>?>?)
          _fn);
  TRes studios(
      Iterable<Fragment$UserStatistics$studios?>? Function(
              Iterable<
                  CopyWith$Fragment$UserStatistics$studios<
                      Fragment$UserStatistics$studios>?>?)
          _fn);
}

class _CopyWithImpl$Fragment$UserStatistics<TRes>
    implements CopyWith$Fragment$UserStatistics<TRes> {
  _CopyWithImpl$Fragment$UserStatistics(
    this._instance,
    this._then,
  );

  final Fragment$UserStatistics _instance;

  final TRes Function(Fragment$UserStatistics) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? count = _undefined,
    Object? meanScore = _undefined,
    Object? standardDeviation = _undefined,
    Object? minutesWatched = _undefined,
    Object? episodesWatched = _undefined,
    Object? chaptersRead = _undefined,
    Object? volumesRead = _undefined,
    Object? formats = _undefined,
    Object? statuses = _undefined,
    Object? scores = _undefined,
    Object? lengths = _undefined,
    Object? releaseYears = _undefined,
    Object? startYears = _undefined,
    Object? genres = _undefined,
    Object? tags = _undefined,
    Object? countries = _undefined,
    Object? voiceActors = _undefined,
    Object? staff = _undefined,
    Object? studios = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$UserStatistics(
        count: count == _undefined || count == null
            ? _instance.count
            : (count as int),
        meanScore: meanScore == _undefined || meanScore == null
            ? _instance.meanScore
            : (meanScore as double),
        standardDeviation:
            standardDeviation == _undefined || standardDeviation == null
                ? _instance.standardDeviation
                : (standardDeviation as double),
        minutesWatched: minutesWatched == _undefined || minutesWatched == null
            ? _instance.minutesWatched
            : (minutesWatched as int),
        episodesWatched:
            episodesWatched == _undefined || episodesWatched == null
                ? _instance.episodesWatched
                : (episodesWatched as int),
        chaptersRead: chaptersRead == _undefined || chaptersRead == null
            ? _instance.chaptersRead
            : (chaptersRead as int),
        volumesRead: volumesRead == _undefined || volumesRead == null
            ? _instance.volumesRead
            : (volumesRead as int),
        formats: formats == _undefined
            ? _instance.formats
            : (formats as List<Fragment$UserStatistics$formats?>?),
        statuses: statuses == _undefined
            ? _instance.statuses
            : (statuses as List<Fragment$UserStatistics$statuses?>?),
        scores: scores == _undefined
            ? _instance.scores
            : (scores as List<Fragment$UserStatistics$scores?>?),
        lengths: lengths == _undefined
            ? _instance.lengths
            : (lengths as List<Fragment$UserStatistics$lengths?>?),
        releaseYears: releaseYears == _undefined
            ? _instance.releaseYears
            : (releaseYears as List<Fragment$UserStatistics$releaseYears?>?),
        startYears: startYears == _undefined
            ? _instance.startYears
            : (startYears as List<Fragment$UserStatistics$startYears?>?),
        genres: genres == _undefined
            ? _instance.genres
            : (genres as List<Fragment$UserStatistics$genres?>?),
        tags: tags == _undefined
            ? _instance.tags
            : (tags as List<Fragment$UserStatistics$tags?>?),
        countries: countries == _undefined
            ? _instance.countries
            : (countries as List<Fragment$UserStatistics$countries?>?),
        voiceActors: voiceActors == _undefined
            ? _instance.voiceActors
            : (voiceActors as List<Fragment$UserStatistics$voiceActors?>?),
        staff: staff == _undefined
            ? _instance.staff
            : (staff as List<Fragment$UserStatistics$staff?>?),
        studios: studios == _undefined
            ? _instance.studios
            : (studios as List<Fragment$UserStatistics$studios?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes formats(
          Iterable<Fragment$UserStatistics$formats?>? Function(
                  Iterable<
                      CopyWith$Fragment$UserStatistics$formats<
                          Fragment$UserStatistics$formats>?>?)
              _fn) =>
      call(
          formats: _fn(_instance.formats?.map((e) => e == null
              ? null
              : CopyWith$Fragment$UserStatistics$formats(
                  e,
                  (i) => i,
                )))?.toList());

  TRes statuses(
          Iterable<Fragment$UserStatistics$statuses?>? Function(
                  Iterable<
                      CopyWith$Fragment$UserStatistics$statuses<
                          Fragment$UserStatistics$statuses>?>?)
              _fn) =>
      call(
          statuses: _fn(_instance.statuses?.map((e) => e == null
              ? null
              : CopyWith$Fragment$UserStatistics$statuses(
                  e,
                  (i) => i,
                )))?.toList());

  TRes scores(
          Iterable<Fragment$UserStatistics$scores?>? Function(
                  Iterable<
                      CopyWith$Fragment$UserStatistics$scores<
                          Fragment$UserStatistics$scores>?>?)
              _fn) =>
      call(
          scores: _fn(_instance.scores?.map((e) => e == null
              ? null
              : CopyWith$Fragment$UserStatistics$scores(
                  e,
                  (i) => i,
                )))?.toList());

  TRes lengths(
          Iterable<Fragment$UserStatistics$lengths?>? Function(
                  Iterable<
                      CopyWith$Fragment$UserStatistics$lengths<
                          Fragment$UserStatistics$lengths>?>?)
              _fn) =>
      call(
          lengths: _fn(_instance.lengths?.map((e) => e == null
              ? null
              : CopyWith$Fragment$UserStatistics$lengths(
                  e,
                  (i) => i,
                )))?.toList());

  TRes releaseYears(
          Iterable<Fragment$UserStatistics$releaseYears?>? Function(
                  Iterable<
                      CopyWith$Fragment$UserStatistics$releaseYears<
                          Fragment$UserStatistics$releaseYears>?>?)
              _fn) =>
      call(
          releaseYears: _fn(_instance.releaseYears?.map((e) => e == null
              ? null
              : CopyWith$Fragment$UserStatistics$releaseYears(
                  e,
                  (i) => i,
                )))?.toList());

  TRes startYears(
          Iterable<Fragment$UserStatistics$startYears?>? Function(
                  Iterable<
                      CopyWith$Fragment$UserStatistics$startYears<
                          Fragment$UserStatistics$startYears>?>?)
              _fn) =>
      call(
          startYears: _fn(_instance.startYears?.map((e) => e == null
              ? null
              : CopyWith$Fragment$UserStatistics$startYears(
                  e,
                  (i) => i,
                )))?.toList());

  TRes genres(
          Iterable<Fragment$UserStatistics$genres?>? Function(
                  Iterable<
                      CopyWith$Fragment$UserStatistics$genres<
                          Fragment$UserStatistics$genres>?>?)
              _fn) =>
      call(
          genres: _fn(_instance.genres?.map((e) => e == null
              ? null
              : CopyWith$Fragment$UserStatistics$genres(
                  e,
                  (i) => i,
                )))?.toList());

  TRes tags(
          Iterable<Fragment$UserStatistics$tags?>? Function(
                  Iterable<
                      CopyWith$Fragment$UserStatistics$tags<
                          Fragment$UserStatistics$tags>?>?)
              _fn) =>
      call(
          tags: _fn(_instance.tags?.map((e) => e == null
              ? null
              : CopyWith$Fragment$UserStatistics$tags(
                  e,
                  (i) => i,
                )))?.toList());

  TRes countries(
          Iterable<Fragment$UserStatistics$countries?>? Function(
                  Iterable<
                      CopyWith$Fragment$UserStatistics$countries<
                          Fragment$UserStatistics$countries>?>?)
              _fn) =>
      call(
          countries: _fn(_instance.countries?.map((e) => e == null
              ? null
              : CopyWith$Fragment$UserStatistics$countries(
                  e,
                  (i) => i,
                )))?.toList());

  TRes voiceActors(
          Iterable<Fragment$UserStatistics$voiceActors?>? Function(
                  Iterable<
                      CopyWith$Fragment$UserStatistics$voiceActors<
                          Fragment$UserStatistics$voiceActors>?>?)
              _fn) =>
      call(
          voiceActors: _fn(_instance.voiceActors?.map((e) => e == null
              ? null
              : CopyWith$Fragment$UserStatistics$voiceActors(
                  e,
                  (i) => i,
                )))?.toList());

  TRes staff(
          Iterable<Fragment$UserStatistics$staff?>? Function(
                  Iterable<
                      CopyWith$Fragment$UserStatistics$staff<
                          Fragment$UserStatistics$staff>?>?)
              _fn) =>
      call(
          staff: _fn(_instance.staff?.map((e) => e == null
              ? null
              : CopyWith$Fragment$UserStatistics$staff(
                  e,
                  (i) => i,
                )))?.toList());

  TRes studios(
          Iterable<Fragment$UserStatistics$studios?>? Function(
                  Iterable<
                      CopyWith$Fragment$UserStatistics$studios<
                          Fragment$UserStatistics$studios>?>?)
              _fn) =>
      call(
          studios: _fn(_instance.studios?.map((e) => e == null
              ? null
              : CopyWith$Fragment$UserStatistics$studios(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Fragment$UserStatistics<TRes>
    implements CopyWith$Fragment$UserStatistics<TRes> {
  _CopyWithStubImpl$Fragment$UserStatistics(this._res);

  TRes _res;

  call({
    int? count,
    double? meanScore,
    double? standardDeviation,
    int? minutesWatched,
    int? episodesWatched,
    int? chaptersRead,
    int? volumesRead,
    List<Fragment$UserStatistics$formats?>? formats,
    List<Fragment$UserStatistics$statuses?>? statuses,
    List<Fragment$UserStatistics$scores?>? scores,
    List<Fragment$UserStatistics$lengths?>? lengths,
    List<Fragment$UserStatistics$releaseYears?>? releaseYears,
    List<Fragment$UserStatistics$startYears?>? startYears,
    List<Fragment$UserStatistics$genres?>? genres,
    List<Fragment$UserStatistics$tags?>? tags,
    List<Fragment$UserStatistics$countries?>? countries,
    List<Fragment$UserStatistics$voiceActors?>? voiceActors,
    List<Fragment$UserStatistics$staff?>? staff,
    List<Fragment$UserStatistics$studios?>? studios,
    String? $__typename,
  }) =>
      _res;

  formats(_fn) => _res;

  statuses(_fn) => _res;

  scores(_fn) => _res;

  lengths(_fn) => _res;

  releaseYears(_fn) => _res;

  startYears(_fn) => _res;

  genres(_fn) => _res;

  tags(_fn) => _res;

  countries(_fn) => _res;

  voiceActors(_fn) => _res;

  staff(_fn) => _res;

  studios(_fn) => _res;
}

const fragmentDefinitionUserStatistics = FragmentDefinitionNode(
  name: NameNode(value: 'UserStatistics'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'UserStatistics'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FieldNode(
      name: NameNode(value: 'count'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'meanScore'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'standardDeviation'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'minutesWatched'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'episodesWatched'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'chaptersRead'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'volumesRead'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'formats'),
      alias: null,
      arguments: [
        ArgumentNode(
          name: NameNode(value: 'sort'),
          value: VariableNode(name: NameNode(value: 'sort')),
        )
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
          name: NameNode(value: 'count'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'meanScore'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'minutesWatched'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'chaptersRead'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'mediaIds'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'format'),
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
      name: NameNode(value: 'statuses'),
      alias: null,
      arguments: [
        ArgumentNode(
          name: NameNode(value: 'sort'),
          value: VariableNode(name: NameNode(value: 'sort')),
        )
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
          name: NameNode(value: 'count'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'meanScore'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'minutesWatched'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'chaptersRead'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'mediaIds'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'status'),
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
      name: NameNode(value: 'scores'),
      alias: null,
      arguments: [
        ArgumentNode(
          name: NameNode(value: 'sort'),
          value: VariableNode(name: NameNode(value: 'sort')),
        )
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
          name: NameNode(value: 'count'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'meanScore'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'minutesWatched'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'chaptersRead'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'mediaIds'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'score'),
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
      name: NameNode(value: 'lengths'),
      alias: null,
      arguments: [
        ArgumentNode(
          name: NameNode(value: 'sort'),
          value: VariableNode(name: NameNode(value: 'sort')),
        )
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
          name: NameNode(value: 'count'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'meanScore'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'minutesWatched'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'chaptersRead'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'mediaIds'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'length'),
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
      name: NameNode(value: 'releaseYears'),
      alias: null,
      arguments: [
        ArgumentNode(
          name: NameNode(value: 'sort'),
          value: VariableNode(name: NameNode(value: 'sort')),
        )
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
          name: NameNode(value: 'count'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'meanScore'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'minutesWatched'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'chaptersRead'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'mediaIds'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'releaseYear'),
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
      name: NameNode(value: 'startYears'),
      alias: null,
      arguments: [
        ArgumentNode(
          name: NameNode(value: 'sort'),
          value: VariableNode(name: NameNode(value: 'sort')),
        )
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
          name: NameNode(value: 'count'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'meanScore'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'minutesWatched'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'chaptersRead'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'mediaIds'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'startYear'),
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
      name: NameNode(value: 'genres'),
      alias: null,
      arguments: [
        ArgumentNode(
          name: NameNode(value: 'sort'),
          value: VariableNode(name: NameNode(value: 'sort')),
        )
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
          name: NameNode(value: 'count'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'meanScore'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'minutesWatched'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'chaptersRead'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'mediaIds'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'genre'),
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
      name: NameNode(value: 'tags'),
      alias: null,
      arguments: [
        ArgumentNode(
          name: NameNode(value: 'sort'),
          value: VariableNode(name: NameNode(value: 'sort')),
        )
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
          name: NameNode(value: 'count'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'meanScore'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'minutesWatched'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'chaptersRead'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'mediaIds'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'tag'),
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
      name: NameNode(value: 'countries'),
      alias: null,
      arguments: [
        ArgumentNode(
          name: NameNode(value: 'sort'),
          value: VariableNode(name: NameNode(value: 'sort')),
        )
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
          name: NameNode(value: 'count'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'meanScore'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'minutesWatched'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'chaptersRead'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'mediaIds'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'country'),
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
      name: NameNode(value: 'voiceActors'),
      alias: null,
      arguments: [
        ArgumentNode(
          name: NameNode(value: 'sort'),
          value: VariableNode(name: NameNode(value: 'sort')),
        )
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
          name: NameNode(value: 'count'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'meanScore'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'minutesWatched'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'chaptersRead'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'mediaIds'),
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
                  name: NameNode(value: 'first'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'middle'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'last'),
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
                  name: NameNode(value: 'alternative'),
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
              name: NameNode(value: '__typename'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
          ]),
        ),
        FieldNode(
          name: NameNode(value: 'characterIds'),
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
      name: NameNode(value: 'staff'),
      alias: null,
      arguments: [
        ArgumentNode(
          name: NameNode(value: 'sort'),
          value: VariableNode(name: NameNode(value: 'sort')),
        )
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
          name: NameNode(value: 'count'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'meanScore'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'minutesWatched'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'chaptersRead'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'mediaIds'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'staff'),
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
              selectionSet: SelectionSetNode(selections: [
                FieldNode(
                  name: NameNode(value: 'first'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'middle'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'last'),
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
                  name: NameNode(value: 'alternative'),
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
      name: NameNode(value: 'studios'),
      alias: null,
      arguments: [
        ArgumentNode(
          name: NameNode(value: 'sort'),
          value: VariableNode(name: NameNode(value: 'sort')),
        )
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
          name: NameNode(value: 'count'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'meanScore'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'minutesWatched'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'chaptersRead'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'mediaIds'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'studio'),
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
              name: NameNode(value: 'isAnimationStudio'),
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
);
const documentNodeFragmentUserStatistics = DocumentNode(definitions: [
  fragmentDefinitionUserStatistics,
]);

extension ClientExtension$Fragment$UserStatistics on graphql.GraphQLClient {
  void writeFragment$UserStatistics({
    required Fragment$UserStatistics data,
    required Map<String, dynamic> idFields,
    Variables$Fragment$UserStatistics? variables,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'UserStatistics',
            document: documentNodeFragmentUserStatistics,
          ),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$UserStatistics? readFragment$UserStatistics({
    required Map<String, dynamic> idFields,
    Variables$Fragment$UserStatistics? variables,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'UserStatistics',
          document: documentNodeFragmentUserStatistics,
        ),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$UserStatistics.fromJson(result);
  }
}

class Fragment$UserStatistics$formats {
  Fragment$UserStatistics$formats({
    required this.count,
    required this.meanScore,
    required this.minutesWatched,
    required this.chaptersRead,
    required this.mediaIds,
    this.format,
    this.$__typename = 'UserFormatStatistic',
  });

  factory Fragment$UserStatistics$formats.fromJson(Map<String, dynamic> json) {
    final l$count = json['count'];
    final l$meanScore = json['meanScore'];
    final l$minutesWatched = json['minutesWatched'];
    final l$chaptersRead = json['chaptersRead'];
    final l$mediaIds = json['mediaIds'];
    final l$format = json['format'];
    final l$$__typename = json['__typename'];
    return Fragment$UserStatistics$formats(
      count: (l$count as int),
      meanScore: (l$meanScore as num).toDouble(),
      minutesWatched: (l$minutesWatched as int),
      chaptersRead: (l$chaptersRead as int),
      mediaIds: (l$mediaIds as List<dynamic>).map((e) => (e as int?)).toList(),
      format: l$format == null
          ? null
          : fromJson$Enum$MediaFormat((l$format as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final int count;

  final double meanScore;

  final int minutesWatched;

  final int chaptersRead;

  final List<int?> mediaIds;

  final Enum$MediaFormat? format;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$count = count;
    _resultData['count'] = l$count;
    final l$meanScore = meanScore;
    _resultData['meanScore'] = l$meanScore;
    final l$minutesWatched = minutesWatched;
    _resultData['minutesWatched'] = l$minutesWatched;
    final l$chaptersRead = chaptersRead;
    _resultData['chaptersRead'] = l$chaptersRead;
    final l$mediaIds = mediaIds;
    _resultData['mediaIds'] = l$mediaIds.map((e) => e).toList();
    final l$format = format;
    _resultData['format'] =
        l$format == null ? null : toJson$Enum$MediaFormat(l$format);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$count = count;
    final l$meanScore = meanScore;
    final l$minutesWatched = minutesWatched;
    final l$chaptersRead = chaptersRead;
    final l$mediaIds = mediaIds;
    final l$format = format;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$count,
      l$meanScore,
      l$minutesWatched,
      l$chaptersRead,
      Object.hashAll(l$mediaIds.map((v) => v)),
      l$format,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$UserStatistics$formats ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$count = count;
    final lOther$count = other.count;
    if (l$count != lOther$count) {
      return false;
    }
    final l$meanScore = meanScore;
    final lOther$meanScore = other.meanScore;
    if (l$meanScore != lOther$meanScore) {
      return false;
    }
    final l$minutesWatched = minutesWatched;
    final lOther$minutesWatched = other.minutesWatched;
    if (l$minutesWatched != lOther$minutesWatched) {
      return false;
    }
    final l$chaptersRead = chaptersRead;
    final lOther$chaptersRead = other.chaptersRead;
    if (l$chaptersRead != lOther$chaptersRead) {
      return false;
    }
    final l$mediaIds = mediaIds;
    final lOther$mediaIds = other.mediaIds;
    if (l$mediaIds.length != lOther$mediaIds.length) {
      return false;
    }
    for (int i = 0; i < l$mediaIds.length; i++) {
      final l$mediaIds$entry = l$mediaIds[i];
      final lOther$mediaIds$entry = lOther$mediaIds[i];
      if (l$mediaIds$entry != lOther$mediaIds$entry) {
        return false;
      }
    }
    final l$format = format;
    final lOther$format = other.format;
    if (l$format != lOther$format) {
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

extension UtilityExtension$Fragment$UserStatistics$formats
    on Fragment$UserStatistics$formats {
  CopyWith$Fragment$UserStatistics$formats<Fragment$UserStatistics$formats>
      get copyWith => CopyWith$Fragment$UserStatistics$formats(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$UserStatistics$formats<TRes> {
  factory CopyWith$Fragment$UserStatistics$formats(
    Fragment$UserStatistics$formats instance,
    TRes Function(Fragment$UserStatistics$formats) then,
  ) = _CopyWithImpl$Fragment$UserStatistics$formats;

  factory CopyWith$Fragment$UserStatistics$formats.stub(TRes res) =
      _CopyWithStubImpl$Fragment$UserStatistics$formats;

  TRes call({
    int? count,
    double? meanScore,
    int? minutesWatched,
    int? chaptersRead,
    List<int?>? mediaIds,
    Enum$MediaFormat? format,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$UserStatistics$formats<TRes>
    implements CopyWith$Fragment$UserStatistics$formats<TRes> {
  _CopyWithImpl$Fragment$UserStatistics$formats(
    this._instance,
    this._then,
  );

  final Fragment$UserStatistics$formats _instance;

  final TRes Function(Fragment$UserStatistics$formats) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? count = _undefined,
    Object? meanScore = _undefined,
    Object? minutesWatched = _undefined,
    Object? chaptersRead = _undefined,
    Object? mediaIds = _undefined,
    Object? format = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$UserStatistics$formats(
        count: count == _undefined || count == null
            ? _instance.count
            : (count as int),
        meanScore: meanScore == _undefined || meanScore == null
            ? _instance.meanScore
            : (meanScore as double),
        minutesWatched: minutesWatched == _undefined || minutesWatched == null
            ? _instance.minutesWatched
            : (minutesWatched as int),
        chaptersRead: chaptersRead == _undefined || chaptersRead == null
            ? _instance.chaptersRead
            : (chaptersRead as int),
        mediaIds: mediaIds == _undefined || mediaIds == null
            ? _instance.mediaIds
            : (mediaIds as List<int?>),
        format: format == _undefined
            ? _instance.format
            : (format as Enum$MediaFormat?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$UserStatistics$formats<TRes>
    implements CopyWith$Fragment$UserStatistics$formats<TRes> {
  _CopyWithStubImpl$Fragment$UserStatistics$formats(this._res);

  TRes _res;

  call({
    int? count,
    double? meanScore,
    int? minutesWatched,
    int? chaptersRead,
    List<int?>? mediaIds,
    Enum$MediaFormat? format,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$UserStatistics$statuses {
  Fragment$UserStatistics$statuses({
    required this.count,
    required this.meanScore,
    required this.minutesWatched,
    required this.chaptersRead,
    required this.mediaIds,
    this.status,
    this.$__typename = 'UserStatusStatistic',
  });

  factory Fragment$UserStatistics$statuses.fromJson(Map<String, dynamic> json) {
    final l$count = json['count'];
    final l$meanScore = json['meanScore'];
    final l$minutesWatched = json['minutesWatched'];
    final l$chaptersRead = json['chaptersRead'];
    final l$mediaIds = json['mediaIds'];
    final l$status = json['status'];
    final l$$__typename = json['__typename'];
    return Fragment$UserStatistics$statuses(
      count: (l$count as int),
      meanScore: (l$meanScore as num).toDouble(),
      minutesWatched: (l$minutesWatched as int),
      chaptersRead: (l$chaptersRead as int),
      mediaIds: (l$mediaIds as List<dynamic>).map((e) => (e as int?)).toList(),
      status: l$status == null
          ? null
          : fromJson$Enum$MediaListStatus((l$status as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final int count;

  final double meanScore;

  final int minutesWatched;

  final int chaptersRead;

  final List<int?> mediaIds;

  final Enum$MediaListStatus? status;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$count = count;
    _resultData['count'] = l$count;
    final l$meanScore = meanScore;
    _resultData['meanScore'] = l$meanScore;
    final l$minutesWatched = minutesWatched;
    _resultData['minutesWatched'] = l$minutesWatched;
    final l$chaptersRead = chaptersRead;
    _resultData['chaptersRead'] = l$chaptersRead;
    final l$mediaIds = mediaIds;
    _resultData['mediaIds'] = l$mediaIds.map((e) => e).toList();
    final l$status = status;
    _resultData['status'] =
        l$status == null ? null : toJson$Enum$MediaListStatus(l$status);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$count = count;
    final l$meanScore = meanScore;
    final l$minutesWatched = minutesWatched;
    final l$chaptersRead = chaptersRead;
    final l$mediaIds = mediaIds;
    final l$status = status;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$count,
      l$meanScore,
      l$minutesWatched,
      l$chaptersRead,
      Object.hashAll(l$mediaIds.map((v) => v)),
      l$status,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$UserStatistics$statuses ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$count = count;
    final lOther$count = other.count;
    if (l$count != lOther$count) {
      return false;
    }
    final l$meanScore = meanScore;
    final lOther$meanScore = other.meanScore;
    if (l$meanScore != lOther$meanScore) {
      return false;
    }
    final l$minutesWatched = minutesWatched;
    final lOther$minutesWatched = other.minutesWatched;
    if (l$minutesWatched != lOther$minutesWatched) {
      return false;
    }
    final l$chaptersRead = chaptersRead;
    final lOther$chaptersRead = other.chaptersRead;
    if (l$chaptersRead != lOther$chaptersRead) {
      return false;
    }
    final l$mediaIds = mediaIds;
    final lOther$mediaIds = other.mediaIds;
    if (l$mediaIds.length != lOther$mediaIds.length) {
      return false;
    }
    for (int i = 0; i < l$mediaIds.length; i++) {
      final l$mediaIds$entry = l$mediaIds[i];
      final lOther$mediaIds$entry = lOther$mediaIds[i];
      if (l$mediaIds$entry != lOther$mediaIds$entry) {
        return false;
      }
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
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

extension UtilityExtension$Fragment$UserStatistics$statuses
    on Fragment$UserStatistics$statuses {
  CopyWith$Fragment$UserStatistics$statuses<Fragment$UserStatistics$statuses>
      get copyWith => CopyWith$Fragment$UserStatistics$statuses(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$UserStatistics$statuses<TRes> {
  factory CopyWith$Fragment$UserStatistics$statuses(
    Fragment$UserStatistics$statuses instance,
    TRes Function(Fragment$UserStatistics$statuses) then,
  ) = _CopyWithImpl$Fragment$UserStatistics$statuses;

  factory CopyWith$Fragment$UserStatistics$statuses.stub(TRes res) =
      _CopyWithStubImpl$Fragment$UserStatistics$statuses;

  TRes call({
    int? count,
    double? meanScore,
    int? minutesWatched,
    int? chaptersRead,
    List<int?>? mediaIds,
    Enum$MediaListStatus? status,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$UserStatistics$statuses<TRes>
    implements CopyWith$Fragment$UserStatistics$statuses<TRes> {
  _CopyWithImpl$Fragment$UserStatistics$statuses(
    this._instance,
    this._then,
  );

  final Fragment$UserStatistics$statuses _instance;

  final TRes Function(Fragment$UserStatistics$statuses) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? count = _undefined,
    Object? meanScore = _undefined,
    Object? minutesWatched = _undefined,
    Object? chaptersRead = _undefined,
    Object? mediaIds = _undefined,
    Object? status = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$UserStatistics$statuses(
        count: count == _undefined || count == null
            ? _instance.count
            : (count as int),
        meanScore: meanScore == _undefined || meanScore == null
            ? _instance.meanScore
            : (meanScore as double),
        minutesWatched: minutesWatched == _undefined || minutesWatched == null
            ? _instance.minutesWatched
            : (minutesWatched as int),
        chaptersRead: chaptersRead == _undefined || chaptersRead == null
            ? _instance.chaptersRead
            : (chaptersRead as int),
        mediaIds: mediaIds == _undefined || mediaIds == null
            ? _instance.mediaIds
            : (mediaIds as List<int?>),
        status: status == _undefined
            ? _instance.status
            : (status as Enum$MediaListStatus?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$UserStatistics$statuses<TRes>
    implements CopyWith$Fragment$UserStatistics$statuses<TRes> {
  _CopyWithStubImpl$Fragment$UserStatistics$statuses(this._res);

  TRes _res;

  call({
    int? count,
    double? meanScore,
    int? minutesWatched,
    int? chaptersRead,
    List<int?>? mediaIds,
    Enum$MediaListStatus? status,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$UserStatistics$scores {
  Fragment$UserStatistics$scores({
    required this.count,
    required this.meanScore,
    required this.minutesWatched,
    required this.chaptersRead,
    required this.mediaIds,
    this.score,
    this.$__typename = 'UserScoreStatistic',
  });

  factory Fragment$UserStatistics$scores.fromJson(Map<String, dynamic> json) {
    final l$count = json['count'];
    final l$meanScore = json['meanScore'];
    final l$minutesWatched = json['minutesWatched'];
    final l$chaptersRead = json['chaptersRead'];
    final l$mediaIds = json['mediaIds'];
    final l$score = json['score'];
    final l$$__typename = json['__typename'];
    return Fragment$UserStatistics$scores(
      count: (l$count as int),
      meanScore: (l$meanScore as num).toDouble(),
      minutesWatched: (l$minutesWatched as int),
      chaptersRead: (l$chaptersRead as int),
      mediaIds: (l$mediaIds as List<dynamic>).map((e) => (e as int?)).toList(),
      score: (l$score as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final int count;

  final double meanScore;

  final int minutesWatched;

  final int chaptersRead;

  final List<int?> mediaIds;

  final int? score;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$count = count;
    _resultData['count'] = l$count;
    final l$meanScore = meanScore;
    _resultData['meanScore'] = l$meanScore;
    final l$minutesWatched = minutesWatched;
    _resultData['minutesWatched'] = l$minutesWatched;
    final l$chaptersRead = chaptersRead;
    _resultData['chaptersRead'] = l$chaptersRead;
    final l$mediaIds = mediaIds;
    _resultData['mediaIds'] = l$mediaIds.map((e) => e).toList();
    final l$score = score;
    _resultData['score'] = l$score;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$count = count;
    final l$meanScore = meanScore;
    final l$minutesWatched = minutesWatched;
    final l$chaptersRead = chaptersRead;
    final l$mediaIds = mediaIds;
    final l$score = score;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$count,
      l$meanScore,
      l$minutesWatched,
      l$chaptersRead,
      Object.hashAll(l$mediaIds.map((v) => v)),
      l$score,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$UserStatistics$scores ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$count = count;
    final lOther$count = other.count;
    if (l$count != lOther$count) {
      return false;
    }
    final l$meanScore = meanScore;
    final lOther$meanScore = other.meanScore;
    if (l$meanScore != lOther$meanScore) {
      return false;
    }
    final l$minutesWatched = minutesWatched;
    final lOther$minutesWatched = other.minutesWatched;
    if (l$minutesWatched != lOther$minutesWatched) {
      return false;
    }
    final l$chaptersRead = chaptersRead;
    final lOther$chaptersRead = other.chaptersRead;
    if (l$chaptersRead != lOther$chaptersRead) {
      return false;
    }
    final l$mediaIds = mediaIds;
    final lOther$mediaIds = other.mediaIds;
    if (l$mediaIds.length != lOther$mediaIds.length) {
      return false;
    }
    for (int i = 0; i < l$mediaIds.length; i++) {
      final l$mediaIds$entry = l$mediaIds[i];
      final lOther$mediaIds$entry = lOther$mediaIds[i];
      if (l$mediaIds$entry != lOther$mediaIds$entry) {
        return false;
      }
    }
    final l$score = score;
    final lOther$score = other.score;
    if (l$score != lOther$score) {
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

extension UtilityExtension$Fragment$UserStatistics$scores
    on Fragment$UserStatistics$scores {
  CopyWith$Fragment$UserStatistics$scores<Fragment$UserStatistics$scores>
      get copyWith => CopyWith$Fragment$UserStatistics$scores(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$UserStatistics$scores<TRes> {
  factory CopyWith$Fragment$UserStatistics$scores(
    Fragment$UserStatistics$scores instance,
    TRes Function(Fragment$UserStatistics$scores) then,
  ) = _CopyWithImpl$Fragment$UserStatistics$scores;

  factory CopyWith$Fragment$UserStatistics$scores.stub(TRes res) =
      _CopyWithStubImpl$Fragment$UserStatistics$scores;

  TRes call({
    int? count,
    double? meanScore,
    int? minutesWatched,
    int? chaptersRead,
    List<int?>? mediaIds,
    int? score,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$UserStatistics$scores<TRes>
    implements CopyWith$Fragment$UserStatistics$scores<TRes> {
  _CopyWithImpl$Fragment$UserStatistics$scores(
    this._instance,
    this._then,
  );

  final Fragment$UserStatistics$scores _instance;

  final TRes Function(Fragment$UserStatistics$scores) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? count = _undefined,
    Object? meanScore = _undefined,
    Object? minutesWatched = _undefined,
    Object? chaptersRead = _undefined,
    Object? mediaIds = _undefined,
    Object? score = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$UserStatistics$scores(
        count: count == _undefined || count == null
            ? _instance.count
            : (count as int),
        meanScore: meanScore == _undefined || meanScore == null
            ? _instance.meanScore
            : (meanScore as double),
        minutesWatched: minutesWatched == _undefined || minutesWatched == null
            ? _instance.minutesWatched
            : (minutesWatched as int),
        chaptersRead: chaptersRead == _undefined || chaptersRead == null
            ? _instance.chaptersRead
            : (chaptersRead as int),
        mediaIds: mediaIds == _undefined || mediaIds == null
            ? _instance.mediaIds
            : (mediaIds as List<int?>),
        score: score == _undefined ? _instance.score : (score as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$UserStatistics$scores<TRes>
    implements CopyWith$Fragment$UserStatistics$scores<TRes> {
  _CopyWithStubImpl$Fragment$UserStatistics$scores(this._res);

  TRes _res;

  call({
    int? count,
    double? meanScore,
    int? minutesWatched,
    int? chaptersRead,
    List<int?>? mediaIds,
    int? score,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$UserStatistics$lengths {
  Fragment$UserStatistics$lengths({
    required this.count,
    required this.meanScore,
    required this.minutesWatched,
    required this.chaptersRead,
    required this.mediaIds,
    this.length,
    this.$__typename = 'UserLengthStatistic',
  });

  factory Fragment$UserStatistics$lengths.fromJson(Map<String, dynamic> json) {
    final l$count = json['count'];
    final l$meanScore = json['meanScore'];
    final l$minutesWatched = json['minutesWatched'];
    final l$chaptersRead = json['chaptersRead'];
    final l$mediaIds = json['mediaIds'];
    final l$length = json['length'];
    final l$$__typename = json['__typename'];
    return Fragment$UserStatistics$lengths(
      count: (l$count as int),
      meanScore: (l$meanScore as num).toDouble(),
      minutesWatched: (l$minutesWatched as int),
      chaptersRead: (l$chaptersRead as int),
      mediaIds: (l$mediaIds as List<dynamic>).map((e) => (e as int?)).toList(),
      length: (l$length as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final int count;

  final double meanScore;

  final int minutesWatched;

  final int chaptersRead;

  final List<int?> mediaIds;

  final String? length;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$count = count;
    _resultData['count'] = l$count;
    final l$meanScore = meanScore;
    _resultData['meanScore'] = l$meanScore;
    final l$minutesWatched = minutesWatched;
    _resultData['minutesWatched'] = l$minutesWatched;
    final l$chaptersRead = chaptersRead;
    _resultData['chaptersRead'] = l$chaptersRead;
    final l$mediaIds = mediaIds;
    _resultData['mediaIds'] = l$mediaIds.map((e) => e).toList();
    final l$length = length;
    _resultData['length'] = l$length;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$count = count;
    final l$meanScore = meanScore;
    final l$minutesWatched = minutesWatched;
    final l$chaptersRead = chaptersRead;
    final l$mediaIds = mediaIds;
    final l$length = length;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$count,
      l$meanScore,
      l$minutesWatched,
      l$chaptersRead,
      Object.hashAll(l$mediaIds.map((v) => v)),
      l$length,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$UserStatistics$lengths ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$count = count;
    final lOther$count = other.count;
    if (l$count != lOther$count) {
      return false;
    }
    final l$meanScore = meanScore;
    final lOther$meanScore = other.meanScore;
    if (l$meanScore != lOther$meanScore) {
      return false;
    }
    final l$minutesWatched = minutesWatched;
    final lOther$minutesWatched = other.minutesWatched;
    if (l$minutesWatched != lOther$minutesWatched) {
      return false;
    }
    final l$chaptersRead = chaptersRead;
    final lOther$chaptersRead = other.chaptersRead;
    if (l$chaptersRead != lOther$chaptersRead) {
      return false;
    }
    final l$mediaIds = mediaIds;
    final lOther$mediaIds = other.mediaIds;
    if (l$mediaIds.length != lOther$mediaIds.length) {
      return false;
    }
    for (int i = 0; i < l$mediaIds.length; i++) {
      final l$mediaIds$entry = l$mediaIds[i];
      final lOther$mediaIds$entry = lOther$mediaIds[i];
      if (l$mediaIds$entry != lOther$mediaIds$entry) {
        return false;
      }
    }
    final l$length = length;
    final lOther$length = other.length;
    if (l$length != lOther$length) {
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

extension UtilityExtension$Fragment$UserStatistics$lengths
    on Fragment$UserStatistics$lengths {
  CopyWith$Fragment$UserStatistics$lengths<Fragment$UserStatistics$lengths>
      get copyWith => CopyWith$Fragment$UserStatistics$lengths(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$UserStatistics$lengths<TRes> {
  factory CopyWith$Fragment$UserStatistics$lengths(
    Fragment$UserStatistics$lengths instance,
    TRes Function(Fragment$UserStatistics$lengths) then,
  ) = _CopyWithImpl$Fragment$UserStatistics$lengths;

  factory CopyWith$Fragment$UserStatistics$lengths.stub(TRes res) =
      _CopyWithStubImpl$Fragment$UserStatistics$lengths;

  TRes call({
    int? count,
    double? meanScore,
    int? minutesWatched,
    int? chaptersRead,
    List<int?>? mediaIds,
    String? length,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$UserStatistics$lengths<TRes>
    implements CopyWith$Fragment$UserStatistics$lengths<TRes> {
  _CopyWithImpl$Fragment$UserStatistics$lengths(
    this._instance,
    this._then,
  );

  final Fragment$UserStatistics$lengths _instance;

  final TRes Function(Fragment$UserStatistics$lengths) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? count = _undefined,
    Object? meanScore = _undefined,
    Object? minutesWatched = _undefined,
    Object? chaptersRead = _undefined,
    Object? mediaIds = _undefined,
    Object? length = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$UserStatistics$lengths(
        count: count == _undefined || count == null
            ? _instance.count
            : (count as int),
        meanScore: meanScore == _undefined || meanScore == null
            ? _instance.meanScore
            : (meanScore as double),
        minutesWatched: minutesWatched == _undefined || minutesWatched == null
            ? _instance.minutesWatched
            : (minutesWatched as int),
        chaptersRead: chaptersRead == _undefined || chaptersRead == null
            ? _instance.chaptersRead
            : (chaptersRead as int),
        mediaIds: mediaIds == _undefined || mediaIds == null
            ? _instance.mediaIds
            : (mediaIds as List<int?>),
        length: length == _undefined ? _instance.length : (length as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$UserStatistics$lengths<TRes>
    implements CopyWith$Fragment$UserStatistics$lengths<TRes> {
  _CopyWithStubImpl$Fragment$UserStatistics$lengths(this._res);

  TRes _res;

  call({
    int? count,
    double? meanScore,
    int? minutesWatched,
    int? chaptersRead,
    List<int?>? mediaIds,
    String? length,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$UserStatistics$releaseYears {
  Fragment$UserStatistics$releaseYears({
    required this.count,
    required this.meanScore,
    required this.minutesWatched,
    required this.chaptersRead,
    required this.mediaIds,
    this.releaseYear,
    this.$__typename = 'UserReleaseYearStatistic',
  });

  factory Fragment$UserStatistics$releaseYears.fromJson(
      Map<String, dynamic> json) {
    final l$count = json['count'];
    final l$meanScore = json['meanScore'];
    final l$minutesWatched = json['minutesWatched'];
    final l$chaptersRead = json['chaptersRead'];
    final l$mediaIds = json['mediaIds'];
    final l$releaseYear = json['releaseYear'];
    final l$$__typename = json['__typename'];
    return Fragment$UserStatistics$releaseYears(
      count: (l$count as int),
      meanScore: (l$meanScore as num).toDouble(),
      minutesWatched: (l$minutesWatched as int),
      chaptersRead: (l$chaptersRead as int),
      mediaIds: (l$mediaIds as List<dynamic>).map((e) => (e as int?)).toList(),
      releaseYear: (l$releaseYear as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final int count;

  final double meanScore;

  final int minutesWatched;

  final int chaptersRead;

  final List<int?> mediaIds;

  final int? releaseYear;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$count = count;
    _resultData['count'] = l$count;
    final l$meanScore = meanScore;
    _resultData['meanScore'] = l$meanScore;
    final l$minutesWatched = minutesWatched;
    _resultData['minutesWatched'] = l$minutesWatched;
    final l$chaptersRead = chaptersRead;
    _resultData['chaptersRead'] = l$chaptersRead;
    final l$mediaIds = mediaIds;
    _resultData['mediaIds'] = l$mediaIds.map((e) => e).toList();
    final l$releaseYear = releaseYear;
    _resultData['releaseYear'] = l$releaseYear;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$count = count;
    final l$meanScore = meanScore;
    final l$minutesWatched = minutesWatched;
    final l$chaptersRead = chaptersRead;
    final l$mediaIds = mediaIds;
    final l$releaseYear = releaseYear;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$count,
      l$meanScore,
      l$minutesWatched,
      l$chaptersRead,
      Object.hashAll(l$mediaIds.map((v) => v)),
      l$releaseYear,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$UserStatistics$releaseYears ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$count = count;
    final lOther$count = other.count;
    if (l$count != lOther$count) {
      return false;
    }
    final l$meanScore = meanScore;
    final lOther$meanScore = other.meanScore;
    if (l$meanScore != lOther$meanScore) {
      return false;
    }
    final l$minutesWatched = minutesWatched;
    final lOther$minutesWatched = other.minutesWatched;
    if (l$minutesWatched != lOther$minutesWatched) {
      return false;
    }
    final l$chaptersRead = chaptersRead;
    final lOther$chaptersRead = other.chaptersRead;
    if (l$chaptersRead != lOther$chaptersRead) {
      return false;
    }
    final l$mediaIds = mediaIds;
    final lOther$mediaIds = other.mediaIds;
    if (l$mediaIds.length != lOther$mediaIds.length) {
      return false;
    }
    for (int i = 0; i < l$mediaIds.length; i++) {
      final l$mediaIds$entry = l$mediaIds[i];
      final lOther$mediaIds$entry = lOther$mediaIds[i];
      if (l$mediaIds$entry != lOther$mediaIds$entry) {
        return false;
      }
    }
    final l$releaseYear = releaseYear;
    final lOther$releaseYear = other.releaseYear;
    if (l$releaseYear != lOther$releaseYear) {
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

extension UtilityExtension$Fragment$UserStatistics$releaseYears
    on Fragment$UserStatistics$releaseYears {
  CopyWith$Fragment$UserStatistics$releaseYears<
          Fragment$UserStatistics$releaseYears>
      get copyWith => CopyWith$Fragment$UserStatistics$releaseYears(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$UserStatistics$releaseYears<TRes> {
  factory CopyWith$Fragment$UserStatistics$releaseYears(
    Fragment$UserStatistics$releaseYears instance,
    TRes Function(Fragment$UserStatistics$releaseYears) then,
  ) = _CopyWithImpl$Fragment$UserStatistics$releaseYears;

  factory CopyWith$Fragment$UserStatistics$releaseYears.stub(TRes res) =
      _CopyWithStubImpl$Fragment$UserStatistics$releaseYears;

  TRes call({
    int? count,
    double? meanScore,
    int? minutesWatched,
    int? chaptersRead,
    List<int?>? mediaIds,
    int? releaseYear,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$UserStatistics$releaseYears<TRes>
    implements CopyWith$Fragment$UserStatistics$releaseYears<TRes> {
  _CopyWithImpl$Fragment$UserStatistics$releaseYears(
    this._instance,
    this._then,
  );

  final Fragment$UserStatistics$releaseYears _instance;

  final TRes Function(Fragment$UserStatistics$releaseYears) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? count = _undefined,
    Object? meanScore = _undefined,
    Object? minutesWatched = _undefined,
    Object? chaptersRead = _undefined,
    Object? mediaIds = _undefined,
    Object? releaseYear = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$UserStatistics$releaseYears(
        count: count == _undefined || count == null
            ? _instance.count
            : (count as int),
        meanScore: meanScore == _undefined || meanScore == null
            ? _instance.meanScore
            : (meanScore as double),
        minutesWatched: minutesWatched == _undefined || minutesWatched == null
            ? _instance.minutesWatched
            : (minutesWatched as int),
        chaptersRead: chaptersRead == _undefined || chaptersRead == null
            ? _instance.chaptersRead
            : (chaptersRead as int),
        mediaIds: mediaIds == _undefined || mediaIds == null
            ? _instance.mediaIds
            : (mediaIds as List<int?>),
        releaseYear: releaseYear == _undefined
            ? _instance.releaseYear
            : (releaseYear as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$UserStatistics$releaseYears<TRes>
    implements CopyWith$Fragment$UserStatistics$releaseYears<TRes> {
  _CopyWithStubImpl$Fragment$UserStatistics$releaseYears(this._res);

  TRes _res;

  call({
    int? count,
    double? meanScore,
    int? minutesWatched,
    int? chaptersRead,
    List<int?>? mediaIds,
    int? releaseYear,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$UserStatistics$startYears {
  Fragment$UserStatistics$startYears({
    required this.count,
    required this.meanScore,
    required this.minutesWatched,
    required this.chaptersRead,
    required this.mediaIds,
    this.startYear,
    this.$__typename = 'UserStartYearStatistic',
  });

  factory Fragment$UserStatistics$startYears.fromJson(
      Map<String, dynamic> json) {
    final l$count = json['count'];
    final l$meanScore = json['meanScore'];
    final l$minutesWatched = json['minutesWatched'];
    final l$chaptersRead = json['chaptersRead'];
    final l$mediaIds = json['mediaIds'];
    final l$startYear = json['startYear'];
    final l$$__typename = json['__typename'];
    return Fragment$UserStatistics$startYears(
      count: (l$count as int),
      meanScore: (l$meanScore as num).toDouble(),
      minutesWatched: (l$minutesWatched as int),
      chaptersRead: (l$chaptersRead as int),
      mediaIds: (l$mediaIds as List<dynamic>).map((e) => (e as int?)).toList(),
      startYear: (l$startYear as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final int count;

  final double meanScore;

  final int minutesWatched;

  final int chaptersRead;

  final List<int?> mediaIds;

  final int? startYear;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$count = count;
    _resultData['count'] = l$count;
    final l$meanScore = meanScore;
    _resultData['meanScore'] = l$meanScore;
    final l$minutesWatched = minutesWatched;
    _resultData['minutesWatched'] = l$minutesWatched;
    final l$chaptersRead = chaptersRead;
    _resultData['chaptersRead'] = l$chaptersRead;
    final l$mediaIds = mediaIds;
    _resultData['mediaIds'] = l$mediaIds.map((e) => e).toList();
    final l$startYear = startYear;
    _resultData['startYear'] = l$startYear;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$count = count;
    final l$meanScore = meanScore;
    final l$minutesWatched = minutesWatched;
    final l$chaptersRead = chaptersRead;
    final l$mediaIds = mediaIds;
    final l$startYear = startYear;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$count,
      l$meanScore,
      l$minutesWatched,
      l$chaptersRead,
      Object.hashAll(l$mediaIds.map((v) => v)),
      l$startYear,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$UserStatistics$startYears ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$count = count;
    final lOther$count = other.count;
    if (l$count != lOther$count) {
      return false;
    }
    final l$meanScore = meanScore;
    final lOther$meanScore = other.meanScore;
    if (l$meanScore != lOther$meanScore) {
      return false;
    }
    final l$minutesWatched = minutesWatched;
    final lOther$minutesWatched = other.minutesWatched;
    if (l$minutesWatched != lOther$minutesWatched) {
      return false;
    }
    final l$chaptersRead = chaptersRead;
    final lOther$chaptersRead = other.chaptersRead;
    if (l$chaptersRead != lOther$chaptersRead) {
      return false;
    }
    final l$mediaIds = mediaIds;
    final lOther$mediaIds = other.mediaIds;
    if (l$mediaIds.length != lOther$mediaIds.length) {
      return false;
    }
    for (int i = 0; i < l$mediaIds.length; i++) {
      final l$mediaIds$entry = l$mediaIds[i];
      final lOther$mediaIds$entry = lOther$mediaIds[i];
      if (l$mediaIds$entry != lOther$mediaIds$entry) {
        return false;
      }
    }
    final l$startYear = startYear;
    final lOther$startYear = other.startYear;
    if (l$startYear != lOther$startYear) {
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

extension UtilityExtension$Fragment$UserStatistics$startYears
    on Fragment$UserStatistics$startYears {
  CopyWith$Fragment$UserStatistics$startYears<
          Fragment$UserStatistics$startYears>
      get copyWith => CopyWith$Fragment$UserStatistics$startYears(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$UserStatistics$startYears<TRes> {
  factory CopyWith$Fragment$UserStatistics$startYears(
    Fragment$UserStatistics$startYears instance,
    TRes Function(Fragment$UserStatistics$startYears) then,
  ) = _CopyWithImpl$Fragment$UserStatistics$startYears;

  factory CopyWith$Fragment$UserStatistics$startYears.stub(TRes res) =
      _CopyWithStubImpl$Fragment$UserStatistics$startYears;

  TRes call({
    int? count,
    double? meanScore,
    int? minutesWatched,
    int? chaptersRead,
    List<int?>? mediaIds,
    int? startYear,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$UserStatistics$startYears<TRes>
    implements CopyWith$Fragment$UserStatistics$startYears<TRes> {
  _CopyWithImpl$Fragment$UserStatistics$startYears(
    this._instance,
    this._then,
  );

  final Fragment$UserStatistics$startYears _instance;

  final TRes Function(Fragment$UserStatistics$startYears) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? count = _undefined,
    Object? meanScore = _undefined,
    Object? minutesWatched = _undefined,
    Object? chaptersRead = _undefined,
    Object? mediaIds = _undefined,
    Object? startYear = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$UserStatistics$startYears(
        count: count == _undefined || count == null
            ? _instance.count
            : (count as int),
        meanScore: meanScore == _undefined || meanScore == null
            ? _instance.meanScore
            : (meanScore as double),
        minutesWatched: minutesWatched == _undefined || minutesWatched == null
            ? _instance.minutesWatched
            : (minutesWatched as int),
        chaptersRead: chaptersRead == _undefined || chaptersRead == null
            ? _instance.chaptersRead
            : (chaptersRead as int),
        mediaIds: mediaIds == _undefined || mediaIds == null
            ? _instance.mediaIds
            : (mediaIds as List<int?>),
        startYear:
            startYear == _undefined ? _instance.startYear : (startYear as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$UserStatistics$startYears<TRes>
    implements CopyWith$Fragment$UserStatistics$startYears<TRes> {
  _CopyWithStubImpl$Fragment$UserStatistics$startYears(this._res);

  TRes _res;

  call({
    int? count,
    double? meanScore,
    int? minutesWatched,
    int? chaptersRead,
    List<int?>? mediaIds,
    int? startYear,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$UserStatistics$genres {
  Fragment$UserStatistics$genres({
    required this.count,
    required this.meanScore,
    required this.minutesWatched,
    required this.chaptersRead,
    required this.mediaIds,
    this.genre,
    this.$__typename = 'UserGenreStatistic',
  });

  factory Fragment$UserStatistics$genres.fromJson(Map<String, dynamic> json) {
    final l$count = json['count'];
    final l$meanScore = json['meanScore'];
    final l$minutesWatched = json['minutesWatched'];
    final l$chaptersRead = json['chaptersRead'];
    final l$mediaIds = json['mediaIds'];
    final l$genre = json['genre'];
    final l$$__typename = json['__typename'];
    return Fragment$UserStatistics$genres(
      count: (l$count as int),
      meanScore: (l$meanScore as num).toDouble(),
      minutesWatched: (l$minutesWatched as int),
      chaptersRead: (l$chaptersRead as int),
      mediaIds: (l$mediaIds as List<dynamic>).map((e) => (e as int?)).toList(),
      genre: (l$genre as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final int count;

  final double meanScore;

  final int minutesWatched;

  final int chaptersRead;

  final List<int?> mediaIds;

  final String? genre;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$count = count;
    _resultData['count'] = l$count;
    final l$meanScore = meanScore;
    _resultData['meanScore'] = l$meanScore;
    final l$minutesWatched = minutesWatched;
    _resultData['minutesWatched'] = l$minutesWatched;
    final l$chaptersRead = chaptersRead;
    _resultData['chaptersRead'] = l$chaptersRead;
    final l$mediaIds = mediaIds;
    _resultData['mediaIds'] = l$mediaIds.map((e) => e).toList();
    final l$genre = genre;
    _resultData['genre'] = l$genre;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$count = count;
    final l$meanScore = meanScore;
    final l$minutesWatched = minutesWatched;
    final l$chaptersRead = chaptersRead;
    final l$mediaIds = mediaIds;
    final l$genre = genre;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$count,
      l$meanScore,
      l$minutesWatched,
      l$chaptersRead,
      Object.hashAll(l$mediaIds.map((v) => v)),
      l$genre,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$UserStatistics$genres ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$count = count;
    final lOther$count = other.count;
    if (l$count != lOther$count) {
      return false;
    }
    final l$meanScore = meanScore;
    final lOther$meanScore = other.meanScore;
    if (l$meanScore != lOther$meanScore) {
      return false;
    }
    final l$minutesWatched = minutesWatched;
    final lOther$minutesWatched = other.minutesWatched;
    if (l$minutesWatched != lOther$minutesWatched) {
      return false;
    }
    final l$chaptersRead = chaptersRead;
    final lOther$chaptersRead = other.chaptersRead;
    if (l$chaptersRead != lOther$chaptersRead) {
      return false;
    }
    final l$mediaIds = mediaIds;
    final lOther$mediaIds = other.mediaIds;
    if (l$mediaIds.length != lOther$mediaIds.length) {
      return false;
    }
    for (int i = 0; i < l$mediaIds.length; i++) {
      final l$mediaIds$entry = l$mediaIds[i];
      final lOther$mediaIds$entry = lOther$mediaIds[i];
      if (l$mediaIds$entry != lOther$mediaIds$entry) {
        return false;
      }
    }
    final l$genre = genre;
    final lOther$genre = other.genre;
    if (l$genre != lOther$genre) {
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

extension UtilityExtension$Fragment$UserStatistics$genres
    on Fragment$UserStatistics$genres {
  CopyWith$Fragment$UserStatistics$genres<Fragment$UserStatistics$genres>
      get copyWith => CopyWith$Fragment$UserStatistics$genres(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$UserStatistics$genres<TRes> {
  factory CopyWith$Fragment$UserStatistics$genres(
    Fragment$UserStatistics$genres instance,
    TRes Function(Fragment$UserStatistics$genres) then,
  ) = _CopyWithImpl$Fragment$UserStatistics$genres;

  factory CopyWith$Fragment$UserStatistics$genres.stub(TRes res) =
      _CopyWithStubImpl$Fragment$UserStatistics$genres;

  TRes call({
    int? count,
    double? meanScore,
    int? minutesWatched,
    int? chaptersRead,
    List<int?>? mediaIds,
    String? genre,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$UserStatistics$genres<TRes>
    implements CopyWith$Fragment$UserStatistics$genres<TRes> {
  _CopyWithImpl$Fragment$UserStatistics$genres(
    this._instance,
    this._then,
  );

  final Fragment$UserStatistics$genres _instance;

  final TRes Function(Fragment$UserStatistics$genres) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? count = _undefined,
    Object? meanScore = _undefined,
    Object? minutesWatched = _undefined,
    Object? chaptersRead = _undefined,
    Object? mediaIds = _undefined,
    Object? genre = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$UserStatistics$genres(
        count: count == _undefined || count == null
            ? _instance.count
            : (count as int),
        meanScore: meanScore == _undefined || meanScore == null
            ? _instance.meanScore
            : (meanScore as double),
        minutesWatched: minutesWatched == _undefined || minutesWatched == null
            ? _instance.minutesWatched
            : (minutesWatched as int),
        chaptersRead: chaptersRead == _undefined || chaptersRead == null
            ? _instance.chaptersRead
            : (chaptersRead as int),
        mediaIds: mediaIds == _undefined || mediaIds == null
            ? _instance.mediaIds
            : (mediaIds as List<int?>),
        genre: genre == _undefined ? _instance.genre : (genre as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$UserStatistics$genres<TRes>
    implements CopyWith$Fragment$UserStatistics$genres<TRes> {
  _CopyWithStubImpl$Fragment$UserStatistics$genres(this._res);

  TRes _res;

  call({
    int? count,
    double? meanScore,
    int? minutesWatched,
    int? chaptersRead,
    List<int?>? mediaIds,
    String? genre,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$UserStatistics$tags {
  Fragment$UserStatistics$tags({
    required this.count,
    required this.meanScore,
    required this.minutesWatched,
    required this.chaptersRead,
    required this.mediaIds,
    this.tag,
    this.$__typename = 'UserTagStatistic',
  });

  factory Fragment$UserStatistics$tags.fromJson(Map<String, dynamic> json) {
    final l$count = json['count'];
    final l$meanScore = json['meanScore'];
    final l$minutesWatched = json['minutesWatched'];
    final l$chaptersRead = json['chaptersRead'];
    final l$mediaIds = json['mediaIds'];
    final l$tag = json['tag'];
    final l$$__typename = json['__typename'];
    return Fragment$UserStatistics$tags(
      count: (l$count as int),
      meanScore: (l$meanScore as num).toDouble(),
      minutesWatched: (l$minutesWatched as int),
      chaptersRead: (l$chaptersRead as int),
      mediaIds: (l$mediaIds as List<dynamic>).map((e) => (e as int?)).toList(),
      tag: l$tag == null
          ? null
          : Fragment$UserStatistics$tags$tag.fromJson(
              (l$tag as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int count;

  final double meanScore;

  final int minutesWatched;

  final int chaptersRead;

  final List<int?> mediaIds;

  final Fragment$UserStatistics$tags$tag? tag;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$count = count;
    _resultData['count'] = l$count;
    final l$meanScore = meanScore;
    _resultData['meanScore'] = l$meanScore;
    final l$minutesWatched = minutesWatched;
    _resultData['minutesWatched'] = l$minutesWatched;
    final l$chaptersRead = chaptersRead;
    _resultData['chaptersRead'] = l$chaptersRead;
    final l$mediaIds = mediaIds;
    _resultData['mediaIds'] = l$mediaIds.map((e) => e).toList();
    final l$tag = tag;
    _resultData['tag'] = l$tag?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$count = count;
    final l$meanScore = meanScore;
    final l$minutesWatched = minutesWatched;
    final l$chaptersRead = chaptersRead;
    final l$mediaIds = mediaIds;
    final l$tag = tag;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$count,
      l$meanScore,
      l$minutesWatched,
      l$chaptersRead,
      Object.hashAll(l$mediaIds.map((v) => v)),
      l$tag,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$UserStatistics$tags ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$count = count;
    final lOther$count = other.count;
    if (l$count != lOther$count) {
      return false;
    }
    final l$meanScore = meanScore;
    final lOther$meanScore = other.meanScore;
    if (l$meanScore != lOther$meanScore) {
      return false;
    }
    final l$minutesWatched = minutesWatched;
    final lOther$minutesWatched = other.minutesWatched;
    if (l$minutesWatched != lOther$minutesWatched) {
      return false;
    }
    final l$chaptersRead = chaptersRead;
    final lOther$chaptersRead = other.chaptersRead;
    if (l$chaptersRead != lOther$chaptersRead) {
      return false;
    }
    final l$mediaIds = mediaIds;
    final lOther$mediaIds = other.mediaIds;
    if (l$mediaIds.length != lOther$mediaIds.length) {
      return false;
    }
    for (int i = 0; i < l$mediaIds.length; i++) {
      final l$mediaIds$entry = l$mediaIds[i];
      final lOther$mediaIds$entry = lOther$mediaIds[i];
      if (l$mediaIds$entry != lOther$mediaIds$entry) {
        return false;
      }
    }
    final l$tag = tag;
    final lOther$tag = other.tag;
    if (l$tag != lOther$tag) {
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

extension UtilityExtension$Fragment$UserStatistics$tags
    on Fragment$UserStatistics$tags {
  CopyWith$Fragment$UserStatistics$tags<Fragment$UserStatistics$tags>
      get copyWith => CopyWith$Fragment$UserStatistics$tags(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$UserStatistics$tags<TRes> {
  factory CopyWith$Fragment$UserStatistics$tags(
    Fragment$UserStatistics$tags instance,
    TRes Function(Fragment$UserStatistics$tags) then,
  ) = _CopyWithImpl$Fragment$UserStatistics$tags;

  factory CopyWith$Fragment$UserStatistics$tags.stub(TRes res) =
      _CopyWithStubImpl$Fragment$UserStatistics$tags;

  TRes call({
    int? count,
    double? meanScore,
    int? minutesWatched,
    int? chaptersRead,
    List<int?>? mediaIds,
    Fragment$UserStatistics$tags$tag? tag,
    String? $__typename,
  });
  CopyWith$Fragment$UserStatistics$tags$tag<TRes> get tag;
}

class _CopyWithImpl$Fragment$UserStatistics$tags<TRes>
    implements CopyWith$Fragment$UserStatistics$tags<TRes> {
  _CopyWithImpl$Fragment$UserStatistics$tags(
    this._instance,
    this._then,
  );

  final Fragment$UserStatistics$tags _instance;

  final TRes Function(Fragment$UserStatistics$tags) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? count = _undefined,
    Object? meanScore = _undefined,
    Object? minutesWatched = _undefined,
    Object? chaptersRead = _undefined,
    Object? mediaIds = _undefined,
    Object? tag = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$UserStatistics$tags(
        count: count == _undefined || count == null
            ? _instance.count
            : (count as int),
        meanScore: meanScore == _undefined || meanScore == null
            ? _instance.meanScore
            : (meanScore as double),
        minutesWatched: minutesWatched == _undefined || minutesWatched == null
            ? _instance.minutesWatched
            : (minutesWatched as int),
        chaptersRead: chaptersRead == _undefined || chaptersRead == null
            ? _instance.chaptersRead
            : (chaptersRead as int),
        mediaIds: mediaIds == _undefined || mediaIds == null
            ? _instance.mediaIds
            : (mediaIds as List<int?>),
        tag: tag == _undefined
            ? _instance.tag
            : (tag as Fragment$UserStatistics$tags$tag?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$UserStatistics$tags$tag<TRes> get tag {
    final local$tag = _instance.tag;
    return local$tag == null
        ? CopyWith$Fragment$UserStatistics$tags$tag.stub(_then(_instance))
        : CopyWith$Fragment$UserStatistics$tags$tag(
            local$tag, (e) => call(tag: e));
  }
}

class _CopyWithStubImpl$Fragment$UserStatistics$tags<TRes>
    implements CopyWith$Fragment$UserStatistics$tags<TRes> {
  _CopyWithStubImpl$Fragment$UserStatistics$tags(this._res);

  TRes _res;

  call({
    int? count,
    double? meanScore,
    int? minutesWatched,
    int? chaptersRead,
    List<int?>? mediaIds,
    Fragment$UserStatistics$tags$tag? tag,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$UserStatistics$tags$tag<TRes> get tag =>
      CopyWith$Fragment$UserStatistics$tags$tag.stub(_res);
}

class Fragment$UserStatistics$tags$tag {
  Fragment$UserStatistics$tags$tag({
    required this.id,
    required this.name,
    this.$__typename = 'MediaTag',
  });

  factory Fragment$UserStatistics$tags$tag.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Fragment$UserStatistics$tags$tag(
      id: (l$id as int),
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$UserStatistics$tags$tag ||
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$UserStatistics$tags$tag
    on Fragment$UserStatistics$tags$tag {
  CopyWith$Fragment$UserStatistics$tags$tag<Fragment$UserStatistics$tags$tag>
      get copyWith => CopyWith$Fragment$UserStatistics$tags$tag(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$UserStatistics$tags$tag<TRes> {
  factory CopyWith$Fragment$UserStatistics$tags$tag(
    Fragment$UserStatistics$tags$tag instance,
    TRes Function(Fragment$UserStatistics$tags$tag) then,
  ) = _CopyWithImpl$Fragment$UserStatistics$tags$tag;

  factory CopyWith$Fragment$UserStatistics$tags$tag.stub(TRes res) =
      _CopyWithStubImpl$Fragment$UserStatistics$tags$tag;

  TRes call({
    int? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$UserStatistics$tags$tag<TRes>
    implements CopyWith$Fragment$UserStatistics$tags$tag<TRes> {
  _CopyWithImpl$Fragment$UserStatistics$tags$tag(
    this._instance,
    this._then,
  );

  final Fragment$UserStatistics$tags$tag _instance;

  final TRes Function(Fragment$UserStatistics$tags$tag) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$UserStatistics$tags$tag(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$UserStatistics$tags$tag<TRes>
    implements CopyWith$Fragment$UserStatistics$tags$tag<TRes> {
  _CopyWithStubImpl$Fragment$UserStatistics$tags$tag(this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$UserStatistics$countries {
  Fragment$UserStatistics$countries({
    required this.count,
    required this.meanScore,
    required this.minutesWatched,
    required this.chaptersRead,
    required this.mediaIds,
    this.country,
    this.$__typename = 'UserCountryStatistic',
  });

  factory Fragment$UserStatistics$countries.fromJson(
      Map<String, dynamic> json) {
    final l$count = json['count'];
    final l$meanScore = json['meanScore'];
    final l$minutesWatched = json['minutesWatched'];
    final l$chaptersRead = json['chaptersRead'];
    final l$mediaIds = json['mediaIds'];
    final l$country = json['country'];
    final l$$__typename = json['__typename'];
    return Fragment$UserStatistics$countries(
      count: (l$count as int),
      meanScore: (l$meanScore as num).toDouble(),
      minutesWatched: (l$minutesWatched as int),
      chaptersRead: (l$chaptersRead as int),
      mediaIds: (l$mediaIds as List<dynamic>).map((e) => (e as int?)).toList(),
      country: (l$country as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final int count;

  final double meanScore;

  final int minutesWatched;

  final int chaptersRead;

  final List<int?> mediaIds;

  final String? country;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$count = count;
    _resultData['count'] = l$count;
    final l$meanScore = meanScore;
    _resultData['meanScore'] = l$meanScore;
    final l$minutesWatched = minutesWatched;
    _resultData['minutesWatched'] = l$minutesWatched;
    final l$chaptersRead = chaptersRead;
    _resultData['chaptersRead'] = l$chaptersRead;
    final l$mediaIds = mediaIds;
    _resultData['mediaIds'] = l$mediaIds.map((e) => e).toList();
    final l$country = country;
    _resultData['country'] = l$country;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$count = count;
    final l$meanScore = meanScore;
    final l$minutesWatched = minutesWatched;
    final l$chaptersRead = chaptersRead;
    final l$mediaIds = mediaIds;
    final l$country = country;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$count,
      l$meanScore,
      l$minutesWatched,
      l$chaptersRead,
      Object.hashAll(l$mediaIds.map((v) => v)),
      l$country,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$UserStatistics$countries ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$count = count;
    final lOther$count = other.count;
    if (l$count != lOther$count) {
      return false;
    }
    final l$meanScore = meanScore;
    final lOther$meanScore = other.meanScore;
    if (l$meanScore != lOther$meanScore) {
      return false;
    }
    final l$minutesWatched = minutesWatched;
    final lOther$minutesWatched = other.minutesWatched;
    if (l$minutesWatched != lOther$minutesWatched) {
      return false;
    }
    final l$chaptersRead = chaptersRead;
    final lOther$chaptersRead = other.chaptersRead;
    if (l$chaptersRead != lOther$chaptersRead) {
      return false;
    }
    final l$mediaIds = mediaIds;
    final lOther$mediaIds = other.mediaIds;
    if (l$mediaIds.length != lOther$mediaIds.length) {
      return false;
    }
    for (int i = 0; i < l$mediaIds.length; i++) {
      final l$mediaIds$entry = l$mediaIds[i];
      final lOther$mediaIds$entry = lOther$mediaIds[i];
      if (l$mediaIds$entry != lOther$mediaIds$entry) {
        return false;
      }
    }
    final l$country = country;
    final lOther$country = other.country;
    if (l$country != lOther$country) {
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

extension UtilityExtension$Fragment$UserStatistics$countries
    on Fragment$UserStatistics$countries {
  CopyWith$Fragment$UserStatistics$countries<Fragment$UserStatistics$countries>
      get copyWith => CopyWith$Fragment$UserStatistics$countries(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$UserStatistics$countries<TRes> {
  factory CopyWith$Fragment$UserStatistics$countries(
    Fragment$UserStatistics$countries instance,
    TRes Function(Fragment$UserStatistics$countries) then,
  ) = _CopyWithImpl$Fragment$UserStatistics$countries;

  factory CopyWith$Fragment$UserStatistics$countries.stub(TRes res) =
      _CopyWithStubImpl$Fragment$UserStatistics$countries;

  TRes call({
    int? count,
    double? meanScore,
    int? minutesWatched,
    int? chaptersRead,
    List<int?>? mediaIds,
    String? country,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$UserStatistics$countries<TRes>
    implements CopyWith$Fragment$UserStatistics$countries<TRes> {
  _CopyWithImpl$Fragment$UserStatistics$countries(
    this._instance,
    this._then,
  );

  final Fragment$UserStatistics$countries _instance;

  final TRes Function(Fragment$UserStatistics$countries) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? count = _undefined,
    Object? meanScore = _undefined,
    Object? minutesWatched = _undefined,
    Object? chaptersRead = _undefined,
    Object? mediaIds = _undefined,
    Object? country = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$UserStatistics$countries(
        count: count == _undefined || count == null
            ? _instance.count
            : (count as int),
        meanScore: meanScore == _undefined || meanScore == null
            ? _instance.meanScore
            : (meanScore as double),
        minutesWatched: minutesWatched == _undefined || minutesWatched == null
            ? _instance.minutesWatched
            : (minutesWatched as int),
        chaptersRead: chaptersRead == _undefined || chaptersRead == null
            ? _instance.chaptersRead
            : (chaptersRead as int),
        mediaIds: mediaIds == _undefined || mediaIds == null
            ? _instance.mediaIds
            : (mediaIds as List<int?>),
        country:
            country == _undefined ? _instance.country : (country as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$UserStatistics$countries<TRes>
    implements CopyWith$Fragment$UserStatistics$countries<TRes> {
  _CopyWithStubImpl$Fragment$UserStatistics$countries(this._res);

  TRes _res;

  call({
    int? count,
    double? meanScore,
    int? minutesWatched,
    int? chaptersRead,
    List<int?>? mediaIds,
    String? country,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$UserStatistics$voiceActors {
  Fragment$UserStatistics$voiceActors({
    required this.count,
    required this.meanScore,
    required this.minutesWatched,
    required this.chaptersRead,
    required this.mediaIds,
    this.voiceActor,
    required this.characterIds,
    this.$__typename = 'UserVoiceActorStatistic',
  });

  factory Fragment$UserStatistics$voiceActors.fromJson(
      Map<String, dynamic> json) {
    final l$count = json['count'];
    final l$meanScore = json['meanScore'];
    final l$minutesWatched = json['minutesWatched'];
    final l$chaptersRead = json['chaptersRead'];
    final l$mediaIds = json['mediaIds'];
    final l$voiceActor = json['voiceActor'];
    final l$characterIds = json['characterIds'];
    final l$$__typename = json['__typename'];
    return Fragment$UserStatistics$voiceActors(
      count: (l$count as int),
      meanScore: (l$meanScore as num).toDouble(),
      minutesWatched: (l$minutesWatched as int),
      chaptersRead: (l$chaptersRead as int),
      mediaIds: (l$mediaIds as List<dynamic>).map((e) => (e as int?)).toList(),
      voiceActor: l$voiceActor == null
          ? null
          : Fragment$UserStatistics$voiceActors$voiceActor.fromJson(
              (l$voiceActor as Map<String, dynamic>)),
      characterIds:
          (l$characterIds as List<dynamic>).map((e) => (e as int?)).toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int count;

  final double meanScore;

  final int minutesWatched;

  final int chaptersRead;

  final List<int?> mediaIds;

  final Fragment$UserStatistics$voiceActors$voiceActor? voiceActor;

  final List<int?> characterIds;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$count = count;
    _resultData['count'] = l$count;
    final l$meanScore = meanScore;
    _resultData['meanScore'] = l$meanScore;
    final l$minutesWatched = minutesWatched;
    _resultData['minutesWatched'] = l$minutesWatched;
    final l$chaptersRead = chaptersRead;
    _resultData['chaptersRead'] = l$chaptersRead;
    final l$mediaIds = mediaIds;
    _resultData['mediaIds'] = l$mediaIds.map((e) => e).toList();
    final l$voiceActor = voiceActor;
    _resultData['voiceActor'] = l$voiceActor?.toJson();
    final l$characterIds = characterIds;
    _resultData['characterIds'] = l$characterIds.map((e) => e).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$count = count;
    final l$meanScore = meanScore;
    final l$minutesWatched = minutesWatched;
    final l$chaptersRead = chaptersRead;
    final l$mediaIds = mediaIds;
    final l$voiceActor = voiceActor;
    final l$characterIds = characterIds;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$count,
      l$meanScore,
      l$minutesWatched,
      l$chaptersRead,
      Object.hashAll(l$mediaIds.map((v) => v)),
      l$voiceActor,
      Object.hashAll(l$characterIds.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$UserStatistics$voiceActors ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$count = count;
    final lOther$count = other.count;
    if (l$count != lOther$count) {
      return false;
    }
    final l$meanScore = meanScore;
    final lOther$meanScore = other.meanScore;
    if (l$meanScore != lOther$meanScore) {
      return false;
    }
    final l$minutesWatched = minutesWatched;
    final lOther$minutesWatched = other.minutesWatched;
    if (l$minutesWatched != lOther$minutesWatched) {
      return false;
    }
    final l$chaptersRead = chaptersRead;
    final lOther$chaptersRead = other.chaptersRead;
    if (l$chaptersRead != lOther$chaptersRead) {
      return false;
    }
    final l$mediaIds = mediaIds;
    final lOther$mediaIds = other.mediaIds;
    if (l$mediaIds.length != lOther$mediaIds.length) {
      return false;
    }
    for (int i = 0; i < l$mediaIds.length; i++) {
      final l$mediaIds$entry = l$mediaIds[i];
      final lOther$mediaIds$entry = lOther$mediaIds[i];
      if (l$mediaIds$entry != lOther$mediaIds$entry) {
        return false;
      }
    }
    final l$voiceActor = voiceActor;
    final lOther$voiceActor = other.voiceActor;
    if (l$voiceActor != lOther$voiceActor) {
      return false;
    }
    final l$characterIds = characterIds;
    final lOther$characterIds = other.characterIds;
    if (l$characterIds.length != lOther$characterIds.length) {
      return false;
    }
    for (int i = 0; i < l$characterIds.length; i++) {
      final l$characterIds$entry = l$characterIds[i];
      final lOther$characterIds$entry = lOther$characterIds[i];
      if (l$characterIds$entry != lOther$characterIds$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$UserStatistics$voiceActors
    on Fragment$UserStatistics$voiceActors {
  CopyWith$Fragment$UserStatistics$voiceActors<
          Fragment$UserStatistics$voiceActors>
      get copyWith => CopyWith$Fragment$UserStatistics$voiceActors(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$UserStatistics$voiceActors<TRes> {
  factory CopyWith$Fragment$UserStatistics$voiceActors(
    Fragment$UserStatistics$voiceActors instance,
    TRes Function(Fragment$UserStatistics$voiceActors) then,
  ) = _CopyWithImpl$Fragment$UserStatistics$voiceActors;

  factory CopyWith$Fragment$UserStatistics$voiceActors.stub(TRes res) =
      _CopyWithStubImpl$Fragment$UserStatistics$voiceActors;

  TRes call({
    int? count,
    double? meanScore,
    int? minutesWatched,
    int? chaptersRead,
    List<int?>? mediaIds,
    Fragment$UserStatistics$voiceActors$voiceActor? voiceActor,
    List<int?>? characterIds,
    String? $__typename,
  });
  CopyWith$Fragment$UserStatistics$voiceActors$voiceActor<TRes> get voiceActor;
}

class _CopyWithImpl$Fragment$UserStatistics$voiceActors<TRes>
    implements CopyWith$Fragment$UserStatistics$voiceActors<TRes> {
  _CopyWithImpl$Fragment$UserStatistics$voiceActors(
    this._instance,
    this._then,
  );

  final Fragment$UserStatistics$voiceActors _instance;

  final TRes Function(Fragment$UserStatistics$voiceActors) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? count = _undefined,
    Object? meanScore = _undefined,
    Object? minutesWatched = _undefined,
    Object? chaptersRead = _undefined,
    Object? mediaIds = _undefined,
    Object? voiceActor = _undefined,
    Object? characterIds = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$UserStatistics$voiceActors(
        count: count == _undefined || count == null
            ? _instance.count
            : (count as int),
        meanScore: meanScore == _undefined || meanScore == null
            ? _instance.meanScore
            : (meanScore as double),
        minutesWatched: minutesWatched == _undefined || minutesWatched == null
            ? _instance.minutesWatched
            : (minutesWatched as int),
        chaptersRead: chaptersRead == _undefined || chaptersRead == null
            ? _instance.chaptersRead
            : (chaptersRead as int),
        mediaIds: mediaIds == _undefined || mediaIds == null
            ? _instance.mediaIds
            : (mediaIds as List<int?>),
        voiceActor: voiceActor == _undefined
            ? _instance.voiceActor
            : (voiceActor as Fragment$UserStatistics$voiceActors$voiceActor?),
        characterIds: characterIds == _undefined || characterIds == null
            ? _instance.characterIds
            : (characterIds as List<int?>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$UserStatistics$voiceActors$voiceActor<TRes> get voiceActor {
    final local$voiceActor = _instance.voiceActor;
    return local$voiceActor == null
        ? CopyWith$Fragment$UserStatistics$voiceActors$voiceActor.stub(
            _then(_instance))
        : CopyWith$Fragment$UserStatistics$voiceActors$voiceActor(
            local$voiceActor, (e) => call(voiceActor: e));
  }
}

class _CopyWithStubImpl$Fragment$UserStatistics$voiceActors<TRes>
    implements CopyWith$Fragment$UserStatistics$voiceActors<TRes> {
  _CopyWithStubImpl$Fragment$UserStatistics$voiceActors(this._res);

  TRes _res;

  call({
    int? count,
    double? meanScore,
    int? minutesWatched,
    int? chaptersRead,
    List<int?>? mediaIds,
    Fragment$UserStatistics$voiceActors$voiceActor? voiceActor,
    List<int?>? characterIds,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$UserStatistics$voiceActors$voiceActor<TRes>
      get voiceActor =>
          CopyWith$Fragment$UserStatistics$voiceActors$voiceActor.stub(_res);
}

class Fragment$UserStatistics$voiceActors$voiceActor {
  Fragment$UserStatistics$voiceActors$voiceActor({
    required this.id,
    this.name,
    this.image,
    this.$__typename = 'Staff',
  });

  factory Fragment$UserStatistics$voiceActors$voiceActor.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$image = json['image'];
    final l$$__typename = json['__typename'];
    return Fragment$UserStatistics$voiceActors$voiceActor(
      id: (l$id as int),
      name: l$name == null
          ? null
          : Fragment$UserStatistics$voiceActors$voiceActor$name.fromJson(
              (l$name as Map<String, dynamic>)),
      image: l$image == null
          ? null
          : Fragment$UserStatistics$voiceActors$voiceActor$image.fromJson(
              (l$image as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final Fragment$UserStatistics$voiceActors$voiceActor$name? name;

  final Fragment$UserStatistics$voiceActors$voiceActor$image? image;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name?.toJson();
    final l$image = image;
    _resultData['image'] = l$image?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$image = image;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$image,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$UserStatistics$voiceActors$voiceActor ||
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$UserStatistics$voiceActors$voiceActor
    on Fragment$UserStatistics$voiceActors$voiceActor {
  CopyWith$Fragment$UserStatistics$voiceActors$voiceActor<
          Fragment$UserStatistics$voiceActors$voiceActor>
      get copyWith => CopyWith$Fragment$UserStatistics$voiceActors$voiceActor(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$UserStatistics$voiceActors$voiceActor<TRes> {
  factory CopyWith$Fragment$UserStatistics$voiceActors$voiceActor(
    Fragment$UserStatistics$voiceActors$voiceActor instance,
    TRes Function(Fragment$UserStatistics$voiceActors$voiceActor) then,
  ) = _CopyWithImpl$Fragment$UserStatistics$voiceActors$voiceActor;

  factory CopyWith$Fragment$UserStatistics$voiceActors$voiceActor.stub(
          TRes res) =
      _CopyWithStubImpl$Fragment$UserStatistics$voiceActors$voiceActor;

  TRes call({
    int? id,
    Fragment$UserStatistics$voiceActors$voiceActor$name? name,
    Fragment$UserStatistics$voiceActors$voiceActor$image? image,
    String? $__typename,
  });
  CopyWith$Fragment$UserStatistics$voiceActors$voiceActor$name<TRes> get name;
  CopyWith$Fragment$UserStatistics$voiceActors$voiceActor$image<TRes> get image;
}

class _CopyWithImpl$Fragment$UserStatistics$voiceActors$voiceActor<TRes>
    implements CopyWith$Fragment$UserStatistics$voiceActors$voiceActor<TRes> {
  _CopyWithImpl$Fragment$UserStatistics$voiceActors$voiceActor(
    this._instance,
    this._then,
  );

  final Fragment$UserStatistics$voiceActors$voiceActor _instance;

  final TRes Function(Fragment$UserStatistics$voiceActors$voiceActor) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? image = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$UserStatistics$voiceActors$voiceActor(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        name: name == _undefined
            ? _instance.name
            : (name as Fragment$UserStatistics$voiceActors$voiceActor$name?),
        image: image == _undefined
            ? _instance.image
            : (image as Fragment$UserStatistics$voiceActors$voiceActor$image?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$UserStatistics$voiceActors$voiceActor$name<TRes> get name {
    final local$name = _instance.name;
    return local$name == null
        ? CopyWith$Fragment$UserStatistics$voiceActors$voiceActor$name.stub(
            _then(_instance))
        : CopyWith$Fragment$UserStatistics$voiceActors$voiceActor$name(
            local$name, (e) => call(name: e));
  }

  CopyWith$Fragment$UserStatistics$voiceActors$voiceActor$image<TRes>
      get image {
    final local$image = _instance.image;
    return local$image == null
        ? CopyWith$Fragment$UserStatistics$voiceActors$voiceActor$image.stub(
            _then(_instance))
        : CopyWith$Fragment$UserStatistics$voiceActors$voiceActor$image(
            local$image, (e) => call(image: e));
  }
}

class _CopyWithStubImpl$Fragment$UserStatistics$voiceActors$voiceActor<TRes>
    implements CopyWith$Fragment$UserStatistics$voiceActors$voiceActor<TRes> {
  _CopyWithStubImpl$Fragment$UserStatistics$voiceActors$voiceActor(this._res);

  TRes _res;

  call({
    int? id,
    Fragment$UserStatistics$voiceActors$voiceActor$name? name,
    Fragment$UserStatistics$voiceActors$voiceActor$image? image,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$UserStatistics$voiceActors$voiceActor$name<TRes> get name =>
      CopyWith$Fragment$UserStatistics$voiceActors$voiceActor$name.stub(_res);

  CopyWith$Fragment$UserStatistics$voiceActors$voiceActor$image<TRes>
      get image =>
          CopyWith$Fragment$UserStatistics$voiceActors$voiceActor$image.stub(
              _res);
}

class Fragment$UserStatistics$voiceActors$voiceActor$name {
  Fragment$UserStatistics$voiceActors$voiceActor$name({
    this.first,
    this.middle,
    this.last,
    this.full,
    this.native,
    this.alternative,
    this.userPreferred,
    this.$__typename = 'StaffName',
  });

  factory Fragment$UserStatistics$voiceActors$voiceActor$name.fromJson(
      Map<String, dynamic> json) {
    final l$first = json['first'];
    final l$middle = json['middle'];
    final l$last = json['last'];
    final l$full = json['full'];
    final l$native = json['native'];
    final l$alternative = json['alternative'];
    final l$userPreferred = json['userPreferred'];
    final l$$__typename = json['__typename'];
    return Fragment$UserStatistics$voiceActors$voiceActor$name(
      first: (l$first as String?),
      middle: (l$middle as String?),
      last: (l$last as String?),
      full: (l$full as String?),
      native: (l$native as String?),
      alternative: (l$alternative as List<dynamic>?)
          ?.map((e) => (e as String?))
          .toList(),
      userPreferred: (l$userPreferred as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? first;

  final String? middle;

  final String? last;

  final String? full;

  final String? native;

  final List<String?>? alternative;

  final String? userPreferred;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$first = first;
    _resultData['first'] = l$first;
    final l$middle = middle;
    _resultData['middle'] = l$middle;
    final l$last = last;
    _resultData['last'] = l$last;
    final l$full = full;
    _resultData['full'] = l$full;
    final l$native = native;
    _resultData['native'] = l$native;
    final l$alternative = alternative;
    _resultData['alternative'] = l$alternative?.map((e) => e).toList();
    final l$userPreferred = userPreferred;
    _resultData['userPreferred'] = l$userPreferred;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$first = first;
    final l$middle = middle;
    final l$last = last;
    final l$full = full;
    final l$native = native;
    final l$alternative = alternative;
    final l$userPreferred = userPreferred;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$first,
      l$middle,
      l$last,
      l$full,
      l$native,
      l$alternative == null
          ? null
          : Object.hashAll(l$alternative.map((v) => v)),
      l$userPreferred,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$UserStatistics$voiceActors$voiceActor$name ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$first = first;
    final lOther$first = other.first;
    if (l$first != lOther$first) {
      return false;
    }
    final l$middle = middle;
    final lOther$middle = other.middle;
    if (l$middle != lOther$middle) {
      return false;
    }
    final l$last = last;
    final lOther$last = other.last;
    if (l$last != lOther$last) {
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

extension UtilityExtension$Fragment$UserStatistics$voiceActors$voiceActor$name
    on Fragment$UserStatistics$voiceActors$voiceActor$name {
  CopyWith$Fragment$UserStatistics$voiceActors$voiceActor$name<
          Fragment$UserStatistics$voiceActors$voiceActor$name>
      get copyWith =>
          CopyWith$Fragment$UserStatistics$voiceActors$voiceActor$name(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$UserStatistics$voiceActors$voiceActor$name<
    TRes> {
  factory CopyWith$Fragment$UserStatistics$voiceActors$voiceActor$name(
    Fragment$UserStatistics$voiceActors$voiceActor$name instance,
    TRes Function(Fragment$UserStatistics$voiceActors$voiceActor$name) then,
  ) = _CopyWithImpl$Fragment$UserStatistics$voiceActors$voiceActor$name;

  factory CopyWith$Fragment$UserStatistics$voiceActors$voiceActor$name.stub(
          TRes res) =
      _CopyWithStubImpl$Fragment$UserStatistics$voiceActors$voiceActor$name;

  TRes call({
    String? first,
    String? middle,
    String? last,
    String? full,
    String? native,
    List<String?>? alternative,
    String? userPreferred,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$UserStatistics$voiceActors$voiceActor$name<TRes>
    implements
        CopyWith$Fragment$UserStatistics$voiceActors$voiceActor$name<TRes> {
  _CopyWithImpl$Fragment$UserStatistics$voiceActors$voiceActor$name(
    this._instance,
    this._then,
  );

  final Fragment$UserStatistics$voiceActors$voiceActor$name _instance;

  final TRes Function(Fragment$UserStatistics$voiceActors$voiceActor$name)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? first = _undefined,
    Object? middle = _undefined,
    Object? last = _undefined,
    Object? full = _undefined,
    Object? native = _undefined,
    Object? alternative = _undefined,
    Object? userPreferred = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$UserStatistics$voiceActors$voiceActor$name(
        first: first == _undefined ? _instance.first : (first as String?),
        middle: middle == _undefined ? _instance.middle : (middle as String?),
        last: last == _undefined ? _instance.last : (last as String?),
        full: full == _undefined ? _instance.full : (full as String?),
        native: native == _undefined ? _instance.native : (native as String?),
        alternative: alternative == _undefined
            ? _instance.alternative
            : (alternative as List<String?>?),
        userPreferred: userPreferred == _undefined
            ? _instance.userPreferred
            : (userPreferred as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$UserStatistics$voiceActors$voiceActor$name<
        TRes>
    implements
        CopyWith$Fragment$UserStatistics$voiceActors$voiceActor$name<TRes> {
  _CopyWithStubImpl$Fragment$UserStatistics$voiceActors$voiceActor$name(
      this._res);

  TRes _res;

  call({
    String? first,
    String? middle,
    String? last,
    String? full,
    String? native,
    List<String?>? alternative,
    String? userPreferred,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$UserStatistics$voiceActors$voiceActor$image {
  Fragment$UserStatistics$voiceActors$voiceActor$image({
    this.large,
    this.$__typename = 'StaffImage',
  });

  factory Fragment$UserStatistics$voiceActors$voiceActor$image.fromJson(
      Map<String, dynamic> json) {
    final l$large = json['large'];
    final l$$__typename = json['__typename'];
    return Fragment$UserStatistics$voiceActors$voiceActor$image(
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
    if (other is! Fragment$UserStatistics$voiceActors$voiceActor$image ||
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

extension UtilityExtension$Fragment$UserStatistics$voiceActors$voiceActor$image
    on Fragment$UserStatistics$voiceActors$voiceActor$image {
  CopyWith$Fragment$UserStatistics$voiceActors$voiceActor$image<
          Fragment$UserStatistics$voiceActors$voiceActor$image>
      get copyWith =>
          CopyWith$Fragment$UserStatistics$voiceActors$voiceActor$image(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$UserStatistics$voiceActors$voiceActor$image<
    TRes> {
  factory CopyWith$Fragment$UserStatistics$voiceActors$voiceActor$image(
    Fragment$UserStatistics$voiceActors$voiceActor$image instance,
    TRes Function(Fragment$UserStatistics$voiceActors$voiceActor$image) then,
  ) = _CopyWithImpl$Fragment$UserStatistics$voiceActors$voiceActor$image;

  factory CopyWith$Fragment$UserStatistics$voiceActors$voiceActor$image.stub(
          TRes res) =
      _CopyWithStubImpl$Fragment$UserStatistics$voiceActors$voiceActor$image;

  TRes call({
    String? large,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$UserStatistics$voiceActors$voiceActor$image<TRes>
    implements
        CopyWith$Fragment$UserStatistics$voiceActors$voiceActor$image<TRes> {
  _CopyWithImpl$Fragment$UserStatistics$voiceActors$voiceActor$image(
    this._instance,
    this._then,
  );

  final Fragment$UserStatistics$voiceActors$voiceActor$image _instance;

  final TRes Function(Fragment$UserStatistics$voiceActors$voiceActor$image)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? large = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$UserStatistics$voiceActors$voiceActor$image(
        large: large == _undefined ? _instance.large : (large as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$UserStatistics$voiceActors$voiceActor$image<
        TRes>
    implements
        CopyWith$Fragment$UserStatistics$voiceActors$voiceActor$image<TRes> {
  _CopyWithStubImpl$Fragment$UserStatistics$voiceActors$voiceActor$image(
      this._res);

  TRes _res;

  call({
    String? large,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$UserStatistics$staff {
  Fragment$UserStatistics$staff({
    required this.count,
    required this.meanScore,
    required this.minutesWatched,
    required this.chaptersRead,
    required this.mediaIds,
    this.staff,
    this.$__typename = 'UserStaffStatistic',
  });

  factory Fragment$UserStatistics$staff.fromJson(Map<String, dynamic> json) {
    final l$count = json['count'];
    final l$meanScore = json['meanScore'];
    final l$minutesWatched = json['minutesWatched'];
    final l$chaptersRead = json['chaptersRead'];
    final l$mediaIds = json['mediaIds'];
    final l$staff = json['staff'];
    final l$$__typename = json['__typename'];
    return Fragment$UserStatistics$staff(
      count: (l$count as int),
      meanScore: (l$meanScore as num).toDouble(),
      minutesWatched: (l$minutesWatched as int),
      chaptersRead: (l$chaptersRead as int),
      mediaIds: (l$mediaIds as List<dynamic>).map((e) => (e as int?)).toList(),
      staff: l$staff == null
          ? null
          : Fragment$UserStatistics$staff$staff.fromJson(
              (l$staff as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int count;

  final double meanScore;

  final int minutesWatched;

  final int chaptersRead;

  final List<int?> mediaIds;

  final Fragment$UserStatistics$staff$staff? staff;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$count = count;
    _resultData['count'] = l$count;
    final l$meanScore = meanScore;
    _resultData['meanScore'] = l$meanScore;
    final l$minutesWatched = minutesWatched;
    _resultData['minutesWatched'] = l$minutesWatched;
    final l$chaptersRead = chaptersRead;
    _resultData['chaptersRead'] = l$chaptersRead;
    final l$mediaIds = mediaIds;
    _resultData['mediaIds'] = l$mediaIds.map((e) => e).toList();
    final l$staff = staff;
    _resultData['staff'] = l$staff?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$count = count;
    final l$meanScore = meanScore;
    final l$minutesWatched = minutesWatched;
    final l$chaptersRead = chaptersRead;
    final l$mediaIds = mediaIds;
    final l$staff = staff;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$count,
      l$meanScore,
      l$minutesWatched,
      l$chaptersRead,
      Object.hashAll(l$mediaIds.map((v) => v)),
      l$staff,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$UserStatistics$staff ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$count = count;
    final lOther$count = other.count;
    if (l$count != lOther$count) {
      return false;
    }
    final l$meanScore = meanScore;
    final lOther$meanScore = other.meanScore;
    if (l$meanScore != lOther$meanScore) {
      return false;
    }
    final l$minutesWatched = minutesWatched;
    final lOther$minutesWatched = other.minutesWatched;
    if (l$minutesWatched != lOther$minutesWatched) {
      return false;
    }
    final l$chaptersRead = chaptersRead;
    final lOther$chaptersRead = other.chaptersRead;
    if (l$chaptersRead != lOther$chaptersRead) {
      return false;
    }
    final l$mediaIds = mediaIds;
    final lOther$mediaIds = other.mediaIds;
    if (l$mediaIds.length != lOther$mediaIds.length) {
      return false;
    }
    for (int i = 0; i < l$mediaIds.length; i++) {
      final l$mediaIds$entry = l$mediaIds[i];
      final lOther$mediaIds$entry = lOther$mediaIds[i];
      if (l$mediaIds$entry != lOther$mediaIds$entry) {
        return false;
      }
    }
    final l$staff = staff;
    final lOther$staff = other.staff;
    if (l$staff != lOther$staff) {
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

extension UtilityExtension$Fragment$UserStatistics$staff
    on Fragment$UserStatistics$staff {
  CopyWith$Fragment$UserStatistics$staff<Fragment$UserStatistics$staff>
      get copyWith => CopyWith$Fragment$UserStatistics$staff(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$UserStatistics$staff<TRes> {
  factory CopyWith$Fragment$UserStatistics$staff(
    Fragment$UserStatistics$staff instance,
    TRes Function(Fragment$UserStatistics$staff) then,
  ) = _CopyWithImpl$Fragment$UserStatistics$staff;

  factory CopyWith$Fragment$UserStatistics$staff.stub(TRes res) =
      _CopyWithStubImpl$Fragment$UserStatistics$staff;

  TRes call({
    int? count,
    double? meanScore,
    int? minutesWatched,
    int? chaptersRead,
    List<int?>? mediaIds,
    Fragment$UserStatistics$staff$staff? staff,
    String? $__typename,
  });
  CopyWith$Fragment$UserStatistics$staff$staff<TRes> get staff;
}

class _CopyWithImpl$Fragment$UserStatistics$staff<TRes>
    implements CopyWith$Fragment$UserStatistics$staff<TRes> {
  _CopyWithImpl$Fragment$UserStatistics$staff(
    this._instance,
    this._then,
  );

  final Fragment$UserStatistics$staff _instance;

  final TRes Function(Fragment$UserStatistics$staff) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? count = _undefined,
    Object? meanScore = _undefined,
    Object? minutesWatched = _undefined,
    Object? chaptersRead = _undefined,
    Object? mediaIds = _undefined,
    Object? staff = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$UserStatistics$staff(
        count: count == _undefined || count == null
            ? _instance.count
            : (count as int),
        meanScore: meanScore == _undefined || meanScore == null
            ? _instance.meanScore
            : (meanScore as double),
        minutesWatched: minutesWatched == _undefined || minutesWatched == null
            ? _instance.minutesWatched
            : (minutesWatched as int),
        chaptersRead: chaptersRead == _undefined || chaptersRead == null
            ? _instance.chaptersRead
            : (chaptersRead as int),
        mediaIds: mediaIds == _undefined || mediaIds == null
            ? _instance.mediaIds
            : (mediaIds as List<int?>),
        staff: staff == _undefined
            ? _instance.staff
            : (staff as Fragment$UserStatistics$staff$staff?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$UserStatistics$staff$staff<TRes> get staff {
    final local$staff = _instance.staff;
    return local$staff == null
        ? CopyWith$Fragment$UserStatistics$staff$staff.stub(_then(_instance))
        : CopyWith$Fragment$UserStatistics$staff$staff(
            local$staff, (e) => call(staff: e));
  }
}

class _CopyWithStubImpl$Fragment$UserStatistics$staff<TRes>
    implements CopyWith$Fragment$UserStatistics$staff<TRes> {
  _CopyWithStubImpl$Fragment$UserStatistics$staff(this._res);

  TRes _res;

  call({
    int? count,
    double? meanScore,
    int? minutesWatched,
    int? chaptersRead,
    List<int?>? mediaIds,
    Fragment$UserStatistics$staff$staff? staff,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$UserStatistics$staff$staff<TRes> get staff =>
      CopyWith$Fragment$UserStatistics$staff$staff.stub(_res);
}

class Fragment$UserStatistics$staff$staff {
  Fragment$UserStatistics$staff$staff({
    required this.id,
    this.name,
    this.image,
    this.$__typename = 'Staff',
  });

  factory Fragment$UserStatistics$staff$staff.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$image = json['image'];
    final l$$__typename = json['__typename'];
    return Fragment$UserStatistics$staff$staff(
      id: (l$id as int),
      name: l$name == null
          ? null
          : Fragment$UserStatistics$staff$staff$name.fromJson(
              (l$name as Map<String, dynamic>)),
      image: l$image == null
          ? null
          : Fragment$UserStatistics$staff$staff$image.fromJson(
              (l$image as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final Fragment$UserStatistics$staff$staff$name? name;

  final Fragment$UserStatistics$staff$staff$image? image;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name?.toJson();
    final l$image = image;
    _resultData['image'] = l$image?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$image = image;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$image,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$UserStatistics$staff$staff ||
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$UserStatistics$staff$staff
    on Fragment$UserStatistics$staff$staff {
  CopyWith$Fragment$UserStatistics$staff$staff<
          Fragment$UserStatistics$staff$staff>
      get copyWith => CopyWith$Fragment$UserStatistics$staff$staff(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$UserStatistics$staff$staff<TRes> {
  factory CopyWith$Fragment$UserStatistics$staff$staff(
    Fragment$UserStatistics$staff$staff instance,
    TRes Function(Fragment$UserStatistics$staff$staff) then,
  ) = _CopyWithImpl$Fragment$UserStatistics$staff$staff;

  factory CopyWith$Fragment$UserStatistics$staff$staff.stub(TRes res) =
      _CopyWithStubImpl$Fragment$UserStatistics$staff$staff;

  TRes call({
    int? id,
    Fragment$UserStatistics$staff$staff$name? name,
    Fragment$UserStatistics$staff$staff$image? image,
    String? $__typename,
  });
  CopyWith$Fragment$UserStatistics$staff$staff$name<TRes> get name;
  CopyWith$Fragment$UserStatistics$staff$staff$image<TRes> get image;
}

class _CopyWithImpl$Fragment$UserStatistics$staff$staff<TRes>
    implements CopyWith$Fragment$UserStatistics$staff$staff<TRes> {
  _CopyWithImpl$Fragment$UserStatistics$staff$staff(
    this._instance,
    this._then,
  );

  final Fragment$UserStatistics$staff$staff _instance;

  final TRes Function(Fragment$UserStatistics$staff$staff) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? image = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$UserStatistics$staff$staff(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        name: name == _undefined
            ? _instance.name
            : (name as Fragment$UserStatistics$staff$staff$name?),
        image: image == _undefined
            ? _instance.image
            : (image as Fragment$UserStatistics$staff$staff$image?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$UserStatistics$staff$staff$name<TRes> get name {
    final local$name = _instance.name;
    return local$name == null
        ? CopyWith$Fragment$UserStatistics$staff$staff$name.stub(
            _then(_instance))
        : CopyWith$Fragment$UserStatistics$staff$staff$name(
            local$name, (e) => call(name: e));
  }

  CopyWith$Fragment$UserStatistics$staff$staff$image<TRes> get image {
    final local$image = _instance.image;
    return local$image == null
        ? CopyWith$Fragment$UserStatistics$staff$staff$image.stub(
            _then(_instance))
        : CopyWith$Fragment$UserStatistics$staff$staff$image(
            local$image, (e) => call(image: e));
  }
}

class _CopyWithStubImpl$Fragment$UserStatistics$staff$staff<TRes>
    implements CopyWith$Fragment$UserStatistics$staff$staff<TRes> {
  _CopyWithStubImpl$Fragment$UserStatistics$staff$staff(this._res);

  TRes _res;

  call({
    int? id,
    Fragment$UserStatistics$staff$staff$name? name,
    Fragment$UserStatistics$staff$staff$image? image,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$UserStatistics$staff$staff$name<TRes> get name =>
      CopyWith$Fragment$UserStatistics$staff$staff$name.stub(_res);

  CopyWith$Fragment$UserStatistics$staff$staff$image<TRes> get image =>
      CopyWith$Fragment$UserStatistics$staff$staff$image.stub(_res);
}

class Fragment$UserStatistics$staff$staff$name {
  Fragment$UserStatistics$staff$staff$name({
    this.first,
    this.middle,
    this.last,
    this.full,
    this.native,
    this.alternative,
    this.userPreferred,
    this.$__typename = 'StaffName',
  });

  factory Fragment$UserStatistics$staff$staff$name.fromJson(
      Map<String, dynamic> json) {
    final l$first = json['first'];
    final l$middle = json['middle'];
    final l$last = json['last'];
    final l$full = json['full'];
    final l$native = json['native'];
    final l$alternative = json['alternative'];
    final l$userPreferred = json['userPreferred'];
    final l$$__typename = json['__typename'];
    return Fragment$UserStatistics$staff$staff$name(
      first: (l$first as String?),
      middle: (l$middle as String?),
      last: (l$last as String?),
      full: (l$full as String?),
      native: (l$native as String?),
      alternative: (l$alternative as List<dynamic>?)
          ?.map((e) => (e as String?))
          .toList(),
      userPreferred: (l$userPreferred as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? first;

  final String? middle;

  final String? last;

  final String? full;

  final String? native;

  final List<String?>? alternative;

  final String? userPreferred;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$first = first;
    _resultData['first'] = l$first;
    final l$middle = middle;
    _resultData['middle'] = l$middle;
    final l$last = last;
    _resultData['last'] = l$last;
    final l$full = full;
    _resultData['full'] = l$full;
    final l$native = native;
    _resultData['native'] = l$native;
    final l$alternative = alternative;
    _resultData['alternative'] = l$alternative?.map((e) => e).toList();
    final l$userPreferred = userPreferred;
    _resultData['userPreferred'] = l$userPreferred;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$first = first;
    final l$middle = middle;
    final l$last = last;
    final l$full = full;
    final l$native = native;
    final l$alternative = alternative;
    final l$userPreferred = userPreferred;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$first,
      l$middle,
      l$last,
      l$full,
      l$native,
      l$alternative == null
          ? null
          : Object.hashAll(l$alternative.map((v) => v)),
      l$userPreferred,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$UserStatistics$staff$staff$name ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$first = first;
    final lOther$first = other.first;
    if (l$first != lOther$first) {
      return false;
    }
    final l$middle = middle;
    final lOther$middle = other.middle;
    if (l$middle != lOther$middle) {
      return false;
    }
    final l$last = last;
    final lOther$last = other.last;
    if (l$last != lOther$last) {
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

extension UtilityExtension$Fragment$UserStatistics$staff$staff$name
    on Fragment$UserStatistics$staff$staff$name {
  CopyWith$Fragment$UserStatistics$staff$staff$name<
          Fragment$UserStatistics$staff$staff$name>
      get copyWith => CopyWith$Fragment$UserStatistics$staff$staff$name(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$UserStatistics$staff$staff$name<TRes> {
  factory CopyWith$Fragment$UserStatistics$staff$staff$name(
    Fragment$UserStatistics$staff$staff$name instance,
    TRes Function(Fragment$UserStatistics$staff$staff$name) then,
  ) = _CopyWithImpl$Fragment$UserStatistics$staff$staff$name;

  factory CopyWith$Fragment$UserStatistics$staff$staff$name.stub(TRes res) =
      _CopyWithStubImpl$Fragment$UserStatistics$staff$staff$name;

  TRes call({
    String? first,
    String? middle,
    String? last,
    String? full,
    String? native,
    List<String?>? alternative,
    String? userPreferred,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$UserStatistics$staff$staff$name<TRes>
    implements CopyWith$Fragment$UserStatistics$staff$staff$name<TRes> {
  _CopyWithImpl$Fragment$UserStatistics$staff$staff$name(
    this._instance,
    this._then,
  );

  final Fragment$UserStatistics$staff$staff$name _instance;

  final TRes Function(Fragment$UserStatistics$staff$staff$name) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? first = _undefined,
    Object? middle = _undefined,
    Object? last = _undefined,
    Object? full = _undefined,
    Object? native = _undefined,
    Object? alternative = _undefined,
    Object? userPreferred = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$UserStatistics$staff$staff$name(
        first: first == _undefined ? _instance.first : (first as String?),
        middle: middle == _undefined ? _instance.middle : (middle as String?),
        last: last == _undefined ? _instance.last : (last as String?),
        full: full == _undefined ? _instance.full : (full as String?),
        native: native == _undefined ? _instance.native : (native as String?),
        alternative: alternative == _undefined
            ? _instance.alternative
            : (alternative as List<String?>?),
        userPreferred: userPreferred == _undefined
            ? _instance.userPreferred
            : (userPreferred as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$UserStatistics$staff$staff$name<TRes>
    implements CopyWith$Fragment$UserStatistics$staff$staff$name<TRes> {
  _CopyWithStubImpl$Fragment$UserStatistics$staff$staff$name(this._res);

  TRes _res;

  call({
    String? first,
    String? middle,
    String? last,
    String? full,
    String? native,
    List<String?>? alternative,
    String? userPreferred,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$UserStatistics$staff$staff$image {
  Fragment$UserStatistics$staff$staff$image({
    this.large,
    this.$__typename = 'StaffImage',
  });

  factory Fragment$UserStatistics$staff$staff$image.fromJson(
      Map<String, dynamic> json) {
    final l$large = json['large'];
    final l$$__typename = json['__typename'];
    return Fragment$UserStatistics$staff$staff$image(
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
    if (other is! Fragment$UserStatistics$staff$staff$image ||
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

extension UtilityExtension$Fragment$UserStatistics$staff$staff$image
    on Fragment$UserStatistics$staff$staff$image {
  CopyWith$Fragment$UserStatistics$staff$staff$image<
          Fragment$UserStatistics$staff$staff$image>
      get copyWith => CopyWith$Fragment$UserStatistics$staff$staff$image(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$UserStatistics$staff$staff$image<TRes> {
  factory CopyWith$Fragment$UserStatistics$staff$staff$image(
    Fragment$UserStatistics$staff$staff$image instance,
    TRes Function(Fragment$UserStatistics$staff$staff$image) then,
  ) = _CopyWithImpl$Fragment$UserStatistics$staff$staff$image;

  factory CopyWith$Fragment$UserStatistics$staff$staff$image.stub(TRes res) =
      _CopyWithStubImpl$Fragment$UserStatistics$staff$staff$image;

  TRes call({
    String? large,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$UserStatistics$staff$staff$image<TRes>
    implements CopyWith$Fragment$UserStatistics$staff$staff$image<TRes> {
  _CopyWithImpl$Fragment$UserStatistics$staff$staff$image(
    this._instance,
    this._then,
  );

  final Fragment$UserStatistics$staff$staff$image _instance;

  final TRes Function(Fragment$UserStatistics$staff$staff$image) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? large = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$UserStatistics$staff$staff$image(
        large: large == _undefined ? _instance.large : (large as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$UserStatistics$staff$staff$image<TRes>
    implements CopyWith$Fragment$UserStatistics$staff$staff$image<TRes> {
  _CopyWithStubImpl$Fragment$UserStatistics$staff$staff$image(this._res);

  TRes _res;

  call({
    String? large,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$UserStatistics$studios {
  Fragment$UserStatistics$studios({
    required this.count,
    required this.meanScore,
    required this.minutesWatched,
    required this.chaptersRead,
    required this.mediaIds,
    this.studio,
    this.$__typename = 'UserStudioStatistic',
  });

  factory Fragment$UserStatistics$studios.fromJson(Map<String, dynamic> json) {
    final l$count = json['count'];
    final l$meanScore = json['meanScore'];
    final l$minutesWatched = json['minutesWatched'];
    final l$chaptersRead = json['chaptersRead'];
    final l$mediaIds = json['mediaIds'];
    final l$studio = json['studio'];
    final l$$__typename = json['__typename'];
    return Fragment$UserStatistics$studios(
      count: (l$count as int),
      meanScore: (l$meanScore as num).toDouble(),
      minutesWatched: (l$minutesWatched as int),
      chaptersRead: (l$chaptersRead as int),
      mediaIds: (l$mediaIds as List<dynamic>).map((e) => (e as int?)).toList(),
      studio: l$studio == null
          ? null
          : Fragment$UserStatistics$studios$studio.fromJson(
              (l$studio as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int count;

  final double meanScore;

  final int minutesWatched;

  final int chaptersRead;

  final List<int?> mediaIds;

  final Fragment$UserStatistics$studios$studio? studio;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$count = count;
    _resultData['count'] = l$count;
    final l$meanScore = meanScore;
    _resultData['meanScore'] = l$meanScore;
    final l$minutesWatched = minutesWatched;
    _resultData['minutesWatched'] = l$minutesWatched;
    final l$chaptersRead = chaptersRead;
    _resultData['chaptersRead'] = l$chaptersRead;
    final l$mediaIds = mediaIds;
    _resultData['mediaIds'] = l$mediaIds.map((e) => e).toList();
    final l$studio = studio;
    _resultData['studio'] = l$studio?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$count = count;
    final l$meanScore = meanScore;
    final l$minutesWatched = minutesWatched;
    final l$chaptersRead = chaptersRead;
    final l$mediaIds = mediaIds;
    final l$studio = studio;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$count,
      l$meanScore,
      l$minutesWatched,
      l$chaptersRead,
      Object.hashAll(l$mediaIds.map((v) => v)),
      l$studio,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$UserStatistics$studios ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$count = count;
    final lOther$count = other.count;
    if (l$count != lOther$count) {
      return false;
    }
    final l$meanScore = meanScore;
    final lOther$meanScore = other.meanScore;
    if (l$meanScore != lOther$meanScore) {
      return false;
    }
    final l$minutesWatched = minutesWatched;
    final lOther$minutesWatched = other.minutesWatched;
    if (l$minutesWatched != lOther$minutesWatched) {
      return false;
    }
    final l$chaptersRead = chaptersRead;
    final lOther$chaptersRead = other.chaptersRead;
    if (l$chaptersRead != lOther$chaptersRead) {
      return false;
    }
    final l$mediaIds = mediaIds;
    final lOther$mediaIds = other.mediaIds;
    if (l$mediaIds.length != lOther$mediaIds.length) {
      return false;
    }
    for (int i = 0; i < l$mediaIds.length; i++) {
      final l$mediaIds$entry = l$mediaIds[i];
      final lOther$mediaIds$entry = lOther$mediaIds[i];
      if (l$mediaIds$entry != lOther$mediaIds$entry) {
        return false;
      }
    }
    final l$studio = studio;
    final lOther$studio = other.studio;
    if (l$studio != lOther$studio) {
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

extension UtilityExtension$Fragment$UserStatistics$studios
    on Fragment$UserStatistics$studios {
  CopyWith$Fragment$UserStatistics$studios<Fragment$UserStatistics$studios>
      get copyWith => CopyWith$Fragment$UserStatistics$studios(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$UserStatistics$studios<TRes> {
  factory CopyWith$Fragment$UserStatistics$studios(
    Fragment$UserStatistics$studios instance,
    TRes Function(Fragment$UserStatistics$studios) then,
  ) = _CopyWithImpl$Fragment$UserStatistics$studios;

  factory CopyWith$Fragment$UserStatistics$studios.stub(TRes res) =
      _CopyWithStubImpl$Fragment$UserStatistics$studios;

  TRes call({
    int? count,
    double? meanScore,
    int? minutesWatched,
    int? chaptersRead,
    List<int?>? mediaIds,
    Fragment$UserStatistics$studios$studio? studio,
    String? $__typename,
  });
  CopyWith$Fragment$UserStatistics$studios$studio<TRes> get studio;
}

class _CopyWithImpl$Fragment$UserStatistics$studios<TRes>
    implements CopyWith$Fragment$UserStatistics$studios<TRes> {
  _CopyWithImpl$Fragment$UserStatistics$studios(
    this._instance,
    this._then,
  );

  final Fragment$UserStatistics$studios _instance;

  final TRes Function(Fragment$UserStatistics$studios) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? count = _undefined,
    Object? meanScore = _undefined,
    Object? minutesWatched = _undefined,
    Object? chaptersRead = _undefined,
    Object? mediaIds = _undefined,
    Object? studio = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$UserStatistics$studios(
        count: count == _undefined || count == null
            ? _instance.count
            : (count as int),
        meanScore: meanScore == _undefined || meanScore == null
            ? _instance.meanScore
            : (meanScore as double),
        minutesWatched: minutesWatched == _undefined || minutesWatched == null
            ? _instance.minutesWatched
            : (minutesWatched as int),
        chaptersRead: chaptersRead == _undefined || chaptersRead == null
            ? _instance.chaptersRead
            : (chaptersRead as int),
        mediaIds: mediaIds == _undefined || mediaIds == null
            ? _instance.mediaIds
            : (mediaIds as List<int?>),
        studio: studio == _undefined
            ? _instance.studio
            : (studio as Fragment$UserStatistics$studios$studio?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$UserStatistics$studios$studio<TRes> get studio {
    final local$studio = _instance.studio;
    return local$studio == null
        ? CopyWith$Fragment$UserStatistics$studios$studio.stub(_then(_instance))
        : CopyWith$Fragment$UserStatistics$studios$studio(
            local$studio, (e) => call(studio: e));
  }
}

class _CopyWithStubImpl$Fragment$UserStatistics$studios<TRes>
    implements CopyWith$Fragment$UserStatistics$studios<TRes> {
  _CopyWithStubImpl$Fragment$UserStatistics$studios(this._res);

  TRes _res;

  call({
    int? count,
    double? meanScore,
    int? minutesWatched,
    int? chaptersRead,
    List<int?>? mediaIds,
    Fragment$UserStatistics$studios$studio? studio,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$UserStatistics$studios$studio<TRes> get studio =>
      CopyWith$Fragment$UserStatistics$studios$studio.stub(_res);
}

class Fragment$UserStatistics$studios$studio {
  Fragment$UserStatistics$studios$studio({
    required this.id,
    required this.name,
    required this.isAnimationStudio,
    this.$__typename = 'Studio',
  });

  factory Fragment$UserStatistics$studios$studio.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$isAnimationStudio = json['isAnimationStudio'];
    final l$$__typename = json['__typename'];
    return Fragment$UserStatistics$studios$studio(
      id: (l$id as int),
      name: (l$name as String),
      isAnimationStudio: (l$isAnimationStudio as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String name;

  final bool isAnimationStudio;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$isAnimationStudio = isAnimationStudio;
    _resultData['isAnimationStudio'] = l$isAnimationStudio;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$isAnimationStudio = isAnimationStudio;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$isAnimationStudio,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$UserStatistics$studios$studio ||
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
    final l$isAnimationStudio = isAnimationStudio;
    final lOther$isAnimationStudio = other.isAnimationStudio;
    if (l$isAnimationStudio != lOther$isAnimationStudio) {
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

extension UtilityExtension$Fragment$UserStatistics$studios$studio
    on Fragment$UserStatistics$studios$studio {
  CopyWith$Fragment$UserStatistics$studios$studio<
          Fragment$UserStatistics$studios$studio>
      get copyWith => CopyWith$Fragment$UserStatistics$studios$studio(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$UserStatistics$studios$studio<TRes> {
  factory CopyWith$Fragment$UserStatistics$studios$studio(
    Fragment$UserStatistics$studios$studio instance,
    TRes Function(Fragment$UserStatistics$studios$studio) then,
  ) = _CopyWithImpl$Fragment$UserStatistics$studios$studio;

  factory CopyWith$Fragment$UserStatistics$studios$studio.stub(TRes res) =
      _CopyWithStubImpl$Fragment$UserStatistics$studios$studio;

  TRes call({
    int? id,
    String? name,
    bool? isAnimationStudio,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$UserStatistics$studios$studio<TRes>
    implements CopyWith$Fragment$UserStatistics$studios$studio<TRes> {
  _CopyWithImpl$Fragment$UserStatistics$studios$studio(
    this._instance,
    this._then,
  );

  final Fragment$UserStatistics$studios$studio _instance;

  final TRes Function(Fragment$UserStatistics$studios$studio) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? isAnimationStudio = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$UserStatistics$studios$studio(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        isAnimationStudio:
            isAnimationStudio == _undefined || isAnimationStudio == null
                ? _instance.isAnimationStudio
                : (isAnimationStudio as bool),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$UserStatistics$studios$studio<TRes>
    implements CopyWith$Fragment$UserStatistics$studios$studio<TRes> {
  _CopyWithStubImpl$Fragment$UserStatistics$studios$studio(this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    bool? isAnimationStudio,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$GetUserStats {
  factory Variables$Query$GetUserStats({
    int? id,
    List<Enum$UserStatisticsSort?>? sort,
  }) =>
      Variables$Query$GetUserStats._({
        if (id != null) r'id': id,
        if (sort != null) r'sort': sort,
      });

  Variables$Query$GetUserStats._(this._$data);

  factory Variables$Query$GetUserStats.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as int?);
    }
    if (data.containsKey('sort')) {
      final l$sort = data['sort'];
      result$data['sort'] = (l$sort as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : fromJson$Enum$UserStatisticsSort((e as String)))
          .toList();
    }
    return Variables$Query$GetUserStats._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get id => (_$data['id'] as int?);

  List<Enum$UserStatisticsSort?>? get sort =>
      (_$data['sort'] as List<Enum$UserStatisticsSort?>?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    if (_$data.containsKey('sort')) {
      final l$sort = sort;
      result$data['sort'] = l$sort
          ?.map((e) => e == null ? null : toJson$Enum$UserStatisticsSort(e))
          .toList();
    }
    return result$data;
  }

  CopyWith$Variables$Query$GetUserStats<Variables$Query$GetUserStats>
      get copyWith => CopyWith$Variables$Query$GetUserStats(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$GetUserStats ||
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
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$sort = sort;
    return Object.hashAll([
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('sort')
          ? l$sort == null
              ? null
              : Object.hashAll(l$sort.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$GetUserStats<TRes> {
  factory CopyWith$Variables$Query$GetUserStats(
    Variables$Query$GetUserStats instance,
    TRes Function(Variables$Query$GetUserStats) then,
  ) = _CopyWithImpl$Variables$Query$GetUserStats;

  factory CopyWith$Variables$Query$GetUserStats.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetUserStats;

  TRes call({
    int? id,
    List<Enum$UserStatisticsSort?>? sort,
  });
}

class _CopyWithImpl$Variables$Query$GetUserStats<TRes>
    implements CopyWith$Variables$Query$GetUserStats<TRes> {
  _CopyWithImpl$Variables$Query$GetUserStats(
    this._instance,
    this._then,
  );

  final Variables$Query$GetUserStats _instance;

  final TRes Function(Variables$Query$GetUserStats) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? sort = _undefined,
  }) =>
      _then(Variables$Query$GetUserStats._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as int?),
        if (sort != _undefined)
          'sort': (sort as List<Enum$UserStatisticsSort?>?),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetUserStats<TRes>
    implements CopyWith$Variables$Query$GetUserStats<TRes> {
  _CopyWithStubImpl$Variables$Query$GetUserStats(this._res);

  TRes _res;

  call({
    int? id,
    List<Enum$UserStatisticsSort?>? sort,
  }) =>
      _res;
}

class Query$GetUserStats {
  Query$GetUserStats({
    this.User,
    this.$__typename = 'Query',
  });

  factory Query$GetUserStats.fromJson(Map<String, dynamic> json) {
    final l$User = json['User'];
    final l$$__typename = json['__typename'];
    return Query$GetUserStats(
      User: l$User == null
          ? null
          : Query$GetUserStats$User.fromJson((l$User as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetUserStats$User? User;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$User = User;
    _resultData['User'] = l$User?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$User = User;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$User,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetUserStats || runtimeType != other.runtimeType) {
      return false;
    }
    final l$User = User;
    final lOther$User = other.User;
    if (l$User != lOther$User) {
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

extension UtilityExtension$Query$GetUserStats on Query$GetUserStats {
  CopyWith$Query$GetUserStats<Query$GetUserStats> get copyWith =>
      CopyWith$Query$GetUserStats(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetUserStats<TRes> {
  factory CopyWith$Query$GetUserStats(
    Query$GetUserStats instance,
    TRes Function(Query$GetUserStats) then,
  ) = _CopyWithImpl$Query$GetUserStats;

  factory CopyWith$Query$GetUserStats.stub(TRes res) =
      _CopyWithStubImpl$Query$GetUserStats;

  TRes call({
    Query$GetUserStats$User? User,
    String? $__typename,
  });
  CopyWith$Query$GetUserStats$User<TRes> get User;
}

class _CopyWithImpl$Query$GetUserStats<TRes>
    implements CopyWith$Query$GetUserStats<TRes> {
  _CopyWithImpl$Query$GetUserStats(
    this._instance,
    this._then,
  );

  final Query$GetUserStats _instance;

  final TRes Function(Query$GetUserStats) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? User = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetUserStats(
        User: User == _undefined
            ? _instance.User
            : (User as Query$GetUserStats$User?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetUserStats$User<TRes> get User {
    final local$User = _instance.User;
    return local$User == null
        ? CopyWith$Query$GetUserStats$User.stub(_then(_instance))
        : CopyWith$Query$GetUserStats$User(local$User, (e) => call(User: e));
  }
}

class _CopyWithStubImpl$Query$GetUserStats<TRes>
    implements CopyWith$Query$GetUserStats<TRes> {
  _CopyWithStubImpl$Query$GetUserStats(this._res);

  TRes _res;

  call({
    Query$GetUserStats$User? User,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetUserStats$User<TRes> get User =>
      CopyWith$Query$GetUserStats$User.stub(_res);
}

const documentNodeQueryGetUserStats = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetUserStats'),
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
        variable: VariableNode(name: NameNode(value: 'sort')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'UserStatisticsSort'),
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
        name: NameNode(value: 'User'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'id')),
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
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'statistics'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'anime'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FragmentSpreadNode(
                    name: NameNode(value: 'UserStatistics'),
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
                name: NameNode(value: 'manga'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FragmentSpreadNode(
                    name: NameNode(value: 'UserStatistics'),
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
  fragmentDefinitionUserStatistics,
]);
Query$GetUserStats _parserFn$Query$GetUserStats(Map<String, dynamic> data) =>
    Query$GetUserStats.fromJson(data);
typedef OnQueryComplete$Query$GetUserStats = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$GetUserStats?,
);

class Options$Query$GetUserStats
    extends graphql.QueryOptions<Query$GetUserStats> {
  Options$Query$GetUserStats({
    String? operationName,
    Variables$Query$GetUserStats? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetUserStats? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$GetUserStats? onComplete,
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
                    data == null ? null : _parserFn$Query$GetUserStats(data),
                  ),
          onError: onError,
          document: documentNodeQueryGetUserStats,
          parserFn: _parserFn$Query$GetUserStats,
        );

  final OnQueryComplete$Query$GetUserStats? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$GetUserStats
    extends graphql.WatchQueryOptions<Query$GetUserStats> {
  WatchOptions$Query$GetUserStats({
    String? operationName,
    Variables$Query$GetUserStats? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetUserStats? typedOptimisticResult,
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
          document: documentNodeQueryGetUserStats,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetUserStats,
        );
}

class FetchMoreOptions$Query$GetUserStats extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetUserStats({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$GetUserStats? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryGetUserStats,
        );
}

extension ClientExtension$Query$GetUserStats on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetUserStats>> query$GetUserStats(
          [Options$Query$GetUserStats? options]) async =>
      await this.query(options ?? Options$Query$GetUserStats());
  graphql.ObservableQuery<Query$GetUserStats> watchQuery$GetUserStats(
          [WatchOptions$Query$GetUserStats? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$GetUserStats());
  void writeQuery$GetUserStats({
    required Query$GetUserStats data,
    Variables$Query$GetUserStats? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryGetUserStats),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetUserStats? readQuery$GetUserStats({
    Variables$Query$GetUserStats? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryGetUserStats),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$GetUserStats.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$GetUserStats> useQuery$GetUserStats(
        [Options$Query$GetUserStats? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$GetUserStats());
graphql.ObservableQuery<Query$GetUserStats> useWatchQuery$GetUserStats(
        [WatchOptions$Query$GetUserStats? options]) =>
    graphql_flutter.useWatchQuery(options ?? WatchOptions$Query$GetUserStats());

class Query$GetUserStats$Widget
    extends graphql_flutter.Query<Query$GetUserStats> {
  Query$GetUserStats$Widget({
    widgets.Key? key,
    Options$Query$GetUserStats? options,
    required graphql_flutter.QueryBuilder<Query$GetUserStats> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$GetUserStats(),
          builder: builder,
        );
}

class Query$GetUserStats$User {
  Query$GetUserStats$User({
    required this.id,
    required this.name,
    this.statistics,
    this.$__typename = 'User',
  });

  factory Query$GetUserStats$User.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$statistics = json['statistics'];
    final l$$__typename = json['__typename'];
    return Query$GetUserStats$User(
      id: (l$id as int),
      name: (l$name as String),
      statistics: l$statistics == null
          ? null
          : Query$GetUserStats$User$statistics.fromJson(
              (l$statistics as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String name;

  final Query$GetUserStats$User$statistics? statistics;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$statistics = statistics;
    _resultData['statistics'] = l$statistics?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$statistics = statistics;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$statistics,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetUserStats$User || runtimeType != other.runtimeType) {
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
    final l$statistics = statistics;
    final lOther$statistics = other.statistics;
    if (l$statistics != lOther$statistics) {
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

extension UtilityExtension$Query$GetUserStats$User on Query$GetUserStats$User {
  CopyWith$Query$GetUserStats$User<Query$GetUserStats$User> get copyWith =>
      CopyWith$Query$GetUserStats$User(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetUserStats$User<TRes> {
  factory CopyWith$Query$GetUserStats$User(
    Query$GetUserStats$User instance,
    TRes Function(Query$GetUserStats$User) then,
  ) = _CopyWithImpl$Query$GetUserStats$User;

  factory CopyWith$Query$GetUserStats$User.stub(TRes res) =
      _CopyWithStubImpl$Query$GetUserStats$User;

  TRes call({
    int? id,
    String? name,
    Query$GetUserStats$User$statistics? statistics,
    String? $__typename,
  });
  CopyWith$Query$GetUserStats$User$statistics<TRes> get statistics;
}

class _CopyWithImpl$Query$GetUserStats$User<TRes>
    implements CopyWith$Query$GetUserStats$User<TRes> {
  _CopyWithImpl$Query$GetUserStats$User(
    this._instance,
    this._then,
  );

  final Query$GetUserStats$User _instance;

  final TRes Function(Query$GetUserStats$User) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? statistics = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetUserStats$User(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        statistics: statistics == _undefined
            ? _instance.statistics
            : (statistics as Query$GetUserStats$User$statistics?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetUserStats$User$statistics<TRes> get statistics {
    final local$statistics = _instance.statistics;
    return local$statistics == null
        ? CopyWith$Query$GetUserStats$User$statistics.stub(_then(_instance))
        : CopyWith$Query$GetUserStats$User$statistics(
            local$statistics, (e) => call(statistics: e));
  }
}

class _CopyWithStubImpl$Query$GetUserStats$User<TRes>
    implements CopyWith$Query$GetUserStats$User<TRes> {
  _CopyWithStubImpl$Query$GetUserStats$User(this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    Query$GetUserStats$User$statistics? statistics,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetUserStats$User$statistics<TRes> get statistics =>
      CopyWith$Query$GetUserStats$User$statistics.stub(_res);
}

class Query$GetUserStats$User$statistics {
  Query$GetUserStats$User$statistics({
    this.anime,
    this.manga,
    this.$__typename = 'UserStatisticTypes',
  });

  factory Query$GetUserStats$User$statistics.fromJson(
      Map<String, dynamic> json) {
    final l$anime = json['anime'];
    final l$manga = json['manga'];
    final l$$__typename = json['__typename'];
    return Query$GetUserStats$User$statistics(
      anime: l$anime == null
          ? null
          : Fragment$UserStatistics.fromJson((l$anime as Map<String, dynamic>)),
      manga: l$manga == null
          ? null
          : Fragment$UserStatistics.fromJson((l$manga as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$UserStatistics? anime;

  final Fragment$UserStatistics? manga;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$anime = anime;
    _resultData['anime'] = l$anime?.toJson();
    final l$manga = manga;
    _resultData['manga'] = l$manga?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$anime = anime;
    final l$manga = manga;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$anime,
      l$manga,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetUserStats$User$statistics ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$anime = anime;
    final lOther$anime = other.anime;
    if (l$anime != lOther$anime) {
      return false;
    }
    final l$manga = manga;
    final lOther$manga = other.manga;
    if (l$manga != lOther$manga) {
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

extension UtilityExtension$Query$GetUserStats$User$statistics
    on Query$GetUserStats$User$statistics {
  CopyWith$Query$GetUserStats$User$statistics<
          Query$GetUserStats$User$statistics>
      get copyWith => CopyWith$Query$GetUserStats$User$statistics(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetUserStats$User$statistics<TRes> {
  factory CopyWith$Query$GetUserStats$User$statistics(
    Query$GetUserStats$User$statistics instance,
    TRes Function(Query$GetUserStats$User$statistics) then,
  ) = _CopyWithImpl$Query$GetUserStats$User$statistics;

  factory CopyWith$Query$GetUserStats$User$statistics.stub(TRes res) =
      _CopyWithStubImpl$Query$GetUserStats$User$statistics;

  TRes call({
    Fragment$UserStatistics? anime,
    Fragment$UserStatistics? manga,
    String? $__typename,
  });
  CopyWith$Fragment$UserStatistics<TRes> get anime;
  CopyWith$Fragment$UserStatistics<TRes> get manga;
}

class _CopyWithImpl$Query$GetUserStats$User$statistics<TRes>
    implements CopyWith$Query$GetUserStats$User$statistics<TRes> {
  _CopyWithImpl$Query$GetUserStats$User$statistics(
    this._instance,
    this._then,
  );

  final Query$GetUserStats$User$statistics _instance;

  final TRes Function(Query$GetUserStats$User$statistics) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? anime = _undefined,
    Object? manga = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetUserStats$User$statistics(
        anime: anime == _undefined
            ? _instance.anime
            : (anime as Fragment$UserStatistics?),
        manga: manga == _undefined
            ? _instance.manga
            : (manga as Fragment$UserStatistics?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$UserStatistics<TRes> get anime {
    final local$anime = _instance.anime;
    return local$anime == null
        ? CopyWith$Fragment$UserStatistics.stub(_then(_instance))
        : CopyWith$Fragment$UserStatistics(local$anime, (e) => call(anime: e));
  }

  CopyWith$Fragment$UserStatistics<TRes> get manga {
    final local$manga = _instance.manga;
    return local$manga == null
        ? CopyWith$Fragment$UserStatistics.stub(_then(_instance))
        : CopyWith$Fragment$UserStatistics(local$manga, (e) => call(manga: e));
  }
}

class _CopyWithStubImpl$Query$GetUserStats$User$statistics<TRes>
    implements CopyWith$Query$GetUserStats$User$statistics<TRes> {
  _CopyWithStubImpl$Query$GetUserStats$User$statistics(this._res);

  TRes _res;

  call({
    Fragment$UserStatistics? anime,
    Fragment$UserStatistics? manga,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$UserStatistics<TRes> get anime =>
      CopyWith$Fragment$UserStatistics.stub(_res);

  CopyWith$Fragment$UserStatistics<TRes> get manga =>
      CopyWith$Fragment$UserStatistics.stub(_res);
}
