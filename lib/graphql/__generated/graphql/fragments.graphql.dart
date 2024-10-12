// GENERATED FILE
// DO NOT MODIFY
// ignore_for_file: type=lint
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'schema.graphql.dart';

class Fragment$MediaDetailed implements Fragment$MediaShort {
  Fragment$MediaDetailed({
    this.averageScore,
    this.bannerImage,
    this.popularity,
    this.nextAiringEpisode,
    this.description,
    this.trailer,
    this.synonyms,
    this.episodes,
    this.duration,
    this.volumes,
    this.chapters,
    this.source,
    this.externalLinks,
    this.studios,
    this.relations,
    this.recommendations,
    this.tags,
    this.rankings,
    this.stats,
    this.modNotes,
    required this.isFavourite,
    required this.id,
    this.title,
    this.coverImage,
    this.meanScore,
    this.favourites,
    this.format,
    this.type,
    this.status,
    this.airingSchedule,
    this.genres,
    this.season,
    this.seasonYear,
    this.startDate,
    this.endDate,
    this.mediaListEntry,
    this.$__typename = 'Media',
  });

  factory Fragment$MediaDetailed.fromJson(Map<String, dynamic> json) {
    final l$averageScore = json['averageScore'];
    final l$bannerImage = json['bannerImage'];
    final l$popularity = json['popularity'];
    final l$nextAiringEpisode = json['nextAiringEpisode'];
    final l$description = json['description'];
    final l$trailer = json['trailer'];
    final l$synonyms = json['synonyms'];
    final l$episodes = json['episodes'];
    final l$duration = json['duration'];
    final l$volumes = json['volumes'];
    final l$chapters = json['chapters'];
    final l$source = json['source'];
    final l$externalLinks = json['externalLinks'];
    final l$studios = json['studios'];
    final l$relations = json['relations'];
    final l$recommendations = json['recommendations'];
    final l$tags = json['tags'];
    final l$rankings = json['rankings'];
    final l$stats = json['stats'];
    final l$modNotes = json['modNotes'];
    final l$isFavourite = json['isFavourite'];
    final l$id = json['id'];
    final l$title = json['title'];
    final l$coverImage = json['coverImage'];
    final l$meanScore = json['meanScore'];
    final l$favourites = json['favourites'];
    final l$format = json['format'];
    final l$type = json['type'];
    final l$status = json['status'];
    final l$airingSchedule = json['airingSchedule'];
    final l$genres = json['genres'];
    final l$season = json['season'];
    final l$seasonYear = json['seasonYear'];
    final l$startDate = json['startDate'];
    final l$endDate = json['endDate'];
    final l$mediaListEntry = json['mediaListEntry'];
    final l$$__typename = json['__typename'];
    return Fragment$MediaDetailed(
      averageScore: (l$averageScore as int?),
      bannerImage: (l$bannerImage as String?),
      popularity: (l$popularity as int?),
      nextAiringEpisode: l$nextAiringEpisode == null
          ? null
          : Fragment$MediaDetailed$nextAiringEpisode.fromJson(
              (l$nextAiringEpisode as Map<String, dynamic>)),
      description: (l$description as String?),
      trailer: l$trailer == null
          ? null
          : Fragment$MediaDetailed$trailer.fromJson(
              (l$trailer as Map<String, dynamic>)),
      synonyms:
          (l$synonyms as List<dynamic>?)?.map((e) => (e as String?)).toList(),
      episodes: (l$episodes as int?),
      duration: (l$duration as int?),
      volumes: (l$volumes as int?),
      chapters: (l$chapters as int?),
      source: l$source == null
          ? null
          : fromJson$Enum$MediaSource((l$source as String)),
      externalLinks: (l$externalLinks as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$MediaDetailed$externalLinks.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      studios: l$studios == null
          ? null
          : Fragment$MediaDetailed$studios.fromJson(
              (l$studios as Map<String, dynamic>)),
      relations: l$relations == null
          ? null
          : Fragment$MediaDetailed$relations.fromJson(
              (l$relations as Map<String, dynamic>)),
      recommendations: l$recommendations == null
          ? null
          : Fragment$MediaDetailed$recommendations.fromJson(
              (l$recommendations as Map<String, dynamic>)),
      tags: (l$tags as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$MediaDetailed$tags.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      rankings: (l$rankings as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$MediaDetailed$rankings.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      stats: l$stats == null
          ? null
          : Fragment$MediaDetailed$stats.fromJson(
              (l$stats as Map<String, dynamic>)),
      modNotes: (l$modNotes as String?),
      isFavourite: (l$isFavourite as bool),
      id: (l$id as int),
      title: l$title == null
          ? null
          : Fragment$MediaDetailed$title.fromJson(
              (l$title as Map<String, dynamic>)),
      coverImage: l$coverImage == null
          ? null
          : Fragment$MediaDetailed$coverImage.fromJson(
              (l$coverImage as Map<String, dynamic>)),
      meanScore: (l$meanScore as int?),
      favourites: (l$favourites as int?),
      format: l$format == null
          ? null
          : fromJson$Enum$MediaFormat((l$format as String)),
      type: l$type == null ? null : fromJson$Enum$MediaType((l$type as String)),
      status: l$status == null
          ? null
          : fromJson$Enum$MediaStatus((l$status as String)),
      airingSchedule: l$airingSchedule == null
          ? null
          : Fragment$MediaDetailed$airingSchedule.fromJson(
              (l$airingSchedule as Map<String, dynamic>)),
      genres: (l$genres as List<dynamic>?)?.map((e) => (e as String?)).toList(),
      season: l$season == null
          ? null
          : fromJson$Enum$MediaSeason((l$season as String)),
      seasonYear: (l$seasonYear as int?),
      startDate: l$startDate == null
          ? null
          : Fragment$FuzzyDate.fromJson((l$startDate as Map<String, dynamic>)),
      endDate: l$endDate == null
          ? null
          : Fragment$FuzzyDate.fromJson((l$endDate as Map<String, dynamic>)),
      mediaListEntry: l$mediaListEntry == null
          ? null
          : Fragment$MediaDetailed$mediaListEntry.fromJson(
              (l$mediaListEntry as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int? averageScore;

  final String? bannerImage;

  final int? popularity;

  final Fragment$MediaDetailed$nextAiringEpisode? nextAiringEpisode;

  final String? description;

  final Fragment$MediaDetailed$trailer? trailer;

  final List<String?>? synonyms;

  final int? episodes;

  final int? duration;

  final int? volumes;

  final int? chapters;

  final Enum$MediaSource? source;

  final List<Fragment$MediaDetailed$externalLinks?>? externalLinks;

  final Fragment$MediaDetailed$studios? studios;

  final Fragment$MediaDetailed$relations? relations;

  final Fragment$MediaDetailed$recommendations? recommendations;

  final List<Fragment$MediaDetailed$tags?>? tags;

  final List<Fragment$MediaDetailed$rankings?>? rankings;

  final Fragment$MediaDetailed$stats? stats;

  final String? modNotes;

  final bool isFavourite;

  final int id;

  final Fragment$MediaDetailed$title? title;

  final Fragment$MediaDetailed$coverImage? coverImage;

  final int? meanScore;

  final int? favourites;

  final Enum$MediaFormat? format;

  final Enum$MediaType? type;

  final Enum$MediaStatus? status;

  final Fragment$MediaDetailed$airingSchedule? airingSchedule;

  final List<String?>? genres;

  final Enum$MediaSeason? season;

  final int? seasonYear;

  final Fragment$FuzzyDate? startDate;

  final Fragment$FuzzyDate? endDate;

  final Fragment$MediaDetailed$mediaListEntry? mediaListEntry;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$averageScore = averageScore;
    _resultData['averageScore'] = l$averageScore;
    final l$bannerImage = bannerImage;
    _resultData['bannerImage'] = l$bannerImage;
    final l$popularity = popularity;
    _resultData['popularity'] = l$popularity;
    final l$nextAiringEpisode = nextAiringEpisode;
    _resultData['nextAiringEpisode'] = l$nextAiringEpisode?.toJson();
    final l$description = description;
    _resultData['description'] = l$description;
    final l$trailer = trailer;
    _resultData['trailer'] = l$trailer?.toJson();
    final l$synonyms = synonyms;
    _resultData['synonyms'] = l$synonyms?.map((e) => e).toList();
    final l$episodes = episodes;
    _resultData['episodes'] = l$episodes;
    final l$duration = duration;
    _resultData['duration'] = l$duration;
    final l$volumes = volumes;
    _resultData['volumes'] = l$volumes;
    final l$chapters = chapters;
    _resultData['chapters'] = l$chapters;
    final l$source = source;
    _resultData['source'] =
        l$source == null ? null : toJson$Enum$MediaSource(l$source);
    final l$externalLinks = externalLinks;
    _resultData['externalLinks'] =
        l$externalLinks?.map((e) => e?.toJson()).toList();
    final l$studios = studios;
    _resultData['studios'] = l$studios?.toJson();
    final l$relations = relations;
    _resultData['relations'] = l$relations?.toJson();
    final l$recommendations = recommendations;
    _resultData['recommendations'] = l$recommendations?.toJson();
    final l$tags = tags;
    _resultData['tags'] = l$tags?.map((e) => e?.toJson()).toList();
    final l$rankings = rankings;
    _resultData['rankings'] = l$rankings?.map((e) => e?.toJson()).toList();
    final l$stats = stats;
    _resultData['stats'] = l$stats?.toJson();
    final l$modNotes = modNotes;
    _resultData['modNotes'] = l$modNotes;
    final l$isFavourite = isFavourite;
    _resultData['isFavourite'] = l$isFavourite;
    final l$id = id;
    _resultData['id'] = l$id;
    final l$title = title;
    _resultData['title'] = l$title?.toJson();
    final l$coverImage = coverImage;
    _resultData['coverImage'] = l$coverImage?.toJson();
    final l$meanScore = meanScore;
    _resultData['meanScore'] = l$meanScore;
    final l$favourites = favourites;
    _resultData['favourites'] = l$favourites;
    final l$format = format;
    _resultData['format'] =
        l$format == null ? null : toJson$Enum$MediaFormat(l$format);
    final l$type = type;
    _resultData['type'] = l$type == null ? null : toJson$Enum$MediaType(l$type);
    final l$status = status;
    _resultData['status'] =
        l$status == null ? null : toJson$Enum$MediaStatus(l$status);
    final l$airingSchedule = airingSchedule;
    _resultData['airingSchedule'] = l$airingSchedule?.toJson();
    final l$genres = genres;
    _resultData['genres'] = l$genres?.map((e) => e).toList();
    final l$season = season;
    _resultData['season'] =
        l$season == null ? null : toJson$Enum$MediaSeason(l$season);
    final l$seasonYear = seasonYear;
    _resultData['seasonYear'] = l$seasonYear;
    final l$startDate = startDate;
    _resultData['startDate'] = l$startDate?.toJson();
    final l$endDate = endDate;
    _resultData['endDate'] = l$endDate?.toJson();
    final l$mediaListEntry = mediaListEntry;
    _resultData['mediaListEntry'] = l$mediaListEntry?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$averageScore = averageScore;
    final l$bannerImage = bannerImage;
    final l$popularity = popularity;
    final l$nextAiringEpisode = nextAiringEpisode;
    final l$description = description;
    final l$trailer = trailer;
    final l$synonyms = synonyms;
    final l$episodes = episodes;
    final l$duration = duration;
    final l$volumes = volumes;
    final l$chapters = chapters;
    final l$source = source;
    final l$externalLinks = externalLinks;
    final l$studios = studios;
    final l$relations = relations;
    final l$recommendations = recommendations;
    final l$tags = tags;
    final l$rankings = rankings;
    final l$stats = stats;
    final l$modNotes = modNotes;
    final l$isFavourite = isFavourite;
    final l$id = id;
    final l$title = title;
    final l$coverImage = coverImage;
    final l$meanScore = meanScore;
    final l$favourites = favourites;
    final l$format = format;
    final l$type = type;
    final l$status = status;
    final l$airingSchedule = airingSchedule;
    final l$genres = genres;
    final l$season = season;
    final l$seasonYear = seasonYear;
    final l$startDate = startDate;
    final l$endDate = endDate;
    final l$mediaListEntry = mediaListEntry;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$averageScore,
      l$bannerImage,
      l$popularity,
      l$nextAiringEpisode,
      l$description,
      l$trailer,
      l$synonyms == null ? null : Object.hashAll(l$synonyms.map((v) => v)),
      l$episodes,
      l$duration,
      l$volumes,
      l$chapters,
      l$source,
      l$externalLinks == null
          ? null
          : Object.hashAll(l$externalLinks.map((v) => v)),
      l$studios,
      l$relations,
      l$recommendations,
      l$tags == null ? null : Object.hashAll(l$tags.map((v) => v)),
      l$rankings == null ? null : Object.hashAll(l$rankings.map((v) => v)),
      l$stats,
      l$modNotes,
      l$isFavourite,
      l$id,
      l$title,
      l$coverImage,
      l$meanScore,
      l$favourites,
      l$format,
      l$type,
      l$status,
      l$airingSchedule,
      l$genres == null ? null : Object.hashAll(l$genres.map((v) => v)),
      l$season,
      l$seasonYear,
      l$startDate,
      l$endDate,
      l$mediaListEntry,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$MediaDetailed) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$averageScore = averageScore;
    final lOther$averageScore = other.averageScore;
    if (l$averageScore != lOther$averageScore) {
      return false;
    }
    final l$bannerImage = bannerImage;
    final lOther$bannerImage = other.bannerImage;
    if (l$bannerImage != lOther$bannerImage) {
      return false;
    }
    final l$popularity = popularity;
    final lOther$popularity = other.popularity;
    if (l$popularity != lOther$popularity) {
      return false;
    }
    final l$nextAiringEpisode = nextAiringEpisode;
    final lOther$nextAiringEpisode = other.nextAiringEpisode;
    if (l$nextAiringEpisode != lOther$nextAiringEpisode) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
      return false;
    }
    final l$trailer = trailer;
    final lOther$trailer = other.trailer;
    if (l$trailer != lOther$trailer) {
      return false;
    }
    final l$synonyms = synonyms;
    final lOther$synonyms = other.synonyms;
    if (l$synonyms != null && lOther$synonyms != null) {
      if (l$synonyms.length != lOther$synonyms.length) {
        return false;
      }
      for (int i = 0; i < l$synonyms.length; i++) {
        final l$synonyms$entry = l$synonyms[i];
        final lOther$synonyms$entry = lOther$synonyms[i];
        if (l$synonyms$entry != lOther$synonyms$entry) {
          return false;
        }
      }
    } else if (l$synonyms != lOther$synonyms) {
      return false;
    }
    final l$episodes = episodes;
    final lOther$episodes = other.episodes;
    if (l$episodes != lOther$episodes) {
      return false;
    }
    final l$duration = duration;
    final lOther$duration = other.duration;
    if (l$duration != lOther$duration) {
      return false;
    }
    final l$volumes = volumes;
    final lOther$volumes = other.volumes;
    if (l$volumes != lOther$volumes) {
      return false;
    }
    final l$chapters = chapters;
    final lOther$chapters = other.chapters;
    if (l$chapters != lOther$chapters) {
      return false;
    }
    final l$source = source;
    final lOther$source = other.source;
    if (l$source != lOther$source) {
      return false;
    }
    final l$externalLinks = externalLinks;
    final lOther$externalLinks = other.externalLinks;
    if (l$externalLinks != null && lOther$externalLinks != null) {
      if (l$externalLinks.length != lOther$externalLinks.length) {
        return false;
      }
      for (int i = 0; i < l$externalLinks.length; i++) {
        final l$externalLinks$entry = l$externalLinks[i];
        final lOther$externalLinks$entry = lOther$externalLinks[i];
        if (l$externalLinks$entry != lOther$externalLinks$entry) {
          return false;
        }
      }
    } else if (l$externalLinks != lOther$externalLinks) {
      return false;
    }
    final l$studios = studios;
    final lOther$studios = other.studios;
    if (l$studios != lOther$studios) {
      return false;
    }
    final l$relations = relations;
    final lOther$relations = other.relations;
    if (l$relations != lOther$relations) {
      return false;
    }
    final l$recommendations = recommendations;
    final lOther$recommendations = other.recommendations;
    if (l$recommendations != lOther$recommendations) {
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
    final l$rankings = rankings;
    final lOther$rankings = other.rankings;
    if (l$rankings != null && lOther$rankings != null) {
      if (l$rankings.length != lOther$rankings.length) {
        return false;
      }
      for (int i = 0; i < l$rankings.length; i++) {
        final l$rankings$entry = l$rankings[i];
        final lOther$rankings$entry = lOther$rankings[i];
        if (l$rankings$entry != lOther$rankings$entry) {
          return false;
        }
      }
    } else if (l$rankings != lOther$rankings) {
      return false;
    }
    final l$stats = stats;
    final lOther$stats = other.stats;
    if (l$stats != lOther$stats) {
      return false;
    }
    final l$modNotes = modNotes;
    final lOther$modNotes = other.modNotes;
    if (l$modNotes != lOther$modNotes) {
      return false;
    }
    final l$isFavourite = isFavourite;
    final lOther$isFavourite = other.isFavourite;
    if (l$isFavourite != lOther$isFavourite) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
      return false;
    }
    final l$coverImage = coverImage;
    final lOther$coverImage = other.coverImage;
    if (l$coverImage != lOther$coverImage) {
      return false;
    }
    final l$meanScore = meanScore;
    final lOther$meanScore = other.meanScore;
    if (l$meanScore != lOther$meanScore) {
      return false;
    }
    final l$favourites = favourites;
    final lOther$favourites = other.favourites;
    if (l$favourites != lOther$favourites) {
      return false;
    }
    final l$format = format;
    final lOther$format = other.format;
    if (l$format != lOther$format) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
      return false;
    }
    final l$airingSchedule = airingSchedule;
    final lOther$airingSchedule = other.airingSchedule;
    if (l$airingSchedule != lOther$airingSchedule) {
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
    final l$season = season;
    final lOther$season = other.season;
    if (l$season != lOther$season) {
      return false;
    }
    final l$seasonYear = seasonYear;
    final lOther$seasonYear = other.seasonYear;
    if (l$seasonYear != lOther$seasonYear) {
      return false;
    }
    final l$startDate = startDate;
    final lOther$startDate = other.startDate;
    if (l$startDate != lOther$startDate) {
      return false;
    }
    final l$endDate = endDate;
    final lOther$endDate = other.endDate;
    if (l$endDate != lOther$endDate) {
      return false;
    }
    final l$mediaListEntry = mediaListEntry;
    final lOther$mediaListEntry = other.mediaListEntry;
    if (l$mediaListEntry != lOther$mediaListEntry) {
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

extension UtilityExtension$Fragment$MediaDetailed on Fragment$MediaDetailed {
  CopyWith$Fragment$MediaDetailed<Fragment$MediaDetailed> get copyWith =>
      CopyWith$Fragment$MediaDetailed(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$MediaDetailed<TRes> {
  factory CopyWith$Fragment$MediaDetailed(
    Fragment$MediaDetailed instance,
    TRes Function(Fragment$MediaDetailed) then,
  ) = _CopyWithImpl$Fragment$MediaDetailed;

  factory CopyWith$Fragment$MediaDetailed.stub(TRes res) =
      _CopyWithStubImpl$Fragment$MediaDetailed;

  TRes call({
    int? averageScore,
    String? bannerImage,
    int? popularity,
    Fragment$MediaDetailed$nextAiringEpisode? nextAiringEpisode,
    String? description,
    Fragment$MediaDetailed$trailer? trailer,
    List<String?>? synonyms,
    int? episodes,
    int? duration,
    int? volumes,
    int? chapters,
    Enum$MediaSource? source,
    List<Fragment$MediaDetailed$externalLinks?>? externalLinks,
    Fragment$MediaDetailed$studios? studios,
    Fragment$MediaDetailed$relations? relations,
    Fragment$MediaDetailed$recommendations? recommendations,
    List<Fragment$MediaDetailed$tags?>? tags,
    List<Fragment$MediaDetailed$rankings?>? rankings,
    Fragment$MediaDetailed$stats? stats,
    String? modNotes,
    bool? isFavourite,
    int? id,
    Fragment$MediaDetailed$title? title,
    Fragment$MediaDetailed$coverImage? coverImage,
    int? meanScore,
    int? favourites,
    Enum$MediaFormat? format,
    Enum$MediaType? type,
    Enum$MediaStatus? status,
    Fragment$MediaDetailed$airingSchedule? airingSchedule,
    List<String?>? genres,
    Enum$MediaSeason? season,
    int? seasonYear,
    Fragment$FuzzyDate? startDate,
    Fragment$FuzzyDate? endDate,
    Fragment$MediaDetailed$mediaListEntry? mediaListEntry,
    String? $__typename,
  });
  CopyWith$Fragment$MediaDetailed$nextAiringEpisode<TRes> get nextAiringEpisode;
  CopyWith$Fragment$MediaDetailed$trailer<TRes> get trailer;
  TRes externalLinks(
      Iterable<Fragment$MediaDetailed$externalLinks?>? Function(
              Iterable<
                  CopyWith$Fragment$MediaDetailed$externalLinks<
                      Fragment$MediaDetailed$externalLinks>?>?)
          _fn);
  CopyWith$Fragment$MediaDetailed$studios<TRes> get studios;
  CopyWith$Fragment$MediaDetailed$relations<TRes> get relations;
  CopyWith$Fragment$MediaDetailed$recommendations<TRes> get recommendations;
  TRes tags(
      Iterable<Fragment$MediaDetailed$tags?>? Function(
              Iterable<
                  CopyWith$Fragment$MediaDetailed$tags<
                      Fragment$MediaDetailed$tags>?>?)
          _fn);
  TRes rankings(
      Iterable<Fragment$MediaDetailed$rankings?>? Function(
              Iterable<
                  CopyWith$Fragment$MediaDetailed$rankings<
                      Fragment$MediaDetailed$rankings>?>?)
          _fn);
  CopyWith$Fragment$MediaDetailed$stats<TRes> get stats;
  CopyWith$Fragment$MediaDetailed$title<TRes> get title;
  CopyWith$Fragment$MediaDetailed$coverImage<TRes> get coverImage;
  CopyWith$Fragment$MediaDetailed$airingSchedule<TRes> get airingSchedule;
  CopyWith$Fragment$FuzzyDate<TRes> get startDate;
  CopyWith$Fragment$FuzzyDate<TRes> get endDate;
  CopyWith$Fragment$MediaDetailed$mediaListEntry<TRes> get mediaListEntry;
}

class _CopyWithImpl$Fragment$MediaDetailed<TRes>
    implements CopyWith$Fragment$MediaDetailed<TRes> {
  _CopyWithImpl$Fragment$MediaDetailed(
    this._instance,
    this._then,
  );

  final Fragment$MediaDetailed _instance;

  final TRes Function(Fragment$MediaDetailed) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? averageScore = _undefined,
    Object? bannerImage = _undefined,
    Object? popularity = _undefined,
    Object? nextAiringEpisode = _undefined,
    Object? description = _undefined,
    Object? trailer = _undefined,
    Object? synonyms = _undefined,
    Object? episodes = _undefined,
    Object? duration = _undefined,
    Object? volumes = _undefined,
    Object? chapters = _undefined,
    Object? source = _undefined,
    Object? externalLinks = _undefined,
    Object? studios = _undefined,
    Object? relations = _undefined,
    Object? recommendations = _undefined,
    Object? tags = _undefined,
    Object? rankings = _undefined,
    Object? stats = _undefined,
    Object? modNotes = _undefined,
    Object? isFavourite = _undefined,
    Object? id = _undefined,
    Object? title = _undefined,
    Object? coverImage = _undefined,
    Object? meanScore = _undefined,
    Object? favourites = _undefined,
    Object? format = _undefined,
    Object? type = _undefined,
    Object? status = _undefined,
    Object? airingSchedule = _undefined,
    Object? genres = _undefined,
    Object? season = _undefined,
    Object? seasonYear = _undefined,
    Object? startDate = _undefined,
    Object? endDate = _undefined,
    Object? mediaListEntry = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$MediaDetailed(
        averageScore: averageScore == _undefined
            ? _instance.averageScore
            : (averageScore as int?),
        bannerImage: bannerImage == _undefined
            ? _instance.bannerImage
            : (bannerImage as String?),
        popularity: popularity == _undefined
            ? _instance.popularity
            : (popularity as int?),
        nextAiringEpisode: nextAiringEpisode == _undefined
            ? _instance.nextAiringEpisode
            : (nextAiringEpisode as Fragment$MediaDetailed$nextAiringEpisode?),
        description: description == _undefined
            ? _instance.description
            : (description as String?),
        trailer: trailer == _undefined
            ? _instance.trailer
            : (trailer as Fragment$MediaDetailed$trailer?),
        synonyms: synonyms == _undefined
            ? _instance.synonyms
            : (synonyms as List<String?>?),
        episodes:
            episodes == _undefined ? _instance.episodes : (episodes as int?),
        duration:
            duration == _undefined ? _instance.duration : (duration as int?),
        volumes: volumes == _undefined ? _instance.volumes : (volumes as int?),
        chapters:
            chapters == _undefined ? _instance.chapters : (chapters as int?),
        source: source == _undefined
            ? _instance.source
            : (source as Enum$MediaSource?),
        externalLinks: externalLinks == _undefined
            ? _instance.externalLinks
            : (externalLinks as List<Fragment$MediaDetailed$externalLinks?>?),
        studios: studios == _undefined
            ? _instance.studios
            : (studios as Fragment$MediaDetailed$studios?),
        relations: relations == _undefined
            ? _instance.relations
            : (relations as Fragment$MediaDetailed$relations?),
        recommendations: recommendations == _undefined
            ? _instance.recommendations
            : (recommendations as Fragment$MediaDetailed$recommendations?),
        tags: tags == _undefined
            ? _instance.tags
            : (tags as List<Fragment$MediaDetailed$tags?>?),
        rankings: rankings == _undefined
            ? _instance.rankings
            : (rankings as List<Fragment$MediaDetailed$rankings?>?),
        stats: stats == _undefined
            ? _instance.stats
            : (stats as Fragment$MediaDetailed$stats?),
        modNotes:
            modNotes == _undefined ? _instance.modNotes : (modNotes as String?),
        isFavourite: isFavourite == _undefined || isFavourite == null
            ? _instance.isFavourite
            : (isFavourite as bool),
        id: id == _undefined || id == null ? _instance.id : (id as int),
        title: title == _undefined
            ? _instance.title
            : (title as Fragment$MediaDetailed$title?),
        coverImage: coverImage == _undefined
            ? _instance.coverImage
            : (coverImage as Fragment$MediaDetailed$coverImage?),
        meanScore:
            meanScore == _undefined ? _instance.meanScore : (meanScore as int?),
        favourites: favourites == _undefined
            ? _instance.favourites
            : (favourites as int?),
        format: format == _undefined
            ? _instance.format
            : (format as Enum$MediaFormat?),
        type: type == _undefined ? _instance.type : (type as Enum$MediaType?),
        status: status == _undefined
            ? _instance.status
            : (status as Enum$MediaStatus?),
        airingSchedule: airingSchedule == _undefined
            ? _instance.airingSchedule
            : (airingSchedule as Fragment$MediaDetailed$airingSchedule?),
        genres: genres == _undefined
            ? _instance.genres
            : (genres as List<String?>?),
        season: season == _undefined
            ? _instance.season
            : (season as Enum$MediaSeason?),
        seasonYear: seasonYear == _undefined
            ? _instance.seasonYear
            : (seasonYear as int?),
        startDate: startDate == _undefined
            ? _instance.startDate
            : (startDate as Fragment$FuzzyDate?),
        endDate: endDate == _undefined
            ? _instance.endDate
            : (endDate as Fragment$FuzzyDate?),
        mediaListEntry: mediaListEntry == _undefined
            ? _instance.mediaListEntry
            : (mediaListEntry as Fragment$MediaDetailed$mediaListEntry?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$MediaDetailed$nextAiringEpisode<TRes>
      get nextAiringEpisode {
    final local$nextAiringEpisode = _instance.nextAiringEpisode;
    return local$nextAiringEpisode == null
        ? CopyWith$Fragment$MediaDetailed$nextAiringEpisode.stub(
            _then(_instance))
        : CopyWith$Fragment$MediaDetailed$nextAiringEpisode(
            local$nextAiringEpisode, (e) => call(nextAiringEpisode: e));
  }

  CopyWith$Fragment$MediaDetailed$trailer<TRes> get trailer {
    final local$trailer = _instance.trailer;
    return local$trailer == null
        ? CopyWith$Fragment$MediaDetailed$trailer.stub(_then(_instance))
        : CopyWith$Fragment$MediaDetailed$trailer(
            local$trailer, (e) => call(trailer: e));
  }

  TRes externalLinks(
          Iterable<Fragment$MediaDetailed$externalLinks?>? Function(
                  Iterable<
                      CopyWith$Fragment$MediaDetailed$externalLinks<
                          Fragment$MediaDetailed$externalLinks>?>?)
              _fn) =>
      call(
          externalLinks: _fn(_instance.externalLinks?.map((e) => e == null
              ? null
              : CopyWith$Fragment$MediaDetailed$externalLinks(
                  e,
                  (i) => i,
                )))?.toList());

  CopyWith$Fragment$MediaDetailed$studios<TRes> get studios {
    final local$studios = _instance.studios;
    return local$studios == null
        ? CopyWith$Fragment$MediaDetailed$studios.stub(_then(_instance))
        : CopyWith$Fragment$MediaDetailed$studios(
            local$studios, (e) => call(studios: e));
  }

  CopyWith$Fragment$MediaDetailed$relations<TRes> get relations {
    final local$relations = _instance.relations;
    return local$relations == null
        ? CopyWith$Fragment$MediaDetailed$relations.stub(_then(_instance))
        : CopyWith$Fragment$MediaDetailed$relations(
            local$relations, (e) => call(relations: e));
  }

  CopyWith$Fragment$MediaDetailed$recommendations<TRes> get recommendations {
    final local$recommendations = _instance.recommendations;
    return local$recommendations == null
        ? CopyWith$Fragment$MediaDetailed$recommendations.stub(_then(_instance))
        : CopyWith$Fragment$MediaDetailed$recommendations(
            local$recommendations, (e) => call(recommendations: e));
  }

  TRes tags(
          Iterable<Fragment$MediaDetailed$tags?>? Function(
                  Iterable<
                      CopyWith$Fragment$MediaDetailed$tags<
                          Fragment$MediaDetailed$tags>?>?)
              _fn) =>
      call(
          tags: _fn(_instance.tags?.map((e) => e == null
              ? null
              : CopyWith$Fragment$MediaDetailed$tags(
                  e,
                  (i) => i,
                )))?.toList());

  TRes rankings(
          Iterable<Fragment$MediaDetailed$rankings?>? Function(
                  Iterable<
                      CopyWith$Fragment$MediaDetailed$rankings<
                          Fragment$MediaDetailed$rankings>?>?)
              _fn) =>
      call(
          rankings: _fn(_instance.rankings?.map((e) => e == null
              ? null
              : CopyWith$Fragment$MediaDetailed$rankings(
                  e,
                  (i) => i,
                )))?.toList());

  CopyWith$Fragment$MediaDetailed$stats<TRes> get stats {
    final local$stats = _instance.stats;
    return local$stats == null
        ? CopyWith$Fragment$MediaDetailed$stats.stub(_then(_instance))
        : CopyWith$Fragment$MediaDetailed$stats(
            local$stats, (e) => call(stats: e));
  }

  CopyWith$Fragment$MediaDetailed$title<TRes> get title {
    final local$title = _instance.title;
    return local$title == null
        ? CopyWith$Fragment$MediaDetailed$title.stub(_then(_instance))
        : CopyWith$Fragment$MediaDetailed$title(
            local$title, (e) => call(title: e));
  }

  CopyWith$Fragment$MediaDetailed$coverImage<TRes> get coverImage {
    final local$coverImage = _instance.coverImage;
    return local$coverImage == null
        ? CopyWith$Fragment$MediaDetailed$coverImage.stub(_then(_instance))
        : CopyWith$Fragment$MediaDetailed$coverImage(
            local$coverImage, (e) => call(coverImage: e));
  }

  CopyWith$Fragment$MediaDetailed$airingSchedule<TRes> get airingSchedule {
    final local$airingSchedule = _instance.airingSchedule;
    return local$airingSchedule == null
        ? CopyWith$Fragment$MediaDetailed$airingSchedule.stub(_then(_instance))
        : CopyWith$Fragment$MediaDetailed$airingSchedule(
            local$airingSchedule, (e) => call(airingSchedule: e));
  }

  CopyWith$Fragment$FuzzyDate<TRes> get startDate {
    final local$startDate = _instance.startDate;
    return local$startDate == null
        ? CopyWith$Fragment$FuzzyDate.stub(_then(_instance))
        : CopyWith$Fragment$FuzzyDate(
            local$startDate, (e) => call(startDate: e));
  }

  CopyWith$Fragment$FuzzyDate<TRes> get endDate {
    final local$endDate = _instance.endDate;
    return local$endDate == null
        ? CopyWith$Fragment$FuzzyDate.stub(_then(_instance))
        : CopyWith$Fragment$FuzzyDate(local$endDate, (e) => call(endDate: e));
  }

  CopyWith$Fragment$MediaDetailed$mediaListEntry<TRes> get mediaListEntry {
    final local$mediaListEntry = _instance.mediaListEntry;
    return local$mediaListEntry == null
        ? CopyWith$Fragment$MediaDetailed$mediaListEntry.stub(_then(_instance))
        : CopyWith$Fragment$MediaDetailed$mediaListEntry(
            local$mediaListEntry, (e) => call(mediaListEntry: e));
  }
}

class _CopyWithStubImpl$Fragment$MediaDetailed<TRes>
    implements CopyWith$Fragment$MediaDetailed<TRes> {
  _CopyWithStubImpl$Fragment$MediaDetailed(this._res);

  TRes _res;

  call({
    int? averageScore,
    String? bannerImage,
    int? popularity,
    Fragment$MediaDetailed$nextAiringEpisode? nextAiringEpisode,
    String? description,
    Fragment$MediaDetailed$trailer? trailer,
    List<String?>? synonyms,
    int? episodes,
    int? duration,
    int? volumes,
    int? chapters,
    Enum$MediaSource? source,
    List<Fragment$MediaDetailed$externalLinks?>? externalLinks,
    Fragment$MediaDetailed$studios? studios,
    Fragment$MediaDetailed$relations? relations,
    Fragment$MediaDetailed$recommendations? recommendations,
    List<Fragment$MediaDetailed$tags?>? tags,
    List<Fragment$MediaDetailed$rankings?>? rankings,
    Fragment$MediaDetailed$stats? stats,
    String? modNotes,
    bool? isFavourite,
    int? id,
    Fragment$MediaDetailed$title? title,
    Fragment$MediaDetailed$coverImage? coverImage,
    int? meanScore,
    int? favourites,
    Enum$MediaFormat? format,
    Enum$MediaType? type,
    Enum$MediaStatus? status,
    Fragment$MediaDetailed$airingSchedule? airingSchedule,
    List<String?>? genres,
    Enum$MediaSeason? season,
    int? seasonYear,
    Fragment$FuzzyDate? startDate,
    Fragment$FuzzyDate? endDate,
    Fragment$MediaDetailed$mediaListEntry? mediaListEntry,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$MediaDetailed$nextAiringEpisode<TRes>
      get nextAiringEpisode =>
          CopyWith$Fragment$MediaDetailed$nextAiringEpisode.stub(_res);

  CopyWith$Fragment$MediaDetailed$trailer<TRes> get trailer =>
      CopyWith$Fragment$MediaDetailed$trailer.stub(_res);

  externalLinks(_fn) => _res;

  CopyWith$Fragment$MediaDetailed$studios<TRes> get studios =>
      CopyWith$Fragment$MediaDetailed$studios.stub(_res);

  CopyWith$Fragment$MediaDetailed$relations<TRes> get relations =>
      CopyWith$Fragment$MediaDetailed$relations.stub(_res);

  CopyWith$Fragment$MediaDetailed$recommendations<TRes> get recommendations =>
      CopyWith$Fragment$MediaDetailed$recommendations.stub(_res);

  tags(_fn) => _res;

  rankings(_fn) => _res;

  CopyWith$Fragment$MediaDetailed$stats<TRes> get stats =>
      CopyWith$Fragment$MediaDetailed$stats.stub(_res);

  CopyWith$Fragment$MediaDetailed$title<TRes> get title =>
      CopyWith$Fragment$MediaDetailed$title.stub(_res);

  CopyWith$Fragment$MediaDetailed$coverImage<TRes> get coverImage =>
      CopyWith$Fragment$MediaDetailed$coverImage.stub(_res);

  CopyWith$Fragment$MediaDetailed$airingSchedule<TRes> get airingSchedule =>
      CopyWith$Fragment$MediaDetailed$airingSchedule.stub(_res);

  CopyWith$Fragment$FuzzyDate<TRes> get startDate =>
      CopyWith$Fragment$FuzzyDate.stub(_res);

  CopyWith$Fragment$FuzzyDate<TRes> get endDate =>
      CopyWith$Fragment$FuzzyDate.stub(_res);

  CopyWith$Fragment$MediaDetailed$mediaListEntry<TRes> get mediaListEntry =>
      CopyWith$Fragment$MediaDetailed$mediaListEntry.stub(_res);
}

const fragmentDefinitionMediaDetailed = FragmentDefinitionNode(
  name: NameNode(value: 'MediaDetailed'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Media'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FieldNode(
      name: NameNode(value: 'averageScore'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'bannerImage'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'popularity'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'nextAiringEpisode'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
          name: NameNode(value: 'episode'),
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
      name: NameNode(value: 'description'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'trailer'),
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
          name: NameNode(value: 'site'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'thumbnail'),
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
      name: NameNode(value: 'synonyms'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'episodes'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'duration'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'volumes'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'chapters'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'source'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'externalLinks'),
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
          name: NameNode(value: 'color'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'icon'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'isDisabled'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'url'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'site'),
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
      name: NameNode(value: 'studios'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
          name: NameNode(value: 'edges'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: SelectionSetNode(selections: [
            FieldNode(
              name: NameNode(value: 'node'),
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
              name: NameNode(value: 'id'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'isMain'),
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
      name: NameNode(value: 'relations'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
          name: NameNode(value: 'edges'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: SelectionSetNode(selections: [
            FieldNode(
              name: NameNode(value: 'node'),
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
                  name: NameNode(value: 'title'),
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
                      name: NameNode(value: '__typename'),
                      alias: null,
                      arguments: [],
                      directives: [],
                      selectionSet: null,
                    ),
                  ]),
                ),
                FieldNode(
                  name: NameNode(value: 'type'),
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
                  name: NameNode(value: 'coverImage'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                      name: NameNode(value: 'extraLarge'),
                      alias: null,
                      arguments: [],
                      directives: [],
                      selectionSet: null,
                    ),
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
              name: NameNode(value: 'relationType'),
              alias: null,
              arguments: [
                ArgumentNode(
                  name: NameNode(value: 'version'),
                  value: IntValueNode(value: '2'),
                )
              ],
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
      name: NameNode(value: 'recommendations'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
          name: NameNode(value: 'nodes'),
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
      name: NameNode(value: 'tags'),
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
          name: NameNode(value: 'category'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'isMediaSpoiler'),
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
          name: NameNode(value: 'rank'),
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
      name: NameNode(value: 'rankings'),
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
          name: NameNode(value: 'allTime'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'type'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'context'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'rank'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'year'),
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
      name: NameNode(value: 'stats'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
          name: NameNode(value: 'scoreDistribution'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: SelectionSetNode(selections: [
            FieldNode(
              name: NameNode(value: 'amount'),
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
          name: NameNode(value: 'statusDistribution'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: SelectionSetNode(selections: [
            FieldNode(
              name: NameNode(value: 'amount'),
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
          name: NameNode(value: '__typename'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
      ]),
    ),
    FieldNode(
      name: NameNode(value: 'modNotes'),
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
);
const documentNodeFragmentMediaDetailed = DocumentNode(definitions: [
  fragmentDefinitionMediaDetailed,
  fragmentDefinitionMediaShort,
  fragmentDefinitionFuzzyDate,
]);

extension ClientExtension$Fragment$MediaDetailed on graphql.GraphQLClient {
  void writeFragment$MediaDetailed({
    required Fragment$MediaDetailed data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'MediaDetailed',
            document: documentNodeFragmentMediaDetailed,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$MediaDetailed? readFragment$MediaDetailed({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'MediaDetailed',
          document: documentNodeFragmentMediaDetailed,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$MediaDetailed.fromJson(result);
  }
}

class Fragment$MediaDetailed$nextAiringEpisode {
  Fragment$MediaDetailed$nextAiringEpisode({
    required this.episode,
    this.$__typename = 'AiringSchedule',
  });

  factory Fragment$MediaDetailed$nextAiringEpisode.fromJson(
      Map<String, dynamic> json) {
    final l$episode = json['episode'];
    final l$$__typename = json['__typename'];
    return Fragment$MediaDetailed$nextAiringEpisode(
      episode: (l$episode as int),
      $__typename: (l$$__typename as String),
    );
  }

  final int episode;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$episode = episode;
    _resultData['episode'] = l$episode;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$episode = episode;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$episode,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$MediaDetailed$nextAiringEpisode) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$episode = episode;
    final lOther$episode = other.episode;
    if (l$episode != lOther$episode) {
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

extension UtilityExtension$Fragment$MediaDetailed$nextAiringEpisode
    on Fragment$MediaDetailed$nextAiringEpisode {
  CopyWith$Fragment$MediaDetailed$nextAiringEpisode<
          Fragment$MediaDetailed$nextAiringEpisode>
      get copyWith => CopyWith$Fragment$MediaDetailed$nextAiringEpisode(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$MediaDetailed$nextAiringEpisode<TRes> {
  factory CopyWith$Fragment$MediaDetailed$nextAiringEpisode(
    Fragment$MediaDetailed$nextAiringEpisode instance,
    TRes Function(Fragment$MediaDetailed$nextAiringEpisode) then,
  ) = _CopyWithImpl$Fragment$MediaDetailed$nextAiringEpisode;

  factory CopyWith$Fragment$MediaDetailed$nextAiringEpisode.stub(TRes res) =
      _CopyWithStubImpl$Fragment$MediaDetailed$nextAiringEpisode;

  TRes call({
    int? episode,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$MediaDetailed$nextAiringEpisode<TRes>
    implements CopyWith$Fragment$MediaDetailed$nextAiringEpisode<TRes> {
  _CopyWithImpl$Fragment$MediaDetailed$nextAiringEpisode(
    this._instance,
    this._then,
  );

  final Fragment$MediaDetailed$nextAiringEpisode _instance;

  final TRes Function(Fragment$MediaDetailed$nextAiringEpisode) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? episode = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$MediaDetailed$nextAiringEpisode(
        episode: episode == _undefined || episode == null
            ? _instance.episode
            : (episode as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$MediaDetailed$nextAiringEpisode<TRes>
    implements CopyWith$Fragment$MediaDetailed$nextAiringEpisode<TRes> {
  _CopyWithStubImpl$Fragment$MediaDetailed$nextAiringEpisode(this._res);

  TRes _res;

  call({
    int? episode,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$MediaDetailed$trailer {
  Fragment$MediaDetailed$trailer({
    this.id,
    this.site,
    this.thumbnail,
    this.$__typename = 'MediaTrailer',
  });

  factory Fragment$MediaDetailed$trailer.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$site = json['site'];
    final l$thumbnail = json['thumbnail'];
    final l$$__typename = json['__typename'];
    return Fragment$MediaDetailed$trailer(
      id: (l$id as String?),
      site: (l$site as String?),
      thumbnail: (l$thumbnail as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? id;

  final String? site;

  final String? thumbnail;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$site = site;
    _resultData['site'] = l$site;
    final l$thumbnail = thumbnail;
    _resultData['thumbnail'] = l$thumbnail;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$site = site;
    final l$thumbnail = thumbnail;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$site,
      l$thumbnail,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$MediaDetailed$trailer) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$site = site;
    final lOther$site = other.site;
    if (l$site != lOther$site) {
      return false;
    }
    final l$thumbnail = thumbnail;
    final lOther$thumbnail = other.thumbnail;
    if (l$thumbnail != lOther$thumbnail) {
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

extension UtilityExtension$Fragment$MediaDetailed$trailer
    on Fragment$MediaDetailed$trailer {
  CopyWith$Fragment$MediaDetailed$trailer<Fragment$MediaDetailed$trailer>
      get copyWith => CopyWith$Fragment$MediaDetailed$trailer(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$MediaDetailed$trailer<TRes> {
  factory CopyWith$Fragment$MediaDetailed$trailer(
    Fragment$MediaDetailed$trailer instance,
    TRes Function(Fragment$MediaDetailed$trailer) then,
  ) = _CopyWithImpl$Fragment$MediaDetailed$trailer;

  factory CopyWith$Fragment$MediaDetailed$trailer.stub(TRes res) =
      _CopyWithStubImpl$Fragment$MediaDetailed$trailer;

  TRes call({
    String? id,
    String? site,
    String? thumbnail,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$MediaDetailed$trailer<TRes>
    implements CopyWith$Fragment$MediaDetailed$trailer<TRes> {
  _CopyWithImpl$Fragment$MediaDetailed$trailer(
    this._instance,
    this._then,
  );

  final Fragment$MediaDetailed$trailer _instance;

  final TRes Function(Fragment$MediaDetailed$trailer) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? site = _undefined,
    Object? thumbnail = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$MediaDetailed$trailer(
        id: id == _undefined ? _instance.id : (id as String?),
        site: site == _undefined ? _instance.site : (site as String?),
        thumbnail: thumbnail == _undefined
            ? _instance.thumbnail
            : (thumbnail as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$MediaDetailed$trailer<TRes>
    implements CopyWith$Fragment$MediaDetailed$trailer<TRes> {
  _CopyWithStubImpl$Fragment$MediaDetailed$trailer(this._res);

  TRes _res;

  call({
    String? id,
    String? site,
    String? thumbnail,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$MediaDetailed$externalLinks {
  Fragment$MediaDetailed$externalLinks({
    required this.id,
    this.color,
    this.icon,
    this.isDisabled,
    this.url,
    required this.site,
    this.$__typename = 'MediaExternalLink',
  });

  factory Fragment$MediaDetailed$externalLinks.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$color = json['color'];
    final l$icon = json['icon'];
    final l$isDisabled = json['isDisabled'];
    final l$url = json['url'];
    final l$site = json['site'];
    final l$$__typename = json['__typename'];
    return Fragment$MediaDetailed$externalLinks(
      id: (l$id as int),
      color: (l$color as String?),
      icon: (l$icon as String?),
      isDisabled: (l$isDisabled as bool?),
      url: (l$url as String?),
      site: (l$site as String),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String? color;

  final String? icon;

  final bool? isDisabled;

  final String? url;

  final String site;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$color = color;
    _resultData['color'] = l$color;
    final l$icon = icon;
    _resultData['icon'] = l$icon;
    final l$isDisabled = isDisabled;
    _resultData['isDisabled'] = l$isDisabled;
    final l$url = url;
    _resultData['url'] = l$url;
    final l$site = site;
    _resultData['site'] = l$site;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$color = color;
    final l$icon = icon;
    final l$isDisabled = isDisabled;
    final l$url = url;
    final l$site = site;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$color,
      l$icon,
      l$isDisabled,
      l$url,
      l$site,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$MediaDetailed$externalLinks) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$color = color;
    final lOther$color = other.color;
    if (l$color != lOther$color) {
      return false;
    }
    final l$icon = icon;
    final lOther$icon = other.icon;
    if (l$icon != lOther$icon) {
      return false;
    }
    final l$isDisabled = isDisabled;
    final lOther$isDisabled = other.isDisabled;
    if (l$isDisabled != lOther$isDisabled) {
      return false;
    }
    final l$url = url;
    final lOther$url = other.url;
    if (l$url != lOther$url) {
      return false;
    }
    final l$site = site;
    final lOther$site = other.site;
    if (l$site != lOther$site) {
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

extension UtilityExtension$Fragment$MediaDetailed$externalLinks
    on Fragment$MediaDetailed$externalLinks {
  CopyWith$Fragment$MediaDetailed$externalLinks<
          Fragment$MediaDetailed$externalLinks>
      get copyWith => CopyWith$Fragment$MediaDetailed$externalLinks(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$MediaDetailed$externalLinks<TRes> {
  factory CopyWith$Fragment$MediaDetailed$externalLinks(
    Fragment$MediaDetailed$externalLinks instance,
    TRes Function(Fragment$MediaDetailed$externalLinks) then,
  ) = _CopyWithImpl$Fragment$MediaDetailed$externalLinks;

  factory CopyWith$Fragment$MediaDetailed$externalLinks.stub(TRes res) =
      _CopyWithStubImpl$Fragment$MediaDetailed$externalLinks;

  TRes call({
    int? id,
    String? color,
    String? icon,
    bool? isDisabled,
    String? url,
    String? site,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$MediaDetailed$externalLinks<TRes>
    implements CopyWith$Fragment$MediaDetailed$externalLinks<TRes> {
  _CopyWithImpl$Fragment$MediaDetailed$externalLinks(
    this._instance,
    this._then,
  );

  final Fragment$MediaDetailed$externalLinks _instance;

  final TRes Function(Fragment$MediaDetailed$externalLinks) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? color = _undefined,
    Object? icon = _undefined,
    Object? isDisabled = _undefined,
    Object? url = _undefined,
    Object? site = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$MediaDetailed$externalLinks(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        color: color == _undefined ? _instance.color : (color as String?),
        icon: icon == _undefined ? _instance.icon : (icon as String?),
        isDisabled: isDisabled == _undefined
            ? _instance.isDisabled
            : (isDisabled as bool?),
        url: url == _undefined ? _instance.url : (url as String?),
        site: site == _undefined || site == null
            ? _instance.site
            : (site as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$MediaDetailed$externalLinks<TRes>
    implements CopyWith$Fragment$MediaDetailed$externalLinks<TRes> {
  _CopyWithStubImpl$Fragment$MediaDetailed$externalLinks(this._res);

  TRes _res;

  call({
    int? id,
    String? color,
    String? icon,
    bool? isDisabled,
    String? url,
    String? site,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$MediaDetailed$studios {
  Fragment$MediaDetailed$studios({
    this.edges,
    this.$__typename = 'StudioConnection',
  });

  factory Fragment$MediaDetailed$studios.fromJson(Map<String, dynamic> json) {
    final l$edges = json['edges'];
    final l$$__typename = json['__typename'];
    return Fragment$MediaDetailed$studios(
      edges: (l$edges as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$MediaDetailed$studios$edges.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$MediaDetailed$studios$edges?>? edges;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$edges = edges;
    _resultData['edges'] = l$edges?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$edges = edges;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$edges == null ? null : Object.hashAll(l$edges.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$MediaDetailed$studios) ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Fragment$MediaDetailed$studios
    on Fragment$MediaDetailed$studios {
  CopyWith$Fragment$MediaDetailed$studios<Fragment$MediaDetailed$studios>
      get copyWith => CopyWith$Fragment$MediaDetailed$studios(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$MediaDetailed$studios<TRes> {
  factory CopyWith$Fragment$MediaDetailed$studios(
    Fragment$MediaDetailed$studios instance,
    TRes Function(Fragment$MediaDetailed$studios) then,
  ) = _CopyWithImpl$Fragment$MediaDetailed$studios;

  factory CopyWith$Fragment$MediaDetailed$studios.stub(TRes res) =
      _CopyWithStubImpl$Fragment$MediaDetailed$studios;

  TRes call({
    List<Fragment$MediaDetailed$studios$edges?>? edges,
    String? $__typename,
  });
  TRes edges(
      Iterable<Fragment$MediaDetailed$studios$edges?>? Function(
              Iterable<
                  CopyWith$Fragment$MediaDetailed$studios$edges<
                      Fragment$MediaDetailed$studios$edges>?>?)
          _fn);
}

class _CopyWithImpl$Fragment$MediaDetailed$studios<TRes>
    implements CopyWith$Fragment$MediaDetailed$studios<TRes> {
  _CopyWithImpl$Fragment$MediaDetailed$studios(
    this._instance,
    this._then,
  );

  final Fragment$MediaDetailed$studios _instance;

  final TRes Function(Fragment$MediaDetailed$studios) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? edges = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$MediaDetailed$studios(
        edges: edges == _undefined
            ? _instance.edges
            : (edges as List<Fragment$MediaDetailed$studios$edges?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes edges(
          Iterable<Fragment$MediaDetailed$studios$edges?>? Function(
                  Iterable<
                      CopyWith$Fragment$MediaDetailed$studios$edges<
                          Fragment$MediaDetailed$studios$edges>?>?)
              _fn) =>
      call(
          edges: _fn(_instance.edges?.map((e) => e == null
              ? null
              : CopyWith$Fragment$MediaDetailed$studios$edges(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Fragment$MediaDetailed$studios<TRes>
    implements CopyWith$Fragment$MediaDetailed$studios<TRes> {
  _CopyWithStubImpl$Fragment$MediaDetailed$studios(this._res);

  TRes _res;

  call({
    List<Fragment$MediaDetailed$studios$edges?>? edges,
    String? $__typename,
  }) =>
      _res;

  edges(_fn) => _res;
}

class Fragment$MediaDetailed$studios$edges {
  Fragment$MediaDetailed$studios$edges({
    this.node,
    this.id,
    required this.isMain,
    this.$__typename = 'StudioEdge',
  });

  factory Fragment$MediaDetailed$studios$edges.fromJson(
      Map<String, dynamic> json) {
    final l$node = json['node'];
    final l$id = json['id'];
    final l$isMain = json['isMain'];
    final l$$__typename = json['__typename'];
    return Fragment$MediaDetailed$studios$edges(
      node: l$node == null
          ? null
          : Fragment$MediaDetailed$studios$edges$node.fromJson(
              (l$node as Map<String, dynamic>)),
      id: (l$id as int?),
      isMain: (l$isMain as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$MediaDetailed$studios$edges$node? node;

  final int? id;

  final bool isMain;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$node = node;
    _resultData['node'] = l$node?.toJson();
    final l$id = id;
    _resultData['id'] = l$id;
    final l$isMain = isMain;
    _resultData['isMain'] = l$isMain;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$node = node;
    final l$id = id;
    final l$isMain = isMain;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$node,
      l$id,
      l$isMain,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$MediaDetailed$studios$edges) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$node = node;
    final lOther$node = other.node;
    if (l$node != lOther$node) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$isMain = isMain;
    final lOther$isMain = other.isMain;
    if (l$isMain != lOther$isMain) {
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

extension UtilityExtension$Fragment$MediaDetailed$studios$edges
    on Fragment$MediaDetailed$studios$edges {
  CopyWith$Fragment$MediaDetailed$studios$edges<
          Fragment$MediaDetailed$studios$edges>
      get copyWith => CopyWith$Fragment$MediaDetailed$studios$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$MediaDetailed$studios$edges<TRes> {
  factory CopyWith$Fragment$MediaDetailed$studios$edges(
    Fragment$MediaDetailed$studios$edges instance,
    TRes Function(Fragment$MediaDetailed$studios$edges) then,
  ) = _CopyWithImpl$Fragment$MediaDetailed$studios$edges;

  factory CopyWith$Fragment$MediaDetailed$studios$edges.stub(TRes res) =
      _CopyWithStubImpl$Fragment$MediaDetailed$studios$edges;

  TRes call({
    Fragment$MediaDetailed$studios$edges$node? node,
    int? id,
    bool? isMain,
    String? $__typename,
  });
  CopyWith$Fragment$MediaDetailed$studios$edges$node<TRes> get node;
}

class _CopyWithImpl$Fragment$MediaDetailed$studios$edges<TRes>
    implements CopyWith$Fragment$MediaDetailed$studios$edges<TRes> {
  _CopyWithImpl$Fragment$MediaDetailed$studios$edges(
    this._instance,
    this._then,
  );

  final Fragment$MediaDetailed$studios$edges _instance;

  final TRes Function(Fragment$MediaDetailed$studios$edges) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? node = _undefined,
    Object? id = _undefined,
    Object? isMain = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$MediaDetailed$studios$edges(
        node: node == _undefined
            ? _instance.node
            : (node as Fragment$MediaDetailed$studios$edges$node?),
        id: id == _undefined ? _instance.id : (id as int?),
        isMain: isMain == _undefined || isMain == null
            ? _instance.isMain
            : (isMain as bool),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$MediaDetailed$studios$edges$node<TRes> get node {
    final local$node = _instance.node;
    return local$node == null
        ? CopyWith$Fragment$MediaDetailed$studios$edges$node.stub(
            _then(_instance))
        : CopyWith$Fragment$MediaDetailed$studios$edges$node(
            local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Fragment$MediaDetailed$studios$edges<TRes>
    implements CopyWith$Fragment$MediaDetailed$studios$edges<TRes> {
  _CopyWithStubImpl$Fragment$MediaDetailed$studios$edges(this._res);

  TRes _res;

  call({
    Fragment$MediaDetailed$studios$edges$node? node,
    int? id,
    bool? isMain,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$MediaDetailed$studios$edges$node<TRes> get node =>
      CopyWith$Fragment$MediaDetailed$studios$edges$node.stub(_res);
}

class Fragment$MediaDetailed$studios$edges$node {
  Fragment$MediaDetailed$studios$edges$node({
    required this.id,
    required this.name,
    required this.isAnimationStudio,
    this.$__typename = 'Studio',
  });

  factory Fragment$MediaDetailed$studios$edges$node.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$isAnimationStudio = json['isAnimationStudio'];
    final l$$__typename = json['__typename'];
    return Fragment$MediaDetailed$studios$edges$node(
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
    if (!(other is Fragment$MediaDetailed$studios$edges$node) ||
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

extension UtilityExtension$Fragment$MediaDetailed$studios$edges$node
    on Fragment$MediaDetailed$studios$edges$node {
  CopyWith$Fragment$MediaDetailed$studios$edges$node<
          Fragment$MediaDetailed$studios$edges$node>
      get copyWith => CopyWith$Fragment$MediaDetailed$studios$edges$node(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$MediaDetailed$studios$edges$node<TRes> {
  factory CopyWith$Fragment$MediaDetailed$studios$edges$node(
    Fragment$MediaDetailed$studios$edges$node instance,
    TRes Function(Fragment$MediaDetailed$studios$edges$node) then,
  ) = _CopyWithImpl$Fragment$MediaDetailed$studios$edges$node;

  factory CopyWith$Fragment$MediaDetailed$studios$edges$node.stub(TRes res) =
      _CopyWithStubImpl$Fragment$MediaDetailed$studios$edges$node;

  TRes call({
    int? id,
    String? name,
    bool? isAnimationStudio,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$MediaDetailed$studios$edges$node<TRes>
    implements CopyWith$Fragment$MediaDetailed$studios$edges$node<TRes> {
  _CopyWithImpl$Fragment$MediaDetailed$studios$edges$node(
    this._instance,
    this._then,
  );

  final Fragment$MediaDetailed$studios$edges$node _instance;

  final TRes Function(Fragment$MediaDetailed$studios$edges$node) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? isAnimationStudio = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$MediaDetailed$studios$edges$node(
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

class _CopyWithStubImpl$Fragment$MediaDetailed$studios$edges$node<TRes>
    implements CopyWith$Fragment$MediaDetailed$studios$edges$node<TRes> {
  _CopyWithStubImpl$Fragment$MediaDetailed$studios$edges$node(this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    bool? isAnimationStudio,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$MediaDetailed$relations {
  Fragment$MediaDetailed$relations({
    this.edges,
    this.$__typename = 'MediaConnection',
  });

  factory Fragment$MediaDetailed$relations.fromJson(Map<String, dynamic> json) {
    final l$edges = json['edges'];
    final l$$__typename = json['__typename'];
    return Fragment$MediaDetailed$relations(
      edges: (l$edges as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$MediaDetailed$relations$edges.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$MediaDetailed$relations$edges?>? edges;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$edges = edges;
    _resultData['edges'] = l$edges?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$edges = edges;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$edges == null ? null : Object.hashAll(l$edges.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$MediaDetailed$relations) ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Fragment$MediaDetailed$relations
    on Fragment$MediaDetailed$relations {
  CopyWith$Fragment$MediaDetailed$relations<Fragment$MediaDetailed$relations>
      get copyWith => CopyWith$Fragment$MediaDetailed$relations(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$MediaDetailed$relations<TRes> {
  factory CopyWith$Fragment$MediaDetailed$relations(
    Fragment$MediaDetailed$relations instance,
    TRes Function(Fragment$MediaDetailed$relations) then,
  ) = _CopyWithImpl$Fragment$MediaDetailed$relations;

  factory CopyWith$Fragment$MediaDetailed$relations.stub(TRes res) =
      _CopyWithStubImpl$Fragment$MediaDetailed$relations;

  TRes call({
    List<Fragment$MediaDetailed$relations$edges?>? edges,
    String? $__typename,
  });
  TRes edges(
      Iterable<Fragment$MediaDetailed$relations$edges?>? Function(
              Iterable<
                  CopyWith$Fragment$MediaDetailed$relations$edges<
                      Fragment$MediaDetailed$relations$edges>?>?)
          _fn);
}

class _CopyWithImpl$Fragment$MediaDetailed$relations<TRes>
    implements CopyWith$Fragment$MediaDetailed$relations<TRes> {
  _CopyWithImpl$Fragment$MediaDetailed$relations(
    this._instance,
    this._then,
  );

  final Fragment$MediaDetailed$relations _instance;

  final TRes Function(Fragment$MediaDetailed$relations) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? edges = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$MediaDetailed$relations(
        edges: edges == _undefined
            ? _instance.edges
            : (edges as List<Fragment$MediaDetailed$relations$edges?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes edges(
          Iterable<Fragment$MediaDetailed$relations$edges?>? Function(
                  Iterable<
                      CopyWith$Fragment$MediaDetailed$relations$edges<
                          Fragment$MediaDetailed$relations$edges>?>?)
              _fn) =>
      call(
          edges: _fn(_instance.edges?.map((e) => e == null
              ? null
              : CopyWith$Fragment$MediaDetailed$relations$edges(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Fragment$MediaDetailed$relations<TRes>
    implements CopyWith$Fragment$MediaDetailed$relations<TRes> {
  _CopyWithStubImpl$Fragment$MediaDetailed$relations(this._res);

  TRes _res;

  call({
    List<Fragment$MediaDetailed$relations$edges?>? edges,
    String? $__typename,
  }) =>
      _res;

  edges(_fn) => _res;
}

class Fragment$MediaDetailed$relations$edges {
  Fragment$MediaDetailed$relations$edges({
    this.node,
    this.relationType,
    this.$__typename = 'MediaEdge',
  });

  factory Fragment$MediaDetailed$relations$edges.fromJson(
      Map<String, dynamic> json) {
    final l$node = json['node'];
    final l$relationType = json['relationType'];
    final l$$__typename = json['__typename'];
    return Fragment$MediaDetailed$relations$edges(
      node: l$node == null
          ? null
          : Fragment$MediaDetailed$relations$edges$node.fromJson(
              (l$node as Map<String, dynamic>)),
      relationType: l$relationType == null
          ? null
          : fromJson$Enum$MediaRelation((l$relationType as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$MediaDetailed$relations$edges$node? node;

  final Enum$MediaRelation? relationType;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$node = node;
    _resultData['node'] = l$node?.toJson();
    final l$relationType = relationType;
    _resultData['relationType'] = l$relationType == null
        ? null
        : toJson$Enum$MediaRelation(l$relationType);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$node = node;
    final l$relationType = relationType;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$node,
      l$relationType,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$MediaDetailed$relations$edges) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$node = node;
    final lOther$node = other.node;
    if (l$node != lOther$node) {
      return false;
    }
    final l$relationType = relationType;
    final lOther$relationType = other.relationType;
    if (l$relationType != lOther$relationType) {
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

extension UtilityExtension$Fragment$MediaDetailed$relations$edges
    on Fragment$MediaDetailed$relations$edges {
  CopyWith$Fragment$MediaDetailed$relations$edges<
          Fragment$MediaDetailed$relations$edges>
      get copyWith => CopyWith$Fragment$MediaDetailed$relations$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$MediaDetailed$relations$edges<TRes> {
  factory CopyWith$Fragment$MediaDetailed$relations$edges(
    Fragment$MediaDetailed$relations$edges instance,
    TRes Function(Fragment$MediaDetailed$relations$edges) then,
  ) = _CopyWithImpl$Fragment$MediaDetailed$relations$edges;

  factory CopyWith$Fragment$MediaDetailed$relations$edges.stub(TRes res) =
      _CopyWithStubImpl$Fragment$MediaDetailed$relations$edges;

  TRes call({
    Fragment$MediaDetailed$relations$edges$node? node,
    Enum$MediaRelation? relationType,
    String? $__typename,
  });
  CopyWith$Fragment$MediaDetailed$relations$edges$node<TRes> get node;
}

class _CopyWithImpl$Fragment$MediaDetailed$relations$edges<TRes>
    implements CopyWith$Fragment$MediaDetailed$relations$edges<TRes> {
  _CopyWithImpl$Fragment$MediaDetailed$relations$edges(
    this._instance,
    this._then,
  );

  final Fragment$MediaDetailed$relations$edges _instance;

  final TRes Function(Fragment$MediaDetailed$relations$edges) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? node = _undefined,
    Object? relationType = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$MediaDetailed$relations$edges(
        node: node == _undefined
            ? _instance.node
            : (node as Fragment$MediaDetailed$relations$edges$node?),
        relationType: relationType == _undefined
            ? _instance.relationType
            : (relationType as Enum$MediaRelation?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$MediaDetailed$relations$edges$node<TRes> get node {
    final local$node = _instance.node;
    return local$node == null
        ? CopyWith$Fragment$MediaDetailed$relations$edges$node.stub(
            _then(_instance))
        : CopyWith$Fragment$MediaDetailed$relations$edges$node(
            local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Fragment$MediaDetailed$relations$edges<TRes>
    implements CopyWith$Fragment$MediaDetailed$relations$edges<TRes> {
  _CopyWithStubImpl$Fragment$MediaDetailed$relations$edges(this._res);

  TRes _res;

  call({
    Fragment$MediaDetailed$relations$edges$node? node,
    Enum$MediaRelation? relationType,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$MediaDetailed$relations$edges$node<TRes> get node =>
      CopyWith$Fragment$MediaDetailed$relations$edges$node.stub(_res);
}

class Fragment$MediaDetailed$relations$edges$node {
  Fragment$MediaDetailed$relations$edges$node({
    required this.id,
    this.title,
    this.type,
    this.format,
    this.coverImage,
    this.status,
    this.$__typename = 'Media',
  });

  factory Fragment$MediaDetailed$relations$edges$node.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$type = json['type'];
    final l$format = json['format'];
    final l$coverImage = json['coverImage'];
    final l$status = json['status'];
    final l$$__typename = json['__typename'];
    return Fragment$MediaDetailed$relations$edges$node(
      id: (l$id as int),
      title: l$title == null
          ? null
          : Fragment$MediaDetailed$relations$edges$node$title.fromJson(
              (l$title as Map<String, dynamic>)),
      type: l$type == null ? null : fromJson$Enum$MediaType((l$type as String)),
      format: l$format == null
          ? null
          : fromJson$Enum$MediaFormat((l$format as String)),
      coverImage: l$coverImage == null
          ? null
          : Fragment$MediaDetailed$relations$edges$node$coverImage.fromJson(
              (l$coverImage as Map<String, dynamic>)),
      status: l$status == null
          ? null
          : fromJson$Enum$MediaStatus((l$status as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final Fragment$MediaDetailed$relations$edges$node$title? title;

  final Enum$MediaType? type;

  final Enum$MediaFormat? format;

  final Fragment$MediaDetailed$relations$edges$node$coverImage? coverImage;

  final Enum$MediaStatus? status;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$title = title;
    _resultData['title'] = l$title?.toJson();
    final l$type = type;
    _resultData['type'] = l$type == null ? null : toJson$Enum$MediaType(l$type);
    final l$format = format;
    _resultData['format'] =
        l$format == null ? null : toJson$Enum$MediaFormat(l$format);
    final l$coverImage = coverImage;
    _resultData['coverImage'] = l$coverImage?.toJson();
    final l$status = status;
    _resultData['status'] =
        l$status == null ? null : toJson$Enum$MediaStatus(l$status);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$title = title;
    final l$type = type;
    final l$format = format;
    final l$coverImage = coverImage;
    final l$status = status;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$title,
      l$type,
      l$format,
      l$coverImage,
      l$status,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$MediaDetailed$relations$edges$node) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$format = format;
    final lOther$format = other.format;
    if (l$format != lOther$format) {
      return false;
    }
    final l$coverImage = coverImage;
    final lOther$coverImage = other.coverImage;
    if (l$coverImage != lOther$coverImage) {
      return false;
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

extension UtilityExtension$Fragment$MediaDetailed$relations$edges$node
    on Fragment$MediaDetailed$relations$edges$node {
  CopyWith$Fragment$MediaDetailed$relations$edges$node<
          Fragment$MediaDetailed$relations$edges$node>
      get copyWith => CopyWith$Fragment$MediaDetailed$relations$edges$node(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$MediaDetailed$relations$edges$node<TRes> {
  factory CopyWith$Fragment$MediaDetailed$relations$edges$node(
    Fragment$MediaDetailed$relations$edges$node instance,
    TRes Function(Fragment$MediaDetailed$relations$edges$node) then,
  ) = _CopyWithImpl$Fragment$MediaDetailed$relations$edges$node;

  factory CopyWith$Fragment$MediaDetailed$relations$edges$node.stub(TRes res) =
      _CopyWithStubImpl$Fragment$MediaDetailed$relations$edges$node;

  TRes call({
    int? id,
    Fragment$MediaDetailed$relations$edges$node$title? title,
    Enum$MediaType? type,
    Enum$MediaFormat? format,
    Fragment$MediaDetailed$relations$edges$node$coverImage? coverImage,
    Enum$MediaStatus? status,
    String? $__typename,
  });
  CopyWith$Fragment$MediaDetailed$relations$edges$node$title<TRes> get title;
  CopyWith$Fragment$MediaDetailed$relations$edges$node$coverImage<TRes>
      get coverImage;
}

class _CopyWithImpl$Fragment$MediaDetailed$relations$edges$node<TRes>
    implements CopyWith$Fragment$MediaDetailed$relations$edges$node<TRes> {
  _CopyWithImpl$Fragment$MediaDetailed$relations$edges$node(
    this._instance,
    this._then,
  );

  final Fragment$MediaDetailed$relations$edges$node _instance;

  final TRes Function(Fragment$MediaDetailed$relations$edges$node) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? type = _undefined,
    Object? format = _undefined,
    Object? coverImage = _undefined,
    Object? status = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$MediaDetailed$relations$edges$node(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        title: title == _undefined
            ? _instance.title
            : (title as Fragment$MediaDetailed$relations$edges$node$title?),
        type: type == _undefined ? _instance.type : (type as Enum$MediaType?),
        format: format == _undefined
            ? _instance.format
            : (format as Enum$MediaFormat?),
        coverImage: coverImage == _undefined
            ? _instance.coverImage
            : (coverImage
                as Fragment$MediaDetailed$relations$edges$node$coverImage?),
        status: status == _undefined
            ? _instance.status
            : (status as Enum$MediaStatus?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$MediaDetailed$relations$edges$node$title<TRes> get title {
    final local$title = _instance.title;
    return local$title == null
        ? CopyWith$Fragment$MediaDetailed$relations$edges$node$title.stub(
            _then(_instance))
        : CopyWith$Fragment$MediaDetailed$relations$edges$node$title(
            local$title, (e) => call(title: e));
  }

  CopyWith$Fragment$MediaDetailed$relations$edges$node$coverImage<TRes>
      get coverImage {
    final local$coverImage = _instance.coverImage;
    return local$coverImage == null
        ? CopyWith$Fragment$MediaDetailed$relations$edges$node$coverImage.stub(
            _then(_instance))
        : CopyWith$Fragment$MediaDetailed$relations$edges$node$coverImage(
            local$coverImage, (e) => call(coverImage: e));
  }
}

class _CopyWithStubImpl$Fragment$MediaDetailed$relations$edges$node<TRes>
    implements CopyWith$Fragment$MediaDetailed$relations$edges$node<TRes> {
  _CopyWithStubImpl$Fragment$MediaDetailed$relations$edges$node(this._res);

  TRes _res;

  call({
    int? id,
    Fragment$MediaDetailed$relations$edges$node$title? title,
    Enum$MediaType? type,
    Enum$MediaFormat? format,
    Fragment$MediaDetailed$relations$edges$node$coverImage? coverImage,
    Enum$MediaStatus? status,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$MediaDetailed$relations$edges$node$title<TRes> get title =>
      CopyWith$Fragment$MediaDetailed$relations$edges$node$title.stub(_res);

  CopyWith$Fragment$MediaDetailed$relations$edges$node$coverImage<TRes>
      get coverImage =>
          CopyWith$Fragment$MediaDetailed$relations$edges$node$coverImage.stub(
              _res);
}

class Fragment$MediaDetailed$relations$edges$node$title {
  Fragment$MediaDetailed$relations$edges$node$title({
    this.userPreferred,
    this.$__typename = 'MediaTitle',
  });

  factory Fragment$MediaDetailed$relations$edges$node$title.fromJson(
      Map<String, dynamic> json) {
    final l$userPreferred = json['userPreferred'];
    final l$$__typename = json['__typename'];
    return Fragment$MediaDetailed$relations$edges$node$title(
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
    if (!(other is Fragment$MediaDetailed$relations$edges$node$title) ||
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

extension UtilityExtension$Fragment$MediaDetailed$relations$edges$node$title
    on Fragment$MediaDetailed$relations$edges$node$title {
  CopyWith$Fragment$MediaDetailed$relations$edges$node$title<
          Fragment$MediaDetailed$relations$edges$node$title>
      get copyWith =>
          CopyWith$Fragment$MediaDetailed$relations$edges$node$title(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$MediaDetailed$relations$edges$node$title<
    TRes> {
  factory CopyWith$Fragment$MediaDetailed$relations$edges$node$title(
    Fragment$MediaDetailed$relations$edges$node$title instance,
    TRes Function(Fragment$MediaDetailed$relations$edges$node$title) then,
  ) = _CopyWithImpl$Fragment$MediaDetailed$relations$edges$node$title;

  factory CopyWith$Fragment$MediaDetailed$relations$edges$node$title.stub(
          TRes res) =
      _CopyWithStubImpl$Fragment$MediaDetailed$relations$edges$node$title;

  TRes call({
    String? userPreferred,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$MediaDetailed$relations$edges$node$title<TRes>
    implements
        CopyWith$Fragment$MediaDetailed$relations$edges$node$title<TRes> {
  _CopyWithImpl$Fragment$MediaDetailed$relations$edges$node$title(
    this._instance,
    this._then,
  );

  final Fragment$MediaDetailed$relations$edges$node$title _instance;

  final TRes Function(Fragment$MediaDetailed$relations$edges$node$title) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userPreferred = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$MediaDetailed$relations$edges$node$title(
        userPreferred: userPreferred == _undefined
            ? _instance.userPreferred
            : (userPreferred as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$MediaDetailed$relations$edges$node$title<TRes>
    implements
        CopyWith$Fragment$MediaDetailed$relations$edges$node$title<TRes> {
  _CopyWithStubImpl$Fragment$MediaDetailed$relations$edges$node$title(
      this._res);

  TRes _res;

  call({
    String? userPreferred,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$MediaDetailed$relations$edges$node$coverImage {
  Fragment$MediaDetailed$relations$edges$node$coverImage({
    this.extraLarge,
    this.large,
    this.$__typename = 'MediaCoverImage',
  });

  factory Fragment$MediaDetailed$relations$edges$node$coverImage.fromJson(
      Map<String, dynamic> json) {
    final l$extraLarge = json['extraLarge'];
    final l$large = json['large'];
    final l$$__typename = json['__typename'];
    return Fragment$MediaDetailed$relations$edges$node$coverImage(
      extraLarge: (l$extraLarge as String?),
      large: (l$large as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? extraLarge;

  final String? large;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$extraLarge = extraLarge;
    _resultData['extraLarge'] = l$extraLarge;
    final l$large = large;
    _resultData['large'] = l$large;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$extraLarge = extraLarge;
    final l$large = large;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$extraLarge,
      l$large,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$MediaDetailed$relations$edges$node$coverImage) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$extraLarge = extraLarge;
    final lOther$extraLarge = other.extraLarge;
    if (l$extraLarge != lOther$extraLarge) {
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

extension UtilityExtension$Fragment$MediaDetailed$relations$edges$node$coverImage
    on Fragment$MediaDetailed$relations$edges$node$coverImage {
  CopyWith$Fragment$MediaDetailed$relations$edges$node$coverImage<
          Fragment$MediaDetailed$relations$edges$node$coverImage>
      get copyWith =>
          CopyWith$Fragment$MediaDetailed$relations$edges$node$coverImage(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$MediaDetailed$relations$edges$node$coverImage<
    TRes> {
  factory CopyWith$Fragment$MediaDetailed$relations$edges$node$coverImage(
    Fragment$MediaDetailed$relations$edges$node$coverImage instance,
    TRes Function(Fragment$MediaDetailed$relations$edges$node$coverImage) then,
  ) = _CopyWithImpl$Fragment$MediaDetailed$relations$edges$node$coverImage;

  factory CopyWith$Fragment$MediaDetailed$relations$edges$node$coverImage.stub(
          TRes res) =
      _CopyWithStubImpl$Fragment$MediaDetailed$relations$edges$node$coverImage;

  TRes call({
    String? extraLarge,
    String? large,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$MediaDetailed$relations$edges$node$coverImage<TRes>
    implements
        CopyWith$Fragment$MediaDetailed$relations$edges$node$coverImage<TRes> {
  _CopyWithImpl$Fragment$MediaDetailed$relations$edges$node$coverImage(
    this._instance,
    this._then,
  );

  final Fragment$MediaDetailed$relations$edges$node$coverImage _instance;

  final TRes Function(Fragment$MediaDetailed$relations$edges$node$coverImage)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? extraLarge = _undefined,
    Object? large = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$MediaDetailed$relations$edges$node$coverImage(
        extraLarge: extraLarge == _undefined
            ? _instance.extraLarge
            : (extraLarge as String?),
        large: large == _undefined ? _instance.large : (large as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$MediaDetailed$relations$edges$node$coverImage<
        TRes>
    implements
        CopyWith$Fragment$MediaDetailed$relations$edges$node$coverImage<TRes> {
  _CopyWithStubImpl$Fragment$MediaDetailed$relations$edges$node$coverImage(
      this._res);

  TRes _res;

  call({
    String? extraLarge,
    String? large,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$MediaDetailed$recommendations {
  Fragment$MediaDetailed$recommendations({
    this.nodes,
    this.$__typename = 'RecommendationConnection',
  });

  factory Fragment$MediaDetailed$recommendations.fromJson(
      Map<String, dynamic> json) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Fragment$MediaDetailed$recommendations(
      nodes: (l$nodes as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$MediaDetailed$recommendations$nodes.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$MediaDetailed$recommendations$nodes?>? nodes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$nodes = nodes;
    _resultData['nodes'] = l$nodes?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$nodes = nodes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$nodes == null ? null : Object.hashAll(l$nodes.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$MediaDetailed$recommendations) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$nodes = nodes;
    final lOther$nodes = other.nodes;
    if (l$nodes != null && lOther$nodes != null) {
      if (l$nodes.length != lOther$nodes.length) {
        return false;
      }
      for (int i = 0; i < l$nodes.length; i++) {
        final l$nodes$entry = l$nodes[i];
        final lOther$nodes$entry = lOther$nodes[i];
        if (l$nodes$entry != lOther$nodes$entry) {
          return false;
        }
      }
    } else if (l$nodes != lOther$nodes) {
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

extension UtilityExtension$Fragment$MediaDetailed$recommendations
    on Fragment$MediaDetailed$recommendations {
  CopyWith$Fragment$MediaDetailed$recommendations<
          Fragment$MediaDetailed$recommendations>
      get copyWith => CopyWith$Fragment$MediaDetailed$recommendations(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$MediaDetailed$recommendations<TRes> {
  factory CopyWith$Fragment$MediaDetailed$recommendations(
    Fragment$MediaDetailed$recommendations instance,
    TRes Function(Fragment$MediaDetailed$recommendations) then,
  ) = _CopyWithImpl$Fragment$MediaDetailed$recommendations;

  factory CopyWith$Fragment$MediaDetailed$recommendations.stub(TRes res) =
      _CopyWithStubImpl$Fragment$MediaDetailed$recommendations;

  TRes call({
    List<Fragment$MediaDetailed$recommendations$nodes?>? nodes,
    String? $__typename,
  });
  TRes nodes(
      Iterable<Fragment$MediaDetailed$recommendations$nodes?>? Function(
              Iterable<
                  CopyWith$Fragment$MediaDetailed$recommendations$nodes<
                      Fragment$MediaDetailed$recommendations$nodes>?>?)
          _fn);
}

class _CopyWithImpl$Fragment$MediaDetailed$recommendations<TRes>
    implements CopyWith$Fragment$MediaDetailed$recommendations<TRes> {
  _CopyWithImpl$Fragment$MediaDetailed$recommendations(
    this._instance,
    this._then,
  );

  final Fragment$MediaDetailed$recommendations _instance;

  final TRes Function(Fragment$MediaDetailed$recommendations) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$MediaDetailed$recommendations(
        nodes: nodes == _undefined
            ? _instance.nodes
            : (nodes as List<Fragment$MediaDetailed$recommendations$nodes?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes nodes(
          Iterable<Fragment$MediaDetailed$recommendations$nodes?>? Function(
                  Iterable<
                      CopyWith$Fragment$MediaDetailed$recommendations$nodes<
                          Fragment$MediaDetailed$recommendations$nodes>?>?)
              _fn) =>
      call(
          nodes: _fn(_instance.nodes?.map((e) => e == null
              ? null
              : CopyWith$Fragment$MediaDetailed$recommendations$nodes(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Fragment$MediaDetailed$recommendations<TRes>
    implements CopyWith$Fragment$MediaDetailed$recommendations<TRes> {
  _CopyWithStubImpl$Fragment$MediaDetailed$recommendations(this._res);

  TRes _res;

  call({
    List<Fragment$MediaDetailed$recommendations$nodes?>? nodes,
    String? $__typename,
  }) =>
      _res;

  nodes(_fn) => _res;
}

class Fragment$MediaDetailed$recommendations$nodes {
  Fragment$MediaDetailed$recommendations$nodes({
    required this.id,
    this.$__typename = 'Recommendation',
  });

  factory Fragment$MediaDetailed$recommendations$nodes.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Fragment$MediaDetailed$recommendations$nodes(
      id: (l$id as int),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$MediaDetailed$recommendations$nodes) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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

extension UtilityExtension$Fragment$MediaDetailed$recommendations$nodes
    on Fragment$MediaDetailed$recommendations$nodes {
  CopyWith$Fragment$MediaDetailed$recommendations$nodes<
          Fragment$MediaDetailed$recommendations$nodes>
      get copyWith => CopyWith$Fragment$MediaDetailed$recommendations$nodes(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$MediaDetailed$recommendations$nodes<TRes> {
  factory CopyWith$Fragment$MediaDetailed$recommendations$nodes(
    Fragment$MediaDetailed$recommendations$nodes instance,
    TRes Function(Fragment$MediaDetailed$recommendations$nodes) then,
  ) = _CopyWithImpl$Fragment$MediaDetailed$recommendations$nodes;

  factory CopyWith$Fragment$MediaDetailed$recommendations$nodes.stub(TRes res) =
      _CopyWithStubImpl$Fragment$MediaDetailed$recommendations$nodes;

  TRes call({
    int? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$MediaDetailed$recommendations$nodes<TRes>
    implements CopyWith$Fragment$MediaDetailed$recommendations$nodes<TRes> {
  _CopyWithImpl$Fragment$MediaDetailed$recommendations$nodes(
    this._instance,
    this._then,
  );

  final Fragment$MediaDetailed$recommendations$nodes _instance;

  final TRes Function(Fragment$MediaDetailed$recommendations$nodes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$MediaDetailed$recommendations$nodes(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$MediaDetailed$recommendations$nodes<TRes>
    implements CopyWith$Fragment$MediaDetailed$recommendations$nodes<TRes> {
  _CopyWithStubImpl$Fragment$MediaDetailed$recommendations$nodes(this._res);

  TRes _res;

  call({
    int? id,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$MediaDetailed$tags {
  Fragment$MediaDetailed$tags({
    required this.id,
    required this.name,
    this.category,
    this.isMediaSpoiler,
    this.description,
    this.rank,
    this.$__typename = 'MediaTag',
  });

  factory Fragment$MediaDetailed$tags.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$category = json['category'];
    final l$isMediaSpoiler = json['isMediaSpoiler'];
    final l$description = json['description'];
    final l$rank = json['rank'];
    final l$$__typename = json['__typename'];
    return Fragment$MediaDetailed$tags(
      id: (l$id as int),
      name: (l$name as String),
      category: (l$category as String?),
      isMediaSpoiler: (l$isMediaSpoiler as bool?),
      description: (l$description as String?),
      rank: (l$rank as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String name;

  final String? category;

  final bool? isMediaSpoiler;

  final String? description;

  final int? rank;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$category = category;
    _resultData['category'] = l$category;
    final l$isMediaSpoiler = isMediaSpoiler;
    _resultData['isMediaSpoiler'] = l$isMediaSpoiler;
    final l$description = description;
    _resultData['description'] = l$description;
    final l$rank = rank;
    _resultData['rank'] = l$rank;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$category = category;
    final l$isMediaSpoiler = isMediaSpoiler;
    final l$description = description;
    final l$rank = rank;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$category,
      l$isMediaSpoiler,
      l$description,
      l$rank,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$MediaDetailed$tags) ||
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
    final l$category = category;
    final lOther$category = other.category;
    if (l$category != lOther$category) {
      return false;
    }
    final l$isMediaSpoiler = isMediaSpoiler;
    final lOther$isMediaSpoiler = other.isMediaSpoiler;
    if (l$isMediaSpoiler != lOther$isMediaSpoiler) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
      return false;
    }
    final l$rank = rank;
    final lOther$rank = other.rank;
    if (l$rank != lOther$rank) {
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

extension UtilityExtension$Fragment$MediaDetailed$tags
    on Fragment$MediaDetailed$tags {
  CopyWith$Fragment$MediaDetailed$tags<Fragment$MediaDetailed$tags>
      get copyWith => CopyWith$Fragment$MediaDetailed$tags(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$MediaDetailed$tags<TRes> {
  factory CopyWith$Fragment$MediaDetailed$tags(
    Fragment$MediaDetailed$tags instance,
    TRes Function(Fragment$MediaDetailed$tags) then,
  ) = _CopyWithImpl$Fragment$MediaDetailed$tags;

  factory CopyWith$Fragment$MediaDetailed$tags.stub(TRes res) =
      _CopyWithStubImpl$Fragment$MediaDetailed$tags;

  TRes call({
    int? id,
    String? name,
    String? category,
    bool? isMediaSpoiler,
    String? description,
    int? rank,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$MediaDetailed$tags<TRes>
    implements CopyWith$Fragment$MediaDetailed$tags<TRes> {
  _CopyWithImpl$Fragment$MediaDetailed$tags(
    this._instance,
    this._then,
  );

  final Fragment$MediaDetailed$tags _instance;

  final TRes Function(Fragment$MediaDetailed$tags) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? category = _undefined,
    Object? isMediaSpoiler = _undefined,
    Object? description = _undefined,
    Object? rank = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$MediaDetailed$tags(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        category:
            category == _undefined ? _instance.category : (category as String?),
        isMediaSpoiler: isMediaSpoiler == _undefined
            ? _instance.isMediaSpoiler
            : (isMediaSpoiler as bool?),
        description: description == _undefined
            ? _instance.description
            : (description as String?),
        rank: rank == _undefined ? _instance.rank : (rank as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$MediaDetailed$tags<TRes>
    implements CopyWith$Fragment$MediaDetailed$tags<TRes> {
  _CopyWithStubImpl$Fragment$MediaDetailed$tags(this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    String? category,
    bool? isMediaSpoiler,
    String? description,
    int? rank,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$MediaDetailed$rankings {
  Fragment$MediaDetailed$rankings({
    required this.id,
    this.allTime,
    required this.type,
    required this.context,
    required this.rank,
    this.year,
    this.$__typename = 'MediaRank',
  });

  factory Fragment$MediaDetailed$rankings.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$allTime = json['allTime'];
    final l$type = json['type'];
    final l$context = json['context'];
    final l$rank = json['rank'];
    final l$year = json['year'];
    final l$$__typename = json['__typename'];
    return Fragment$MediaDetailed$rankings(
      id: (l$id as int),
      allTime: (l$allTime as bool?),
      type: fromJson$Enum$MediaRankType((l$type as String)),
      context: (l$context as String),
      rank: (l$rank as int),
      year: (l$year as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final bool? allTime;

  final Enum$MediaRankType type;

  final String context;

  final int rank;

  final int? year;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$allTime = allTime;
    _resultData['allTime'] = l$allTime;
    final l$type = type;
    _resultData['type'] = toJson$Enum$MediaRankType(l$type);
    final l$context = context;
    _resultData['context'] = l$context;
    final l$rank = rank;
    _resultData['rank'] = l$rank;
    final l$year = year;
    _resultData['year'] = l$year;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$allTime = allTime;
    final l$type = type;
    final l$context = context;
    final l$rank = rank;
    final l$year = year;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$allTime,
      l$type,
      l$context,
      l$rank,
      l$year,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$MediaDetailed$rankings) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$allTime = allTime;
    final lOther$allTime = other.allTime;
    if (l$allTime != lOther$allTime) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$context = context;
    final lOther$context = other.context;
    if (l$context != lOther$context) {
      return false;
    }
    final l$rank = rank;
    final lOther$rank = other.rank;
    if (l$rank != lOther$rank) {
      return false;
    }
    final l$year = year;
    final lOther$year = other.year;
    if (l$year != lOther$year) {
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

extension UtilityExtension$Fragment$MediaDetailed$rankings
    on Fragment$MediaDetailed$rankings {
  CopyWith$Fragment$MediaDetailed$rankings<Fragment$MediaDetailed$rankings>
      get copyWith => CopyWith$Fragment$MediaDetailed$rankings(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$MediaDetailed$rankings<TRes> {
  factory CopyWith$Fragment$MediaDetailed$rankings(
    Fragment$MediaDetailed$rankings instance,
    TRes Function(Fragment$MediaDetailed$rankings) then,
  ) = _CopyWithImpl$Fragment$MediaDetailed$rankings;

  factory CopyWith$Fragment$MediaDetailed$rankings.stub(TRes res) =
      _CopyWithStubImpl$Fragment$MediaDetailed$rankings;

  TRes call({
    int? id,
    bool? allTime,
    Enum$MediaRankType? type,
    String? context,
    int? rank,
    int? year,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$MediaDetailed$rankings<TRes>
    implements CopyWith$Fragment$MediaDetailed$rankings<TRes> {
  _CopyWithImpl$Fragment$MediaDetailed$rankings(
    this._instance,
    this._then,
  );

  final Fragment$MediaDetailed$rankings _instance;

  final TRes Function(Fragment$MediaDetailed$rankings) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? allTime = _undefined,
    Object? type = _undefined,
    Object? context = _undefined,
    Object? rank = _undefined,
    Object? year = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$MediaDetailed$rankings(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        allTime: allTime == _undefined ? _instance.allTime : (allTime as bool?),
        type: type == _undefined || type == null
            ? _instance.type
            : (type as Enum$MediaRankType),
        context: context == _undefined || context == null
            ? _instance.context
            : (context as String),
        rank:
            rank == _undefined || rank == null ? _instance.rank : (rank as int),
        year: year == _undefined ? _instance.year : (year as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$MediaDetailed$rankings<TRes>
    implements CopyWith$Fragment$MediaDetailed$rankings<TRes> {
  _CopyWithStubImpl$Fragment$MediaDetailed$rankings(this._res);

  TRes _res;

  call({
    int? id,
    bool? allTime,
    Enum$MediaRankType? type,
    String? context,
    int? rank,
    int? year,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$MediaDetailed$stats {
  Fragment$MediaDetailed$stats({
    this.scoreDistribution,
    this.statusDistribution,
    this.$__typename = 'MediaStats',
  });

  factory Fragment$MediaDetailed$stats.fromJson(Map<String, dynamic> json) {
    final l$scoreDistribution = json['scoreDistribution'];
    final l$statusDistribution = json['statusDistribution'];
    final l$$__typename = json['__typename'];
    return Fragment$MediaDetailed$stats(
      scoreDistribution: (l$scoreDistribution as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$MediaDetailed$stats$scoreDistribution.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      statusDistribution: (l$statusDistribution as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$MediaDetailed$stats$statusDistribution.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$MediaDetailed$stats$scoreDistribution?>?
      scoreDistribution;

  final List<Fragment$MediaDetailed$stats$statusDistribution?>?
      statusDistribution;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$scoreDistribution = scoreDistribution;
    _resultData['scoreDistribution'] =
        l$scoreDistribution?.map((e) => e?.toJson()).toList();
    final l$statusDistribution = statusDistribution;
    _resultData['statusDistribution'] =
        l$statusDistribution?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$scoreDistribution = scoreDistribution;
    final l$statusDistribution = statusDistribution;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$scoreDistribution == null
          ? null
          : Object.hashAll(l$scoreDistribution.map((v) => v)),
      l$statusDistribution == null
          ? null
          : Object.hashAll(l$statusDistribution.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$MediaDetailed$stats) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$scoreDistribution = scoreDistribution;
    final lOther$scoreDistribution = other.scoreDistribution;
    if (l$scoreDistribution != null && lOther$scoreDistribution != null) {
      if (l$scoreDistribution.length != lOther$scoreDistribution.length) {
        return false;
      }
      for (int i = 0; i < l$scoreDistribution.length; i++) {
        final l$scoreDistribution$entry = l$scoreDistribution[i];
        final lOther$scoreDistribution$entry = lOther$scoreDistribution[i];
        if (l$scoreDistribution$entry != lOther$scoreDistribution$entry) {
          return false;
        }
      }
    } else if (l$scoreDistribution != lOther$scoreDistribution) {
      return false;
    }
    final l$statusDistribution = statusDistribution;
    final lOther$statusDistribution = other.statusDistribution;
    if (l$statusDistribution != null && lOther$statusDistribution != null) {
      if (l$statusDistribution.length != lOther$statusDistribution.length) {
        return false;
      }
      for (int i = 0; i < l$statusDistribution.length; i++) {
        final l$statusDistribution$entry = l$statusDistribution[i];
        final lOther$statusDistribution$entry = lOther$statusDistribution[i];
        if (l$statusDistribution$entry != lOther$statusDistribution$entry) {
          return false;
        }
      }
    } else if (l$statusDistribution != lOther$statusDistribution) {
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

extension UtilityExtension$Fragment$MediaDetailed$stats
    on Fragment$MediaDetailed$stats {
  CopyWith$Fragment$MediaDetailed$stats<Fragment$MediaDetailed$stats>
      get copyWith => CopyWith$Fragment$MediaDetailed$stats(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$MediaDetailed$stats<TRes> {
  factory CopyWith$Fragment$MediaDetailed$stats(
    Fragment$MediaDetailed$stats instance,
    TRes Function(Fragment$MediaDetailed$stats) then,
  ) = _CopyWithImpl$Fragment$MediaDetailed$stats;

  factory CopyWith$Fragment$MediaDetailed$stats.stub(TRes res) =
      _CopyWithStubImpl$Fragment$MediaDetailed$stats;

  TRes call({
    List<Fragment$MediaDetailed$stats$scoreDistribution?>? scoreDistribution,
    List<Fragment$MediaDetailed$stats$statusDistribution?>? statusDistribution,
    String? $__typename,
  });
  TRes scoreDistribution(
      Iterable<Fragment$MediaDetailed$stats$scoreDistribution?>? Function(
              Iterable<
                  CopyWith$Fragment$MediaDetailed$stats$scoreDistribution<
                      Fragment$MediaDetailed$stats$scoreDistribution>?>?)
          _fn);
  TRes statusDistribution(
      Iterable<Fragment$MediaDetailed$stats$statusDistribution?>? Function(
              Iterable<
                  CopyWith$Fragment$MediaDetailed$stats$statusDistribution<
                      Fragment$MediaDetailed$stats$statusDistribution>?>?)
          _fn);
}

class _CopyWithImpl$Fragment$MediaDetailed$stats<TRes>
    implements CopyWith$Fragment$MediaDetailed$stats<TRes> {
  _CopyWithImpl$Fragment$MediaDetailed$stats(
    this._instance,
    this._then,
  );

  final Fragment$MediaDetailed$stats _instance;

  final TRes Function(Fragment$MediaDetailed$stats) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? scoreDistribution = _undefined,
    Object? statusDistribution = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$MediaDetailed$stats(
        scoreDistribution: scoreDistribution == _undefined
            ? _instance.scoreDistribution
            : (scoreDistribution
                as List<Fragment$MediaDetailed$stats$scoreDistribution?>?),
        statusDistribution: statusDistribution == _undefined
            ? _instance.statusDistribution
            : (statusDistribution
                as List<Fragment$MediaDetailed$stats$statusDistribution?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes scoreDistribution(
          Iterable<Fragment$MediaDetailed$stats$scoreDistribution?>? Function(
                  Iterable<
                      CopyWith$Fragment$MediaDetailed$stats$scoreDistribution<
                          Fragment$MediaDetailed$stats$scoreDistribution>?>?)
              _fn) =>
      call(
          scoreDistribution:
              _fn(_instance.scoreDistribution?.map((e) => e == null
                  ? null
                  : CopyWith$Fragment$MediaDetailed$stats$scoreDistribution(
                      e,
                      (i) => i,
                    )))?.toList());

  TRes statusDistribution(
          Iterable<Fragment$MediaDetailed$stats$statusDistribution?>? Function(
                  Iterable<
                      CopyWith$Fragment$MediaDetailed$stats$statusDistribution<
                          Fragment$MediaDetailed$stats$statusDistribution>?>?)
              _fn) =>
      call(
          statusDistribution:
              _fn(_instance.statusDistribution?.map((e) => e == null
                  ? null
                  : CopyWith$Fragment$MediaDetailed$stats$statusDistribution(
                      e,
                      (i) => i,
                    )))?.toList());
}

class _CopyWithStubImpl$Fragment$MediaDetailed$stats<TRes>
    implements CopyWith$Fragment$MediaDetailed$stats<TRes> {
  _CopyWithStubImpl$Fragment$MediaDetailed$stats(this._res);

  TRes _res;

  call({
    List<Fragment$MediaDetailed$stats$scoreDistribution?>? scoreDistribution,
    List<Fragment$MediaDetailed$stats$statusDistribution?>? statusDistribution,
    String? $__typename,
  }) =>
      _res;

  scoreDistribution(_fn) => _res;

  statusDistribution(_fn) => _res;
}

class Fragment$MediaDetailed$stats$scoreDistribution {
  Fragment$MediaDetailed$stats$scoreDistribution({
    this.amount,
    this.score,
    this.$__typename = 'ScoreDistribution',
  });

  factory Fragment$MediaDetailed$stats$scoreDistribution.fromJson(
      Map<String, dynamic> json) {
    final l$amount = json['amount'];
    final l$score = json['score'];
    final l$$__typename = json['__typename'];
    return Fragment$MediaDetailed$stats$scoreDistribution(
      amount: (l$amount as int?),
      score: (l$score as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final int? amount;

  final int? score;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$amount = amount;
    _resultData['amount'] = l$amount;
    final l$score = score;
    _resultData['score'] = l$score;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$amount = amount;
    final l$score = score;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$amount,
      l$score,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$MediaDetailed$stats$scoreDistribution) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$amount = amount;
    final lOther$amount = other.amount;
    if (l$amount != lOther$amount) {
      return false;
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

extension UtilityExtension$Fragment$MediaDetailed$stats$scoreDistribution
    on Fragment$MediaDetailed$stats$scoreDistribution {
  CopyWith$Fragment$MediaDetailed$stats$scoreDistribution<
          Fragment$MediaDetailed$stats$scoreDistribution>
      get copyWith => CopyWith$Fragment$MediaDetailed$stats$scoreDistribution(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$MediaDetailed$stats$scoreDistribution<TRes> {
  factory CopyWith$Fragment$MediaDetailed$stats$scoreDistribution(
    Fragment$MediaDetailed$stats$scoreDistribution instance,
    TRes Function(Fragment$MediaDetailed$stats$scoreDistribution) then,
  ) = _CopyWithImpl$Fragment$MediaDetailed$stats$scoreDistribution;

  factory CopyWith$Fragment$MediaDetailed$stats$scoreDistribution.stub(
          TRes res) =
      _CopyWithStubImpl$Fragment$MediaDetailed$stats$scoreDistribution;

  TRes call({
    int? amount,
    int? score,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$MediaDetailed$stats$scoreDistribution<TRes>
    implements CopyWith$Fragment$MediaDetailed$stats$scoreDistribution<TRes> {
  _CopyWithImpl$Fragment$MediaDetailed$stats$scoreDistribution(
    this._instance,
    this._then,
  );

  final Fragment$MediaDetailed$stats$scoreDistribution _instance;

  final TRes Function(Fragment$MediaDetailed$stats$scoreDistribution) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? amount = _undefined,
    Object? score = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$MediaDetailed$stats$scoreDistribution(
        amount: amount == _undefined ? _instance.amount : (amount as int?),
        score: score == _undefined ? _instance.score : (score as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$MediaDetailed$stats$scoreDistribution<TRes>
    implements CopyWith$Fragment$MediaDetailed$stats$scoreDistribution<TRes> {
  _CopyWithStubImpl$Fragment$MediaDetailed$stats$scoreDistribution(this._res);

  TRes _res;

  call({
    int? amount,
    int? score,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$MediaDetailed$stats$statusDistribution {
  Fragment$MediaDetailed$stats$statusDistribution({
    this.amount,
    this.status,
    this.$__typename = 'StatusDistribution',
  });

  factory Fragment$MediaDetailed$stats$statusDistribution.fromJson(
      Map<String, dynamic> json) {
    final l$amount = json['amount'];
    final l$status = json['status'];
    final l$$__typename = json['__typename'];
    return Fragment$MediaDetailed$stats$statusDistribution(
      amount: (l$amount as int?),
      status: l$status == null
          ? null
          : fromJson$Enum$MediaListStatus((l$status as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final int? amount;

  final Enum$MediaListStatus? status;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$amount = amount;
    _resultData['amount'] = l$amount;
    final l$status = status;
    _resultData['status'] =
        l$status == null ? null : toJson$Enum$MediaListStatus(l$status);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$amount = amount;
    final l$status = status;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$amount,
      l$status,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$MediaDetailed$stats$statusDistribution) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$amount = amount;
    final lOther$amount = other.amount;
    if (l$amount != lOther$amount) {
      return false;
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

extension UtilityExtension$Fragment$MediaDetailed$stats$statusDistribution
    on Fragment$MediaDetailed$stats$statusDistribution {
  CopyWith$Fragment$MediaDetailed$stats$statusDistribution<
          Fragment$MediaDetailed$stats$statusDistribution>
      get copyWith => CopyWith$Fragment$MediaDetailed$stats$statusDistribution(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$MediaDetailed$stats$statusDistribution<TRes> {
  factory CopyWith$Fragment$MediaDetailed$stats$statusDistribution(
    Fragment$MediaDetailed$stats$statusDistribution instance,
    TRes Function(Fragment$MediaDetailed$stats$statusDistribution) then,
  ) = _CopyWithImpl$Fragment$MediaDetailed$stats$statusDistribution;

  factory CopyWith$Fragment$MediaDetailed$stats$statusDistribution.stub(
          TRes res) =
      _CopyWithStubImpl$Fragment$MediaDetailed$stats$statusDistribution;

  TRes call({
    int? amount,
    Enum$MediaListStatus? status,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$MediaDetailed$stats$statusDistribution<TRes>
    implements CopyWith$Fragment$MediaDetailed$stats$statusDistribution<TRes> {
  _CopyWithImpl$Fragment$MediaDetailed$stats$statusDistribution(
    this._instance,
    this._then,
  );

  final Fragment$MediaDetailed$stats$statusDistribution _instance;

  final TRes Function(Fragment$MediaDetailed$stats$statusDistribution) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? amount = _undefined,
    Object? status = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$MediaDetailed$stats$statusDistribution(
        amount: amount == _undefined ? _instance.amount : (amount as int?),
        status: status == _undefined
            ? _instance.status
            : (status as Enum$MediaListStatus?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$MediaDetailed$stats$statusDistribution<TRes>
    implements CopyWith$Fragment$MediaDetailed$stats$statusDistribution<TRes> {
  _CopyWithStubImpl$Fragment$MediaDetailed$stats$statusDistribution(this._res);

  TRes _res;

  call({
    int? amount,
    Enum$MediaListStatus? status,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$MediaDetailed$title implements Fragment$MediaShort$title {
  Fragment$MediaDetailed$title({
    this.userPreferred,
    this.english,
    this.romaji,
    this.native,
    this.$__typename = 'MediaTitle',
  });

  factory Fragment$MediaDetailed$title.fromJson(Map<String, dynamic> json) {
    final l$userPreferred = json['userPreferred'];
    final l$english = json['english'];
    final l$romaji = json['romaji'];
    final l$native = json['native'];
    final l$$__typename = json['__typename'];
    return Fragment$MediaDetailed$title(
      userPreferred: (l$userPreferred as String?),
      english: (l$english as String?),
      romaji: (l$romaji as String?),
      native: (l$native as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? userPreferred;

  final String? english;

  final String? romaji;

  final String? native;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$userPreferred = userPreferred;
    _resultData['userPreferred'] = l$userPreferred;
    final l$english = english;
    _resultData['english'] = l$english;
    final l$romaji = romaji;
    _resultData['romaji'] = l$romaji;
    final l$native = native;
    _resultData['native'] = l$native;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$userPreferred = userPreferred;
    final l$english = english;
    final l$romaji = romaji;
    final l$native = native;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$userPreferred,
      l$english,
      l$romaji,
      l$native,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$MediaDetailed$title) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$userPreferred = userPreferred;
    final lOther$userPreferred = other.userPreferred;
    if (l$userPreferred != lOther$userPreferred) {
      return false;
    }
    final l$english = english;
    final lOther$english = other.english;
    if (l$english != lOther$english) {
      return false;
    }
    final l$romaji = romaji;
    final lOther$romaji = other.romaji;
    if (l$romaji != lOther$romaji) {
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

extension UtilityExtension$Fragment$MediaDetailed$title
    on Fragment$MediaDetailed$title {
  CopyWith$Fragment$MediaDetailed$title<Fragment$MediaDetailed$title>
      get copyWith => CopyWith$Fragment$MediaDetailed$title(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$MediaDetailed$title<TRes> {
  factory CopyWith$Fragment$MediaDetailed$title(
    Fragment$MediaDetailed$title instance,
    TRes Function(Fragment$MediaDetailed$title) then,
  ) = _CopyWithImpl$Fragment$MediaDetailed$title;

  factory CopyWith$Fragment$MediaDetailed$title.stub(TRes res) =
      _CopyWithStubImpl$Fragment$MediaDetailed$title;

  TRes call({
    String? userPreferred,
    String? english,
    String? romaji,
    String? native,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$MediaDetailed$title<TRes>
    implements CopyWith$Fragment$MediaDetailed$title<TRes> {
  _CopyWithImpl$Fragment$MediaDetailed$title(
    this._instance,
    this._then,
  );

  final Fragment$MediaDetailed$title _instance;

  final TRes Function(Fragment$MediaDetailed$title) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userPreferred = _undefined,
    Object? english = _undefined,
    Object? romaji = _undefined,
    Object? native = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$MediaDetailed$title(
        userPreferred: userPreferred == _undefined
            ? _instance.userPreferred
            : (userPreferred as String?),
        english:
            english == _undefined ? _instance.english : (english as String?),
        romaji: romaji == _undefined ? _instance.romaji : (romaji as String?),
        native: native == _undefined ? _instance.native : (native as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$MediaDetailed$title<TRes>
    implements CopyWith$Fragment$MediaDetailed$title<TRes> {
  _CopyWithStubImpl$Fragment$MediaDetailed$title(this._res);

  TRes _res;

  call({
    String? userPreferred,
    String? english,
    String? romaji,
    String? native,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$MediaDetailed$coverImage
    implements Fragment$MediaShort$coverImage {
  Fragment$MediaDetailed$coverImage({
    this.medium,
    this.large,
    this.extraLarge,
    this.$__typename = 'MediaCoverImage',
  });

  factory Fragment$MediaDetailed$coverImage.fromJson(
      Map<String, dynamic> json) {
    final l$medium = json['medium'];
    final l$large = json['large'];
    final l$extraLarge = json['extraLarge'];
    final l$$__typename = json['__typename'];
    return Fragment$MediaDetailed$coverImage(
      medium: (l$medium as String?),
      large: (l$large as String?),
      extraLarge: (l$extraLarge as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? medium;

  final String? large;

  final String? extraLarge;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$medium = medium;
    _resultData['medium'] = l$medium;
    final l$large = large;
    _resultData['large'] = l$large;
    final l$extraLarge = extraLarge;
    _resultData['extraLarge'] = l$extraLarge;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$medium = medium;
    final l$large = large;
    final l$extraLarge = extraLarge;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$medium,
      l$large,
      l$extraLarge,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$MediaDetailed$coverImage) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$medium = medium;
    final lOther$medium = other.medium;
    if (l$medium != lOther$medium) {
      return false;
    }
    final l$large = large;
    final lOther$large = other.large;
    if (l$large != lOther$large) {
      return false;
    }
    final l$extraLarge = extraLarge;
    final lOther$extraLarge = other.extraLarge;
    if (l$extraLarge != lOther$extraLarge) {
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

extension UtilityExtension$Fragment$MediaDetailed$coverImage
    on Fragment$MediaDetailed$coverImage {
  CopyWith$Fragment$MediaDetailed$coverImage<Fragment$MediaDetailed$coverImage>
      get copyWith => CopyWith$Fragment$MediaDetailed$coverImage(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$MediaDetailed$coverImage<TRes> {
  factory CopyWith$Fragment$MediaDetailed$coverImage(
    Fragment$MediaDetailed$coverImage instance,
    TRes Function(Fragment$MediaDetailed$coverImage) then,
  ) = _CopyWithImpl$Fragment$MediaDetailed$coverImage;

  factory CopyWith$Fragment$MediaDetailed$coverImage.stub(TRes res) =
      _CopyWithStubImpl$Fragment$MediaDetailed$coverImage;

  TRes call({
    String? medium,
    String? large,
    String? extraLarge,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$MediaDetailed$coverImage<TRes>
    implements CopyWith$Fragment$MediaDetailed$coverImage<TRes> {
  _CopyWithImpl$Fragment$MediaDetailed$coverImage(
    this._instance,
    this._then,
  );

  final Fragment$MediaDetailed$coverImage _instance;

  final TRes Function(Fragment$MediaDetailed$coverImage) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? medium = _undefined,
    Object? large = _undefined,
    Object? extraLarge = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$MediaDetailed$coverImage(
        medium: medium == _undefined ? _instance.medium : (medium as String?),
        large: large == _undefined ? _instance.large : (large as String?),
        extraLarge: extraLarge == _undefined
            ? _instance.extraLarge
            : (extraLarge as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$MediaDetailed$coverImage<TRes>
    implements CopyWith$Fragment$MediaDetailed$coverImage<TRes> {
  _CopyWithStubImpl$Fragment$MediaDetailed$coverImage(this._res);

  TRes _res;

  call({
    String? medium,
    String? large,
    String? extraLarge,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$MediaDetailed$airingSchedule
    implements Fragment$MediaShort$airingSchedule {
  Fragment$MediaDetailed$airingSchedule({
    this.nodes,
    this.$__typename = 'AiringScheduleConnection',
  });

  factory Fragment$MediaDetailed$airingSchedule.fromJson(
      Map<String, dynamic> json) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Fragment$MediaDetailed$airingSchedule(
      nodes: (l$nodes as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$MediaDetailed$airingSchedule$nodes.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$MediaDetailed$airingSchedule$nodes?>? nodes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$nodes = nodes;
    _resultData['nodes'] = l$nodes?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$nodes = nodes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$nodes == null ? null : Object.hashAll(l$nodes.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$MediaDetailed$airingSchedule) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$nodes = nodes;
    final lOther$nodes = other.nodes;
    if (l$nodes != null && lOther$nodes != null) {
      if (l$nodes.length != lOther$nodes.length) {
        return false;
      }
      for (int i = 0; i < l$nodes.length; i++) {
        final l$nodes$entry = l$nodes[i];
        final lOther$nodes$entry = lOther$nodes[i];
        if (l$nodes$entry != lOther$nodes$entry) {
          return false;
        }
      }
    } else if (l$nodes != lOther$nodes) {
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

extension UtilityExtension$Fragment$MediaDetailed$airingSchedule
    on Fragment$MediaDetailed$airingSchedule {
  CopyWith$Fragment$MediaDetailed$airingSchedule<
          Fragment$MediaDetailed$airingSchedule>
      get copyWith => CopyWith$Fragment$MediaDetailed$airingSchedule(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$MediaDetailed$airingSchedule<TRes> {
  factory CopyWith$Fragment$MediaDetailed$airingSchedule(
    Fragment$MediaDetailed$airingSchedule instance,
    TRes Function(Fragment$MediaDetailed$airingSchedule) then,
  ) = _CopyWithImpl$Fragment$MediaDetailed$airingSchedule;

  factory CopyWith$Fragment$MediaDetailed$airingSchedule.stub(TRes res) =
      _CopyWithStubImpl$Fragment$MediaDetailed$airingSchedule;

  TRes call({
    List<Fragment$MediaDetailed$airingSchedule$nodes?>? nodes,
    String? $__typename,
  });
  TRes nodes(
      Iterable<Fragment$MediaDetailed$airingSchedule$nodes?>? Function(
              Iterable<
                  CopyWith$Fragment$MediaDetailed$airingSchedule$nodes<
                      Fragment$MediaDetailed$airingSchedule$nodes>?>?)
          _fn);
}

class _CopyWithImpl$Fragment$MediaDetailed$airingSchedule<TRes>
    implements CopyWith$Fragment$MediaDetailed$airingSchedule<TRes> {
  _CopyWithImpl$Fragment$MediaDetailed$airingSchedule(
    this._instance,
    this._then,
  );

  final Fragment$MediaDetailed$airingSchedule _instance;

  final TRes Function(Fragment$MediaDetailed$airingSchedule) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$MediaDetailed$airingSchedule(
        nodes: nodes == _undefined
            ? _instance.nodes
            : (nodes as List<Fragment$MediaDetailed$airingSchedule$nodes?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes nodes(
          Iterable<Fragment$MediaDetailed$airingSchedule$nodes?>? Function(
                  Iterable<
                      CopyWith$Fragment$MediaDetailed$airingSchedule$nodes<
                          Fragment$MediaDetailed$airingSchedule$nodes>?>?)
              _fn) =>
      call(
          nodes: _fn(_instance.nodes?.map((e) => e == null
              ? null
              : CopyWith$Fragment$MediaDetailed$airingSchedule$nodes(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Fragment$MediaDetailed$airingSchedule<TRes>
    implements CopyWith$Fragment$MediaDetailed$airingSchedule<TRes> {
  _CopyWithStubImpl$Fragment$MediaDetailed$airingSchedule(this._res);

  TRes _res;

  call({
    List<Fragment$MediaDetailed$airingSchedule$nodes?>? nodes,
    String? $__typename,
  }) =>
      _res;

  nodes(_fn) => _res;
}

class Fragment$MediaDetailed$airingSchedule$nodes
    implements Fragment$MediaShort$airingSchedule$nodes {
  Fragment$MediaDetailed$airingSchedule$nodes({
    required this.timeUntilAiring,
    required this.episode,
    this.$__typename = 'AiringSchedule',
  });

  factory Fragment$MediaDetailed$airingSchedule$nodes.fromJson(
      Map<String, dynamic> json) {
    final l$timeUntilAiring = json['timeUntilAiring'];
    final l$episode = json['episode'];
    final l$$__typename = json['__typename'];
    return Fragment$MediaDetailed$airingSchedule$nodes(
      timeUntilAiring: (l$timeUntilAiring as int),
      episode: (l$episode as int),
      $__typename: (l$$__typename as String),
    );
  }

  final int timeUntilAiring;

  final int episode;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$timeUntilAiring = timeUntilAiring;
    _resultData['timeUntilAiring'] = l$timeUntilAiring;
    final l$episode = episode;
    _resultData['episode'] = l$episode;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$timeUntilAiring = timeUntilAiring;
    final l$episode = episode;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$timeUntilAiring,
      l$episode,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$MediaDetailed$airingSchedule$nodes) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$timeUntilAiring = timeUntilAiring;
    final lOther$timeUntilAiring = other.timeUntilAiring;
    if (l$timeUntilAiring != lOther$timeUntilAiring) {
      return false;
    }
    final l$episode = episode;
    final lOther$episode = other.episode;
    if (l$episode != lOther$episode) {
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

extension UtilityExtension$Fragment$MediaDetailed$airingSchedule$nodes
    on Fragment$MediaDetailed$airingSchedule$nodes {
  CopyWith$Fragment$MediaDetailed$airingSchedule$nodes<
          Fragment$MediaDetailed$airingSchedule$nodes>
      get copyWith => CopyWith$Fragment$MediaDetailed$airingSchedule$nodes(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$MediaDetailed$airingSchedule$nodes<TRes> {
  factory CopyWith$Fragment$MediaDetailed$airingSchedule$nodes(
    Fragment$MediaDetailed$airingSchedule$nodes instance,
    TRes Function(Fragment$MediaDetailed$airingSchedule$nodes) then,
  ) = _CopyWithImpl$Fragment$MediaDetailed$airingSchedule$nodes;

  factory CopyWith$Fragment$MediaDetailed$airingSchedule$nodes.stub(TRes res) =
      _CopyWithStubImpl$Fragment$MediaDetailed$airingSchedule$nodes;

  TRes call({
    int? timeUntilAiring,
    int? episode,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$MediaDetailed$airingSchedule$nodes<TRes>
    implements CopyWith$Fragment$MediaDetailed$airingSchedule$nodes<TRes> {
  _CopyWithImpl$Fragment$MediaDetailed$airingSchedule$nodes(
    this._instance,
    this._then,
  );

  final Fragment$MediaDetailed$airingSchedule$nodes _instance;

  final TRes Function(Fragment$MediaDetailed$airingSchedule$nodes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? timeUntilAiring = _undefined,
    Object? episode = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$MediaDetailed$airingSchedule$nodes(
        timeUntilAiring:
            timeUntilAiring == _undefined || timeUntilAiring == null
                ? _instance.timeUntilAiring
                : (timeUntilAiring as int),
        episode: episode == _undefined || episode == null
            ? _instance.episode
            : (episode as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$MediaDetailed$airingSchedule$nodes<TRes>
    implements CopyWith$Fragment$MediaDetailed$airingSchedule$nodes<TRes> {
  _CopyWithStubImpl$Fragment$MediaDetailed$airingSchedule$nodes(this._res);

  TRes _res;

  call({
    int? timeUntilAiring,
    int? episode,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$MediaDetailed$mediaListEntry
    implements Fragment$MediaShort$mediaListEntry {
  Fragment$MediaDetailed$mediaListEntry({
    required this.id,
    this.status,
    this.$__typename = 'MediaList',
  });

  factory Fragment$MediaDetailed$mediaListEntry.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$status = json['status'];
    final l$$__typename = json['__typename'];
    return Fragment$MediaDetailed$mediaListEntry(
      id: (l$id as int),
      status: l$status == null
          ? null
          : fromJson$Enum$MediaListStatus((l$status as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final Enum$MediaListStatus? status;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$status = status;
    _resultData['status'] =
        l$status == null ? null : toJson$Enum$MediaListStatus(l$status);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$status = status;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$status,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$MediaDetailed$mediaListEntry) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
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

extension UtilityExtension$Fragment$MediaDetailed$mediaListEntry
    on Fragment$MediaDetailed$mediaListEntry {
  CopyWith$Fragment$MediaDetailed$mediaListEntry<
          Fragment$MediaDetailed$mediaListEntry>
      get copyWith => CopyWith$Fragment$MediaDetailed$mediaListEntry(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$MediaDetailed$mediaListEntry<TRes> {
  factory CopyWith$Fragment$MediaDetailed$mediaListEntry(
    Fragment$MediaDetailed$mediaListEntry instance,
    TRes Function(Fragment$MediaDetailed$mediaListEntry) then,
  ) = _CopyWithImpl$Fragment$MediaDetailed$mediaListEntry;

  factory CopyWith$Fragment$MediaDetailed$mediaListEntry.stub(TRes res) =
      _CopyWithStubImpl$Fragment$MediaDetailed$mediaListEntry;

  TRes call({
    int? id,
    Enum$MediaListStatus? status,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$MediaDetailed$mediaListEntry<TRes>
    implements CopyWith$Fragment$MediaDetailed$mediaListEntry<TRes> {
  _CopyWithImpl$Fragment$MediaDetailed$mediaListEntry(
    this._instance,
    this._then,
  );

  final Fragment$MediaDetailed$mediaListEntry _instance;

  final TRes Function(Fragment$MediaDetailed$mediaListEntry) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? status = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$MediaDetailed$mediaListEntry(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        status: status == _undefined
            ? _instance.status
            : (status as Enum$MediaListStatus?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$MediaDetailed$mediaListEntry<TRes>
    implements CopyWith$Fragment$MediaDetailed$mediaListEntry<TRes> {
  _CopyWithStubImpl$Fragment$MediaDetailed$mediaListEntry(this._res);

  TRes _res;

  call({
    int? id,
    Enum$MediaListStatus? status,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$MediaShort {
  Fragment$MediaShort({
    required this.id,
    this.title,
    this.coverImage,
    this.meanScore,
    this.favourites,
    this.format,
    this.type,
    this.episodes,
    this.chapters,
    this.status,
    this.airingSchedule,
    this.genres,
    this.season,
    this.seasonYear,
    this.startDate,
    this.endDate,
    this.mediaListEntry,
    this.$__typename = 'Media',
  });

  factory Fragment$MediaShort.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$coverImage = json['coverImage'];
    final l$meanScore = json['meanScore'];
    final l$favourites = json['favourites'];
    final l$format = json['format'];
    final l$type = json['type'];
    final l$episodes = json['episodes'];
    final l$chapters = json['chapters'];
    final l$status = json['status'];
    final l$airingSchedule = json['airingSchedule'];
    final l$genres = json['genres'];
    final l$season = json['season'];
    final l$seasonYear = json['seasonYear'];
    final l$startDate = json['startDate'];
    final l$endDate = json['endDate'];
    final l$mediaListEntry = json['mediaListEntry'];
    final l$$__typename = json['__typename'];
    return Fragment$MediaShort(
      id: (l$id as int),
      title: l$title == null
          ? null
          : Fragment$MediaShort$title.fromJson(
              (l$title as Map<String, dynamic>)),
      coverImage: l$coverImage == null
          ? null
          : Fragment$MediaShort$coverImage.fromJson(
              (l$coverImage as Map<String, dynamic>)),
      meanScore: (l$meanScore as int?),
      favourites: (l$favourites as int?),
      format: l$format == null
          ? null
          : fromJson$Enum$MediaFormat((l$format as String)),
      type: l$type == null ? null : fromJson$Enum$MediaType((l$type as String)),
      episodes: (l$episodes as int?),
      chapters: (l$chapters as int?),
      status: l$status == null
          ? null
          : fromJson$Enum$MediaStatus((l$status as String)),
      airingSchedule: l$airingSchedule == null
          ? null
          : Fragment$MediaShort$airingSchedule.fromJson(
              (l$airingSchedule as Map<String, dynamic>)),
      genres: (l$genres as List<dynamic>?)?.map((e) => (e as String?)).toList(),
      season: l$season == null
          ? null
          : fromJson$Enum$MediaSeason((l$season as String)),
      seasonYear: (l$seasonYear as int?),
      startDate: l$startDate == null
          ? null
          : Fragment$FuzzyDate.fromJson((l$startDate as Map<String, dynamic>)),
      endDate: l$endDate == null
          ? null
          : Fragment$FuzzyDate.fromJson((l$endDate as Map<String, dynamic>)),
      mediaListEntry: l$mediaListEntry == null
          ? null
          : Fragment$MediaShort$mediaListEntry.fromJson(
              (l$mediaListEntry as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final Fragment$MediaShort$title? title;

  final Fragment$MediaShort$coverImage? coverImage;

  final int? meanScore;

  final int? favourites;

  final Enum$MediaFormat? format;

  final Enum$MediaType? type;

  final int? episodes;

  final int? chapters;

  final Enum$MediaStatus? status;

  final Fragment$MediaShort$airingSchedule? airingSchedule;

  final List<String?>? genres;

  final Enum$MediaSeason? season;

  final int? seasonYear;

  final Fragment$FuzzyDate? startDate;

  final Fragment$FuzzyDate? endDate;

  final Fragment$MediaShort$mediaListEntry? mediaListEntry;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$title = title;
    _resultData['title'] = l$title?.toJson();
    final l$coverImage = coverImage;
    _resultData['coverImage'] = l$coverImage?.toJson();
    final l$meanScore = meanScore;
    _resultData['meanScore'] = l$meanScore;
    final l$favourites = favourites;
    _resultData['favourites'] = l$favourites;
    final l$format = format;
    _resultData['format'] =
        l$format == null ? null : toJson$Enum$MediaFormat(l$format);
    final l$type = type;
    _resultData['type'] = l$type == null ? null : toJson$Enum$MediaType(l$type);
    final l$episodes = episodes;
    _resultData['episodes'] = l$episodes;
    final l$chapters = chapters;
    _resultData['chapters'] = l$chapters;
    final l$status = status;
    _resultData['status'] =
        l$status == null ? null : toJson$Enum$MediaStatus(l$status);
    final l$airingSchedule = airingSchedule;
    _resultData['airingSchedule'] = l$airingSchedule?.toJson();
    final l$genres = genres;
    _resultData['genres'] = l$genres?.map((e) => e).toList();
    final l$season = season;
    _resultData['season'] =
        l$season == null ? null : toJson$Enum$MediaSeason(l$season);
    final l$seasonYear = seasonYear;
    _resultData['seasonYear'] = l$seasonYear;
    final l$startDate = startDate;
    _resultData['startDate'] = l$startDate?.toJson();
    final l$endDate = endDate;
    _resultData['endDate'] = l$endDate?.toJson();
    final l$mediaListEntry = mediaListEntry;
    _resultData['mediaListEntry'] = l$mediaListEntry?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$title = title;
    final l$coverImage = coverImage;
    final l$meanScore = meanScore;
    final l$favourites = favourites;
    final l$format = format;
    final l$type = type;
    final l$episodes = episodes;
    final l$chapters = chapters;
    final l$status = status;
    final l$airingSchedule = airingSchedule;
    final l$genres = genres;
    final l$season = season;
    final l$seasonYear = seasonYear;
    final l$startDate = startDate;
    final l$endDate = endDate;
    final l$mediaListEntry = mediaListEntry;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$title,
      l$coverImage,
      l$meanScore,
      l$favourites,
      l$format,
      l$type,
      l$episodes,
      l$chapters,
      l$status,
      l$airingSchedule,
      l$genres == null ? null : Object.hashAll(l$genres.map((v) => v)),
      l$season,
      l$seasonYear,
      l$startDate,
      l$endDate,
      l$mediaListEntry,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$MediaShort) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
      return false;
    }
    final l$coverImage = coverImage;
    final lOther$coverImage = other.coverImage;
    if (l$coverImage != lOther$coverImage) {
      return false;
    }
    final l$meanScore = meanScore;
    final lOther$meanScore = other.meanScore;
    if (l$meanScore != lOther$meanScore) {
      return false;
    }
    final l$favourites = favourites;
    final lOther$favourites = other.favourites;
    if (l$favourites != lOther$favourites) {
      return false;
    }
    final l$format = format;
    final lOther$format = other.format;
    if (l$format != lOther$format) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$episodes = episodes;
    final lOther$episodes = other.episodes;
    if (l$episodes != lOther$episodes) {
      return false;
    }
    final l$chapters = chapters;
    final lOther$chapters = other.chapters;
    if (l$chapters != lOther$chapters) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
      return false;
    }
    final l$airingSchedule = airingSchedule;
    final lOther$airingSchedule = other.airingSchedule;
    if (l$airingSchedule != lOther$airingSchedule) {
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
    final l$season = season;
    final lOther$season = other.season;
    if (l$season != lOther$season) {
      return false;
    }
    final l$seasonYear = seasonYear;
    final lOther$seasonYear = other.seasonYear;
    if (l$seasonYear != lOther$seasonYear) {
      return false;
    }
    final l$startDate = startDate;
    final lOther$startDate = other.startDate;
    if (l$startDate != lOther$startDate) {
      return false;
    }
    final l$endDate = endDate;
    final lOther$endDate = other.endDate;
    if (l$endDate != lOther$endDate) {
      return false;
    }
    final l$mediaListEntry = mediaListEntry;
    final lOther$mediaListEntry = other.mediaListEntry;
    if (l$mediaListEntry != lOther$mediaListEntry) {
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

extension UtilityExtension$Fragment$MediaShort on Fragment$MediaShort {
  CopyWith$Fragment$MediaShort<Fragment$MediaShort> get copyWith =>
      CopyWith$Fragment$MediaShort(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$MediaShort<TRes> {
  factory CopyWith$Fragment$MediaShort(
    Fragment$MediaShort instance,
    TRes Function(Fragment$MediaShort) then,
  ) = _CopyWithImpl$Fragment$MediaShort;

  factory CopyWith$Fragment$MediaShort.stub(TRes res) =
      _CopyWithStubImpl$Fragment$MediaShort;

  TRes call({
    int? id,
    Fragment$MediaShort$title? title,
    Fragment$MediaShort$coverImage? coverImage,
    int? meanScore,
    int? favourites,
    Enum$MediaFormat? format,
    Enum$MediaType? type,
    int? episodes,
    int? chapters,
    Enum$MediaStatus? status,
    Fragment$MediaShort$airingSchedule? airingSchedule,
    List<String?>? genres,
    Enum$MediaSeason? season,
    int? seasonYear,
    Fragment$FuzzyDate? startDate,
    Fragment$FuzzyDate? endDate,
    Fragment$MediaShort$mediaListEntry? mediaListEntry,
    String? $__typename,
  });
  CopyWith$Fragment$MediaShort$title<TRes> get title;
  CopyWith$Fragment$MediaShort$coverImage<TRes> get coverImage;
  CopyWith$Fragment$MediaShort$airingSchedule<TRes> get airingSchedule;
  CopyWith$Fragment$FuzzyDate<TRes> get startDate;
  CopyWith$Fragment$FuzzyDate<TRes> get endDate;
  CopyWith$Fragment$MediaShort$mediaListEntry<TRes> get mediaListEntry;
}

class _CopyWithImpl$Fragment$MediaShort<TRes>
    implements CopyWith$Fragment$MediaShort<TRes> {
  _CopyWithImpl$Fragment$MediaShort(
    this._instance,
    this._then,
  );

  final Fragment$MediaShort _instance;

  final TRes Function(Fragment$MediaShort) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? coverImage = _undefined,
    Object? meanScore = _undefined,
    Object? favourites = _undefined,
    Object? format = _undefined,
    Object? type = _undefined,
    Object? episodes = _undefined,
    Object? chapters = _undefined,
    Object? status = _undefined,
    Object? airingSchedule = _undefined,
    Object? genres = _undefined,
    Object? season = _undefined,
    Object? seasonYear = _undefined,
    Object? startDate = _undefined,
    Object? endDate = _undefined,
    Object? mediaListEntry = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$MediaShort(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        title: title == _undefined
            ? _instance.title
            : (title as Fragment$MediaShort$title?),
        coverImage: coverImage == _undefined
            ? _instance.coverImage
            : (coverImage as Fragment$MediaShort$coverImage?),
        meanScore:
            meanScore == _undefined ? _instance.meanScore : (meanScore as int?),
        favourites: favourites == _undefined
            ? _instance.favourites
            : (favourites as int?),
        format: format == _undefined
            ? _instance.format
            : (format as Enum$MediaFormat?),
        type: type == _undefined ? _instance.type : (type as Enum$MediaType?),
        episodes:
            episodes == _undefined ? _instance.episodes : (episodes as int?),
        chapters:
            chapters == _undefined ? _instance.chapters : (chapters as int?),
        status: status == _undefined
            ? _instance.status
            : (status as Enum$MediaStatus?),
        airingSchedule: airingSchedule == _undefined
            ? _instance.airingSchedule
            : (airingSchedule as Fragment$MediaShort$airingSchedule?),
        genres: genres == _undefined
            ? _instance.genres
            : (genres as List<String?>?),
        season: season == _undefined
            ? _instance.season
            : (season as Enum$MediaSeason?),
        seasonYear: seasonYear == _undefined
            ? _instance.seasonYear
            : (seasonYear as int?),
        startDate: startDate == _undefined
            ? _instance.startDate
            : (startDate as Fragment$FuzzyDate?),
        endDate: endDate == _undefined
            ? _instance.endDate
            : (endDate as Fragment$FuzzyDate?),
        mediaListEntry: mediaListEntry == _undefined
            ? _instance.mediaListEntry
            : (mediaListEntry as Fragment$MediaShort$mediaListEntry?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$MediaShort$title<TRes> get title {
    final local$title = _instance.title;
    return local$title == null
        ? CopyWith$Fragment$MediaShort$title.stub(_then(_instance))
        : CopyWith$Fragment$MediaShort$title(
            local$title, (e) => call(title: e));
  }

  CopyWith$Fragment$MediaShort$coverImage<TRes> get coverImage {
    final local$coverImage = _instance.coverImage;
    return local$coverImage == null
        ? CopyWith$Fragment$MediaShort$coverImage.stub(_then(_instance))
        : CopyWith$Fragment$MediaShort$coverImage(
            local$coverImage, (e) => call(coverImage: e));
  }

  CopyWith$Fragment$MediaShort$airingSchedule<TRes> get airingSchedule {
    final local$airingSchedule = _instance.airingSchedule;
    return local$airingSchedule == null
        ? CopyWith$Fragment$MediaShort$airingSchedule.stub(_then(_instance))
        : CopyWith$Fragment$MediaShort$airingSchedule(
            local$airingSchedule, (e) => call(airingSchedule: e));
  }

  CopyWith$Fragment$FuzzyDate<TRes> get startDate {
    final local$startDate = _instance.startDate;
    return local$startDate == null
        ? CopyWith$Fragment$FuzzyDate.stub(_then(_instance))
        : CopyWith$Fragment$FuzzyDate(
            local$startDate, (e) => call(startDate: e));
  }

  CopyWith$Fragment$FuzzyDate<TRes> get endDate {
    final local$endDate = _instance.endDate;
    return local$endDate == null
        ? CopyWith$Fragment$FuzzyDate.stub(_then(_instance))
        : CopyWith$Fragment$FuzzyDate(local$endDate, (e) => call(endDate: e));
  }

  CopyWith$Fragment$MediaShort$mediaListEntry<TRes> get mediaListEntry {
    final local$mediaListEntry = _instance.mediaListEntry;
    return local$mediaListEntry == null
        ? CopyWith$Fragment$MediaShort$mediaListEntry.stub(_then(_instance))
        : CopyWith$Fragment$MediaShort$mediaListEntry(
            local$mediaListEntry, (e) => call(mediaListEntry: e));
  }
}

class _CopyWithStubImpl$Fragment$MediaShort<TRes>
    implements CopyWith$Fragment$MediaShort<TRes> {
  _CopyWithStubImpl$Fragment$MediaShort(this._res);

  TRes _res;

  call({
    int? id,
    Fragment$MediaShort$title? title,
    Fragment$MediaShort$coverImage? coverImage,
    int? meanScore,
    int? favourites,
    Enum$MediaFormat? format,
    Enum$MediaType? type,
    int? episodes,
    int? chapters,
    Enum$MediaStatus? status,
    Fragment$MediaShort$airingSchedule? airingSchedule,
    List<String?>? genres,
    Enum$MediaSeason? season,
    int? seasonYear,
    Fragment$FuzzyDate? startDate,
    Fragment$FuzzyDate? endDate,
    Fragment$MediaShort$mediaListEntry? mediaListEntry,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$MediaShort$title<TRes> get title =>
      CopyWith$Fragment$MediaShort$title.stub(_res);

  CopyWith$Fragment$MediaShort$coverImage<TRes> get coverImage =>
      CopyWith$Fragment$MediaShort$coverImage.stub(_res);

  CopyWith$Fragment$MediaShort$airingSchedule<TRes> get airingSchedule =>
      CopyWith$Fragment$MediaShort$airingSchedule.stub(_res);

  CopyWith$Fragment$FuzzyDate<TRes> get startDate =>
      CopyWith$Fragment$FuzzyDate.stub(_res);

  CopyWith$Fragment$FuzzyDate<TRes> get endDate =>
      CopyWith$Fragment$FuzzyDate.stub(_res);

  CopyWith$Fragment$MediaShort$mediaListEntry<TRes> get mediaListEntry =>
      CopyWith$Fragment$MediaShort$mediaListEntry.stub(_res);
}

const fragmentDefinitionMediaShort = FragmentDefinitionNode(
  name: NameNode(value: 'MediaShort'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Media'),
    isNonNull: false,
  )),
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
      name: NameNode(value: 'title'),
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
          name: NameNode(value: 'english'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'romaji'),
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
      name: NameNode(value: 'coverImage'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
          name: NameNode(value: 'medium'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'large'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'extraLarge'),
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
      name: NameNode(value: 'meanScore'),
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
      name: NameNode(value: 'format'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'type'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'episodes'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'chapters'),
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
      name: NameNode(value: 'airingSchedule'),
      alias: null,
      arguments: [
        ArgumentNode(
          name: NameNode(value: 'notYetAired'),
          value: BooleanValueNode(value: true),
        ),
        ArgumentNode(
          name: NameNode(value: 'perPage'),
          value: IntValueNode(value: '1'),
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
          name: NameNode(value: 'nodes'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: SelectionSetNode(selections: [
            FieldNode(
              name: NameNode(value: 'timeUntilAiring'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'episode'),
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
      name: NameNode(value: 'genres'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'season'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'seasonYear'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'startDate'),
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
      name: NameNode(value: 'endDate'),
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
      name: NameNode(value: 'mediaListEntry'),
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
      name: NameNode(value: '__typename'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
  ]),
);
const documentNodeFragmentMediaShort = DocumentNode(definitions: [
  fragmentDefinitionMediaShort,
  fragmentDefinitionFuzzyDate,
]);

extension ClientExtension$Fragment$MediaShort on graphql.GraphQLClient {
  void writeFragment$MediaShort({
    required Fragment$MediaShort data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'MediaShort',
            document: documentNodeFragmentMediaShort,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$MediaShort? readFragment$MediaShort({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'MediaShort',
          document: documentNodeFragmentMediaShort,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$MediaShort.fromJson(result);
  }
}

class Fragment$MediaShort$title {
  Fragment$MediaShort$title({
    this.userPreferred,
    this.english,
    this.romaji,
    this.native,
    this.$__typename = 'MediaTitle',
  });

  factory Fragment$MediaShort$title.fromJson(Map<String, dynamic> json) {
    final l$userPreferred = json['userPreferred'];
    final l$english = json['english'];
    final l$romaji = json['romaji'];
    final l$native = json['native'];
    final l$$__typename = json['__typename'];
    return Fragment$MediaShort$title(
      userPreferred: (l$userPreferred as String?),
      english: (l$english as String?),
      romaji: (l$romaji as String?),
      native: (l$native as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? userPreferred;

  final String? english;

  final String? romaji;

  final String? native;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$userPreferred = userPreferred;
    _resultData['userPreferred'] = l$userPreferred;
    final l$english = english;
    _resultData['english'] = l$english;
    final l$romaji = romaji;
    _resultData['romaji'] = l$romaji;
    final l$native = native;
    _resultData['native'] = l$native;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$userPreferred = userPreferred;
    final l$english = english;
    final l$romaji = romaji;
    final l$native = native;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$userPreferred,
      l$english,
      l$romaji,
      l$native,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$MediaShort$title) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$userPreferred = userPreferred;
    final lOther$userPreferred = other.userPreferred;
    if (l$userPreferred != lOther$userPreferred) {
      return false;
    }
    final l$english = english;
    final lOther$english = other.english;
    if (l$english != lOther$english) {
      return false;
    }
    final l$romaji = romaji;
    final lOther$romaji = other.romaji;
    if (l$romaji != lOther$romaji) {
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

extension UtilityExtension$Fragment$MediaShort$title
    on Fragment$MediaShort$title {
  CopyWith$Fragment$MediaShort$title<Fragment$MediaShort$title> get copyWith =>
      CopyWith$Fragment$MediaShort$title(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$MediaShort$title<TRes> {
  factory CopyWith$Fragment$MediaShort$title(
    Fragment$MediaShort$title instance,
    TRes Function(Fragment$MediaShort$title) then,
  ) = _CopyWithImpl$Fragment$MediaShort$title;

  factory CopyWith$Fragment$MediaShort$title.stub(TRes res) =
      _CopyWithStubImpl$Fragment$MediaShort$title;

  TRes call({
    String? userPreferred,
    String? english,
    String? romaji,
    String? native,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$MediaShort$title<TRes>
    implements CopyWith$Fragment$MediaShort$title<TRes> {
  _CopyWithImpl$Fragment$MediaShort$title(
    this._instance,
    this._then,
  );

  final Fragment$MediaShort$title _instance;

  final TRes Function(Fragment$MediaShort$title) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userPreferred = _undefined,
    Object? english = _undefined,
    Object? romaji = _undefined,
    Object? native = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$MediaShort$title(
        userPreferred: userPreferred == _undefined
            ? _instance.userPreferred
            : (userPreferred as String?),
        english:
            english == _undefined ? _instance.english : (english as String?),
        romaji: romaji == _undefined ? _instance.romaji : (romaji as String?),
        native: native == _undefined ? _instance.native : (native as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$MediaShort$title<TRes>
    implements CopyWith$Fragment$MediaShort$title<TRes> {
  _CopyWithStubImpl$Fragment$MediaShort$title(this._res);

  TRes _res;

  call({
    String? userPreferred,
    String? english,
    String? romaji,
    String? native,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$MediaShort$coverImage {
  Fragment$MediaShort$coverImage({
    this.medium,
    this.large,
    this.extraLarge,
    this.$__typename = 'MediaCoverImage',
  });

  factory Fragment$MediaShort$coverImage.fromJson(Map<String, dynamic> json) {
    final l$medium = json['medium'];
    final l$large = json['large'];
    final l$extraLarge = json['extraLarge'];
    final l$$__typename = json['__typename'];
    return Fragment$MediaShort$coverImage(
      medium: (l$medium as String?),
      large: (l$large as String?),
      extraLarge: (l$extraLarge as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? medium;

  final String? large;

  final String? extraLarge;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$medium = medium;
    _resultData['medium'] = l$medium;
    final l$large = large;
    _resultData['large'] = l$large;
    final l$extraLarge = extraLarge;
    _resultData['extraLarge'] = l$extraLarge;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$medium = medium;
    final l$large = large;
    final l$extraLarge = extraLarge;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$medium,
      l$large,
      l$extraLarge,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$MediaShort$coverImage) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$medium = medium;
    final lOther$medium = other.medium;
    if (l$medium != lOther$medium) {
      return false;
    }
    final l$large = large;
    final lOther$large = other.large;
    if (l$large != lOther$large) {
      return false;
    }
    final l$extraLarge = extraLarge;
    final lOther$extraLarge = other.extraLarge;
    if (l$extraLarge != lOther$extraLarge) {
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

extension UtilityExtension$Fragment$MediaShort$coverImage
    on Fragment$MediaShort$coverImage {
  CopyWith$Fragment$MediaShort$coverImage<Fragment$MediaShort$coverImage>
      get copyWith => CopyWith$Fragment$MediaShort$coverImage(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$MediaShort$coverImage<TRes> {
  factory CopyWith$Fragment$MediaShort$coverImage(
    Fragment$MediaShort$coverImage instance,
    TRes Function(Fragment$MediaShort$coverImage) then,
  ) = _CopyWithImpl$Fragment$MediaShort$coverImage;

  factory CopyWith$Fragment$MediaShort$coverImage.stub(TRes res) =
      _CopyWithStubImpl$Fragment$MediaShort$coverImage;

  TRes call({
    String? medium,
    String? large,
    String? extraLarge,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$MediaShort$coverImage<TRes>
    implements CopyWith$Fragment$MediaShort$coverImage<TRes> {
  _CopyWithImpl$Fragment$MediaShort$coverImage(
    this._instance,
    this._then,
  );

  final Fragment$MediaShort$coverImage _instance;

  final TRes Function(Fragment$MediaShort$coverImage) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? medium = _undefined,
    Object? large = _undefined,
    Object? extraLarge = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$MediaShort$coverImage(
        medium: medium == _undefined ? _instance.medium : (medium as String?),
        large: large == _undefined ? _instance.large : (large as String?),
        extraLarge: extraLarge == _undefined
            ? _instance.extraLarge
            : (extraLarge as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$MediaShort$coverImage<TRes>
    implements CopyWith$Fragment$MediaShort$coverImage<TRes> {
  _CopyWithStubImpl$Fragment$MediaShort$coverImage(this._res);

  TRes _res;

  call({
    String? medium,
    String? large,
    String? extraLarge,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$MediaShort$airingSchedule {
  Fragment$MediaShort$airingSchedule({
    this.nodes,
    this.$__typename = 'AiringScheduleConnection',
  });

  factory Fragment$MediaShort$airingSchedule.fromJson(
      Map<String, dynamic> json) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Fragment$MediaShort$airingSchedule(
      nodes: (l$nodes as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$MediaShort$airingSchedule$nodes.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$MediaShort$airingSchedule$nodes?>? nodes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$nodes = nodes;
    _resultData['nodes'] = l$nodes?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$nodes = nodes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$nodes == null ? null : Object.hashAll(l$nodes.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$MediaShort$airingSchedule) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$nodes = nodes;
    final lOther$nodes = other.nodes;
    if (l$nodes != null && lOther$nodes != null) {
      if (l$nodes.length != lOther$nodes.length) {
        return false;
      }
      for (int i = 0; i < l$nodes.length; i++) {
        final l$nodes$entry = l$nodes[i];
        final lOther$nodes$entry = lOther$nodes[i];
        if (l$nodes$entry != lOther$nodes$entry) {
          return false;
        }
      }
    } else if (l$nodes != lOther$nodes) {
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

extension UtilityExtension$Fragment$MediaShort$airingSchedule
    on Fragment$MediaShort$airingSchedule {
  CopyWith$Fragment$MediaShort$airingSchedule<
          Fragment$MediaShort$airingSchedule>
      get copyWith => CopyWith$Fragment$MediaShort$airingSchedule(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$MediaShort$airingSchedule<TRes> {
  factory CopyWith$Fragment$MediaShort$airingSchedule(
    Fragment$MediaShort$airingSchedule instance,
    TRes Function(Fragment$MediaShort$airingSchedule) then,
  ) = _CopyWithImpl$Fragment$MediaShort$airingSchedule;

  factory CopyWith$Fragment$MediaShort$airingSchedule.stub(TRes res) =
      _CopyWithStubImpl$Fragment$MediaShort$airingSchedule;

  TRes call({
    List<Fragment$MediaShort$airingSchedule$nodes?>? nodes,
    String? $__typename,
  });
  TRes nodes(
      Iterable<Fragment$MediaShort$airingSchedule$nodes?>? Function(
              Iterable<
                  CopyWith$Fragment$MediaShort$airingSchedule$nodes<
                      Fragment$MediaShort$airingSchedule$nodes>?>?)
          _fn);
}

class _CopyWithImpl$Fragment$MediaShort$airingSchedule<TRes>
    implements CopyWith$Fragment$MediaShort$airingSchedule<TRes> {
  _CopyWithImpl$Fragment$MediaShort$airingSchedule(
    this._instance,
    this._then,
  );

  final Fragment$MediaShort$airingSchedule _instance;

  final TRes Function(Fragment$MediaShort$airingSchedule) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$MediaShort$airingSchedule(
        nodes: nodes == _undefined
            ? _instance.nodes
            : (nodes as List<Fragment$MediaShort$airingSchedule$nodes?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes nodes(
          Iterable<Fragment$MediaShort$airingSchedule$nodes?>? Function(
                  Iterable<
                      CopyWith$Fragment$MediaShort$airingSchedule$nodes<
                          Fragment$MediaShort$airingSchedule$nodes>?>?)
              _fn) =>
      call(
          nodes: _fn(_instance.nodes?.map((e) => e == null
              ? null
              : CopyWith$Fragment$MediaShort$airingSchedule$nodes(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Fragment$MediaShort$airingSchedule<TRes>
    implements CopyWith$Fragment$MediaShort$airingSchedule<TRes> {
  _CopyWithStubImpl$Fragment$MediaShort$airingSchedule(this._res);

  TRes _res;

  call({
    List<Fragment$MediaShort$airingSchedule$nodes?>? nodes,
    String? $__typename,
  }) =>
      _res;

  nodes(_fn) => _res;
}

class Fragment$MediaShort$airingSchedule$nodes {
  Fragment$MediaShort$airingSchedule$nodes({
    required this.timeUntilAiring,
    required this.episode,
    this.$__typename = 'AiringSchedule',
  });

  factory Fragment$MediaShort$airingSchedule$nodes.fromJson(
      Map<String, dynamic> json) {
    final l$timeUntilAiring = json['timeUntilAiring'];
    final l$episode = json['episode'];
    final l$$__typename = json['__typename'];
    return Fragment$MediaShort$airingSchedule$nodes(
      timeUntilAiring: (l$timeUntilAiring as int),
      episode: (l$episode as int),
      $__typename: (l$$__typename as String),
    );
  }

  final int timeUntilAiring;

  final int episode;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$timeUntilAiring = timeUntilAiring;
    _resultData['timeUntilAiring'] = l$timeUntilAiring;
    final l$episode = episode;
    _resultData['episode'] = l$episode;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$timeUntilAiring = timeUntilAiring;
    final l$episode = episode;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$timeUntilAiring,
      l$episode,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$MediaShort$airingSchedule$nodes) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$timeUntilAiring = timeUntilAiring;
    final lOther$timeUntilAiring = other.timeUntilAiring;
    if (l$timeUntilAiring != lOther$timeUntilAiring) {
      return false;
    }
    final l$episode = episode;
    final lOther$episode = other.episode;
    if (l$episode != lOther$episode) {
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

extension UtilityExtension$Fragment$MediaShort$airingSchedule$nodes
    on Fragment$MediaShort$airingSchedule$nodes {
  CopyWith$Fragment$MediaShort$airingSchedule$nodes<
          Fragment$MediaShort$airingSchedule$nodes>
      get copyWith => CopyWith$Fragment$MediaShort$airingSchedule$nodes(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$MediaShort$airingSchedule$nodes<TRes> {
  factory CopyWith$Fragment$MediaShort$airingSchedule$nodes(
    Fragment$MediaShort$airingSchedule$nodes instance,
    TRes Function(Fragment$MediaShort$airingSchedule$nodes) then,
  ) = _CopyWithImpl$Fragment$MediaShort$airingSchedule$nodes;

  factory CopyWith$Fragment$MediaShort$airingSchedule$nodes.stub(TRes res) =
      _CopyWithStubImpl$Fragment$MediaShort$airingSchedule$nodes;

  TRes call({
    int? timeUntilAiring,
    int? episode,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$MediaShort$airingSchedule$nodes<TRes>
    implements CopyWith$Fragment$MediaShort$airingSchedule$nodes<TRes> {
  _CopyWithImpl$Fragment$MediaShort$airingSchedule$nodes(
    this._instance,
    this._then,
  );

  final Fragment$MediaShort$airingSchedule$nodes _instance;

  final TRes Function(Fragment$MediaShort$airingSchedule$nodes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? timeUntilAiring = _undefined,
    Object? episode = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$MediaShort$airingSchedule$nodes(
        timeUntilAiring:
            timeUntilAiring == _undefined || timeUntilAiring == null
                ? _instance.timeUntilAiring
                : (timeUntilAiring as int),
        episode: episode == _undefined || episode == null
            ? _instance.episode
            : (episode as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$MediaShort$airingSchedule$nodes<TRes>
    implements CopyWith$Fragment$MediaShort$airingSchedule$nodes<TRes> {
  _CopyWithStubImpl$Fragment$MediaShort$airingSchedule$nodes(this._res);

  TRes _res;

  call({
    int? timeUntilAiring,
    int? episode,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$MediaShort$mediaListEntry {
  Fragment$MediaShort$mediaListEntry({
    required this.id,
    this.status,
    this.$__typename = 'MediaList',
  });

  factory Fragment$MediaShort$mediaListEntry.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$status = json['status'];
    final l$$__typename = json['__typename'];
    return Fragment$MediaShort$mediaListEntry(
      id: (l$id as int),
      status: l$status == null
          ? null
          : fromJson$Enum$MediaListStatus((l$status as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final Enum$MediaListStatus? status;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$status = status;
    _resultData['status'] =
        l$status == null ? null : toJson$Enum$MediaListStatus(l$status);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$status = status;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$status,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$MediaShort$mediaListEntry) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
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

extension UtilityExtension$Fragment$MediaShort$mediaListEntry
    on Fragment$MediaShort$mediaListEntry {
  CopyWith$Fragment$MediaShort$mediaListEntry<
          Fragment$MediaShort$mediaListEntry>
      get copyWith => CopyWith$Fragment$MediaShort$mediaListEntry(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$MediaShort$mediaListEntry<TRes> {
  factory CopyWith$Fragment$MediaShort$mediaListEntry(
    Fragment$MediaShort$mediaListEntry instance,
    TRes Function(Fragment$MediaShort$mediaListEntry) then,
  ) = _CopyWithImpl$Fragment$MediaShort$mediaListEntry;

  factory CopyWith$Fragment$MediaShort$mediaListEntry.stub(TRes res) =
      _CopyWithStubImpl$Fragment$MediaShort$mediaListEntry;

  TRes call({
    int? id,
    Enum$MediaListStatus? status,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$MediaShort$mediaListEntry<TRes>
    implements CopyWith$Fragment$MediaShort$mediaListEntry<TRes> {
  _CopyWithImpl$Fragment$MediaShort$mediaListEntry(
    this._instance,
    this._then,
  );

  final Fragment$MediaShort$mediaListEntry _instance;

  final TRes Function(Fragment$MediaShort$mediaListEntry) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? status = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$MediaShort$mediaListEntry(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        status: status == _undefined
            ? _instance.status
            : (status as Enum$MediaListStatus?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$MediaShort$mediaListEntry<TRes>
    implements CopyWith$Fragment$MediaShort$mediaListEntry<TRes> {
  _CopyWithStubImpl$Fragment$MediaShort$mediaListEntry(this._res);

  TRes _res;

  call({
    int? id,
    Enum$MediaListStatus? status,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$SearchResultMedia {
  Fragment$SearchResultMedia({
    required this.id,
    this.coverImage,
    this.title,
    this.type,
    this.startDate,
    this.format,
    this.meanScore,
    this.$__typename = 'Media',
  });

  factory Fragment$SearchResultMedia.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$coverImage = json['coverImage'];
    final l$title = json['title'];
    final l$type = json['type'];
    final l$startDate = json['startDate'];
    final l$format = json['format'];
    final l$meanScore = json['meanScore'];
    final l$$__typename = json['__typename'];
    return Fragment$SearchResultMedia(
      id: (l$id as int),
      coverImage: l$coverImage == null
          ? null
          : Fragment$SearchResultMedia$coverImage.fromJson(
              (l$coverImage as Map<String, dynamic>)),
      title: l$title == null
          ? null
          : Fragment$SearchResultMedia$title.fromJson(
              (l$title as Map<String, dynamic>)),
      type: l$type == null ? null : fromJson$Enum$MediaType((l$type as String)),
      startDate: l$startDate == null
          ? null
          : Fragment$SearchResultMedia$startDate.fromJson(
              (l$startDate as Map<String, dynamic>)),
      format: l$format == null
          ? null
          : fromJson$Enum$MediaFormat((l$format as String)),
      meanScore: (l$meanScore as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final Fragment$SearchResultMedia$coverImage? coverImage;

  final Fragment$SearchResultMedia$title? title;

  final Enum$MediaType? type;

  final Fragment$SearchResultMedia$startDate? startDate;

  final Enum$MediaFormat? format;

  final int? meanScore;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$coverImage = coverImage;
    _resultData['coverImage'] = l$coverImage?.toJson();
    final l$title = title;
    _resultData['title'] = l$title?.toJson();
    final l$type = type;
    _resultData['type'] = l$type == null ? null : toJson$Enum$MediaType(l$type);
    final l$startDate = startDate;
    _resultData['startDate'] = l$startDate?.toJson();
    final l$format = format;
    _resultData['format'] =
        l$format == null ? null : toJson$Enum$MediaFormat(l$format);
    final l$meanScore = meanScore;
    _resultData['meanScore'] = l$meanScore;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$coverImage = coverImage;
    final l$title = title;
    final l$type = type;
    final l$startDate = startDate;
    final l$format = format;
    final l$meanScore = meanScore;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$coverImage,
      l$title,
      l$type,
      l$startDate,
      l$format,
      l$meanScore,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$SearchResultMedia) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$coverImage = coverImage;
    final lOther$coverImage = other.coverImage;
    if (l$coverImage != lOther$coverImage) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$startDate = startDate;
    final lOther$startDate = other.startDate;
    if (l$startDate != lOther$startDate) {
      return false;
    }
    final l$format = format;
    final lOther$format = other.format;
    if (l$format != lOther$format) {
      return false;
    }
    final l$meanScore = meanScore;
    final lOther$meanScore = other.meanScore;
    if (l$meanScore != lOther$meanScore) {
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

extension UtilityExtension$Fragment$SearchResultMedia
    on Fragment$SearchResultMedia {
  CopyWith$Fragment$SearchResultMedia<Fragment$SearchResultMedia>
      get copyWith => CopyWith$Fragment$SearchResultMedia(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$SearchResultMedia<TRes> {
  factory CopyWith$Fragment$SearchResultMedia(
    Fragment$SearchResultMedia instance,
    TRes Function(Fragment$SearchResultMedia) then,
  ) = _CopyWithImpl$Fragment$SearchResultMedia;

  factory CopyWith$Fragment$SearchResultMedia.stub(TRes res) =
      _CopyWithStubImpl$Fragment$SearchResultMedia;

  TRes call({
    int? id,
    Fragment$SearchResultMedia$coverImage? coverImage,
    Fragment$SearchResultMedia$title? title,
    Enum$MediaType? type,
    Fragment$SearchResultMedia$startDate? startDate,
    Enum$MediaFormat? format,
    int? meanScore,
    String? $__typename,
  });
  CopyWith$Fragment$SearchResultMedia$coverImage<TRes> get coverImage;
  CopyWith$Fragment$SearchResultMedia$title<TRes> get title;
  CopyWith$Fragment$SearchResultMedia$startDate<TRes> get startDate;
}

class _CopyWithImpl$Fragment$SearchResultMedia<TRes>
    implements CopyWith$Fragment$SearchResultMedia<TRes> {
  _CopyWithImpl$Fragment$SearchResultMedia(
    this._instance,
    this._then,
  );

  final Fragment$SearchResultMedia _instance;

  final TRes Function(Fragment$SearchResultMedia) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? coverImage = _undefined,
    Object? title = _undefined,
    Object? type = _undefined,
    Object? startDate = _undefined,
    Object? format = _undefined,
    Object? meanScore = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$SearchResultMedia(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        coverImage: coverImage == _undefined
            ? _instance.coverImage
            : (coverImage as Fragment$SearchResultMedia$coverImage?),
        title: title == _undefined
            ? _instance.title
            : (title as Fragment$SearchResultMedia$title?),
        type: type == _undefined ? _instance.type : (type as Enum$MediaType?),
        startDate: startDate == _undefined
            ? _instance.startDate
            : (startDate as Fragment$SearchResultMedia$startDate?),
        format: format == _undefined
            ? _instance.format
            : (format as Enum$MediaFormat?),
        meanScore:
            meanScore == _undefined ? _instance.meanScore : (meanScore as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$SearchResultMedia$coverImage<TRes> get coverImage {
    final local$coverImage = _instance.coverImage;
    return local$coverImage == null
        ? CopyWith$Fragment$SearchResultMedia$coverImage.stub(_then(_instance))
        : CopyWith$Fragment$SearchResultMedia$coverImage(
            local$coverImage, (e) => call(coverImage: e));
  }

  CopyWith$Fragment$SearchResultMedia$title<TRes> get title {
    final local$title = _instance.title;
    return local$title == null
        ? CopyWith$Fragment$SearchResultMedia$title.stub(_then(_instance))
        : CopyWith$Fragment$SearchResultMedia$title(
            local$title, (e) => call(title: e));
  }

  CopyWith$Fragment$SearchResultMedia$startDate<TRes> get startDate {
    final local$startDate = _instance.startDate;
    return local$startDate == null
        ? CopyWith$Fragment$SearchResultMedia$startDate.stub(_then(_instance))
        : CopyWith$Fragment$SearchResultMedia$startDate(
            local$startDate, (e) => call(startDate: e));
  }
}

class _CopyWithStubImpl$Fragment$SearchResultMedia<TRes>
    implements CopyWith$Fragment$SearchResultMedia<TRes> {
  _CopyWithStubImpl$Fragment$SearchResultMedia(this._res);

  TRes _res;

  call({
    int? id,
    Fragment$SearchResultMedia$coverImage? coverImage,
    Fragment$SearchResultMedia$title? title,
    Enum$MediaType? type,
    Fragment$SearchResultMedia$startDate? startDate,
    Enum$MediaFormat? format,
    int? meanScore,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$SearchResultMedia$coverImage<TRes> get coverImage =>
      CopyWith$Fragment$SearchResultMedia$coverImage.stub(_res);

  CopyWith$Fragment$SearchResultMedia$title<TRes> get title =>
      CopyWith$Fragment$SearchResultMedia$title.stub(_res);

  CopyWith$Fragment$SearchResultMedia$startDate<TRes> get startDate =>
      CopyWith$Fragment$SearchResultMedia$startDate.stub(_res);
}

const fragmentDefinitionSearchResultMedia = FragmentDefinitionNode(
  name: NameNode(value: 'SearchResultMedia'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Media'),
    isNonNull: false,
  )),
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
      name: NameNode(value: 'coverImage'),
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
      name: NameNode(value: 'title'),
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
          name: NameNode(value: '__typename'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
      ]),
    ),
    FieldNode(
      name: NameNode(value: 'type'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'startDate'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
          name: NameNode(value: 'year'),
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
      name: NameNode(value: 'format'),
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
      name: NameNode(value: '__typename'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
  ]),
);
const documentNodeFragmentSearchResultMedia = DocumentNode(definitions: [
  fragmentDefinitionSearchResultMedia,
]);

extension ClientExtension$Fragment$SearchResultMedia on graphql.GraphQLClient {
  void writeFragment$SearchResultMedia({
    required Fragment$SearchResultMedia data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'SearchResultMedia',
            document: documentNodeFragmentSearchResultMedia,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$SearchResultMedia? readFragment$SearchResultMedia({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'SearchResultMedia',
          document: documentNodeFragmentSearchResultMedia,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$SearchResultMedia.fromJson(result);
  }
}

class Fragment$SearchResultMedia$coverImage {
  Fragment$SearchResultMedia$coverImage({
    this.large,
    this.$__typename = 'MediaCoverImage',
  });

  factory Fragment$SearchResultMedia$coverImage.fromJson(
      Map<String, dynamic> json) {
    final l$large = json['large'];
    final l$$__typename = json['__typename'];
    return Fragment$SearchResultMedia$coverImage(
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
    if (!(other is Fragment$SearchResultMedia$coverImage) ||
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

extension UtilityExtension$Fragment$SearchResultMedia$coverImage
    on Fragment$SearchResultMedia$coverImage {
  CopyWith$Fragment$SearchResultMedia$coverImage<
          Fragment$SearchResultMedia$coverImage>
      get copyWith => CopyWith$Fragment$SearchResultMedia$coverImage(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$SearchResultMedia$coverImage<TRes> {
  factory CopyWith$Fragment$SearchResultMedia$coverImage(
    Fragment$SearchResultMedia$coverImage instance,
    TRes Function(Fragment$SearchResultMedia$coverImage) then,
  ) = _CopyWithImpl$Fragment$SearchResultMedia$coverImage;

  factory CopyWith$Fragment$SearchResultMedia$coverImage.stub(TRes res) =
      _CopyWithStubImpl$Fragment$SearchResultMedia$coverImage;

  TRes call({
    String? large,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$SearchResultMedia$coverImage<TRes>
    implements CopyWith$Fragment$SearchResultMedia$coverImage<TRes> {
  _CopyWithImpl$Fragment$SearchResultMedia$coverImage(
    this._instance,
    this._then,
  );

  final Fragment$SearchResultMedia$coverImage _instance;

  final TRes Function(Fragment$SearchResultMedia$coverImage) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? large = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$SearchResultMedia$coverImage(
        large: large == _undefined ? _instance.large : (large as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$SearchResultMedia$coverImage<TRes>
    implements CopyWith$Fragment$SearchResultMedia$coverImage<TRes> {
  _CopyWithStubImpl$Fragment$SearchResultMedia$coverImage(this._res);

  TRes _res;

  call({
    String? large,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$SearchResultMedia$title {
  Fragment$SearchResultMedia$title({
    this.userPreferred,
    this.$__typename = 'MediaTitle',
  });

  factory Fragment$SearchResultMedia$title.fromJson(Map<String, dynamic> json) {
    final l$userPreferred = json['userPreferred'];
    final l$$__typename = json['__typename'];
    return Fragment$SearchResultMedia$title(
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
    if (!(other is Fragment$SearchResultMedia$title) ||
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

extension UtilityExtension$Fragment$SearchResultMedia$title
    on Fragment$SearchResultMedia$title {
  CopyWith$Fragment$SearchResultMedia$title<Fragment$SearchResultMedia$title>
      get copyWith => CopyWith$Fragment$SearchResultMedia$title(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$SearchResultMedia$title<TRes> {
  factory CopyWith$Fragment$SearchResultMedia$title(
    Fragment$SearchResultMedia$title instance,
    TRes Function(Fragment$SearchResultMedia$title) then,
  ) = _CopyWithImpl$Fragment$SearchResultMedia$title;

  factory CopyWith$Fragment$SearchResultMedia$title.stub(TRes res) =
      _CopyWithStubImpl$Fragment$SearchResultMedia$title;

  TRes call({
    String? userPreferred,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$SearchResultMedia$title<TRes>
    implements CopyWith$Fragment$SearchResultMedia$title<TRes> {
  _CopyWithImpl$Fragment$SearchResultMedia$title(
    this._instance,
    this._then,
  );

  final Fragment$SearchResultMedia$title _instance;

  final TRes Function(Fragment$SearchResultMedia$title) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userPreferred = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$SearchResultMedia$title(
        userPreferred: userPreferred == _undefined
            ? _instance.userPreferred
            : (userPreferred as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$SearchResultMedia$title<TRes>
    implements CopyWith$Fragment$SearchResultMedia$title<TRes> {
  _CopyWithStubImpl$Fragment$SearchResultMedia$title(this._res);

  TRes _res;

  call({
    String? userPreferred,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$SearchResultMedia$startDate {
  Fragment$SearchResultMedia$startDate({
    this.year,
    this.$__typename = 'FuzzyDate',
  });

  factory Fragment$SearchResultMedia$startDate.fromJson(
      Map<String, dynamic> json) {
    final l$year = json['year'];
    final l$$__typename = json['__typename'];
    return Fragment$SearchResultMedia$startDate(
      year: (l$year as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final int? year;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$year = year;
    _resultData['year'] = l$year;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$year = year;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$year,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$SearchResultMedia$startDate) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$year = year;
    final lOther$year = other.year;
    if (l$year != lOther$year) {
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

extension UtilityExtension$Fragment$SearchResultMedia$startDate
    on Fragment$SearchResultMedia$startDate {
  CopyWith$Fragment$SearchResultMedia$startDate<
          Fragment$SearchResultMedia$startDate>
      get copyWith => CopyWith$Fragment$SearchResultMedia$startDate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$SearchResultMedia$startDate<TRes> {
  factory CopyWith$Fragment$SearchResultMedia$startDate(
    Fragment$SearchResultMedia$startDate instance,
    TRes Function(Fragment$SearchResultMedia$startDate) then,
  ) = _CopyWithImpl$Fragment$SearchResultMedia$startDate;

  factory CopyWith$Fragment$SearchResultMedia$startDate.stub(TRes res) =
      _CopyWithStubImpl$Fragment$SearchResultMedia$startDate;

  TRes call({
    int? year,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$SearchResultMedia$startDate<TRes>
    implements CopyWith$Fragment$SearchResultMedia$startDate<TRes> {
  _CopyWithImpl$Fragment$SearchResultMedia$startDate(
    this._instance,
    this._then,
  );

  final Fragment$SearchResultMedia$startDate _instance;

  final TRes Function(Fragment$SearchResultMedia$startDate) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? year = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$SearchResultMedia$startDate(
        year: year == _undefined ? _instance.year : (year as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$SearchResultMedia$startDate<TRes>
    implements CopyWith$Fragment$SearchResultMedia$startDate<TRes> {
  _CopyWithStubImpl$Fragment$SearchResultMedia$startDate(this._res);

  TRes _res;

  call({
    int? year,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$Review {
  Fragment$Review({
    required this.id,
    this.summary,
    this.userRating,
    this.rating,
    this.ratingAmount,
    this.score,
    required this.createdAt,
    required this.updatedAt,
    this.body,
    this.user,
    this.media,
    this.$__typename = 'Review',
  });

  factory Fragment$Review.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$summary = json['summary'];
    final l$userRating = json['userRating'];
    final l$rating = json['rating'];
    final l$ratingAmount = json['ratingAmount'];
    final l$score = json['score'];
    final l$createdAt = json['createdAt'];
    final l$updatedAt = json['updatedAt'];
    final l$body = json['body'];
    final l$user = json['user'];
    final l$media = json['media'];
    final l$$__typename = json['__typename'];
    return Fragment$Review(
      id: (l$id as int),
      summary: (l$summary as String?),
      userRating: l$userRating == null
          ? null
          : fromJson$Enum$ReviewRating((l$userRating as String)),
      rating: (l$rating as int?),
      ratingAmount: (l$ratingAmount as int?),
      score: (l$score as int?),
      createdAt: (l$createdAt as int),
      updatedAt: (l$updatedAt as int),
      body: (l$body as String?),
      user: l$user == null
          ? null
          : Fragment$Review$user.fromJson((l$user as Map<String, dynamic>)),
      media: l$media == null
          ? null
          : Fragment$Review$media.fromJson((l$media as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String? summary;

  final Enum$ReviewRating? userRating;

  final int? rating;

  final int? ratingAmount;

  final int? score;

  final int createdAt;

  final int updatedAt;

  final String? body;

  final Fragment$Review$user? user;

  final Fragment$Review$media? media;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$summary = summary;
    _resultData['summary'] = l$summary;
    final l$userRating = userRating;
    _resultData['userRating'] =
        l$userRating == null ? null : toJson$Enum$ReviewRating(l$userRating);
    final l$rating = rating;
    _resultData['rating'] = l$rating;
    final l$ratingAmount = ratingAmount;
    _resultData['ratingAmount'] = l$ratingAmount;
    final l$score = score;
    _resultData['score'] = l$score;
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt;
    final l$updatedAt = updatedAt;
    _resultData['updatedAt'] = l$updatedAt;
    final l$body = body;
    _resultData['body'] = l$body;
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$media = media;
    _resultData['media'] = l$media?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$summary = summary;
    final l$userRating = userRating;
    final l$rating = rating;
    final l$ratingAmount = ratingAmount;
    final l$score = score;
    final l$createdAt = createdAt;
    final l$updatedAt = updatedAt;
    final l$body = body;
    final l$user = user;
    final l$media = media;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$summary,
      l$userRating,
      l$rating,
      l$ratingAmount,
      l$score,
      l$createdAt,
      l$updatedAt,
      l$body,
      l$user,
      l$media,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$Review) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$summary = summary;
    final lOther$summary = other.summary;
    if (l$summary != lOther$summary) {
      return false;
    }
    final l$userRating = userRating;
    final lOther$userRating = other.userRating;
    if (l$userRating != lOther$userRating) {
      return false;
    }
    final l$rating = rating;
    final lOther$rating = other.rating;
    if (l$rating != lOther$rating) {
      return false;
    }
    final l$ratingAmount = ratingAmount;
    final lOther$ratingAmount = other.ratingAmount;
    if (l$ratingAmount != lOther$ratingAmount) {
      return false;
    }
    final l$score = score;
    final lOther$score = other.score;
    if (l$score != lOther$score) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (l$updatedAt != lOther$updatedAt) {
      return false;
    }
    final l$body = body;
    final lOther$body = other.body;
    if (l$body != lOther$body) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
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

extension UtilityExtension$Fragment$Review on Fragment$Review {
  CopyWith$Fragment$Review<Fragment$Review> get copyWith =>
      CopyWith$Fragment$Review(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$Review<TRes> {
  factory CopyWith$Fragment$Review(
    Fragment$Review instance,
    TRes Function(Fragment$Review) then,
  ) = _CopyWithImpl$Fragment$Review;

  factory CopyWith$Fragment$Review.stub(TRes res) =
      _CopyWithStubImpl$Fragment$Review;

  TRes call({
    int? id,
    String? summary,
    Enum$ReviewRating? userRating,
    int? rating,
    int? ratingAmount,
    int? score,
    int? createdAt,
    int? updatedAt,
    String? body,
    Fragment$Review$user? user,
    Fragment$Review$media? media,
    String? $__typename,
  });
  CopyWith$Fragment$Review$user<TRes> get user;
  CopyWith$Fragment$Review$media<TRes> get media;
}

class _CopyWithImpl$Fragment$Review<TRes>
    implements CopyWith$Fragment$Review<TRes> {
  _CopyWithImpl$Fragment$Review(
    this._instance,
    this._then,
  );

  final Fragment$Review _instance;

  final TRes Function(Fragment$Review) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? summary = _undefined,
    Object? userRating = _undefined,
    Object? rating = _undefined,
    Object? ratingAmount = _undefined,
    Object? score = _undefined,
    Object? createdAt = _undefined,
    Object? updatedAt = _undefined,
    Object? body = _undefined,
    Object? user = _undefined,
    Object? media = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$Review(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        summary:
            summary == _undefined ? _instance.summary : (summary as String?),
        userRating: userRating == _undefined
            ? _instance.userRating
            : (userRating as Enum$ReviewRating?),
        rating: rating == _undefined ? _instance.rating : (rating as int?),
        ratingAmount: ratingAmount == _undefined
            ? _instance.ratingAmount
            : (ratingAmount as int?),
        score: score == _undefined ? _instance.score : (score as int?),
        createdAt: createdAt == _undefined || createdAt == null
            ? _instance.createdAt
            : (createdAt as int),
        updatedAt: updatedAt == _undefined || updatedAt == null
            ? _instance.updatedAt
            : (updatedAt as int),
        body: body == _undefined ? _instance.body : (body as String?),
        user: user == _undefined
            ? _instance.user
            : (user as Fragment$Review$user?),
        media: media == _undefined
            ? _instance.media
            : (media as Fragment$Review$media?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$Review$user<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith$Fragment$Review$user.stub(_then(_instance))
        : CopyWith$Fragment$Review$user(local$user, (e) => call(user: e));
  }

  CopyWith$Fragment$Review$media<TRes> get media {
    final local$media = _instance.media;
    return local$media == null
        ? CopyWith$Fragment$Review$media.stub(_then(_instance))
        : CopyWith$Fragment$Review$media(local$media, (e) => call(media: e));
  }
}

class _CopyWithStubImpl$Fragment$Review<TRes>
    implements CopyWith$Fragment$Review<TRes> {
  _CopyWithStubImpl$Fragment$Review(this._res);

  TRes _res;

  call({
    int? id,
    String? summary,
    Enum$ReviewRating? userRating,
    int? rating,
    int? ratingAmount,
    int? score,
    int? createdAt,
    int? updatedAt,
    String? body,
    Fragment$Review$user? user,
    Fragment$Review$media? media,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$Review$user<TRes> get user =>
      CopyWith$Fragment$Review$user.stub(_res);

  CopyWith$Fragment$Review$media<TRes> get media =>
      CopyWith$Fragment$Review$media.stub(_res);
}

const fragmentDefinitionReview = FragmentDefinitionNode(
  name: NameNode(value: 'Review'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Review'),
    isNonNull: false,
  )),
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
      name: NameNode(value: 'summary'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'userRating'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'rating'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'ratingAmount'),
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
      name: NameNode(value: 'createdAt'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'updatedAt'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'body'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'user'),
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
          name: NameNode(value: 'avatar'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: SelectionSetNode(selections: [
            FieldNode(
              name: NameNode(value: 'medium'),
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
      name: NameNode(value: 'media'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
          name: NameNode(value: 'bannerImage'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'title'),
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
const documentNodeFragmentReview = DocumentNode(definitions: [
  fragmentDefinitionReview,
]);

extension ClientExtension$Fragment$Review on graphql.GraphQLClient {
  void writeFragment$Review({
    required Fragment$Review data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'Review',
            document: documentNodeFragmentReview,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$Review? readFragment$Review({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'Review',
          document: documentNodeFragmentReview,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$Review.fromJson(result);
  }
}

class Fragment$Review$user {
  Fragment$Review$user({
    required this.name,
    this.avatar,
    this.$__typename = 'User',
  });

  factory Fragment$Review$user.fromJson(Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$avatar = json['avatar'];
    final l$$__typename = json['__typename'];
    return Fragment$Review$user(
      name: (l$name as String),
      avatar: l$avatar == null
          ? null
          : Fragment$Review$user$avatar.fromJson(
              (l$avatar as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final Fragment$Review$user$avatar? avatar;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$avatar = avatar;
    _resultData['avatar'] = l$avatar?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$avatar = avatar;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$avatar,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$Review$user) || runtimeType != other.runtimeType) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$Review$user on Fragment$Review$user {
  CopyWith$Fragment$Review$user<Fragment$Review$user> get copyWith =>
      CopyWith$Fragment$Review$user(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$Review$user<TRes> {
  factory CopyWith$Fragment$Review$user(
    Fragment$Review$user instance,
    TRes Function(Fragment$Review$user) then,
  ) = _CopyWithImpl$Fragment$Review$user;

  factory CopyWith$Fragment$Review$user.stub(TRes res) =
      _CopyWithStubImpl$Fragment$Review$user;

  TRes call({
    String? name,
    Fragment$Review$user$avatar? avatar,
    String? $__typename,
  });
  CopyWith$Fragment$Review$user$avatar<TRes> get avatar;
}

class _CopyWithImpl$Fragment$Review$user<TRes>
    implements CopyWith$Fragment$Review$user<TRes> {
  _CopyWithImpl$Fragment$Review$user(
    this._instance,
    this._then,
  );

  final Fragment$Review$user _instance;

  final TRes Function(Fragment$Review$user) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? avatar = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$Review$user(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        avatar: avatar == _undefined
            ? _instance.avatar
            : (avatar as Fragment$Review$user$avatar?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$Review$user$avatar<TRes> get avatar {
    final local$avatar = _instance.avatar;
    return local$avatar == null
        ? CopyWith$Fragment$Review$user$avatar.stub(_then(_instance))
        : CopyWith$Fragment$Review$user$avatar(
            local$avatar, (e) => call(avatar: e));
  }
}

class _CopyWithStubImpl$Fragment$Review$user<TRes>
    implements CopyWith$Fragment$Review$user<TRes> {
  _CopyWithStubImpl$Fragment$Review$user(this._res);

  TRes _res;

  call({
    String? name,
    Fragment$Review$user$avatar? avatar,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$Review$user$avatar<TRes> get avatar =>
      CopyWith$Fragment$Review$user$avatar.stub(_res);
}

class Fragment$Review$user$avatar {
  Fragment$Review$user$avatar({
    this.medium,
    this.$__typename = 'UserAvatar',
  });

  factory Fragment$Review$user$avatar.fromJson(Map<String, dynamic> json) {
    final l$medium = json['medium'];
    final l$$__typename = json['__typename'];
    return Fragment$Review$user$avatar(
      medium: (l$medium as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? medium;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$medium = medium;
    _resultData['medium'] = l$medium;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$medium = medium;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$medium,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$Review$user$avatar) ||
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
    return true;
  }
}

extension UtilityExtension$Fragment$Review$user$avatar
    on Fragment$Review$user$avatar {
  CopyWith$Fragment$Review$user$avatar<Fragment$Review$user$avatar>
      get copyWith => CopyWith$Fragment$Review$user$avatar(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$Review$user$avatar<TRes> {
  factory CopyWith$Fragment$Review$user$avatar(
    Fragment$Review$user$avatar instance,
    TRes Function(Fragment$Review$user$avatar) then,
  ) = _CopyWithImpl$Fragment$Review$user$avatar;

  factory CopyWith$Fragment$Review$user$avatar.stub(TRes res) =
      _CopyWithStubImpl$Fragment$Review$user$avatar;

  TRes call({
    String? medium,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$Review$user$avatar<TRes>
    implements CopyWith$Fragment$Review$user$avatar<TRes> {
  _CopyWithImpl$Fragment$Review$user$avatar(
    this._instance,
    this._then,
  );

  final Fragment$Review$user$avatar _instance;

  final TRes Function(Fragment$Review$user$avatar) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? medium = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$Review$user$avatar(
        medium: medium == _undefined ? _instance.medium : (medium as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$Review$user$avatar<TRes>
    implements CopyWith$Fragment$Review$user$avatar<TRes> {
  _CopyWithStubImpl$Fragment$Review$user$avatar(this._res);

  TRes _res;

  call({
    String? medium,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$Review$media {
  Fragment$Review$media({
    this.bannerImage,
    this.title,
    this.$__typename = 'Media',
  });

  factory Fragment$Review$media.fromJson(Map<String, dynamic> json) {
    final l$bannerImage = json['bannerImage'];
    final l$title = json['title'];
    final l$$__typename = json['__typename'];
    return Fragment$Review$media(
      bannerImage: (l$bannerImage as String?),
      title: l$title == null
          ? null
          : Fragment$Review$media$title.fromJson(
              (l$title as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String? bannerImage;

  final Fragment$Review$media$title? title;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$bannerImage = bannerImage;
    _resultData['bannerImage'] = l$bannerImage;
    final l$title = title;
    _resultData['title'] = l$title?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$bannerImage = bannerImage;
    final l$title = title;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$bannerImage,
      l$title,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$Review$media) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$bannerImage = bannerImage;
    final lOther$bannerImage = other.bannerImage;
    if (l$bannerImage != lOther$bannerImage) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
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

extension UtilityExtension$Fragment$Review$media on Fragment$Review$media {
  CopyWith$Fragment$Review$media<Fragment$Review$media> get copyWith =>
      CopyWith$Fragment$Review$media(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$Review$media<TRes> {
  factory CopyWith$Fragment$Review$media(
    Fragment$Review$media instance,
    TRes Function(Fragment$Review$media) then,
  ) = _CopyWithImpl$Fragment$Review$media;

  factory CopyWith$Fragment$Review$media.stub(TRes res) =
      _CopyWithStubImpl$Fragment$Review$media;

  TRes call({
    String? bannerImage,
    Fragment$Review$media$title? title,
    String? $__typename,
  });
  CopyWith$Fragment$Review$media$title<TRes> get title;
}

class _CopyWithImpl$Fragment$Review$media<TRes>
    implements CopyWith$Fragment$Review$media<TRes> {
  _CopyWithImpl$Fragment$Review$media(
    this._instance,
    this._then,
  );

  final Fragment$Review$media _instance;

  final TRes Function(Fragment$Review$media) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? bannerImage = _undefined,
    Object? title = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$Review$media(
        bannerImage: bannerImage == _undefined
            ? _instance.bannerImage
            : (bannerImage as String?),
        title: title == _undefined
            ? _instance.title
            : (title as Fragment$Review$media$title?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$Review$media$title<TRes> get title {
    final local$title = _instance.title;
    return local$title == null
        ? CopyWith$Fragment$Review$media$title.stub(_then(_instance))
        : CopyWith$Fragment$Review$media$title(
            local$title, (e) => call(title: e));
  }
}

class _CopyWithStubImpl$Fragment$Review$media<TRes>
    implements CopyWith$Fragment$Review$media<TRes> {
  _CopyWithStubImpl$Fragment$Review$media(this._res);

  TRes _res;

  call({
    String? bannerImage,
    Fragment$Review$media$title? title,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$Review$media$title<TRes> get title =>
      CopyWith$Fragment$Review$media$title.stub(_res);
}

class Fragment$Review$media$title {
  Fragment$Review$media$title({
    this.userPreferred,
    this.$__typename = 'MediaTitle',
  });

  factory Fragment$Review$media$title.fromJson(Map<String, dynamic> json) {
    final l$userPreferred = json['userPreferred'];
    final l$$__typename = json['__typename'];
    return Fragment$Review$media$title(
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
    if (!(other is Fragment$Review$media$title) ||
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

extension UtilityExtension$Fragment$Review$media$title
    on Fragment$Review$media$title {
  CopyWith$Fragment$Review$media$title<Fragment$Review$media$title>
      get copyWith => CopyWith$Fragment$Review$media$title(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$Review$media$title<TRes> {
  factory CopyWith$Fragment$Review$media$title(
    Fragment$Review$media$title instance,
    TRes Function(Fragment$Review$media$title) then,
  ) = _CopyWithImpl$Fragment$Review$media$title;

  factory CopyWith$Fragment$Review$media$title.stub(TRes res) =
      _CopyWithStubImpl$Fragment$Review$media$title;

  TRes call({
    String? userPreferred,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$Review$media$title<TRes>
    implements CopyWith$Fragment$Review$media$title<TRes> {
  _CopyWithImpl$Fragment$Review$media$title(
    this._instance,
    this._then,
  );

  final Fragment$Review$media$title _instance;

  final TRes Function(Fragment$Review$media$title) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userPreferred = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$Review$media$title(
        userPreferred: userPreferred == _undefined
            ? _instance.userPreferred
            : (userPreferred as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$Review$media$title<TRes>
    implements CopyWith$Fragment$Review$media$title<TRes> {
  _CopyWithStubImpl$Fragment$Review$media$title(this._res);

  TRes _res;

  call({
    String? userPreferred,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$ReviewDetail {
  Fragment$ReviewDetail({
    required this.id,
    this.summary,
    this.userRating,
    this.rating,
    this.ratingAmount,
    this.body,
    this.score,
    required this.mediaId,
    this.mediaType,
    required this.createdAt,
    required this.updatedAt,
    this.user,
    this.media,
    this.$__typename = 'Review',
  });

  factory Fragment$ReviewDetail.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$summary = json['summary'];
    final l$userRating = json['userRating'];
    final l$rating = json['rating'];
    final l$ratingAmount = json['ratingAmount'];
    final l$body = json['body'];
    final l$score = json['score'];
    final l$mediaId = json['mediaId'];
    final l$mediaType = json['mediaType'];
    final l$createdAt = json['createdAt'];
    final l$updatedAt = json['updatedAt'];
    final l$user = json['user'];
    final l$media = json['media'];
    final l$$__typename = json['__typename'];
    return Fragment$ReviewDetail(
      id: (l$id as int),
      summary: (l$summary as String?),
      userRating: l$userRating == null
          ? null
          : fromJson$Enum$ReviewRating((l$userRating as String)),
      rating: (l$rating as int?),
      ratingAmount: (l$ratingAmount as int?),
      body: (l$body as String?),
      score: (l$score as int?),
      mediaId: (l$mediaId as int),
      mediaType: l$mediaType == null
          ? null
          : fromJson$Enum$MediaType((l$mediaType as String)),
      createdAt: (l$createdAt as int),
      updatedAt: (l$updatedAt as int),
      user: l$user == null
          ? null
          : Fragment$ReviewDetail$user.fromJson(
              (l$user as Map<String, dynamic>)),
      media: l$media == null
          ? null
          : Fragment$ReviewDetail$media.fromJson(
              (l$media as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String? summary;

  final Enum$ReviewRating? userRating;

  final int? rating;

  final int? ratingAmount;

  final String? body;

  final int? score;

  final int mediaId;

  final Enum$MediaType? mediaType;

  final int createdAt;

  final int updatedAt;

  final Fragment$ReviewDetail$user? user;

  final Fragment$ReviewDetail$media? media;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$summary = summary;
    _resultData['summary'] = l$summary;
    final l$userRating = userRating;
    _resultData['userRating'] =
        l$userRating == null ? null : toJson$Enum$ReviewRating(l$userRating);
    final l$rating = rating;
    _resultData['rating'] = l$rating;
    final l$ratingAmount = ratingAmount;
    _resultData['ratingAmount'] = l$ratingAmount;
    final l$body = body;
    _resultData['body'] = l$body;
    final l$score = score;
    _resultData['score'] = l$score;
    final l$mediaId = mediaId;
    _resultData['mediaId'] = l$mediaId;
    final l$mediaType = mediaType;
    _resultData['mediaType'] =
        l$mediaType == null ? null : toJson$Enum$MediaType(l$mediaType);
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt;
    final l$updatedAt = updatedAt;
    _resultData['updatedAt'] = l$updatedAt;
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$media = media;
    _resultData['media'] = l$media?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$summary = summary;
    final l$userRating = userRating;
    final l$rating = rating;
    final l$ratingAmount = ratingAmount;
    final l$body = body;
    final l$score = score;
    final l$mediaId = mediaId;
    final l$mediaType = mediaType;
    final l$createdAt = createdAt;
    final l$updatedAt = updatedAt;
    final l$user = user;
    final l$media = media;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$summary,
      l$userRating,
      l$rating,
      l$ratingAmount,
      l$body,
      l$score,
      l$mediaId,
      l$mediaType,
      l$createdAt,
      l$updatedAt,
      l$user,
      l$media,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$ReviewDetail) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$summary = summary;
    final lOther$summary = other.summary;
    if (l$summary != lOther$summary) {
      return false;
    }
    final l$userRating = userRating;
    final lOther$userRating = other.userRating;
    if (l$userRating != lOther$userRating) {
      return false;
    }
    final l$rating = rating;
    final lOther$rating = other.rating;
    if (l$rating != lOther$rating) {
      return false;
    }
    final l$ratingAmount = ratingAmount;
    final lOther$ratingAmount = other.ratingAmount;
    if (l$ratingAmount != lOther$ratingAmount) {
      return false;
    }
    final l$body = body;
    final lOther$body = other.body;
    if (l$body != lOther$body) {
      return false;
    }
    final l$score = score;
    final lOther$score = other.score;
    if (l$score != lOther$score) {
      return false;
    }
    final l$mediaId = mediaId;
    final lOther$mediaId = other.mediaId;
    if (l$mediaId != lOther$mediaId) {
      return false;
    }
    final l$mediaType = mediaType;
    final lOther$mediaType = other.mediaType;
    if (l$mediaType != lOther$mediaType) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (l$updatedAt != lOther$updatedAt) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
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

extension UtilityExtension$Fragment$ReviewDetail on Fragment$ReviewDetail {
  CopyWith$Fragment$ReviewDetail<Fragment$ReviewDetail> get copyWith =>
      CopyWith$Fragment$ReviewDetail(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$ReviewDetail<TRes> {
  factory CopyWith$Fragment$ReviewDetail(
    Fragment$ReviewDetail instance,
    TRes Function(Fragment$ReviewDetail) then,
  ) = _CopyWithImpl$Fragment$ReviewDetail;

  factory CopyWith$Fragment$ReviewDetail.stub(TRes res) =
      _CopyWithStubImpl$Fragment$ReviewDetail;

  TRes call({
    int? id,
    String? summary,
    Enum$ReviewRating? userRating,
    int? rating,
    int? ratingAmount,
    String? body,
    int? score,
    int? mediaId,
    Enum$MediaType? mediaType,
    int? createdAt,
    int? updatedAt,
    Fragment$ReviewDetail$user? user,
    Fragment$ReviewDetail$media? media,
    String? $__typename,
  });
  CopyWith$Fragment$ReviewDetail$user<TRes> get user;
  CopyWith$Fragment$ReviewDetail$media<TRes> get media;
}

class _CopyWithImpl$Fragment$ReviewDetail<TRes>
    implements CopyWith$Fragment$ReviewDetail<TRes> {
  _CopyWithImpl$Fragment$ReviewDetail(
    this._instance,
    this._then,
  );

  final Fragment$ReviewDetail _instance;

  final TRes Function(Fragment$ReviewDetail) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? summary = _undefined,
    Object? userRating = _undefined,
    Object? rating = _undefined,
    Object? ratingAmount = _undefined,
    Object? body = _undefined,
    Object? score = _undefined,
    Object? mediaId = _undefined,
    Object? mediaType = _undefined,
    Object? createdAt = _undefined,
    Object? updatedAt = _undefined,
    Object? user = _undefined,
    Object? media = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$ReviewDetail(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        summary:
            summary == _undefined ? _instance.summary : (summary as String?),
        userRating: userRating == _undefined
            ? _instance.userRating
            : (userRating as Enum$ReviewRating?),
        rating: rating == _undefined ? _instance.rating : (rating as int?),
        ratingAmount: ratingAmount == _undefined
            ? _instance.ratingAmount
            : (ratingAmount as int?),
        body: body == _undefined ? _instance.body : (body as String?),
        score: score == _undefined ? _instance.score : (score as int?),
        mediaId: mediaId == _undefined || mediaId == null
            ? _instance.mediaId
            : (mediaId as int),
        mediaType: mediaType == _undefined
            ? _instance.mediaType
            : (mediaType as Enum$MediaType?),
        createdAt: createdAt == _undefined || createdAt == null
            ? _instance.createdAt
            : (createdAt as int),
        updatedAt: updatedAt == _undefined || updatedAt == null
            ? _instance.updatedAt
            : (updatedAt as int),
        user: user == _undefined
            ? _instance.user
            : (user as Fragment$ReviewDetail$user?),
        media: media == _undefined
            ? _instance.media
            : (media as Fragment$ReviewDetail$media?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$ReviewDetail$user<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith$Fragment$ReviewDetail$user.stub(_then(_instance))
        : CopyWith$Fragment$ReviewDetail$user(local$user, (e) => call(user: e));
  }

  CopyWith$Fragment$ReviewDetail$media<TRes> get media {
    final local$media = _instance.media;
    return local$media == null
        ? CopyWith$Fragment$ReviewDetail$media.stub(_then(_instance))
        : CopyWith$Fragment$ReviewDetail$media(
            local$media, (e) => call(media: e));
  }
}

class _CopyWithStubImpl$Fragment$ReviewDetail<TRes>
    implements CopyWith$Fragment$ReviewDetail<TRes> {
  _CopyWithStubImpl$Fragment$ReviewDetail(this._res);

  TRes _res;

  call({
    int? id,
    String? summary,
    Enum$ReviewRating? userRating,
    int? rating,
    int? ratingAmount,
    String? body,
    int? score,
    int? mediaId,
    Enum$MediaType? mediaType,
    int? createdAt,
    int? updatedAt,
    Fragment$ReviewDetail$user? user,
    Fragment$ReviewDetail$media? media,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$ReviewDetail$user<TRes> get user =>
      CopyWith$Fragment$ReviewDetail$user.stub(_res);

  CopyWith$Fragment$ReviewDetail$media<TRes> get media =>
      CopyWith$Fragment$ReviewDetail$media.stub(_res);
}

const fragmentDefinitionReviewDetail = FragmentDefinitionNode(
  name: NameNode(value: 'ReviewDetail'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Review'),
    isNonNull: false,
  )),
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
      name: NameNode(value: 'summary'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'userRating'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'rating'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'ratingAmount'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'body'),
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
      name: NameNode(value: 'mediaId'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'mediaType'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'createdAt'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'updatedAt'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'user'),
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
          name: NameNode(value: 'avatar'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: SelectionSetNode(selections: [
            FieldNode(
              name: NameNode(value: 'medium'),
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
      name: NameNode(value: 'media'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
          name: NameNode(value: 'title'),
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
              name: NameNode(value: '__typename'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
          ]),
        ),
        FieldNode(
          name: NameNode(value: 'coverImage'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: SelectionSetNode(selections: [
            FieldNode(
              name: NameNode(value: 'extraLarge'),
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
const documentNodeFragmentReviewDetail = DocumentNode(definitions: [
  fragmentDefinitionReviewDetail,
]);

extension ClientExtension$Fragment$ReviewDetail on graphql.GraphQLClient {
  void writeFragment$ReviewDetail({
    required Fragment$ReviewDetail data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'ReviewDetail',
            document: documentNodeFragmentReviewDetail,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$ReviewDetail? readFragment$ReviewDetail({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'ReviewDetail',
          document: documentNodeFragmentReviewDetail,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$ReviewDetail.fromJson(result);
  }
}

class Fragment$ReviewDetail$user {
  Fragment$ReviewDetail$user({
    required this.name,
    this.avatar,
    this.$__typename = 'User',
  });

  factory Fragment$ReviewDetail$user.fromJson(Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$avatar = json['avatar'];
    final l$$__typename = json['__typename'];
    return Fragment$ReviewDetail$user(
      name: (l$name as String),
      avatar: l$avatar == null
          ? null
          : Fragment$ReviewDetail$user$avatar.fromJson(
              (l$avatar as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final Fragment$ReviewDetail$user$avatar? avatar;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$avatar = avatar;
    _resultData['avatar'] = l$avatar?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$avatar = avatar;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$avatar,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$ReviewDetail$user) ||
        runtimeType != other.runtimeType) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$ReviewDetail$user
    on Fragment$ReviewDetail$user {
  CopyWith$Fragment$ReviewDetail$user<Fragment$ReviewDetail$user>
      get copyWith => CopyWith$Fragment$ReviewDetail$user(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$ReviewDetail$user<TRes> {
  factory CopyWith$Fragment$ReviewDetail$user(
    Fragment$ReviewDetail$user instance,
    TRes Function(Fragment$ReviewDetail$user) then,
  ) = _CopyWithImpl$Fragment$ReviewDetail$user;

  factory CopyWith$Fragment$ReviewDetail$user.stub(TRes res) =
      _CopyWithStubImpl$Fragment$ReviewDetail$user;

  TRes call({
    String? name,
    Fragment$ReviewDetail$user$avatar? avatar,
    String? $__typename,
  });
  CopyWith$Fragment$ReviewDetail$user$avatar<TRes> get avatar;
}

class _CopyWithImpl$Fragment$ReviewDetail$user<TRes>
    implements CopyWith$Fragment$ReviewDetail$user<TRes> {
  _CopyWithImpl$Fragment$ReviewDetail$user(
    this._instance,
    this._then,
  );

  final Fragment$ReviewDetail$user _instance;

  final TRes Function(Fragment$ReviewDetail$user) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? avatar = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$ReviewDetail$user(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        avatar: avatar == _undefined
            ? _instance.avatar
            : (avatar as Fragment$ReviewDetail$user$avatar?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$ReviewDetail$user$avatar<TRes> get avatar {
    final local$avatar = _instance.avatar;
    return local$avatar == null
        ? CopyWith$Fragment$ReviewDetail$user$avatar.stub(_then(_instance))
        : CopyWith$Fragment$ReviewDetail$user$avatar(
            local$avatar, (e) => call(avatar: e));
  }
}

class _CopyWithStubImpl$Fragment$ReviewDetail$user<TRes>
    implements CopyWith$Fragment$ReviewDetail$user<TRes> {
  _CopyWithStubImpl$Fragment$ReviewDetail$user(this._res);

  TRes _res;

  call({
    String? name,
    Fragment$ReviewDetail$user$avatar? avatar,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$ReviewDetail$user$avatar<TRes> get avatar =>
      CopyWith$Fragment$ReviewDetail$user$avatar.stub(_res);
}

class Fragment$ReviewDetail$user$avatar {
  Fragment$ReviewDetail$user$avatar({
    this.medium,
    this.$__typename = 'UserAvatar',
  });

  factory Fragment$ReviewDetail$user$avatar.fromJson(
      Map<String, dynamic> json) {
    final l$medium = json['medium'];
    final l$$__typename = json['__typename'];
    return Fragment$ReviewDetail$user$avatar(
      medium: (l$medium as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? medium;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$medium = medium;
    _resultData['medium'] = l$medium;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$medium = medium;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$medium,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$ReviewDetail$user$avatar) ||
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
    return true;
  }
}

extension UtilityExtension$Fragment$ReviewDetail$user$avatar
    on Fragment$ReviewDetail$user$avatar {
  CopyWith$Fragment$ReviewDetail$user$avatar<Fragment$ReviewDetail$user$avatar>
      get copyWith => CopyWith$Fragment$ReviewDetail$user$avatar(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$ReviewDetail$user$avatar<TRes> {
  factory CopyWith$Fragment$ReviewDetail$user$avatar(
    Fragment$ReviewDetail$user$avatar instance,
    TRes Function(Fragment$ReviewDetail$user$avatar) then,
  ) = _CopyWithImpl$Fragment$ReviewDetail$user$avatar;

  factory CopyWith$Fragment$ReviewDetail$user$avatar.stub(TRes res) =
      _CopyWithStubImpl$Fragment$ReviewDetail$user$avatar;

  TRes call({
    String? medium,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$ReviewDetail$user$avatar<TRes>
    implements CopyWith$Fragment$ReviewDetail$user$avatar<TRes> {
  _CopyWithImpl$Fragment$ReviewDetail$user$avatar(
    this._instance,
    this._then,
  );

  final Fragment$ReviewDetail$user$avatar _instance;

  final TRes Function(Fragment$ReviewDetail$user$avatar) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? medium = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$ReviewDetail$user$avatar(
        medium: medium == _undefined ? _instance.medium : (medium as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$ReviewDetail$user$avatar<TRes>
    implements CopyWith$Fragment$ReviewDetail$user$avatar<TRes> {
  _CopyWithStubImpl$Fragment$ReviewDetail$user$avatar(this._res);

  TRes _res;

  call({
    String? medium,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$ReviewDetail$media {
  Fragment$ReviewDetail$media({
    this.title,
    this.coverImage,
    this.$__typename = 'Media',
  });

  factory Fragment$ReviewDetail$media.fromJson(Map<String, dynamic> json) {
    final l$title = json['title'];
    final l$coverImage = json['coverImage'];
    final l$$__typename = json['__typename'];
    return Fragment$ReviewDetail$media(
      title: l$title == null
          ? null
          : Fragment$ReviewDetail$media$title.fromJson(
              (l$title as Map<String, dynamic>)),
      coverImage: l$coverImage == null
          ? null
          : Fragment$ReviewDetail$media$coverImage.fromJson(
              (l$coverImage as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$ReviewDetail$media$title? title;

  final Fragment$ReviewDetail$media$coverImage? coverImage;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$title = title;
    _resultData['title'] = l$title?.toJson();
    final l$coverImage = coverImage;
    _resultData['coverImage'] = l$coverImage?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$title = title;
    final l$coverImage = coverImage;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$title,
      l$coverImage,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$ReviewDetail$media) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
      return false;
    }
    final l$coverImage = coverImage;
    final lOther$coverImage = other.coverImage;
    if (l$coverImage != lOther$coverImage) {
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

extension UtilityExtension$Fragment$ReviewDetail$media
    on Fragment$ReviewDetail$media {
  CopyWith$Fragment$ReviewDetail$media<Fragment$ReviewDetail$media>
      get copyWith => CopyWith$Fragment$ReviewDetail$media(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$ReviewDetail$media<TRes> {
  factory CopyWith$Fragment$ReviewDetail$media(
    Fragment$ReviewDetail$media instance,
    TRes Function(Fragment$ReviewDetail$media) then,
  ) = _CopyWithImpl$Fragment$ReviewDetail$media;

  factory CopyWith$Fragment$ReviewDetail$media.stub(TRes res) =
      _CopyWithStubImpl$Fragment$ReviewDetail$media;

  TRes call({
    Fragment$ReviewDetail$media$title? title,
    Fragment$ReviewDetail$media$coverImage? coverImage,
    String? $__typename,
  });
  CopyWith$Fragment$ReviewDetail$media$title<TRes> get title;
  CopyWith$Fragment$ReviewDetail$media$coverImage<TRes> get coverImage;
}

class _CopyWithImpl$Fragment$ReviewDetail$media<TRes>
    implements CopyWith$Fragment$ReviewDetail$media<TRes> {
  _CopyWithImpl$Fragment$ReviewDetail$media(
    this._instance,
    this._then,
  );

  final Fragment$ReviewDetail$media _instance;

  final TRes Function(Fragment$ReviewDetail$media) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? title = _undefined,
    Object? coverImage = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$ReviewDetail$media(
        title: title == _undefined
            ? _instance.title
            : (title as Fragment$ReviewDetail$media$title?),
        coverImage: coverImage == _undefined
            ? _instance.coverImage
            : (coverImage as Fragment$ReviewDetail$media$coverImage?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$ReviewDetail$media$title<TRes> get title {
    final local$title = _instance.title;
    return local$title == null
        ? CopyWith$Fragment$ReviewDetail$media$title.stub(_then(_instance))
        : CopyWith$Fragment$ReviewDetail$media$title(
            local$title, (e) => call(title: e));
  }

  CopyWith$Fragment$ReviewDetail$media$coverImage<TRes> get coverImage {
    final local$coverImage = _instance.coverImage;
    return local$coverImage == null
        ? CopyWith$Fragment$ReviewDetail$media$coverImage.stub(_then(_instance))
        : CopyWith$Fragment$ReviewDetail$media$coverImage(
            local$coverImage, (e) => call(coverImage: e));
  }
}

class _CopyWithStubImpl$Fragment$ReviewDetail$media<TRes>
    implements CopyWith$Fragment$ReviewDetail$media<TRes> {
  _CopyWithStubImpl$Fragment$ReviewDetail$media(this._res);

  TRes _res;

  call({
    Fragment$ReviewDetail$media$title? title,
    Fragment$ReviewDetail$media$coverImage? coverImage,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$ReviewDetail$media$title<TRes> get title =>
      CopyWith$Fragment$ReviewDetail$media$title.stub(_res);

  CopyWith$Fragment$ReviewDetail$media$coverImage<TRes> get coverImage =>
      CopyWith$Fragment$ReviewDetail$media$coverImage.stub(_res);
}

class Fragment$ReviewDetail$media$title {
  Fragment$ReviewDetail$media$title({
    this.userPreferred,
    this.$__typename = 'MediaTitle',
  });

  factory Fragment$ReviewDetail$media$title.fromJson(
      Map<String, dynamic> json) {
    final l$userPreferred = json['userPreferred'];
    final l$$__typename = json['__typename'];
    return Fragment$ReviewDetail$media$title(
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
    if (!(other is Fragment$ReviewDetail$media$title) ||
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

extension UtilityExtension$Fragment$ReviewDetail$media$title
    on Fragment$ReviewDetail$media$title {
  CopyWith$Fragment$ReviewDetail$media$title<Fragment$ReviewDetail$media$title>
      get copyWith => CopyWith$Fragment$ReviewDetail$media$title(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$ReviewDetail$media$title<TRes> {
  factory CopyWith$Fragment$ReviewDetail$media$title(
    Fragment$ReviewDetail$media$title instance,
    TRes Function(Fragment$ReviewDetail$media$title) then,
  ) = _CopyWithImpl$Fragment$ReviewDetail$media$title;

  factory CopyWith$Fragment$ReviewDetail$media$title.stub(TRes res) =
      _CopyWithStubImpl$Fragment$ReviewDetail$media$title;

  TRes call({
    String? userPreferred,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$ReviewDetail$media$title<TRes>
    implements CopyWith$Fragment$ReviewDetail$media$title<TRes> {
  _CopyWithImpl$Fragment$ReviewDetail$media$title(
    this._instance,
    this._then,
  );

  final Fragment$ReviewDetail$media$title _instance;

  final TRes Function(Fragment$ReviewDetail$media$title) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userPreferred = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$ReviewDetail$media$title(
        userPreferred: userPreferred == _undefined
            ? _instance.userPreferred
            : (userPreferred as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$ReviewDetail$media$title<TRes>
    implements CopyWith$Fragment$ReviewDetail$media$title<TRes> {
  _CopyWithStubImpl$Fragment$ReviewDetail$media$title(this._res);

  TRes _res;

  call({
    String? userPreferred,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$ReviewDetail$media$coverImage {
  Fragment$ReviewDetail$media$coverImage({
    this.extraLarge,
    this.$__typename = 'MediaCoverImage',
  });

  factory Fragment$ReviewDetail$media$coverImage.fromJson(
      Map<String, dynamic> json) {
    final l$extraLarge = json['extraLarge'];
    final l$$__typename = json['__typename'];
    return Fragment$ReviewDetail$media$coverImage(
      extraLarge: (l$extraLarge as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? extraLarge;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$extraLarge = extraLarge;
    _resultData['extraLarge'] = l$extraLarge;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$extraLarge = extraLarge;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$extraLarge,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$ReviewDetail$media$coverImage) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$extraLarge = extraLarge;
    final lOther$extraLarge = other.extraLarge;
    if (l$extraLarge != lOther$extraLarge) {
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

extension UtilityExtension$Fragment$ReviewDetail$media$coverImage
    on Fragment$ReviewDetail$media$coverImage {
  CopyWith$Fragment$ReviewDetail$media$coverImage<
          Fragment$ReviewDetail$media$coverImage>
      get copyWith => CopyWith$Fragment$ReviewDetail$media$coverImage(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$ReviewDetail$media$coverImage<TRes> {
  factory CopyWith$Fragment$ReviewDetail$media$coverImage(
    Fragment$ReviewDetail$media$coverImage instance,
    TRes Function(Fragment$ReviewDetail$media$coverImage) then,
  ) = _CopyWithImpl$Fragment$ReviewDetail$media$coverImage;

  factory CopyWith$Fragment$ReviewDetail$media$coverImage.stub(TRes res) =
      _CopyWithStubImpl$Fragment$ReviewDetail$media$coverImage;

  TRes call({
    String? extraLarge,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$ReviewDetail$media$coverImage<TRes>
    implements CopyWith$Fragment$ReviewDetail$media$coverImage<TRes> {
  _CopyWithImpl$Fragment$ReviewDetail$media$coverImage(
    this._instance,
    this._then,
  );

  final Fragment$ReviewDetail$media$coverImage _instance;

  final TRes Function(Fragment$ReviewDetail$media$coverImage) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? extraLarge = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$ReviewDetail$media$coverImage(
        extraLarge: extraLarge == _undefined
            ? _instance.extraLarge
            : (extraLarge as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$ReviewDetail$media$coverImage<TRes>
    implements CopyWith$Fragment$ReviewDetail$media$coverImage<TRes> {
  _CopyWithStubImpl$Fragment$ReviewDetail$media$coverImage(this._res);

  TRes _res;

  call({
    String? extraLarge,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$SearchResultCharacter {
  Fragment$SearchResultCharacter({
    required this.id,
    this.name,
    this.image,
    this.favourites,
    this.$__typename = 'Character',
  });

  factory Fragment$SearchResultCharacter.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$image = json['image'];
    final l$favourites = json['favourites'];
    final l$$__typename = json['__typename'];
    return Fragment$SearchResultCharacter(
      id: (l$id as int),
      name: l$name == null
          ? null
          : Fragment$SearchResultCharacter$name.fromJson(
              (l$name as Map<String, dynamic>)),
      image: l$image == null
          ? null
          : Fragment$SearchResultCharacter$image.fromJson(
              (l$image as Map<String, dynamic>)),
      favourites: (l$favourites as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final Fragment$SearchResultCharacter$name? name;

  final Fragment$SearchResultCharacter$image? image;

  final int? favourites;

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
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$image,
      l$favourites,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$SearchResultCharacter) ||
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
    return true;
  }
}

extension UtilityExtension$Fragment$SearchResultCharacter
    on Fragment$SearchResultCharacter {
  CopyWith$Fragment$SearchResultCharacter<Fragment$SearchResultCharacter>
      get copyWith => CopyWith$Fragment$SearchResultCharacter(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$SearchResultCharacter<TRes> {
  factory CopyWith$Fragment$SearchResultCharacter(
    Fragment$SearchResultCharacter instance,
    TRes Function(Fragment$SearchResultCharacter) then,
  ) = _CopyWithImpl$Fragment$SearchResultCharacter;

  factory CopyWith$Fragment$SearchResultCharacter.stub(TRes res) =
      _CopyWithStubImpl$Fragment$SearchResultCharacter;

  TRes call({
    int? id,
    Fragment$SearchResultCharacter$name? name,
    Fragment$SearchResultCharacter$image? image,
    int? favourites,
    String? $__typename,
  });
  CopyWith$Fragment$SearchResultCharacter$name<TRes> get name;
  CopyWith$Fragment$SearchResultCharacter$image<TRes> get image;
}

class _CopyWithImpl$Fragment$SearchResultCharacter<TRes>
    implements CopyWith$Fragment$SearchResultCharacter<TRes> {
  _CopyWithImpl$Fragment$SearchResultCharacter(
    this._instance,
    this._then,
  );

  final Fragment$SearchResultCharacter _instance;

  final TRes Function(Fragment$SearchResultCharacter) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? image = _undefined,
    Object? favourites = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$SearchResultCharacter(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        name: name == _undefined
            ? _instance.name
            : (name as Fragment$SearchResultCharacter$name?),
        image: image == _undefined
            ? _instance.image
            : (image as Fragment$SearchResultCharacter$image?),
        favourites: favourites == _undefined
            ? _instance.favourites
            : (favourites as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$SearchResultCharacter$name<TRes> get name {
    final local$name = _instance.name;
    return local$name == null
        ? CopyWith$Fragment$SearchResultCharacter$name.stub(_then(_instance))
        : CopyWith$Fragment$SearchResultCharacter$name(
            local$name, (e) => call(name: e));
  }

  CopyWith$Fragment$SearchResultCharacter$image<TRes> get image {
    final local$image = _instance.image;
    return local$image == null
        ? CopyWith$Fragment$SearchResultCharacter$image.stub(_then(_instance))
        : CopyWith$Fragment$SearchResultCharacter$image(
            local$image, (e) => call(image: e));
  }
}

class _CopyWithStubImpl$Fragment$SearchResultCharacter<TRes>
    implements CopyWith$Fragment$SearchResultCharacter<TRes> {
  _CopyWithStubImpl$Fragment$SearchResultCharacter(this._res);

  TRes _res;

  call({
    int? id,
    Fragment$SearchResultCharacter$name? name,
    Fragment$SearchResultCharacter$image? image,
    int? favourites,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$SearchResultCharacter$name<TRes> get name =>
      CopyWith$Fragment$SearchResultCharacter$name.stub(_res);

  CopyWith$Fragment$SearchResultCharacter$image<TRes> get image =>
      CopyWith$Fragment$SearchResultCharacter$image.stub(_res);
}

const fragmentDefinitionSearchResultCharacter = FragmentDefinitionNode(
  name: NameNode(value: 'SearchResultCharacter'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Character'),
    isNonNull: false,
  )),
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
      name: NameNode(value: '__typename'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
  ]),
);
const documentNodeFragmentSearchResultCharacter = DocumentNode(definitions: [
  fragmentDefinitionSearchResultCharacter,
]);

extension ClientExtension$Fragment$SearchResultCharacter
    on graphql.GraphQLClient {
  void writeFragment$SearchResultCharacter({
    required Fragment$SearchResultCharacter data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'SearchResultCharacter',
            document: documentNodeFragmentSearchResultCharacter,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$SearchResultCharacter? readFragment$SearchResultCharacter({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'SearchResultCharacter',
          document: documentNodeFragmentSearchResultCharacter,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null
        ? null
        : Fragment$SearchResultCharacter.fromJson(result);
  }
}

class Fragment$SearchResultCharacter$name {
  Fragment$SearchResultCharacter$name({
    this.userPreferred,
    this.$__typename = 'CharacterName',
  });

  factory Fragment$SearchResultCharacter$name.fromJson(
      Map<String, dynamic> json) {
    final l$userPreferred = json['userPreferred'];
    final l$$__typename = json['__typename'];
    return Fragment$SearchResultCharacter$name(
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
    if (!(other is Fragment$SearchResultCharacter$name) ||
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

extension UtilityExtension$Fragment$SearchResultCharacter$name
    on Fragment$SearchResultCharacter$name {
  CopyWith$Fragment$SearchResultCharacter$name<
          Fragment$SearchResultCharacter$name>
      get copyWith => CopyWith$Fragment$SearchResultCharacter$name(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$SearchResultCharacter$name<TRes> {
  factory CopyWith$Fragment$SearchResultCharacter$name(
    Fragment$SearchResultCharacter$name instance,
    TRes Function(Fragment$SearchResultCharacter$name) then,
  ) = _CopyWithImpl$Fragment$SearchResultCharacter$name;

  factory CopyWith$Fragment$SearchResultCharacter$name.stub(TRes res) =
      _CopyWithStubImpl$Fragment$SearchResultCharacter$name;

  TRes call({
    String? userPreferred,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$SearchResultCharacter$name<TRes>
    implements CopyWith$Fragment$SearchResultCharacter$name<TRes> {
  _CopyWithImpl$Fragment$SearchResultCharacter$name(
    this._instance,
    this._then,
  );

  final Fragment$SearchResultCharacter$name _instance;

  final TRes Function(Fragment$SearchResultCharacter$name) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userPreferred = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$SearchResultCharacter$name(
        userPreferred: userPreferred == _undefined
            ? _instance.userPreferred
            : (userPreferred as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$SearchResultCharacter$name<TRes>
    implements CopyWith$Fragment$SearchResultCharacter$name<TRes> {
  _CopyWithStubImpl$Fragment$SearchResultCharacter$name(this._res);

  TRes _res;

  call({
    String? userPreferred,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$SearchResultCharacter$image {
  Fragment$SearchResultCharacter$image({
    this.large,
    this.$__typename = 'CharacterImage',
  });

  factory Fragment$SearchResultCharacter$image.fromJson(
      Map<String, dynamic> json) {
    final l$large = json['large'];
    final l$$__typename = json['__typename'];
    return Fragment$SearchResultCharacter$image(
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
    if (!(other is Fragment$SearchResultCharacter$image) ||
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

extension UtilityExtension$Fragment$SearchResultCharacter$image
    on Fragment$SearchResultCharacter$image {
  CopyWith$Fragment$SearchResultCharacter$image<
          Fragment$SearchResultCharacter$image>
      get copyWith => CopyWith$Fragment$SearchResultCharacter$image(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$SearchResultCharacter$image<TRes> {
  factory CopyWith$Fragment$SearchResultCharacter$image(
    Fragment$SearchResultCharacter$image instance,
    TRes Function(Fragment$SearchResultCharacter$image) then,
  ) = _CopyWithImpl$Fragment$SearchResultCharacter$image;

  factory CopyWith$Fragment$SearchResultCharacter$image.stub(TRes res) =
      _CopyWithStubImpl$Fragment$SearchResultCharacter$image;

  TRes call({
    String? large,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$SearchResultCharacter$image<TRes>
    implements CopyWith$Fragment$SearchResultCharacter$image<TRes> {
  _CopyWithImpl$Fragment$SearchResultCharacter$image(
    this._instance,
    this._then,
  );

  final Fragment$SearchResultCharacter$image _instance;

  final TRes Function(Fragment$SearchResultCharacter$image) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? large = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$SearchResultCharacter$image(
        large: large == _undefined ? _instance.large : (large as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$SearchResultCharacter$image<TRes>
    implements CopyWith$Fragment$SearchResultCharacter$image<TRes> {
  _CopyWithStubImpl$Fragment$SearchResultCharacter$image(this._res);

  TRes _res;

  call({
    String? large,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$SearchResultStaff {
  Fragment$SearchResultStaff({
    required this.id,
    this.name,
    this.image,
    this.favourites,
    this.$__typename = 'Staff',
  });

  factory Fragment$SearchResultStaff.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$image = json['image'];
    final l$favourites = json['favourites'];
    final l$$__typename = json['__typename'];
    return Fragment$SearchResultStaff(
      id: (l$id as int),
      name: l$name == null
          ? null
          : Fragment$SearchResultStaff$name.fromJson(
              (l$name as Map<String, dynamic>)),
      image: l$image == null
          ? null
          : Fragment$SearchResultStaff$image.fromJson(
              (l$image as Map<String, dynamic>)),
      favourites: (l$favourites as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final Fragment$SearchResultStaff$name? name;

  final Fragment$SearchResultStaff$image? image;

  final int? favourites;

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
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$image,
      l$favourites,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$SearchResultStaff) ||
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
    return true;
  }
}

extension UtilityExtension$Fragment$SearchResultStaff
    on Fragment$SearchResultStaff {
  CopyWith$Fragment$SearchResultStaff<Fragment$SearchResultStaff>
      get copyWith => CopyWith$Fragment$SearchResultStaff(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$SearchResultStaff<TRes> {
  factory CopyWith$Fragment$SearchResultStaff(
    Fragment$SearchResultStaff instance,
    TRes Function(Fragment$SearchResultStaff) then,
  ) = _CopyWithImpl$Fragment$SearchResultStaff;

  factory CopyWith$Fragment$SearchResultStaff.stub(TRes res) =
      _CopyWithStubImpl$Fragment$SearchResultStaff;

  TRes call({
    int? id,
    Fragment$SearchResultStaff$name? name,
    Fragment$SearchResultStaff$image? image,
    int? favourites,
    String? $__typename,
  });
  CopyWith$Fragment$SearchResultStaff$name<TRes> get name;
  CopyWith$Fragment$SearchResultStaff$image<TRes> get image;
}

class _CopyWithImpl$Fragment$SearchResultStaff<TRes>
    implements CopyWith$Fragment$SearchResultStaff<TRes> {
  _CopyWithImpl$Fragment$SearchResultStaff(
    this._instance,
    this._then,
  );

  final Fragment$SearchResultStaff _instance;

  final TRes Function(Fragment$SearchResultStaff) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? image = _undefined,
    Object? favourites = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$SearchResultStaff(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        name: name == _undefined
            ? _instance.name
            : (name as Fragment$SearchResultStaff$name?),
        image: image == _undefined
            ? _instance.image
            : (image as Fragment$SearchResultStaff$image?),
        favourites: favourites == _undefined
            ? _instance.favourites
            : (favourites as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$SearchResultStaff$name<TRes> get name {
    final local$name = _instance.name;
    return local$name == null
        ? CopyWith$Fragment$SearchResultStaff$name.stub(_then(_instance))
        : CopyWith$Fragment$SearchResultStaff$name(
            local$name, (e) => call(name: e));
  }

  CopyWith$Fragment$SearchResultStaff$image<TRes> get image {
    final local$image = _instance.image;
    return local$image == null
        ? CopyWith$Fragment$SearchResultStaff$image.stub(_then(_instance))
        : CopyWith$Fragment$SearchResultStaff$image(
            local$image, (e) => call(image: e));
  }
}

class _CopyWithStubImpl$Fragment$SearchResultStaff<TRes>
    implements CopyWith$Fragment$SearchResultStaff<TRes> {
  _CopyWithStubImpl$Fragment$SearchResultStaff(this._res);

  TRes _res;

  call({
    int? id,
    Fragment$SearchResultStaff$name? name,
    Fragment$SearchResultStaff$image? image,
    int? favourites,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$SearchResultStaff$name<TRes> get name =>
      CopyWith$Fragment$SearchResultStaff$name.stub(_res);

  CopyWith$Fragment$SearchResultStaff$image<TRes> get image =>
      CopyWith$Fragment$SearchResultStaff$image.stub(_res);
}

const fragmentDefinitionSearchResultStaff = FragmentDefinitionNode(
  name: NameNode(value: 'SearchResultStaff'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Staff'),
    isNonNull: false,
  )),
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
      name: NameNode(value: '__typename'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
  ]),
);
const documentNodeFragmentSearchResultStaff = DocumentNode(definitions: [
  fragmentDefinitionSearchResultStaff,
]);

extension ClientExtension$Fragment$SearchResultStaff on graphql.GraphQLClient {
  void writeFragment$SearchResultStaff({
    required Fragment$SearchResultStaff data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'SearchResultStaff',
            document: documentNodeFragmentSearchResultStaff,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$SearchResultStaff? readFragment$SearchResultStaff({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'SearchResultStaff',
          document: documentNodeFragmentSearchResultStaff,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$SearchResultStaff.fromJson(result);
  }
}

class Fragment$SearchResultStaff$name {
  Fragment$SearchResultStaff$name({
    this.userPreferred,
    this.$__typename = 'StaffName',
  });

  factory Fragment$SearchResultStaff$name.fromJson(Map<String, dynamic> json) {
    final l$userPreferred = json['userPreferred'];
    final l$$__typename = json['__typename'];
    return Fragment$SearchResultStaff$name(
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
    if (!(other is Fragment$SearchResultStaff$name) ||
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

extension UtilityExtension$Fragment$SearchResultStaff$name
    on Fragment$SearchResultStaff$name {
  CopyWith$Fragment$SearchResultStaff$name<Fragment$SearchResultStaff$name>
      get copyWith => CopyWith$Fragment$SearchResultStaff$name(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$SearchResultStaff$name<TRes> {
  factory CopyWith$Fragment$SearchResultStaff$name(
    Fragment$SearchResultStaff$name instance,
    TRes Function(Fragment$SearchResultStaff$name) then,
  ) = _CopyWithImpl$Fragment$SearchResultStaff$name;

  factory CopyWith$Fragment$SearchResultStaff$name.stub(TRes res) =
      _CopyWithStubImpl$Fragment$SearchResultStaff$name;

  TRes call({
    String? userPreferred,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$SearchResultStaff$name<TRes>
    implements CopyWith$Fragment$SearchResultStaff$name<TRes> {
  _CopyWithImpl$Fragment$SearchResultStaff$name(
    this._instance,
    this._then,
  );

  final Fragment$SearchResultStaff$name _instance;

  final TRes Function(Fragment$SearchResultStaff$name) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userPreferred = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$SearchResultStaff$name(
        userPreferred: userPreferred == _undefined
            ? _instance.userPreferred
            : (userPreferred as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$SearchResultStaff$name<TRes>
    implements CopyWith$Fragment$SearchResultStaff$name<TRes> {
  _CopyWithStubImpl$Fragment$SearchResultStaff$name(this._res);

  TRes _res;

  call({
    String? userPreferred,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$SearchResultStaff$image {
  Fragment$SearchResultStaff$image({
    this.large,
    this.$__typename = 'StaffImage',
  });

  factory Fragment$SearchResultStaff$image.fromJson(Map<String, dynamic> json) {
    final l$large = json['large'];
    final l$$__typename = json['__typename'];
    return Fragment$SearchResultStaff$image(
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
    if (!(other is Fragment$SearchResultStaff$image) ||
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

extension UtilityExtension$Fragment$SearchResultStaff$image
    on Fragment$SearchResultStaff$image {
  CopyWith$Fragment$SearchResultStaff$image<Fragment$SearchResultStaff$image>
      get copyWith => CopyWith$Fragment$SearchResultStaff$image(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$SearchResultStaff$image<TRes> {
  factory CopyWith$Fragment$SearchResultStaff$image(
    Fragment$SearchResultStaff$image instance,
    TRes Function(Fragment$SearchResultStaff$image) then,
  ) = _CopyWithImpl$Fragment$SearchResultStaff$image;

  factory CopyWith$Fragment$SearchResultStaff$image.stub(TRes res) =
      _CopyWithStubImpl$Fragment$SearchResultStaff$image;

  TRes call({
    String? large,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$SearchResultStaff$image<TRes>
    implements CopyWith$Fragment$SearchResultStaff$image<TRes> {
  _CopyWithImpl$Fragment$SearchResultStaff$image(
    this._instance,
    this._then,
  );

  final Fragment$SearchResultStaff$image _instance;

  final TRes Function(Fragment$SearchResultStaff$image) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? large = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$SearchResultStaff$image(
        large: large == _undefined ? _instance.large : (large as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$SearchResultStaff$image<TRes>
    implements CopyWith$Fragment$SearchResultStaff$image<TRes> {
  _CopyWithStubImpl$Fragment$SearchResultStaff$image(this._res);

  TRes _res;

  call({
    String? large,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$SearchResultStudio {
  Fragment$SearchResultStudio({
    required this.id,
    required this.name,
    this.favourites,
    this.media,
    this.$__typename = 'Studio',
  });

  factory Fragment$SearchResultStudio.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$favourites = json['favourites'];
    final l$media = json['media'];
    final l$$__typename = json['__typename'];
    return Fragment$SearchResultStudio(
      id: (l$id as int),
      name: (l$name as String),
      favourites: (l$favourites as int?),
      media: l$media == null
          ? null
          : Fragment$SearchResultStudio$media.fromJson(
              (l$media as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String name;

  final int? favourites;

  final Fragment$SearchResultStudio$media? media;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$favourites = favourites;
    _resultData['favourites'] = l$favourites;
    final l$media = media;
    _resultData['media'] = l$media?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$favourites = favourites;
    final l$media = media;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$favourites,
      l$media,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$SearchResultStudio) ||
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
    final l$favourites = favourites;
    final lOther$favourites = other.favourites;
    if (l$favourites != lOther$favourites) {
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

extension UtilityExtension$Fragment$SearchResultStudio
    on Fragment$SearchResultStudio {
  CopyWith$Fragment$SearchResultStudio<Fragment$SearchResultStudio>
      get copyWith => CopyWith$Fragment$SearchResultStudio(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$SearchResultStudio<TRes> {
  factory CopyWith$Fragment$SearchResultStudio(
    Fragment$SearchResultStudio instance,
    TRes Function(Fragment$SearchResultStudio) then,
  ) = _CopyWithImpl$Fragment$SearchResultStudio;

  factory CopyWith$Fragment$SearchResultStudio.stub(TRes res) =
      _CopyWithStubImpl$Fragment$SearchResultStudio;

  TRes call({
    int? id,
    String? name,
    int? favourites,
    Fragment$SearchResultStudio$media? media,
    String? $__typename,
  });
  CopyWith$Fragment$SearchResultStudio$media<TRes> get media;
}

class _CopyWithImpl$Fragment$SearchResultStudio<TRes>
    implements CopyWith$Fragment$SearchResultStudio<TRes> {
  _CopyWithImpl$Fragment$SearchResultStudio(
    this._instance,
    this._then,
  );

  final Fragment$SearchResultStudio _instance;

  final TRes Function(Fragment$SearchResultStudio) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? favourites = _undefined,
    Object? media = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$SearchResultStudio(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        favourites: favourites == _undefined
            ? _instance.favourites
            : (favourites as int?),
        media: media == _undefined
            ? _instance.media
            : (media as Fragment$SearchResultStudio$media?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$SearchResultStudio$media<TRes> get media {
    final local$media = _instance.media;
    return local$media == null
        ? CopyWith$Fragment$SearchResultStudio$media.stub(_then(_instance))
        : CopyWith$Fragment$SearchResultStudio$media(
            local$media, (e) => call(media: e));
  }
}

class _CopyWithStubImpl$Fragment$SearchResultStudio<TRes>
    implements CopyWith$Fragment$SearchResultStudio<TRes> {
  _CopyWithStubImpl$Fragment$SearchResultStudio(this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    int? favourites,
    Fragment$SearchResultStudio$media? media,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$SearchResultStudio$media<TRes> get media =>
      CopyWith$Fragment$SearchResultStudio$media.stub(_res);
}

const fragmentDefinitionSearchResultStudio = FragmentDefinitionNode(
  name: NameNode(value: 'SearchResultStudio'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Studio'),
    isNonNull: false,
  )),
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
      name: NameNode(value: 'favourites'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'media'),
      alias: null,
      arguments: [
        ArgumentNode(
          name: NameNode(value: 'perPage'),
          value: IntValueNode(value: '1'),
        ),
        ArgumentNode(
          name: NameNode(value: 'sort'),
          value: ListValueNode(values: [
            EnumValueNode(name: NameNode(value: 'TRENDING_DESC')),
            EnumValueNode(name: NameNode(value: 'POPULARITY_DESC')),
          ]),
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
          name: NameNode(value: 'nodes'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: SelectionSetNode(selections: [
            FieldNode(
              name: NameNode(value: 'isAdult'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'coverImage'),
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
      name: NameNode(value: '__typename'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
  ]),
);
const documentNodeFragmentSearchResultStudio = DocumentNode(definitions: [
  fragmentDefinitionSearchResultStudio,
]);

extension ClientExtension$Fragment$SearchResultStudio on graphql.GraphQLClient {
  void writeFragment$SearchResultStudio({
    required Fragment$SearchResultStudio data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'SearchResultStudio',
            document: documentNodeFragmentSearchResultStudio,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$SearchResultStudio? readFragment$SearchResultStudio({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'SearchResultStudio',
          document: documentNodeFragmentSearchResultStudio,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$SearchResultStudio.fromJson(result);
  }
}

class Fragment$SearchResultStudio$media {
  Fragment$SearchResultStudio$media({
    this.nodes,
    this.$__typename = 'MediaConnection',
  });

  factory Fragment$SearchResultStudio$media.fromJson(
      Map<String, dynamic> json) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Fragment$SearchResultStudio$media(
      nodes: (l$nodes as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$SearchResultStudio$media$nodes.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$SearchResultStudio$media$nodes?>? nodes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$nodes = nodes;
    _resultData['nodes'] = l$nodes?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$nodes = nodes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$nodes == null ? null : Object.hashAll(l$nodes.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$SearchResultStudio$media) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$nodes = nodes;
    final lOther$nodes = other.nodes;
    if (l$nodes != null && lOther$nodes != null) {
      if (l$nodes.length != lOther$nodes.length) {
        return false;
      }
      for (int i = 0; i < l$nodes.length; i++) {
        final l$nodes$entry = l$nodes[i];
        final lOther$nodes$entry = lOther$nodes[i];
        if (l$nodes$entry != lOther$nodes$entry) {
          return false;
        }
      }
    } else if (l$nodes != lOther$nodes) {
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

extension UtilityExtension$Fragment$SearchResultStudio$media
    on Fragment$SearchResultStudio$media {
  CopyWith$Fragment$SearchResultStudio$media<Fragment$SearchResultStudio$media>
      get copyWith => CopyWith$Fragment$SearchResultStudio$media(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$SearchResultStudio$media<TRes> {
  factory CopyWith$Fragment$SearchResultStudio$media(
    Fragment$SearchResultStudio$media instance,
    TRes Function(Fragment$SearchResultStudio$media) then,
  ) = _CopyWithImpl$Fragment$SearchResultStudio$media;

  factory CopyWith$Fragment$SearchResultStudio$media.stub(TRes res) =
      _CopyWithStubImpl$Fragment$SearchResultStudio$media;

  TRes call({
    List<Fragment$SearchResultStudio$media$nodes?>? nodes,
    String? $__typename,
  });
  TRes nodes(
      Iterable<Fragment$SearchResultStudio$media$nodes?>? Function(
              Iterable<
                  CopyWith$Fragment$SearchResultStudio$media$nodes<
                      Fragment$SearchResultStudio$media$nodes>?>?)
          _fn);
}

class _CopyWithImpl$Fragment$SearchResultStudio$media<TRes>
    implements CopyWith$Fragment$SearchResultStudio$media<TRes> {
  _CopyWithImpl$Fragment$SearchResultStudio$media(
    this._instance,
    this._then,
  );

  final Fragment$SearchResultStudio$media _instance;

  final TRes Function(Fragment$SearchResultStudio$media) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$SearchResultStudio$media(
        nodes: nodes == _undefined
            ? _instance.nodes
            : (nodes as List<Fragment$SearchResultStudio$media$nodes?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes nodes(
          Iterable<Fragment$SearchResultStudio$media$nodes?>? Function(
                  Iterable<
                      CopyWith$Fragment$SearchResultStudio$media$nodes<
                          Fragment$SearchResultStudio$media$nodes>?>?)
              _fn) =>
      call(
          nodes: _fn(_instance.nodes?.map((e) => e == null
              ? null
              : CopyWith$Fragment$SearchResultStudio$media$nodes(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Fragment$SearchResultStudio$media<TRes>
    implements CopyWith$Fragment$SearchResultStudio$media<TRes> {
  _CopyWithStubImpl$Fragment$SearchResultStudio$media(this._res);

  TRes _res;

  call({
    List<Fragment$SearchResultStudio$media$nodes?>? nodes,
    String? $__typename,
  }) =>
      _res;

  nodes(_fn) => _res;
}

class Fragment$SearchResultStudio$media$nodes {
  Fragment$SearchResultStudio$media$nodes({
    this.isAdult,
    this.coverImage,
    this.$__typename = 'Media',
  });

  factory Fragment$SearchResultStudio$media$nodes.fromJson(
      Map<String, dynamic> json) {
    final l$isAdult = json['isAdult'];
    final l$coverImage = json['coverImage'];
    final l$$__typename = json['__typename'];
    return Fragment$SearchResultStudio$media$nodes(
      isAdult: (l$isAdult as bool?),
      coverImage: l$coverImage == null
          ? null
          : Fragment$SearchResultStudio$media$nodes$coverImage.fromJson(
              (l$coverImage as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final bool? isAdult;

  final Fragment$SearchResultStudio$media$nodes$coverImage? coverImage;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$isAdult = isAdult;
    _resultData['isAdult'] = l$isAdult;
    final l$coverImage = coverImage;
    _resultData['coverImage'] = l$coverImage?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$isAdult = isAdult;
    final l$coverImage = coverImage;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$isAdult,
      l$coverImage,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$SearchResultStudio$media$nodes) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$isAdult = isAdult;
    final lOther$isAdult = other.isAdult;
    if (l$isAdult != lOther$isAdult) {
      return false;
    }
    final l$coverImage = coverImage;
    final lOther$coverImage = other.coverImage;
    if (l$coverImage != lOther$coverImage) {
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

extension UtilityExtension$Fragment$SearchResultStudio$media$nodes
    on Fragment$SearchResultStudio$media$nodes {
  CopyWith$Fragment$SearchResultStudio$media$nodes<
          Fragment$SearchResultStudio$media$nodes>
      get copyWith => CopyWith$Fragment$SearchResultStudio$media$nodes(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$SearchResultStudio$media$nodes<TRes> {
  factory CopyWith$Fragment$SearchResultStudio$media$nodes(
    Fragment$SearchResultStudio$media$nodes instance,
    TRes Function(Fragment$SearchResultStudio$media$nodes) then,
  ) = _CopyWithImpl$Fragment$SearchResultStudio$media$nodes;

  factory CopyWith$Fragment$SearchResultStudio$media$nodes.stub(TRes res) =
      _CopyWithStubImpl$Fragment$SearchResultStudio$media$nodes;

  TRes call({
    bool? isAdult,
    Fragment$SearchResultStudio$media$nodes$coverImage? coverImage,
    String? $__typename,
  });
  CopyWith$Fragment$SearchResultStudio$media$nodes$coverImage<TRes>
      get coverImage;
}

class _CopyWithImpl$Fragment$SearchResultStudio$media$nodes<TRes>
    implements CopyWith$Fragment$SearchResultStudio$media$nodes<TRes> {
  _CopyWithImpl$Fragment$SearchResultStudio$media$nodes(
    this._instance,
    this._then,
  );

  final Fragment$SearchResultStudio$media$nodes _instance;

  final TRes Function(Fragment$SearchResultStudio$media$nodes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? isAdult = _undefined,
    Object? coverImage = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$SearchResultStudio$media$nodes(
        isAdult: isAdult == _undefined ? _instance.isAdult : (isAdult as bool?),
        coverImage: coverImage == _undefined
            ? _instance.coverImage
            : (coverImage
                as Fragment$SearchResultStudio$media$nodes$coverImage?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$SearchResultStudio$media$nodes$coverImage<TRes>
      get coverImage {
    final local$coverImage = _instance.coverImage;
    return local$coverImage == null
        ? CopyWith$Fragment$SearchResultStudio$media$nodes$coverImage.stub(
            _then(_instance))
        : CopyWith$Fragment$SearchResultStudio$media$nodes$coverImage(
            local$coverImage, (e) => call(coverImage: e));
  }
}

class _CopyWithStubImpl$Fragment$SearchResultStudio$media$nodes<TRes>
    implements CopyWith$Fragment$SearchResultStudio$media$nodes<TRes> {
  _CopyWithStubImpl$Fragment$SearchResultStudio$media$nodes(this._res);

  TRes _res;

  call({
    bool? isAdult,
    Fragment$SearchResultStudio$media$nodes$coverImage? coverImage,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$SearchResultStudio$media$nodes$coverImage<TRes>
      get coverImage =>
          CopyWith$Fragment$SearchResultStudio$media$nodes$coverImage.stub(
              _res);
}

class Fragment$SearchResultStudio$media$nodes$coverImage {
  Fragment$SearchResultStudio$media$nodes$coverImage({
    this.large,
    this.$__typename = 'MediaCoverImage',
  });

  factory Fragment$SearchResultStudio$media$nodes$coverImage.fromJson(
      Map<String, dynamic> json) {
    final l$large = json['large'];
    final l$$__typename = json['__typename'];
    return Fragment$SearchResultStudio$media$nodes$coverImage(
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
    if (!(other is Fragment$SearchResultStudio$media$nodes$coverImage) ||
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

extension UtilityExtension$Fragment$SearchResultStudio$media$nodes$coverImage
    on Fragment$SearchResultStudio$media$nodes$coverImage {
  CopyWith$Fragment$SearchResultStudio$media$nodes$coverImage<
          Fragment$SearchResultStudio$media$nodes$coverImage>
      get copyWith =>
          CopyWith$Fragment$SearchResultStudio$media$nodes$coverImage(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$SearchResultStudio$media$nodes$coverImage<
    TRes> {
  factory CopyWith$Fragment$SearchResultStudio$media$nodes$coverImage(
    Fragment$SearchResultStudio$media$nodes$coverImage instance,
    TRes Function(Fragment$SearchResultStudio$media$nodes$coverImage) then,
  ) = _CopyWithImpl$Fragment$SearchResultStudio$media$nodes$coverImage;

  factory CopyWith$Fragment$SearchResultStudio$media$nodes$coverImage.stub(
          TRes res) =
      _CopyWithStubImpl$Fragment$SearchResultStudio$media$nodes$coverImage;

  TRes call({
    String? large,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$SearchResultStudio$media$nodes$coverImage<TRes>
    implements
        CopyWith$Fragment$SearchResultStudio$media$nodes$coverImage<TRes> {
  _CopyWithImpl$Fragment$SearchResultStudio$media$nodes$coverImage(
    this._instance,
    this._then,
  );

  final Fragment$SearchResultStudio$media$nodes$coverImage _instance;

  final TRes Function(Fragment$SearchResultStudio$media$nodes$coverImage) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? large = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$SearchResultStudio$media$nodes$coverImage(
        large: large == _undefined ? _instance.large : (large as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$SearchResultStudio$media$nodes$coverImage<TRes>
    implements
        CopyWith$Fragment$SearchResultStudio$media$nodes$coverImage<TRes> {
  _CopyWithStubImpl$Fragment$SearchResultStudio$media$nodes$coverImage(
      this._res);

  TRes _res;

  call({
    String? large,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$SearchResultUser {
  Fragment$SearchResultUser({
    required this.id,
    required this.name,
    this.avatar,
    this.$__typename = 'User',
  });

  factory Fragment$SearchResultUser.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$avatar = json['avatar'];
    final l$$__typename = json['__typename'];
    return Fragment$SearchResultUser(
      id: (l$id as int),
      name: (l$name as String),
      avatar: l$avatar == null
          ? null
          : Fragment$SearchResultUser$avatar.fromJson(
              (l$avatar as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String name;

  final Fragment$SearchResultUser$avatar? avatar;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$avatar = avatar;
    _resultData['avatar'] = l$avatar?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$avatar = avatar;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$avatar,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$SearchResultUser) ||
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$SearchResultUser
    on Fragment$SearchResultUser {
  CopyWith$Fragment$SearchResultUser<Fragment$SearchResultUser> get copyWith =>
      CopyWith$Fragment$SearchResultUser(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$SearchResultUser<TRes> {
  factory CopyWith$Fragment$SearchResultUser(
    Fragment$SearchResultUser instance,
    TRes Function(Fragment$SearchResultUser) then,
  ) = _CopyWithImpl$Fragment$SearchResultUser;

  factory CopyWith$Fragment$SearchResultUser.stub(TRes res) =
      _CopyWithStubImpl$Fragment$SearchResultUser;

  TRes call({
    int? id,
    String? name,
    Fragment$SearchResultUser$avatar? avatar,
    String? $__typename,
  });
  CopyWith$Fragment$SearchResultUser$avatar<TRes> get avatar;
}

class _CopyWithImpl$Fragment$SearchResultUser<TRes>
    implements CopyWith$Fragment$SearchResultUser<TRes> {
  _CopyWithImpl$Fragment$SearchResultUser(
    this._instance,
    this._then,
  );

  final Fragment$SearchResultUser _instance;

  final TRes Function(Fragment$SearchResultUser) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? avatar = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$SearchResultUser(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        avatar: avatar == _undefined
            ? _instance.avatar
            : (avatar as Fragment$SearchResultUser$avatar?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$SearchResultUser$avatar<TRes> get avatar {
    final local$avatar = _instance.avatar;
    return local$avatar == null
        ? CopyWith$Fragment$SearchResultUser$avatar.stub(_then(_instance))
        : CopyWith$Fragment$SearchResultUser$avatar(
            local$avatar, (e) => call(avatar: e));
  }
}

class _CopyWithStubImpl$Fragment$SearchResultUser<TRes>
    implements CopyWith$Fragment$SearchResultUser<TRes> {
  _CopyWithStubImpl$Fragment$SearchResultUser(this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    Fragment$SearchResultUser$avatar? avatar,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$SearchResultUser$avatar<TRes> get avatar =>
      CopyWith$Fragment$SearchResultUser$avatar.stub(_res);
}

const fragmentDefinitionSearchResultUser = FragmentDefinitionNode(
  name: NameNode(value: 'SearchResultUser'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'User'),
    isNonNull: false,
  )),
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
      name: NameNode(value: '__typename'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
  ]),
);
const documentNodeFragmentSearchResultUser = DocumentNode(definitions: [
  fragmentDefinitionSearchResultUser,
]);

extension ClientExtension$Fragment$SearchResultUser on graphql.GraphQLClient {
  void writeFragment$SearchResultUser({
    required Fragment$SearchResultUser data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'SearchResultUser',
            document: documentNodeFragmentSearchResultUser,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$SearchResultUser? readFragment$SearchResultUser({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'SearchResultUser',
          document: documentNodeFragmentSearchResultUser,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$SearchResultUser.fromJson(result);
  }
}

class Fragment$SearchResultUser$avatar {
  Fragment$SearchResultUser$avatar({
    this.large,
    this.$__typename = 'UserAvatar',
  });

  factory Fragment$SearchResultUser$avatar.fromJson(Map<String, dynamic> json) {
    final l$large = json['large'];
    final l$$__typename = json['__typename'];
    return Fragment$SearchResultUser$avatar(
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
    if (!(other is Fragment$SearchResultUser$avatar) ||
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

extension UtilityExtension$Fragment$SearchResultUser$avatar
    on Fragment$SearchResultUser$avatar {
  CopyWith$Fragment$SearchResultUser$avatar<Fragment$SearchResultUser$avatar>
      get copyWith => CopyWith$Fragment$SearchResultUser$avatar(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$SearchResultUser$avatar<TRes> {
  factory CopyWith$Fragment$SearchResultUser$avatar(
    Fragment$SearchResultUser$avatar instance,
    TRes Function(Fragment$SearchResultUser$avatar) then,
  ) = _CopyWithImpl$Fragment$SearchResultUser$avatar;

  factory CopyWith$Fragment$SearchResultUser$avatar.stub(TRes res) =
      _CopyWithStubImpl$Fragment$SearchResultUser$avatar;

  TRes call({
    String? large,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$SearchResultUser$avatar<TRes>
    implements CopyWith$Fragment$SearchResultUser$avatar<TRes> {
  _CopyWithImpl$Fragment$SearchResultUser$avatar(
    this._instance,
    this._then,
  );

  final Fragment$SearchResultUser$avatar _instance;

  final TRes Function(Fragment$SearchResultUser$avatar) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? large = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$SearchResultUser$avatar(
        large: large == _undefined ? _instance.large : (large as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$SearchResultUser$avatar<TRes>
    implements CopyWith$Fragment$SearchResultUser$avatar<TRes> {
  _CopyWithStubImpl$Fragment$SearchResultUser$avatar(this._res);

  TRes _res;

  call({
    String? large,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$CalendarAiringSchedule {
  Fragment$CalendarAiringSchedule({
    required this.id,
    this.media,
    required this.airingAt,
    required this.timeUntilAiring,
    required this.episode,
    this.$__typename = 'AiringSchedule',
  });

  factory Fragment$CalendarAiringSchedule.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$media = json['media'];
    final l$airingAt = json['airingAt'];
    final l$timeUntilAiring = json['timeUntilAiring'];
    final l$episode = json['episode'];
    final l$$__typename = json['__typename'];
    return Fragment$CalendarAiringSchedule(
      id: (l$id as int),
      media: l$media == null
          ? null
          : Fragment$CalendarAiringSchedule$media.fromJson(
              (l$media as Map<String, dynamic>)),
      airingAt: (l$airingAt as int),
      timeUntilAiring: (l$timeUntilAiring as int),
      episode: (l$episode as int),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final Fragment$CalendarAiringSchedule$media? media;

  final int airingAt;

  final int timeUntilAiring;

  final int episode;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$media = media;
    _resultData['media'] = l$media?.toJson();
    final l$airingAt = airingAt;
    _resultData['airingAt'] = l$airingAt;
    final l$timeUntilAiring = timeUntilAiring;
    _resultData['timeUntilAiring'] = l$timeUntilAiring;
    final l$episode = episode;
    _resultData['episode'] = l$episode;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$media = media;
    final l$airingAt = airingAt;
    final l$timeUntilAiring = timeUntilAiring;
    final l$episode = episode;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$media,
      l$airingAt,
      l$timeUntilAiring,
      l$episode,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$CalendarAiringSchedule) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$media = media;
    final lOther$media = other.media;
    if (l$media != lOther$media) {
      return false;
    }
    final l$airingAt = airingAt;
    final lOther$airingAt = other.airingAt;
    if (l$airingAt != lOther$airingAt) {
      return false;
    }
    final l$timeUntilAiring = timeUntilAiring;
    final lOther$timeUntilAiring = other.timeUntilAiring;
    if (l$timeUntilAiring != lOther$timeUntilAiring) {
      return false;
    }
    final l$episode = episode;
    final lOther$episode = other.episode;
    if (l$episode != lOther$episode) {
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

extension UtilityExtension$Fragment$CalendarAiringSchedule
    on Fragment$CalendarAiringSchedule {
  CopyWith$Fragment$CalendarAiringSchedule<Fragment$CalendarAiringSchedule>
      get copyWith => CopyWith$Fragment$CalendarAiringSchedule(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$CalendarAiringSchedule<TRes> {
  factory CopyWith$Fragment$CalendarAiringSchedule(
    Fragment$CalendarAiringSchedule instance,
    TRes Function(Fragment$CalendarAiringSchedule) then,
  ) = _CopyWithImpl$Fragment$CalendarAiringSchedule;

  factory CopyWith$Fragment$CalendarAiringSchedule.stub(TRes res) =
      _CopyWithStubImpl$Fragment$CalendarAiringSchedule;

  TRes call({
    int? id,
    Fragment$CalendarAiringSchedule$media? media,
    int? airingAt,
    int? timeUntilAiring,
    int? episode,
    String? $__typename,
  });
  CopyWith$Fragment$CalendarAiringSchedule$media<TRes> get media;
}

class _CopyWithImpl$Fragment$CalendarAiringSchedule<TRes>
    implements CopyWith$Fragment$CalendarAiringSchedule<TRes> {
  _CopyWithImpl$Fragment$CalendarAiringSchedule(
    this._instance,
    this._then,
  );

  final Fragment$CalendarAiringSchedule _instance;

  final TRes Function(Fragment$CalendarAiringSchedule) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? media = _undefined,
    Object? airingAt = _undefined,
    Object? timeUntilAiring = _undefined,
    Object? episode = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$CalendarAiringSchedule(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        media: media == _undefined
            ? _instance.media
            : (media as Fragment$CalendarAiringSchedule$media?),
        airingAt: airingAt == _undefined || airingAt == null
            ? _instance.airingAt
            : (airingAt as int),
        timeUntilAiring:
            timeUntilAiring == _undefined || timeUntilAiring == null
                ? _instance.timeUntilAiring
                : (timeUntilAiring as int),
        episode: episode == _undefined || episode == null
            ? _instance.episode
            : (episode as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$CalendarAiringSchedule$media<TRes> get media {
    final local$media = _instance.media;
    return local$media == null
        ? CopyWith$Fragment$CalendarAiringSchedule$media.stub(_then(_instance))
        : CopyWith$Fragment$CalendarAiringSchedule$media(
            local$media, (e) => call(media: e));
  }
}

class _CopyWithStubImpl$Fragment$CalendarAiringSchedule<TRes>
    implements CopyWith$Fragment$CalendarAiringSchedule<TRes> {
  _CopyWithStubImpl$Fragment$CalendarAiringSchedule(this._res);

  TRes _res;

  call({
    int? id,
    Fragment$CalendarAiringSchedule$media? media,
    int? airingAt,
    int? timeUntilAiring,
    int? episode,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$CalendarAiringSchedule$media<TRes> get media =>
      CopyWith$Fragment$CalendarAiringSchedule$media.stub(_res);
}

const fragmentDefinitionCalendarAiringSchedule = FragmentDefinitionNode(
  name: NameNode(value: 'CalendarAiringSchedule'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'AiringSchedule'),
    isNonNull: false,
  )),
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
      name: NameNode(value: 'media'),
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
          name: NameNode(value: 'title'),
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
              name: NameNode(value: 'english'),
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
          name: NameNode(value: 'bannerImage'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'mediaListEntry'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: SelectionSetNode(selections: [
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
      name: NameNode(value: 'airingAt'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'timeUntilAiring'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'episode'),
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
);
const documentNodeFragmentCalendarAiringSchedule = DocumentNode(definitions: [
  fragmentDefinitionCalendarAiringSchedule,
]);

extension ClientExtension$Fragment$CalendarAiringSchedule
    on graphql.GraphQLClient {
  void writeFragment$CalendarAiringSchedule({
    required Fragment$CalendarAiringSchedule data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'CalendarAiringSchedule',
            document: documentNodeFragmentCalendarAiringSchedule,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$CalendarAiringSchedule? readFragment$CalendarAiringSchedule({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'CalendarAiringSchedule',
          document: documentNodeFragmentCalendarAiringSchedule,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null
        ? null
        : Fragment$CalendarAiringSchedule.fromJson(result);
  }
}

class Fragment$CalendarAiringSchedule$media {
  Fragment$CalendarAiringSchedule$media({
    required this.id,
    this.title,
    this.bannerImage,
    this.mediaListEntry,
    this.type,
    this.$__typename = 'Media',
  });

  factory Fragment$CalendarAiringSchedule$media.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$bannerImage = json['bannerImage'];
    final l$mediaListEntry = json['mediaListEntry'];
    final l$type = json['type'];
    final l$$__typename = json['__typename'];
    return Fragment$CalendarAiringSchedule$media(
      id: (l$id as int),
      title: l$title == null
          ? null
          : Fragment$CalendarAiringSchedule$media$title.fromJson(
              (l$title as Map<String, dynamic>)),
      bannerImage: (l$bannerImage as String?),
      mediaListEntry: l$mediaListEntry == null
          ? null
          : Fragment$CalendarAiringSchedule$media$mediaListEntry.fromJson(
              (l$mediaListEntry as Map<String, dynamic>)),
      type: l$type == null ? null : fromJson$Enum$MediaType((l$type as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final Fragment$CalendarAiringSchedule$media$title? title;

  final String? bannerImage;

  final Fragment$CalendarAiringSchedule$media$mediaListEntry? mediaListEntry;

  final Enum$MediaType? type;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$title = title;
    _resultData['title'] = l$title?.toJson();
    final l$bannerImage = bannerImage;
    _resultData['bannerImage'] = l$bannerImage;
    final l$mediaListEntry = mediaListEntry;
    _resultData['mediaListEntry'] = l$mediaListEntry?.toJson();
    final l$type = type;
    _resultData['type'] = l$type == null ? null : toJson$Enum$MediaType(l$type);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$title = title;
    final l$bannerImage = bannerImage;
    final l$mediaListEntry = mediaListEntry;
    final l$type = type;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$title,
      l$bannerImage,
      l$mediaListEntry,
      l$type,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$CalendarAiringSchedule$media) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
      return false;
    }
    final l$bannerImage = bannerImage;
    final lOther$bannerImage = other.bannerImage;
    if (l$bannerImage != lOther$bannerImage) {
      return false;
    }
    final l$mediaListEntry = mediaListEntry;
    final lOther$mediaListEntry = other.mediaListEntry;
    if (l$mediaListEntry != lOther$mediaListEntry) {
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

extension UtilityExtension$Fragment$CalendarAiringSchedule$media
    on Fragment$CalendarAiringSchedule$media {
  CopyWith$Fragment$CalendarAiringSchedule$media<
          Fragment$CalendarAiringSchedule$media>
      get copyWith => CopyWith$Fragment$CalendarAiringSchedule$media(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$CalendarAiringSchedule$media<TRes> {
  factory CopyWith$Fragment$CalendarAiringSchedule$media(
    Fragment$CalendarAiringSchedule$media instance,
    TRes Function(Fragment$CalendarAiringSchedule$media) then,
  ) = _CopyWithImpl$Fragment$CalendarAiringSchedule$media;

  factory CopyWith$Fragment$CalendarAiringSchedule$media.stub(TRes res) =
      _CopyWithStubImpl$Fragment$CalendarAiringSchedule$media;

  TRes call({
    int? id,
    Fragment$CalendarAiringSchedule$media$title? title,
    String? bannerImage,
    Fragment$CalendarAiringSchedule$media$mediaListEntry? mediaListEntry,
    Enum$MediaType? type,
    String? $__typename,
  });
  CopyWith$Fragment$CalendarAiringSchedule$media$title<TRes> get title;
  CopyWith$Fragment$CalendarAiringSchedule$media$mediaListEntry<TRes>
      get mediaListEntry;
}

class _CopyWithImpl$Fragment$CalendarAiringSchedule$media<TRes>
    implements CopyWith$Fragment$CalendarAiringSchedule$media<TRes> {
  _CopyWithImpl$Fragment$CalendarAiringSchedule$media(
    this._instance,
    this._then,
  );

  final Fragment$CalendarAiringSchedule$media _instance;

  final TRes Function(Fragment$CalendarAiringSchedule$media) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? bannerImage = _undefined,
    Object? mediaListEntry = _undefined,
    Object? type = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$CalendarAiringSchedule$media(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        title: title == _undefined
            ? _instance.title
            : (title as Fragment$CalendarAiringSchedule$media$title?),
        bannerImage: bannerImage == _undefined
            ? _instance.bannerImage
            : (bannerImage as String?),
        mediaListEntry: mediaListEntry == _undefined
            ? _instance.mediaListEntry
            : (mediaListEntry
                as Fragment$CalendarAiringSchedule$media$mediaListEntry?),
        type: type == _undefined ? _instance.type : (type as Enum$MediaType?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$CalendarAiringSchedule$media$title<TRes> get title {
    final local$title = _instance.title;
    return local$title == null
        ? CopyWith$Fragment$CalendarAiringSchedule$media$title.stub(
            _then(_instance))
        : CopyWith$Fragment$CalendarAiringSchedule$media$title(
            local$title, (e) => call(title: e));
  }

  CopyWith$Fragment$CalendarAiringSchedule$media$mediaListEntry<TRes>
      get mediaListEntry {
    final local$mediaListEntry = _instance.mediaListEntry;
    return local$mediaListEntry == null
        ? CopyWith$Fragment$CalendarAiringSchedule$media$mediaListEntry.stub(
            _then(_instance))
        : CopyWith$Fragment$CalendarAiringSchedule$media$mediaListEntry(
            local$mediaListEntry, (e) => call(mediaListEntry: e));
  }
}

class _CopyWithStubImpl$Fragment$CalendarAiringSchedule$media<TRes>
    implements CopyWith$Fragment$CalendarAiringSchedule$media<TRes> {
  _CopyWithStubImpl$Fragment$CalendarAiringSchedule$media(this._res);

  TRes _res;

  call({
    int? id,
    Fragment$CalendarAiringSchedule$media$title? title,
    String? bannerImage,
    Fragment$CalendarAiringSchedule$media$mediaListEntry? mediaListEntry,
    Enum$MediaType? type,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$CalendarAiringSchedule$media$title<TRes> get title =>
      CopyWith$Fragment$CalendarAiringSchedule$media$title.stub(_res);

  CopyWith$Fragment$CalendarAiringSchedule$media$mediaListEntry<TRes>
      get mediaListEntry =>
          CopyWith$Fragment$CalendarAiringSchedule$media$mediaListEntry.stub(
              _res);
}

class Fragment$CalendarAiringSchedule$media$title {
  Fragment$CalendarAiringSchedule$media$title({
    this.userPreferred,
    this.english,
    this.$__typename = 'MediaTitle',
  });

  factory Fragment$CalendarAiringSchedule$media$title.fromJson(
      Map<String, dynamic> json) {
    final l$userPreferred = json['userPreferred'];
    final l$english = json['english'];
    final l$$__typename = json['__typename'];
    return Fragment$CalendarAiringSchedule$media$title(
      userPreferred: (l$userPreferred as String?),
      english: (l$english as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? userPreferred;

  final String? english;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$userPreferred = userPreferred;
    _resultData['userPreferred'] = l$userPreferred;
    final l$english = english;
    _resultData['english'] = l$english;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$userPreferred = userPreferred;
    final l$english = english;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$userPreferred,
      l$english,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$CalendarAiringSchedule$media$title) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$userPreferred = userPreferred;
    final lOther$userPreferred = other.userPreferred;
    if (l$userPreferred != lOther$userPreferred) {
      return false;
    }
    final l$english = english;
    final lOther$english = other.english;
    if (l$english != lOther$english) {
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

extension UtilityExtension$Fragment$CalendarAiringSchedule$media$title
    on Fragment$CalendarAiringSchedule$media$title {
  CopyWith$Fragment$CalendarAiringSchedule$media$title<
          Fragment$CalendarAiringSchedule$media$title>
      get copyWith => CopyWith$Fragment$CalendarAiringSchedule$media$title(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$CalendarAiringSchedule$media$title<TRes> {
  factory CopyWith$Fragment$CalendarAiringSchedule$media$title(
    Fragment$CalendarAiringSchedule$media$title instance,
    TRes Function(Fragment$CalendarAiringSchedule$media$title) then,
  ) = _CopyWithImpl$Fragment$CalendarAiringSchedule$media$title;

  factory CopyWith$Fragment$CalendarAiringSchedule$media$title.stub(TRes res) =
      _CopyWithStubImpl$Fragment$CalendarAiringSchedule$media$title;

  TRes call({
    String? userPreferred,
    String? english,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$CalendarAiringSchedule$media$title<TRes>
    implements CopyWith$Fragment$CalendarAiringSchedule$media$title<TRes> {
  _CopyWithImpl$Fragment$CalendarAiringSchedule$media$title(
    this._instance,
    this._then,
  );

  final Fragment$CalendarAiringSchedule$media$title _instance;

  final TRes Function(Fragment$CalendarAiringSchedule$media$title) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userPreferred = _undefined,
    Object? english = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$CalendarAiringSchedule$media$title(
        userPreferred: userPreferred == _undefined
            ? _instance.userPreferred
            : (userPreferred as String?),
        english:
            english == _undefined ? _instance.english : (english as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$CalendarAiringSchedule$media$title<TRes>
    implements CopyWith$Fragment$CalendarAiringSchedule$media$title<TRes> {
  _CopyWithStubImpl$Fragment$CalendarAiringSchedule$media$title(this._res);

  TRes _res;

  call({
    String? userPreferred,
    String? english,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$CalendarAiringSchedule$media$mediaListEntry {
  Fragment$CalendarAiringSchedule$media$mediaListEntry({
    this.status,
    this.$__typename = 'MediaList',
  });

  factory Fragment$CalendarAiringSchedule$media$mediaListEntry.fromJson(
      Map<String, dynamic> json) {
    final l$status = json['status'];
    final l$$__typename = json['__typename'];
    return Fragment$CalendarAiringSchedule$media$mediaListEntry(
      status: l$status == null
          ? null
          : fromJson$Enum$MediaListStatus((l$status as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final Enum$MediaListStatus? status;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$status = status;
    _resultData['status'] =
        l$status == null ? null : toJson$Enum$MediaListStatus(l$status);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$status = status;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$status,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$CalendarAiringSchedule$media$mediaListEntry) ||
        runtimeType != other.runtimeType) {
      return false;
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

extension UtilityExtension$Fragment$CalendarAiringSchedule$media$mediaListEntry
    on Fragment$CalendarAiringSchedule$media$mediaListEntry {
  CopyWith$Fragment$CalendarAiringSchedule$media$mediaListEntry<
          Fragment$CalendarAiringSchedule$media$mediaListEntry>
      get copyWith =>
          CopyWith$Fragment$CalendarAiringSchedule$media$mediaListEntry(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$CalendarAiringSchedule$media$mediaListEntry<
    TRes> {
  factory CopyWith$Fragment$CalendarAiringSchedule$media$mediaListEntry(
    Fragment$CalendarAiringSchedule$media$mediaListEntry instance,
    TRes Function(Fragment$CalendarAiringSchedule$media$mediaListEntry) then,
  ) = _CopyWithImpl$Fragment$CalendarAiringSchedule$media$mediaListEntry;

  factory CopyWith$Fragment$CalendarAiringSchedule$media$mediaListEntry.stub(
          TRes res) =
      _CopyWithStubImpl$Fragment$CalendarAiringSchedule$media$mediaListEntry;

  TRes call({
    Enum$MediaListStatus? status,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$CalendarAiringSchedule$media$mediaListEntry<TRes>
    implements
        CopyWith$Fragment$CalendarAiringSchedule$media$mediaListEntry<TRes> {
  _CopyWithImpl$Fragment$CalendarAiringSchedule$media$mediaListEntry(
    this._instance,
    this._then,
  );

  final Fragment$CalendarAiringSchedule$media$mediaListEntry _instance;

  final TRes Function(Fragment$CalendarAiringSchedule$media$mediaListEntry)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? status = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$CalendarAiringSchedule$media$mediaListEntry(
        status: status == _undefined
            ? _instance.status
            : (status as Enum$MediaListStatus?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$CalendarAiringSchedule$media$mediaListEntry<
        TRes>
    implements
        CopyWith$Fragment$CalendarAiringSchedule$media$mediaListEntry<TRes> {
  _CopyWithStubImpl$Fragment$CalendarAiringSchedule$media$mediaListEntry(
      this._res);

  TRes _res;

  call({
    Enum$MediaListStatus? status,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$MediaTag {
  Fragment$MediaTag({
    required this.id,
    required this.name,
    this.category,
    this.description,
    this.isAdult,
    this.$__typename = 'MediaTag',
  });

  factory Fragment$MediaTag.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$category = json['category'];
    final l$description = json['description'];
    final l$isAdult = json['isAdult'];
    final l$$__typename = json['__typename'];
    return Fragment$MediaTag(
      id: (l$id as int),
      name: (l$name as String),
      category: (l$category as String?),
      description: (l$description as String?),
      isAdult: (l$isAdult as bool?),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String name;

  final String? category;

  final String? description;

  final bool? isAdult;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$category = category;
    _resultData['category'] = l$category;
    final l$description = description;
    _resultData['description'] = l$description;
    final l$isAdult = isAdult;
    _resultData['isAdult'] = l$isAdult;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$category = category;
    final l$description = description;
    final l$isAdult = isAdult;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$category,
      l$description,
      l$isAdult,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$MediaTag) || runtimeType != other.runtimeType) {
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
    final l$category = category;
    final lOther$category = other.category;
    if (l$category != lOther$category) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
      return false;
    }
    final l$isAdult = isAdult;
    final lOther$isAdult = other.isAdult;
    if (l$isAdult != lOther$isAdult) {
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

extension UtilityExtension$Fragment$MediaTag on Fragment$MediaTag {
  CopyWith$Fragment$MediaTag<Fragment$MediaTag> get copyWith =>
      CopyWith$Fragment$MediaTag(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$MediaTag<TRes> {
  factory CopyWith$Fragment$MediaTag(
    Fragment$MediaTag instance,
    TRes Function(Fragment$MediaTag) then,
  ) = _CopyWithImpl$Fragment$MediaTag;

  factory CopyWith$Fragment$MediaTag.stub(TRes res) =
      _CopyWithStubImpl$Fragment$MediaTag;

  TRes call({
    int? id,
    String? name,
    String? category,
    String? description,
    bool? isAdult,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$MediaTag<TRes>
    implements CopyWith$Fragment$MediaTag<TRes> {
  _CopyWithImpl$Fragment$MediaTag(
    this._instance,
    this._then,
  );

  final Fragment$MediaTag _instance;

  final TRes Function(Fragment$MediaTag) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? category = _undefined,
    Object? description = _undefined,
    Object? isAdult = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$MediaTag(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        category:
            category == _undefined ? _instance.category : (category as String?),
        description: description == _undefined
            ? _instance.description
            : (description as String?),
        isAdult: isAdult == _undefined ? _instance.isAdult : (isAdult as bool?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$MediaTag<TRes>
    implements CopyWith$Fragment$MediaTag<TRes> {
  _CopyWithStubImpl$Fragment$MediaTag(this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    String? category,
    String? description,
    bool? isAdult,
    String? $__typename,
  }) =>
      _res;
}

const fragmentDefinitionMediaTag = FragmentDefinitionNode(
  name: NameNode(value: 'MediaTag'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'MediaTag'),
    isNonNull: false,
  )),
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
      name: NameNode(value: 'category'),
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
      name: NameNode(value: 'isAdult'),
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
);
const documentNodeFragmentMediaTag = DocumentNode(definitions: [
  fragmentDefinitionMediaTag,
]);

extension ClientExtension$Fragment$MediaTag on graphql.GraphQLClient {
  void writeFragment$MediaTag({
    required Fragment$MediaTag data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'MediaTag',
            document: documentNodeFragmentMediaTag,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$MediaTag? readFragment$MediaTag({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'MediaTag',
          document: documentNodeFragmentMediaTag,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$MediaTag.fromJson(result);
  }
}

class Fragment$FuzzyDate {
  Fragment$FuzzyDate({
    this.day,
    this.month,
    this.year,
    this.$__typename = 'FuzzyDate',
  });

  factory Fragment$FuzzyDate.fromJson(Map<String, dynamic> json) {
    final l$day = json['day'];
    final l$month = json['month'];
    final l$year = json['year'];
    final l$$__typename = json['__typename'];
    return Fragment$FuzzyDate(
      day: (l$day as int?),
      month: (l$month as int?),
      year: (l$year as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final int? day;

  final int? month;

  final int? year;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$day = day;
    _resultData['day'] = l$day;
    final l$month = month;
    _resultData['month'] = l$month;
    final l$year = year;
    _resultData['year'] = l$year;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$day = day;
    final l$month = month;
    final l$year = year;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$day,
      l$month,
      l$year,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$FuzzyDate) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$day = day;
    final lOther$day = other.day;
    if (l$day != lOther$day) {
      return false;
    }
    final l$month = month;
    final lOther$month = other.month;
    if (l$month != lOther$month) {
      return false;
    }
    final l$year = year;
    final lOther$year = other.year;
    if (l$year != lOther$year) {
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

extension UtilityExtension$Fragment$FuzzyDate on Fragment$FuzzyDate {
  CopyWith$Fragment$FuzzyDate<Fragment$FuzzyDate> get copyWith =>
      CopyWith$Fragment$FuzzyDate(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$FuzzyDate<TRes> {
  factory CopyWith$Fragment$FuzzyDate(
    Fragment$FuzzyDate instance,
    TRes Function(Fragment$FuzzyDate) then,
  ) = _CopyWithImpl$Fragment$FuzzyDate;

  factory CopyWith$Fragment$FuzzyDate.stub(TRes res) =
      _CopyWithStubImpl$Fragment$FuzzyDate;

  TRes call({
    int? day,
    int? month,
    int? year,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$FuzzyDate<TRes>
    implements CopyWith$Fragment$FuzzyDate<TRes> {
  _CopyWithImpl$Fragment$FuzzyDate(
    this._instance,
    this._then,
  );

  final Fragment$FuzzyDate _instance;

  final TRes Function(Fragment$FuzzyDate) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? day = _undefined,
    Object? month = _undefined,
    Object? year = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$FuzzyDate(
        day: day == _undefined ? _instance.day : (day as int?),
        month: month == _undefined ? _instance.month : (month as int?),
        year: year == _undefined ? _instance.year : (year as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$FuzzyDate<TRes>
    implements CopyWith$Fragment$FuzzyDate<TRes> {
  _CopyWithStubImpl$Fragment$FuzzyDate(this._res);

  TRes _res;

  call({
    int? day,
    int? month,
    int? year,
    String? $__typename,
  }) =>
      _res;
}

const fragmentDefinitionFuzzyDate = FragmentDefinitionNode(
  name: NameNode(value: 'FuzzyDate'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'FuzzyDate'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FieldNode(
      name: NameNode(value: 'day'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'month'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'year'),
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
);
const documentNodeFragmentFuzzyDate = DocumentNode(definitions: [
  fragmentDefinitionFuzzyDate,
]);

extension ClientExtension$Fragment$FuzzyDate on graphql.GraphQLClient {
  void writeFragment$FuzzyDate({
    required Fragment$FuzzyDate data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'FuzzyDate',
            document: documentNodeFragmentFuzzyDate,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$FuzzyDate? readFragment$FuzzyDate({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'FuzzyDate',
          document: documentNodeFragmentFuzzyDate,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$FuzzyDate.fromJson(result);
  }
}

class Fragment$CharacterShort {
  Fragment$CharacterShort({
    required this.id,
    this.name,
    this.image,
    this.favourites,
    this.$__typename = 'Character',
  });

  factory Fragment$CharacterShort.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$image = json['image'];
    final l$favourites = json['favourites'];
    final l$$__typename = json['__typename'];
    return Fragment$CharacterShort(
      id: (l$id as int),
      name: l$name == null
          ? null
          : Fragment$CharacterShort$name.fromJson(
              (l$name as Map<String, dynamic>)),
      image: l$image == null
          ? null
          : Fragment$CharacterShort$image.fromJson(
              (l$image as Map<String, dynamic>)),
      favourites: (l$favourites as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final Fragment$CharacterShort$name? name;

  final Fragment$CharacterShort$image? image;

  final int? favourites;

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
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$image,
      l$favourites,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$CharacterShort) ||
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
    return true;
  }
}

extension UtilityExtension$Fragment$CharacterShort on Fragment$CharacterShort {
  CopyWith$Fragment$CharacterShort<Fragment$CharacterShort> get copyWith =>
      CopyWith$Fragment$CharacterShort(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$CharacterShort<TRes> {
  factory CopyWith$Fragment$CharacterShort(
    Fragment$CharacterShort instance,
    TRes Function(Fragment$CharacterShort) then,
  ) = _CopyWithImpl$Fragment$CharacterShort;

  factory CopyWith$Fragment$CharacterShort.stub(TRes res) =
      _CopyWithStubImpl$Fragment$CharacterShort;

  TRes call({
    int? id,
    Fragment$CharacterShort$name? name,
    Fragment$CharacterShort$image? image,
    int? favourites,
    String? $__typename,
  });
  CopyWith$Fragment$CharacterShort$name<TRes> get name;
  CopyWith$Fragment$CharacterShort$image<TRes> get image;
}

class _CopyWithImpl$Fragment$CharacterShort<TRes>
    implements CopyWith$Fragment$CharacterShort<TRes> {
  _CopyWithImpl$Fragment$CharacterShort(
    this._instance,
    this._then,
  );

  final Fragment$CharacterShort _instance;

  final TRes Function(Fragment$CharacterShort) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? image = _undefined,
    Object? favourites = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$CharacterShort(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        name: name == _undefined
            ? _instance.name
            : (name as Fragment$CharacterShort$name?),
        image: image == _undefined
            ? _instance.image
            : (image as Fragment$CharacterShort$image?),
        favourites: favourites == _undefined
            ? _instance.favourites
            : (favourites as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$CharacterShort$name<TRes> get name {
    final local$name = _instance.name;
    return local$name == null
        ? CopyWith$Fragment$CharacterShort$name.stub(_then(_instance))
        : CopyWith$Fragment$CharacterShort$name(
            local$name, (e) => call(name: e));
  }

  CopyWith$Fragment$CharacterShort$image<TRes> get image {
    final local$image = _instance.image;
    return local$image == null
        ? CopyWith$Fragment$CharacterShort$image.stub(_then(_instance))
        : CopyWith$Fragment$CharacterShort$image(
            local$image, (e) => call(image: e));
  }
}

class _CopyWithStubImpl$Fragment$CharacterShort<TRes>
    implements CopyWith$Fragment$CharacterShort<TRes> {
  _CopyWithStubImpl$Fragment$CharacterShort(this._res);

  TRes _res;

  call({
    int? id,
    Fragment$CharacterShort$name? name,
    Fragment$CharacterShort$image? image,
    int? favourites,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$CharacterShort$name<TRes> get name =>
      CopyWith$Fragment$CharacterShort$name.stub(_res);

  CopyWith$Fragment$CharacterShort$image<TRes> get image =>
      CopyWith$Fragment$CharacterShort$image.stub(_res);
}

const fragmentDefinitionCharacterShort = FragmentDefinitionNode(
  name: NameNode(value: 'CharacterShort'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Character'),
    isNonNull: false,
  )),
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
      name: NameNode(value: '__typename'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
  ]),
);
const documentNodeFragmentCharacterShort = DocumentNode(definitions: [
  fragmentDefinitionCharacterShort,
]);

extension ClientExtension$Fragment$CharacterShort on graphql.GraphQLClient {
  void writeFragment$CharacterShort({
    required Fragment$CharacterShort data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'CharacterShort',
            document: documentNodeFragmentCharacterShort,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$CharacterShort? readFragment$CharacterShort({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'CharacterShort',
          document: documentNodeFragmentCharacterShort,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$CharacterShort.fromJson(result);
  }
}

class Fragment$CharacterShort$name {
  Fragment$CharacterShort$name({
    this.userPreferred,
    this.$__typename = 'CharacterName',
  });

  factory Fragment$CharacterShort$name.fromJson(Map<String, dynamic> json) {
    final l$userPreferred = json['userPreferred'];
    final l$$__typename = json['__typename'];
    return Fragment$CharacterShort$name(
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
    if (!(other is Fragment$CharacterShort$name) ||
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

extension UtilityExtension$Fragment$CharacterShort$name
    on Fragment$CharacterShort$name {
  CopyWith$Fragment$CharacterShort$name<Fragment$CharacterShort$name>
      get copyWith => CopyWith$Fragment$CharacterShort$name(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$CharacterShort$name<TRes> {
  factory CopyWith$Fragment$CharacterShort$name(
    Fragment$CharacterShort$name instance,
    TRes Function(Fragment$CharacterShort$name) then,
  ) = _CopyWithImpl$Fragment$CharacterShort$name;

  factory CopyWith$Fragment$CharacterShort$name.stub(TRes res) =
      _CopyWithStubImpl$Fragment$CharacterShort$name;

  TRes call({
    String? userPreferred,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$CharacterShort$name<TRes>
    implements CopyWith$Fragment$CharacterShort$name<TRes> {
  _CopyWithImpl$Fragment$CharacterShort$name(
    this._instance,
    this._then,
  );

  final Fragment$CharacterShort$name _instance;

  final TRes Function(Fragment$CharacterShort$name) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userPreferred = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$CharacterShort$name(
        userPreferred: userPreferred == _undefined
            ? _instance.userPreferred
            : (userPreferred as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$CharacterShort$name<TRes>
    implements CopyWith$Fragment$CharacterShort$name<TRes> {
  _CopyWithStubImpl$Fragment$CharacterShort$name(this._res);

  TRes _res;

  call({
    String? userPreferred,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$CharacterShort$image {
  Fragment$CharacterShort$image({
    this.large,
    this.$__typename = 'CharacterImage',
  });

  factory Fragment$CharacterShort$image.fromJson(Map<String, dynamic> json) {
    final l$large = json['large'];
    final l$$__typename = json['__typename'];
    return Fragment$CharacterShort$image(
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
    if (!(other is Fragment$CharacterShort$image) ||
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

extension UtilityExtension$Fragment$CharacterShort$image
    on Fragment$CharacterShort$image {
  CopyWith$Fragment$CharacterShort$image<Fragment$CharacterShort$image>
      get copyWith => CopyWith$Fragment$CharacterShort$image(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$CharacterShort$image<TRes> {
  factory CopyWith$Fragment$CharacterShort$image(
    Fragment$CharacterShort$image instance,
    TRes Function(Fragment$CharacterShort$image) then,
  ) = _CopyWithImpl$Fragment$CharacterShort$image;

  factory CopyWith$Fragment$CharacterShort$image.stub(TRes res) =
      _CopyWithStubImpl$Fragment$CharacterShort$image;

  TRes call({
    String? large,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$CharacterShort$image<TRes>
    implements CopyWith$Fragment$CharacterShort$image<TRes> {
  _CopyWithImpl$Fragment$CharacterShort$image(
    this._instance,
    this._then,
  );

  final Fragment$CharacterShort$image _instance;

  final TRes Function(Fragment$CharacterShort$image) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? large = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$CharacterShort$image(
        large: large == _undefined ? _instance.large : (large as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$CharacterShort$image<TRes>
    implements CopyWith$Fragment$CharacterShort$image<TRes> {
  _CopyWithStubImpl$Fragment$CharacterShort$image(this._res);

  TRes _res;

  call({
    String? large,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$StaffShort {
  Fragment$StaffShort({
    required this.id,
    this.name,
    this.image,
    this.favourites,
    this.$__typename = 'Staff',
  });

  factory Fragment$StaffShort.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$image = json['image'];
    final l$favourites = json['favourites'];
    final l$$__typename = json['__typename'];
    return Fragment$StaffShort(
      id: (l$id as int),
      name: l$name == null
          ? null
          : Fragment$StaffShort$name.fromJson((l$name as Map<String, dynamic>)),
      image: l$image == null
          ? null
          : Fragment$StaffShort$image.fromJson(
              (l$image as Map<String, dynamic>)),
      favourites: (l$favourites as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final Fragment$StaffShort$name? name;

  final Fragment$StaffShort$image? image;

  final int? favourites;

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
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$image,
      l$favourites,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$StaffShort) || runtimeType != other.runtimeType) {
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
    return true;
  }
}

extension UtilityExtension$Fragment$StaffShort on Fragment$StaffShort {
  CopyWith$Fragment$StaffShort<Fragment$StaffShort> get copyWith =>
      CopyWith$Fragment$StaffShort(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$StaffShort<TRes> {
  factory CopyWith$Fragment$StaffShort(
    Fragment$StaffShort instance,
    TRes Function(Fragment$StaffShort) then,
  ) = _CopyWithImpl$Fragment$StaffShort;

  factory CopyWith$Fragment$StaffShort.stub(TRes res) =
      _CopyWithStubImpl$Fragment$StaffShort;

  TRes call({
    int? id,
    Fragment$StaffShort$name? name,
    Fragment$StaffShort$image? image,
    int? favourites,
    String? $__typename,
  });
  CopyWith$Fragment$StaffShort$name<TRes> get name;
  CopyWith$Fragment$StaffShort$image<TRes> get image;
}

class _CopyWithImpl$Fragment$StaffShort<TRes>
    implements CopyWith$Fragment$StaffShort<TRes> {
  _CopyWithImpl$Fragment$StaffShort(
    this._instance,
    this._then,
  );

  final Fragment$StaffShort _instance;

  final TRes Function(Fragment$StaffShort) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? image = _undefined,
    Object? favourites = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$StaffShort(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        name: name == _undefined
            ? _instance.name
            : (name as Fragment$StaffShort$name?),
        image: image == _undefined
            ? _instance.image
            : (image as Fragment$StaffShort$image?),
        favourites: favourites == _undefined
            ? _instance.favourites
            : (favourites as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$StaffShort$name<TRes> get name {
    final local$name = _instance.name;
    return local$name == null
        ? CopyWith$Fragment$StaffShort$name.stub(_then(_instance))
        : CopyWith$Fragment$StaffShort$name(local$name, (e) => call(name: e));
  }

  CopyWith$Fragment$StaffShort$image<TRes> get image {
    final local$image = _instance.image;
    return local$image == null
        ? CopyWith$Fragment$StaffShort$image.stub(_then(_instance))
        : CopyWith$Fragment$StaffShort$image(
            local$image, (e) => call(image: e));
  }
}

class _CopyWithStubImpl$Fragment$StaffShort<TRes>
    implements CopyWith$Fragment$StaffShort<TRes> {
  _CopyWithStubImpl$Fragment$StaffShort(this._res);

  TRes _res;

  call({
    int? id,
    Fragment$StaffShort$name? name,
    Fragment$StaffShort$image? image,
    int? favourites,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$StaffShort$name<TRes> get name =>
      CopyWith$Fragment$StaffShort$name.stub(_res);

  CopyWith$Fragment$StaffShort$image<TRes> get image =>
      CopyWith$Fragment$StaffShort$image.stub(_res);
}

const fragmentDefinitionStaffShort = FragmentDefinitionNode(
  name: NameNode(value: 'StaffShort'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Staff'),
    isNonNull: false,
  )),
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
      name: NameNode(value: '__typename'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
  ]),
);
const documentNodeFragmentStaffShort = DocumentNode(definitions: [
  fragmentDefinitionStaffShort,
]);

extension ClientExtension$Fragment$StaffShort on graphql.GraphQLClient {
  void writeFragment$StaffShort({
    required Fragment$StaffShort data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'StaffShort',
            document: documentNodeFragmentStaffShort,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$StaffShort? readFragment$StaffShort({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'StaffShort',
          document: documentNodeFragmentStaffShort,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$StaffShort.fromJson(result);
  }
}

class Fragment$StaffShort$name {
  Fragment$StaffShort$name({
    this.userPreferred,
    this.$__typename = 'StaffName',
  });

  factory Fragment$StaffShort$name.fromJson(Map<String, dynamic> json) {
    final l$userPreferred = json['userPreferred'];
    final l$$__typename = json['__typename'];
    return Fragment$StaffShort$name(
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
    if (!(other is Fragment$StaffShort$name) ||
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

extension UtilityExtension$Fragment$StaffShort$name
    on Fragment$StaffShort$name {
  CopyWith$Fragment$StaffShort$name<Fragment$StaffShort$name> get copyWith =>
      CopyWith$Fragment$StaffShort$name(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$StaffShort$name<TRes> {
  factory CopyWith$Fragment$StaffShort$name(
    Fragment$StaffShort$name instance,
    TRes Function(Fragment$StaffShort$name) then,
  ) = _CopyWithImpl$Fragment$StaffShort$name;

  factory CopyWith$Fragment$StaffShort$name.stub(TRes res) =
      _CopyWithStubImpl$Fragment$StaffShort$name;

  TRes call({
    String? userPreferred,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$StaffShort$name<TRes>
    implements CopyWith$Fragment$StaffShort$name<TRes> {
  _CopyWithImpl$Fragment$StaffShort$name(
    this._instance,
    this._then,
  );

  final Fragment$StaffShort$name _instance;

  final TRes Function(Fragment$StaffShort$name) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userPreferred = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$StaffShort$name(
        userPreferred: userPreferred == _undefined
            ? _instance.userPreferred
            : (userPreferred as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$StaffShort$name<TRes>
    implements CopyWith$Fragment$StaffShort$name<TRes> {
  _CopyWithStubImpl$Fragment$StaffShort$name(this._res);

  TRes _res;

  call({
    String? userPreferred,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$StaffShort$image {
  Fragment$StaffShort$image({
    this.large,
    this.$__typename = 'StaffImage',
  });

  factory Fragment$StaffShort$image.fromJson(Map<String, dynamic> json) {
    final l$large = json['large'];
    final l$$__typename = json['__typename'];
    return Fragment$StaffShort$image(
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
    if (!(other is Fragment$StaffShort$image) ||
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

extension UtilityExtension$Fragment$StaffShort$image
    on Fragment$StaffShort$image {
  CopyWith$Fragment$StaffShort$image<Fragment$StaffShort$image> get copyWith =>
      CopyWith$Fragment$StaffShort$image(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$StaffShort$image<TRes> {
  factory CopyWith$Fragment$StaffShort$image(
    Fragment$StaffShort$image instance,
    TRes Function(Fragment$StaffShort$image) then,
  ) = _CopyWithImpl$Fragment$StaffShort$image;

  factory CopyWith$Fragment$StaffShort$image.stub(TRes res) =
      _CopyWithStubImpl$Fragment$StaffShort$image;

  TRes call({
    String? large,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$StaffShort$image<TRes>
    implements CopyWith$Fragment$StaffShort$image<TRes> {
  _CopyWithImpl$Fragment$StaffShort$image(
    this._instance,
    this._then,
  );

  final Fragment$StaffShort$image _instance;

  final TRes Function(Fragment$StaffShort$image) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? large = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$StaffShort$image(
        large: large == _undefined ? _instance.large : (large as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$StaffShort$image<TRes>
    implements CopyWith$Fragment$StaffShort$image<TRes> {
  _CopyWithStubImpl$Fragment$StaffShort$image(this._res);

  TRes _res;

  call({
    String? large,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$TextActivity {
  Fragment$TextActivity({
    required this.id,
    this.user,
    required this.likeCount,
    required this.replyCount,
    required this.createdAt,
    this.isLiked,
    this.isSubscribed,
    this.siteUrl,
    this.text,
    this.$__typename = 'TextActivity',
  });

  factory Fragment$TextActivity.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$user = json['user'];
    final l$likeCount = json['likeCount'];
    final l$replyCount = json['replyCount'];
    final l$createdAt = json['createdAt'];
    final l$isLiked = json['isLiked'];
    final l$isSubscribed = json['isSubscribed'];
    final l$siteUrl = json['siteUrl'];
    final l$text = json['text'];
    final l$$__typename = json['__typename'];
    return Fragment$TextActivity(
      id: (l$id as int),
      user: l$user == null
          ? null
          : Fragment$TextActivity$user.fromJson(
              (l$user as Map<String, dynamic>)),
      likeCount: (l$likeCount as int),
      replyCount: (l$replyCount as int),
      createdAt: (l$createdAt as int),
      isLiked: (l$isLiked as bool?),
      isSubscribed: (l$isSubscribed as bool?),
      siteUrl: (l$siteUrl as String?),
      text: (l$text as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final Fragment$TextActivity$user? user;

  final int likeCount;

  final int replyCount;

  final int createdAt;

  final bool? isLiked;

  final bool? isSubscribed;

  final String? siteUrl;

  final String? text;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$likeCount = likeCount;
    _resultData['likeCount'] = l$likeCount;
    final l$replyCount = replyCount;
    _resultData['replyCount'] = l$replyCount;
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt;
    final l$isLiked = isLiked;
    _resultData['isLiked'] = l$isLiked;
    final l$isSubscribed = isSubscribed;
    _resultData['isSubscribed'] = l$isSubscribed;
    final l$siteUrl = siteUrl;
    _resultData['siteUrl'] = l$siteUrl;
    final l$text = text;
    _resultData['text'] = l$text;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$user = user;
    final l$likeCount = likeCount;
    final l$replyCount = replyCount;
    final l$createdAt = createdAt;
    final l$isLiked = isLiked;
    final l$isSubscribed = isSubscribed;
    final l$siteUrl = siteUrl;
    final l$text = text;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$user,
      l$likeCount,
      l$replyCount,
      l$createdAt,
      l$isLiked,
      l$isSubscribed,
      l$siteUrl,
      l$text,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$TextActivity) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
      return false;
    }
    final l$likeCount = likeCount;
    final lOther$likeCount = other.likeCount;
    if (l$likeCount != lOther$likeCount) {
      return false;
    }
    final l$replyCount = replyCount;
    final lOther$replyCount = other.replyCount;
    if (l$replyCount != lOther$replyCount) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$isLiked = isLiked;
    final lOther$isLiked = other.isLiked;
    if (l$isLiked != lOther$isLiked) {
      return false;
    }
    final l$isSubscribed = isSubscribed;
    final lOther$isSubscribed = other.isSubscribed;
    if (l$isSubscribed != lOther$isSubscribed) {
      return false;
    }
    final l$siteUrl = siteUrl;
    final lOther$siteUrl = other.siteUrl;
    if (l$siteUrl != lOther$siteUrl) {
      return false;
    }
    final l$text = text;
    final lOther$text = other.text;
    if (l$text != lOther$text) {
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

extension UtilityExtension$Fragment$TextActivity on Fragment$TextActivity {
  CopyWith$Fragment$TextActivity<Fragment$TextActivity> get copyWith =>
      CopyWith$Fragment$TextActivity(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$TextActivity<TRes> {
  factory CopyWith$Fragment$TextActivity(
    Fragment$TextActivity instance,
    TRes Function(Fragment$TextActivity) then,
  ) = _CopyWithImpl$Fragment$TextActivity;

  factory CopyWith$Fragment$TextActivity.stub(TRes res) =
      _CopyWithStubImpl$Fragment$TextActivity;

  TRes call({
    int? id,
    Fragment$TextActivity$user? user,
    int? likeCount,
    int? replyCount,
    int? createdAt,
    bool? isLiked,
    bool? isSubscribed,
    String? siteUrl,
    String? text,
    String? $__typename,
  });
  CopyWith$Fragment$TextActivity$user<TRes> get user;
}

class _CopyWithImpl$Fragment$TextActivity<TRes>
    implements CopyWith$Fragment$TextActivity<TRes> {
  _CopyWithImpl$Fragment$TextActivity(
    this._instance,
    this._then,
  );

  final Fragment$TextActivity _instance;

  final TRes Function(Fragment$TextActivity) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? user = _undefined,
    Object? likeCount = _undefined,
    Object? replyCount = _undefined,
    Object? createdAt = _undefined,
    Object? isLiked = _undefined,
    Object? isSubscribed = _undefined,
    Object? siteUrl = _undefined,
    Object? text = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$TextActivity(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        user: user == _undefined
            ? _instance.user
            : (user as Fragment$TextActivity$user?),
        likeCount: likeCount == _undefined || likeCount == null
            ? _instance.likeCount
            : (likeCount as int),
        replyCount: replyCount == _undefined || replyCount == null
            ? _instance.replyCount
            : (replyCount as int),
        createdAt: createdAt == _undefined || createdAt == null
            ? _instance.createdAt
            : (createdAt as int),
        isLiked: isLiked == _undefined ? _instance.isLiked : (isLiked as bool?),
        isSubscribed: isSubscribed == _undefined
            ? _instance.isSubscribed
            : (isSubscribed as bool?),
        siteUrl:
            siteUrl == _undefined ? _instance.siteUrl : (siteUrl as String?),
        text: text == _undefined ? _instance.text : (text as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$TextActivity$user<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith$Fragment$TextActivity$user.stub(_then(_instance))
        : CopyWith$Fragment$TextActivity$user(local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl$Fragment$TextActivity<TRes>
    implements CopyWith$Fragment$TextActivity<TRes> {
  _CopyWithStubImpl$Fragment$TextActivity(this._res);

  TRes _res;

  call({
    int? id,
    Fragment$TextActivity$user? user,
    int? likeCount,
    int? replyCount,
    int? createdAt,
    bool? isLiked,
    bool? isSubscribed,
    String? siteUrl,
    String? text,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$TextActivity$user<TRes> get user =>
      CopyWith$Fragment$TextActivity$user.stub(_res);
}

const fragmentDefinitionTextActivity = FragmentDefinitionNode(
  name: NameNode(value: 'TextActivity'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'TextActivity'),
    isNonNull: false,
  )),
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
          name: NameNode(value: 'avatar'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: SelectionSetNode(selections: [
            FieldNode(
              name: NameNode(value: 'medium'),
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
          name: NameNode(value: 'name'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'isFollowing'),
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
      name: NameNode(value: 'likeCount'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'replyCount'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'createdAt'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'isLiked'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'isSubscribed'),
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
      name: NameNode(value: 'text'),
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
);
const documentNodeFragmentTextActivity = DocumentNode(definitions: [
  fragmentDefinitionTextActivity,
]);

extension ClientExtension$Fragment$TextActivity on graphql.GraphQLClient {
  void writeFragment$TextActivity({
    required Fragment$TextActivity data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'TextActivity',
            document: documentNodeFragmentTextActivity,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$TextActivity? readFragment$TextActivity({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'TextActivity',
          document: documentNodeFragmentTextActivity,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$TextActivity.fromJson(result);
  }
}

class Fragment$TextActivity$user {
  Fragment$TextActivity$user({
    required this.id,
    this.avatar,
    required this.name,
    this.isFollowing,
    this.$__typename = 'User',
  });

  factory Fragment$TextActivity$user.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$avatar = json['avatar'];
    final l$name = json['name'];
    final l$isFollowing = json['isFollowing'];
    final l$$__typename = json['__typename'];
    return Fragment$TextActivity$user(
      id: (l$id as int),
      avatar: l$avatar == null
          ? null
          : Fragment$TextActivity$user$avatar.fromJson(
              (l$avatar as Map<String, dynamic>)),
      name: (l$name as String),
      isFollowing: (l$isFollowing as bool?),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final Fragment$TextActivity$user$avatar? avatar;

  final String name;

  final bool? isFollowing;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$avatar = avatar;
    _resultData['avatar'] = l$avatar?.toJson();
    final l$name = name;
    _resultData['name'] = l$name;
    final l$isFollowing = isFollowing;
    _resultData['isFollowing'] = l$isFollowing;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$avatar = avatar;
    final l$name = name;
    final l$isFollowing = isFollowing;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$avatar,
      l$name,
      l$isFollowing,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$TextActivity$user) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$avatar = avatar;
    final lOther$avatar = other.avatar;
    if (l$avatar != lOther$avatar) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
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
    return true;
  }
}

extension UtilityExtension$Fragment$TextActivity$user
    on Fragment$TextActivity$user {
  CopyWith$Fragment$TextActivity$user<Fragment$TextActivity$user>
      get copyWith => CopyWith$Fragment$TextActivity$user(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$TextActivity$user<TRes> {
  factory CopyWith$Fragment$TextActivity$user(
    Fragment$TextActivity$user instance,
    TRes Function(Fragment$TextActivity$user) then,
  ) = _CopyWithImpl$Fragment$TextActivity$user;

  factory CopyWith$Fragment$TextActivity$user.stub(TRes res) =
      _CopyWithStubImpl$Fragment$TextActivity$user;

  TRes call({
    int? id,
    Fragment$TextActivity$user$avatar? avatar,
    String? name,
    bool? isFollowing,
    String? $__typename,
  });
  CopyWith$Fragment$TextActivity$user$avatar<TRes> get avatar;
}

class _CopyWithImpl$Fragment$TextActivity$user<TRes>
    implements CopyWith$Fragment$TextActivity$user<TRes> {
  _CopyWithImpl$Fragment$TextActivity$user(
    this._instance,
    this._then,
  );

  final Fragment$TextActivity$user _instance;

  final TRes Function(Fragment$TextActivity$user) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? avatar = _undefined,
    Object? name = _undefined,
    Object? isFollowing = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$TextActivity$user(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        avatar: avatar == _undefined
            ? _instance.avatar
            : (avatar as Fragment$TextActivity$user$avatar?),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        isFollowing: isFollowing == _undefined
            ? _instance.isFollowing
            : (isFollowing as bool?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$TextActivity$user$avatar<TRes> get avatar {
    final local$avatar = _instance.avatar;
    return local$avatar == null
        ? CopyWith$Fragment$TextActivity$user$avatar.stub(_then(_instance))
        : CopyWith$Fragment$TextActivity$user$avatar(
            local$avatar, (e) => call(avatar: e));
  }
}

class _CopyWithStubImpl$Fragment$TextActivity$user<TRes>
    implements CopyWith$Fragment$TextActivity$user<TRes> {
  _CopyWithStubImpl$Fragment$TextActivity$user(this._res);

  TRes _res;

  call({
    int? id,
    Fragment$TextActivity$user$avatar? avatar,
    String? name,
    bool? isFollowing,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$TextActivity$user$avatar<TRes> get avatar =>
      CopyWith$Fragment$TextActivity$user$avatar.stub(_res);
}

class Fragment$TextActivity$user$avatar {
  Fragment$TextActivity$user$avatar({
    this.medium,
    this.$__typename = 'UserAvatar',
  });

  factory Fragment$TextActivity$user$avatar.fromJson(
      Map<String, dynamic> json) {
    final l$medium = json['medium'];
    final l$$__typename = json['__typename'];
    return Fragment$TextActivity$user$avatar(
      medium: (l$medium as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? medium;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$medium = medium;
    _resultData['medium'] = l$medium;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$medium = medium;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$medium,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$TextActivity$user$avatar) ||
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
    return true;
  }
}

extension UtilityExtension$Fragment$TextActivity$user$avatar
    on Fragment$TextActivity$user$avatar {
  CopyWith$Fragment$TextActivity$user$avatar<Fragment$TextActivity$user$avatar>
      get copyWith => CopyWith$Fragment$TextActivity$user$avatar(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$TextActivity$user$avatar<TRes> {
  factory CopyWith$Fragment$TextActivity$user$avatar(
    Fragment$TextActivity$user$avatar instance,
    TRes Function(Fragment$TextActivity$user$avatar) then,
  ) = _CopyWithImpl$Fragment$TextActivity$user$avatar;

  factory CopyWith$Fragment$TextActivity$user$avatar.stub(TRes res) =
      _CopyWithStubImpl$Fragment$TextActivity$user$avatar;

  TRes call({
    String? medium,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$TextActivity$user$avatar<TRes>
    implements CopyWith$Fragment$TextActivity$user$avatar<TRes> {
  _CopyWithImpl$Fragment$TextActivity$user$avatar(
    this._instance,
    this._then,
  );

  final Fragment$TextActivity$user$avatar _instance;

  final TRes Function(Fragment$TextActivity$user$avatar) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? medium = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$TextActivity$user$avatar(
        medium: medium == _undefined ? _instance.medium : (medium as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$TextActivity$user$avatar<TRes>
    implements CopyWith$Fragment$TextActivity$user$avatar<TRes> {
  _CopyWithStubImpl$Fragment$TextActivity$user$avatar(this._res);

  TRes _res;

  call({
    String? medium,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$MessageActivity {
  Fragment$MessageActivity({
    required this.id,
    this.messenger,
    this.recipient,
    required this.likeCount,
    required this.replyCount,
    required this.createdAt,
    this.isLiked,
    this.isSubscribed,
    this.siteUrl,
    this.message,
    this.$__typename = 'MessageActivity',
  });

  factory Fragment$MessageActivity.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$messenger = json['messenger'];
    final l$recipient = json['recipient'];
    final l$likeCount = json['likeCount'];
    final l$replyCount = json['replyCount'];
    final l$createdAt = json['createdAt'];
    final l$isLiked = json['isLiked'];
    final l$isSubscribed = json['isSubscribed'];
    final l$siteUrl = json['siteUrl'];
    final l$message = json['message'];
    final l$$__typename = json['__typename'];
    return Fragment$MessageActivity(
      id: (l$id as int),
      messenger: l$messenger == null
          ? null
          : Fragment$MessageActivity$messenger.fromJson(
              (l$messenger as Map<String, dynamic>)),
      recipient: l$recipient == null
          ? null
          : Fragment$MessageActivity$recipient.fromJson(
              (l$recipient as Map<String, dynamic>)),
      likeCount: (l$likeCount as int),
      replyCount: (l$replyCount as int),
      createdAt: (l$createdAt as int),
      isLiked: (l$isLiked as bool?),
      isSubscribed: (l$isSubscribed as bool?),
      siteUrl: (l$siteUrl as String?),
      message: (l$message as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final Fragment$MessageActivity$messenger? messenger;

  final Fragment$MessageActivity$recipient? recipient;

  final int likeCount;

  final int replyCount;

  final int createdAt;

  final bool? isLiked;

  final bool? isSubscribed;

  final String? siteUrl;

  final String? message;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$messenger = messenger;
    _resultData['messenger'] = l$messenger?.toJson();
    final l$recipient = recipient;
    _resultData['recipient'] = l$recipient?.toJson();
    final l$likeCount = likeCount;
    _resultData['likeCount'] = l$likeCount;
    final l$replyCount = replyCount;
    _resultData['replyCount'] = l$replyCount;
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt;
    final l$isLiked = isLiked;
    _resultData['isLiked'] = l$isLiked;
    final l$isSubscribed = isSubscribed;
    _resultData['isSubscribed'] = l$isSubscribed;
    final l$siteUrl = siteUrl;
    _resultData['siteUrl'] = l$siteUrl;
    final l$message = message;
    _resultData['message'] = l$message;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$messenger = messenger;
    final l$recipient = recipient;
    final l$likeCount = likeCount;
    final l$replyCount = replyCount;
    final l$createdAt = createdAt;
    final l$isLiked = isLiked;
    final l$isSubscribed = isSubscribed;
    final l$siteUrl = siteUrl;
    final l$message = message;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$messenger,
      l$recipient,
      l$likeCount,
      l$replyCount,
      l$createdAt,
      l$isLiked,
      l$isSubscribed,
      l$siteUrl,
      l$message,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$MessageActivity) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$messenger = messenger;
    final lOther$messenger = other.messenger;
    if (l$messenger != lOther$messenger) {
      return false;
    }
    final l$recipient = recipient;
    final lOther$recipient = other.recipient;
    if (l$recipient != lOther$recipient) {
      return false;
    }
    final l$likeCount = likeCount;
    final lOther$likeCount = other.likeCount;
    if (l$likeCount != lOther$likeCount) {
      return false;
    }
    final l$replyCount = replyCount;
    final lOther$replyCount = other.replyCount;
    if (l$replyCount != lOther$replyCount) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$isLiked = isLiked;
    final lOther$isLiked = other.isLiked;
    if (l$isLiked != lOther$isLiked) {
      return false;
    }
    final l$isSubscribed = isSubscribed;
    final lOther$isSubscribed = other.isSubscribed;
    if (l$isSubscribed != lOther$isSubscribed) {
      return false;
    }
    final l$siteUrl = siteUrl;
    final lOther$siteUrl = other.siteUrl;
    if (l$siteUrl != lOther$siteUrl) {
      return false;
    }
    final l$message = message;
    final lOther$message = other.message;
    if (l$message != lOther$message) {
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

extension UtilityExtension$Fragment$MessageActivity
    on Fragment$MessageActivity {
  CopyWith$Fragment$MessageActivity<Fragment$MessageActivity> get copyWith =>
      CopyWith$Fragment$MessageActivity(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$MessageActivity<TRes> {
  factory CopyWith$Fragment$MessageActivity(
    Fragment$MessageActivity instance,
    TRes Function(Fragment$MessageActivity) then,
  ) = _CopyWithImpl$Fragment$MessageActivity;

  factory CopyWith$Fragment$MessageActivity.stub(TRes res) =
      _CopyWithStubImpl$Fragment$MessageActivity;

  TRes call({
    int? id,
    Fragment$MessageActivity$messenger? messenger,
    Fragment$MessageActivity$recipient? recipient,
    int? likeCount,
    int? replyCount,
    int? createdAt,
    bool? isLiked,
    bool? isSubscribed,
    String? siteUrl,
    String? message,
    String? $__typename,
  });
  CopyWith$Fragment$MessageActivity$messenger<TRes> get messenger;
  CopyWith$Fragment$MessageActivity$recipient<TRes> get recipient;
}

class _CopyWithImpl$Fragment$MessageActivity<TRes>
    implements CopyWith$Fragment$MessageActivity<TRes> {
  _CopyWithImpl$Fragment$MessageActivity(
    this._instance,
    this._then,
  );

  final Fragment$MessageActivity _instance;

  final TRes Function(Fragment$MessageActivity) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? messenger = _undefined,
    Object? recipient = _undefined,
    Object? likeCount = _undefined,
    Object? replyCount = _undefined,
    Object? createdAt = _undefined,
    Object? isLiked = _undefined,
    Object? isSubscribed = _undefined,
    Object? siteUrl = _undefined,
    Object? message = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$MessageActivity(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        messenger: messenger == _undefined
            ? _instance.messenger
            : (messenger as Fragment$MessageActivity$messenger?),
        recipient: recipient == _undefined
            ? _instance.recipient
            : (recipient as Fragment$MessageActivity$recipient?),
        likeCount: likeCount == _undefined || likeCount == null
            ? _instance.likeCount
            : (likeCount as int),
        replyCount: replyCount == _undefined || replyCount == null
            ? _instance.replyCount
            : (replyCount as int),
        createdAt: createdAt == _undefined || createdAt == null
            ? _instance.createdAt
            : (createdAt as int),
        isLiked: isLiked == _undefined ? _instance.isLiked : (isLiked as bool?),
        isSubscribed: isSubscribed == _undefined
            ? _instance.isSubscribed
            : (isSubscribed as bool?),
        siteUrl:
            siteUrl == _undefined ? _instance.siteUrl : (siteUrl as String?),
        message:
            message == _undefined ? _instance.message : (message as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$MessageActivity$messenger<TRes> get messenger {
    final local$messenger = _instance.messenger;
    return local$messenger == null
        ? CopyWith$Fragment$MessageActivity$messenger.stub(_then(_instance))
        : CopyWith$Fragment$MessageActivity$messenger(
            local$messenger, (e) => call(messenger: e));
  }

  CopyWith$Fragment$MessageActivity$recipient<TRes> get recipient {
    final local$recipient = _instance.recipient;
    return local$recipient == null
        ? CopyWith$Fragment$MessageActivity$recipient.stub(_then(_instance))
        : CopyWith$Fragment$MessageActivity$recipient(
            local$recipient, (e) => call(recipient: e));
  }
}

class _CopyWithStubImpl$Fragment$MessageActivity<TRes>
    implements CopyWith$Fragment$MessageActivity<TRes> {
  _CopyWithStubImpl$Fragment$MessageActivity(this._res);

  TRes _res;

  call({
    int? id,
    Fragment$MessageActivity$messenger? messenger,
    Fragment$MessageActivity$recipient? recipient,
    int? likeCount,
    int? replyCount,
    int? createdAt,
    bool? isLiked,
    bool? isSubscribed,
    String? siteUrl,
    String? message,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$MessageActivity$messenger<TRes> get messenger =>
      CopyWith$Fragment$MessageActivity$messenger.stub(_res);

  CopyWith$Fragment$MessageActivity$recipient<TRes> get recipient =>
      CopyWith$Fragment$MessageActivity$recipient.stub(_res);
}

const fragmentDefinitionMessageActivity = FragmentDefinitionNode(
  name: NameNode(value: 'MessageActivity'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'MessageActivity'),
    isNonNull: false,
  )),
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
      name: NameNode(value: 'messenger'),
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
          name: NameNode(value: 'avatar'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: SelectionSetNode(selections: [
            FieldNode(
              name: NameNode(value: 'medium'),
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
          name: NameNode(value: 'name'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'isFollowing'),
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
      name: NameNode(value: 'recipient'),
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
          name: NameNode(value: 'avatar'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: SelectionSetNode(selections: [
            FieldNode(
              name: NameNode(value: 'medium'),
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
      name: NameNode(value: 'likeCount'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'replyCount'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'createdAt'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'isLiked'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'isSubscribed'),
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
      name: NameNode(value: 'message'),
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
);
const documentNodeFragmentMessageActivity = DocumentNode(definitions: [
  fragmentDefinitionMessageActivity,
]);

extension ClientExtension$Fragment$MessageActivity on graphql.GraphQLClient {
  void writeFragment$MessageActivity({
    required Fragment$MessageActivity data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'MessageActivity',
            document: documentNodeFragmentMessageActivity,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$MessageActivity? readFragment$MessageActivity({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'MessageActivity',
          document: documentNodeFragmentMessageActivity,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$MessageActivity.fromJson(result);
  }
}

class Fragment$MessageActivity$messenger {
  Fragment$MessageActivity$messenger({
    required this.id,
    this.avatar,
    required this.name,
    this.isFollowing,
    this.$__typename = 'User',
  });

  factory Fragment$MessageActivity$messenger.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$avatar = json['avatar'];
    final l$name = json['name'];
    final l$isFollowing = json['isFollowing'];
    final l$$__typename = json['__typename'];
    return Fragment$MessageActivity$messenger(
      id: (l$id as int),
      avatar: l$avatar == null
          ? null
          : Fragment$MessageActivity$messenger$avatar.fromJson(
              (l$avatar as Map<String, dynamic>)),
      name: (l$name as String),
      isFollowing: (l$isFollowing as bool?),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final Fragment$MessageActivity$messenger$avatar? avatar;

  final String name;

  final bool? isFollowing;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$avatar = avatar;
    _resultData['avatar'] = l$avatar?.toJson();
    final l$name = name;
    _resultData['name'] = l$name;
    final l$isFollowing = isFollowing;
    _resultData['isFollowing'] = l$isFollowing;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$avatar = avatar;
    final l$name = name;
    final l$isFollowing = isFollowing;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$avatar,
      l$name,
      l$isFollowing,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$MessageActivity$messenger) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$avatar = avatar;
    final lOther$avatar = other.avatar;
    if (l$avatar != lOther$avatar) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
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
    return true;
  }
}

extension UtilityExtension$Fragment$MessageActivity$messenger
    on Fragment$MessageActivity$messenger {
  CopyWith$Fragment$MessageActivity$messenger<
          Fragment$MessageActivity$messenger>
      get copyWith => CopyWith$Fragment$MessageActivity$messenger(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$MessageActivity$messenger<TRes> {
  factory CopyWith$Fragment$MessageActivity$messenger(
    Fragment$MessageActivity$messenger instance,
    TRes Function(Fragment$MessageActivity$messenger) then,
  ) = _CopyWithImpl$Fragment$MessageActivity$messenger;

  factory CopyWith$Fragment$MessageActivity$messenger.stub(TRes res) =
      _CopyWithStubImpl$Fragment$MessageActivity$messenger;

  TRes call({
    int? id,
    Fragment$MessageActivity$messenger$avatar? avatar,
    String? name,
    bool? isFollowing,
    String? $__typename,
  });
  CopyWith$Fragment$MessageActivity$messenger$avatar<TRes> get avatar;
}

class _CopyWithImpl$Fragment$MessageActivity$messenger<TRes>
    implements CopyWith$Fragment$MessageActivity$messenger<TRes> {
  _CopyWithImpl$Fragment$MessageActivity$messenger(
    this._instance,
    this._then,
  );

  final Fragment$MessageActivity$messenger _instance;

  final TRes Function(Fragment$MessageActivity$messenger) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? avatar = _undefined,
    Object? name = _undefined,
    Object? isFollowing = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$MessageActivity$messenger(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        avatar: avatar == _undefined
            ? _instance.avatar
            : (avatar as Fragment$MessageActivity$messenger$avatar?),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        isFollowing: isFollowing == _undefined
            ? _instance.isFollowing
            : (isFollowing as bool?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$MessageActivity$messenger$avatar<TRes> get avatar {
    final local$avatar = _instance.avatar;
    return local$avatar == null
        ? CopyWith$Fragment$MessageActivity$messenger$avatar.stub(
            _then(_instance))
        : CopyWith$Fragment$MessageActivity$messenger$avatar(
            local$avatar, (e) => call(avatar: e));
  }
}

class _CopyWithStubImpl$Fragment$MessageActivity$messenger<TRes>
    implements CopyWith$Fragment$MessageActivity$messenger<TRes> {
  _CopyWithStubImpl$Fragment$MessageActivity$messenger(this._res);

  TRes _res;

  call({
    int? id,
    Fragment$MessageActivity$messenger$avatar? avatar,
    String? name,
    bool? isFollowing,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$MessageActivity$messenger$avatar<TRes> get avatar =>
      CopyWith$Fragment$MessageActivity$messenger$avatar.stub(_res);
}

class Fragment$MessageActivity$messenger$avatar {
  Fragment$MessageActivity$messenger$avatar({
    this.medium,
    this.$__typename = 'UserAvatar',
  });

  factory Fragment$MessageActivity$messenger$avatar.fromJson(
      Map<String, dynamic> json) {
    final l$medium = json['medium'];
    final l$$__typename = json['__typename'];
    return Fragment$MessageActivity$messenger$avatar(
      medium: (l$medium as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? medium;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$medium = medium;
    _resultData['medium'] = l$medium;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$medium = medium;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$medium,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$MessageActivity$messenger$avatar) ||
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
    return true;
  }
}

extension UtilityExtension$Fragment$MessageActivity$messenger$avatar
    on Fragment$MessageActivity$messenger$avatar {
  CopyWith$Fragment$MessageActivity$messenger$avatar<
          Fragment$MessageActivity$messenger$avatar>
      get copyWith => CopyWith$Fragment$MessageActivity$messenger$avatar(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$MessageActivity$messenger$avatar<TRes> {
  factory CopyWith$Fragment$MessageActivity$messenger$avatar(
    Fragment$MessageActivity$messenger$avatar instance,
    TRes Function(Fragment$MessageActivity$messenger$avatar) then,
  ) = _CopyWithImpl$Fragment$MessageActivity$messenger$avatar;

  factory CopyWith$Fragment$MessageActivity$messenger$avatar.stub(TRes res) =
      _CopyWithStubImpl$Fragment$MessageActivity$messenger$avatar;

  TRes call({
    String? medium,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$MessageActivity$messenger$avatar<TRes>
    implements CopyWith$Fragment$MessageActivity$messenger$avatar<TRes> {
  _CopyWithImpl$Fragment$MessageActivity$messenger$avatar(
    this._instance,
    this._then,
  );

  final Fragment$MessageActivity$messenger$avatar _instance;

  final TRes Function(Fragment$MessageActivity$messenger$avatar) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? medium = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$MessageActivity$messenger$avatar(
        medium: medium == _undefined ? _instance.medium : (medium as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$MessageActivity$messenger$avatar<TRes>
    implements CopyWith$Fragment$MessageActivity$messenger$avatar<TRes> {
  _CopyWithStubImpl$Fragment$MessageActivity$messenger$avatar(this._res);

  TRes _res;

  call({
    String? medium,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$MessageActivity$recipient {
  Fragment$MessageActivity$recipient({
    required this.id,
    this.avatar,
    required this.name,
    this.$__typename = 'User',
  });

  factory Fragment$MessageActivity$recipient.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$avatar = json['avatar'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Fragment$MessageActivity$recipient(
      id: (l$id as int),
      avatar: l$avatar == null
          ? null
          : Fragment$MessageActivity$recipient$avatar.fromJson(
              (l$avatar as Map<String, dynamic>)),
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final Fragment$MessageActivity$recipient$avatar? avatar;

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$avatar = avatar;
    _resultData['avatar'] = l$avatar?.toJson();
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$avatar = avatar;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$avatar,
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$MessageActivity$recipient) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$avatar = avatar;
    final lOther$avatar = other.avatar;
    if (l$avatar != lOther$avatar) {
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

extension UtilityExtension$Fragment$MessageActivity$recipient
    on Fragment$MessageActivity$recipient {
  CopyWith$Fragment$MessageActivity$recipient<
          Fragment$MessageActivity$recipient>
      get copyWith => CopyWith$Fragment$MessageActivity$recipient(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$MessageActivity$recipient<TRes> {
  factory CopyWith$Fragment$MessageActivity$recipient(
    Fragment$MessageActivity$recipient instance,
    TRes Function(Fragment$MessageActivity$recipient) then,
  ) = _CopyWithImpl$Fragment$MessageActivity$recipient;

  factory CopyWith$Fragment$MessageActivity$recipient.stub(TRes res) =
      _CopyWithStubImpl$Fragment$MessageActivity$recipient;

  TRes call({
    int? id,
    Fragment$MessageActivity$recipient$avatar? avatar,
    String? name,
    String? $__typename,
  });
  CopyWith$Fragment$MessageActivity$recipient$avatar<TRes> get avatar;
}

class _CopyWithImpl$Fragment$MessageActivity$recipient<TRes>
    implements CopyWith$Fragment$MessageActivity$recipient<TRes> {
  _CopyWithImpl$Fragment$MessageActivity$recipient(
    this._instance,
    this._then,
  );

  final Fragment$MessageActivity$recipient _instance;

  final TRes Function(Fragment$MessageActivity$recipient) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? avatar = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$MessageActivity$recipient(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        avatar: avatar == _undefined
            ? _instance.avatar
            : (avatar as Fragment$MessageActivity$recipient$avatar?),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$MessageActivity$recipient$avatar<TRes> get avatar {
    final local$avatar = _instance.avatar;
    return local$avatar == null
        ? CopyWith$Fragment$MessageActivity$recipient$avatar.stub(
            _then(_instance))
        : CopyWith$Fragment$MessageActivity$recipient$avatar(
            local$avatar, (e) => call(avatar: e));
  }
}

class _CopyWithStubImpl$Fragment$MessageActivity$recipient<TRes>
    implements CopyWith$Fragment$MessageActivity$recipient<TRes> {
  _CopyWithStubImpl$Fragment$MessageActivity$recipient(this._res);

  TRes _res;

  call({
    int? id,
    Fragment$MessageActivity$recipient$avatar? avatar,
    String? name,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$MessageActivity$recipient$avatar<TRes> get avatar =>
      CopyWith$Fragment$MessageActivity$recipient$avatar.stub(_res);
}

class Fragment$MessageActivity$recipient$avatar {
  Fragment$MessageActivity$recipient$avatar({
    this.medium,
    this.$__typename = 'UserAvatar',
  });

  factory Fragment$MessageActivity$recipient$avatar.fromJson(
      Map<String, dynamic> json) {
    final l$medium = json['medium'];
    final l$$__typename = json['__typename'];
    return Fragment$MessageActivity$recipient$avatar(
      medium: (l$medium as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? medium;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$medium = medium;
    _resultData['medium'] = l$medium;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$medium = medium;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$medium,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$MessageActivity$recipient$avatar) ||
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
    return true;
  }
}

extension UtilityExtension$Fragment$MessageActivity$recipient$avatar
    on Fragment$MessageActivity$recipient$avatar {
  CopyWith$Fragment$MessageActivity$recipient$avatar<
          Fragment$MessageActivity$recipient$avatar>
      get copyWith => CopyWith$Fragment$MessageActivity$recipient$avatar(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$MessageActivity$recipient$avatar<TRes> {
  factory CopyWith$Fragment$MessageActivity$recipient$avatar(
    Fragment$MessageActivity$recipient$avatar instance,
    TRes Function(Fragment$MessageActivity$recipient$avatar) then,
  ) = _CopyWithImpl$Fragment$MessageActivity$recipient$avatar;

  factory CopyWith$Fragment$MessageActivity$recipient$avatar.stub(TRes res) =
      _CopyWithStubImpl$Fragment$MessageActivity$recipient$avatar;

  TRes call({
    String? medium,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$MessageActivity$recipient$avatar<TRes>
    implements CopyWith$Fragment$MessageActivity$recipient$avatar<TRes> {
  _CopyWithImpl$Fragment$MessageActivity$recipient$avatar(
    this._instance,
    this._then,
  );

  final Fragment$MessageActivity$recipient$avatar _instance;

  final TRes Function(Fragment$MessageActivity$recipient$avatar) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? medium = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$MessageActivity$recipient$avatar(
        medium: medium == _undefined ? _instance.medium : (medium as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$MessageActivity$recipient$avatar<TRes>
    implements CopyWith$Fragment$MessageActivity$recipient$avatar<TRes> {
  _CopyWithStubImpl$Fragment$MessageActivity$recipient$avatar(this._res);

  TRes _res;

  call({
    String? medium,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$ListActivity {
  Fragment$ListActivity({
    required this.id,
    this.user,
    required this.likeCount,
    required this.replyCount,
    required this.createdAt,
    this.isLiked,
    this.isSubscribed,
    this.siteUrl,
    this.progress,
    this.status,
    this.media,
    this.$__typename = 'ListActivity',
  });

  factory Fragment$ListActivity.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$user = json['user'];
    final l$likeCount = json['likeCount'];
    final l$replyCount = json['replyCount'];
    final l$createdAt = json['createdAt'];
    final l$isLiked = json['isLiked'];
    final l$isSubscribed = json['isSubscribed'];
    final l$siteUrl = json['siteUrl'];
    final l$progress = json['progress'];
    final l$status = json['status'];
    final l$media = json['media'];
    final l$$__typename = json['__typename'];
    return Fragment$ListActivity(
      id: (l$id as int),
      user: l$user == null
          ? null
          : Fragment$ListActivity$user.fromJson(
              (l$user as Map<String, dynamic>)),
      likeCount: (l$likeCount as int),
      replyCount: (l$replyCount as int),
      createdAt: (l$createdAt as int),
      isLiked: (l$isLiked as bool?),
      isSubscribed: (l$isSubscribed as bool?),
      siteUrl: (l$siteUrl as String?),
      progress: (l$progress as String?),
      status: (l$status as String?),
      media: l$media == null
          ? null
          : Fragment$ListActivity$media.fromJson(
              (l$media as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final Fragment$ListActivity$user? user;

  final int likeCount;

  final int replyCount;

  final int createdAt;

  final bool? isLiked;

  final bool? isSubscribed;

  final String? siteUrl;

  final String? progress;

  final String? status;

  final Fragment$ListActivity$media? media;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$likeCount = likeCount;
    _resultData['likeCount'] = l$likeCount;
    final l$replyCount = replyCount;
    _resultData['replyCount'] = l$replyCount;
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt;
    final l$isLiked = isLiked;
    _resultData['isLiked'] = l$isLiked;
    final l$isSubscribed = isSubscribed;
    _resultData['isSubscribed'] = l$isSubscribed;
    final l$siteUrl = siteUrl;
    _resultData['siteUrl'] = l$siteUrl;
    final l$progress = progress;
    _resultData['progress'] = l$progress;
    final l$status = status;
    _resultData['status'] = l$status;
    final l$media = media;
    _resultData['media'] = l$media?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$user = user;
    final l$likeCount = likeCount;
    final l$replyCount = replyCount;
    final l$createdAt = createdAt;
    final l$isLiked = isLiked;
    final l$isSubscribed = isSubscribed;
    final l$siteUrl = siteUrl;
    final l$progress = progress;
    final l$status = status;
    final l$media = media;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$user,
      l$likeCount,
      l$replyCount,
      l$createdAt,
      l$isLiked,
      l$isSubscribed,
      l$siteUrl,
      l$progress,
      l$status,
      l$media,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$ListActivity) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
      return false;
    }
    final l$likeCount = likeCount;
    final lOther$likeCount = other.likeCount;
    if (l$likeCount != lOther$likeCount) {
      return false;
    }
    final l$replyCount = replyCount;
    final lOther$replyCount = other.replyCount;
    if (l$replyCount != lOther$replyCount) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$isLiked = isLiked;
    final lOther$isLiked = other.isLiked;
    if (l$isLiked != lOther$isLiked) {
      return false;
    }
    final l$isSubscribed = isSubscribed;
    final lOther$isSubscribed = other.isSubscribed;
    if (l$isSubscribed != lOther$isSubscribed) {
      return false;
    }
    final l$siteUrl = siteUrl;
    final lOther$siteUrl = other.siteUrl;
    if (l$siteUrl != lOther$siteUrl) {
      return false;
    }
    final l$progress = progress;
    final lOther$progress = other.progress;
    if (l$progress != lOther$progress) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
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

extension UtilityExtension$Fragment$ListActivity on Fragment$ListActivity {
  CopyWith$Fragment$ListActivity<Fragment$ListActivity> get copyWith =>
      CopyWith$Fragment$ListActivity(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$ListActivity<TRes> {
  factory CopyWith$Fragment$ListActivity(
    Fragment$ListActivity instance,
    TRes Function(Fragment$ListActivity) then,
  ) = _CopyWithImpl$Fragment$ListActivity;

  factory CopyWith$Fragment$ListActivity.stub(TRes res) =
      _CopyWithStubImpl$Fragment$ListActivity;

  TRes call({
    int? id,
    Fragment$ListActivity$user? user,
    int? likeCount,
    int? replyCount,
    int? createdAt,
    bool? isLiked,
    bool? isSubscribed,
    String? siteUrl,
    String? progress,
    String? status,
    Fragment$ListActivity$media? media,
    String? $__typename,
  });
  CopyWith$Fragment$ListActivity$user<TRes> get user;
  CopyWith$Fragment$ListActivity$media<TRes> get media;
}

class _CopyWithImpl$Fragment$ListActivity<TRes>
    implements CopyWith$Fragment$ListActivity<TRes> {
  _CopyWithImpl$Fragment$ListActivity(
    this._instance,
    this._then,
  );

  final Fragment$ListActivity _instance;

  final TRes Function(Fragment$ListActivity) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? user = _undefined,
    Object? likeCount = _undefined,
    Object? replyCount = _undefined,
    Object? createdAt = _undefined,
    Object? isLiked = _undefined,
    Object? isSubscribed = _undefined,
    Object? siteUrl = _undefined,
    Object? progress = _undefined,
    Object? status = _undefined,
    Object? media = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$ListActivity(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        user: user == _undefined
            ? _instance.user
            : (user as Fragment$ListActivity$user?),
        likeCount: likeCount == _undefined || likeCount == null
            ? _instance.likeCount
            : (likeCount as int),
        replyCount: replyCount == _undefined || replyCount == null
            ? _instance.replyCount
            : (replyCount as int),
        createdAt: createdAt == _undefined || createdAt == null
            ? _instance.createdAt
            : (createdAt as int),
        isLiked: isLiked == _undefined ? _instance.isLiked : (isLiked as bool?),
        isSubscribed: isSubscribed == _undefined
            ? _instance.isSubscribed
            : (isSubscribed as bool?),
        siteUrl:
            siteUrl == _undefined ? _instance.siteUrl : (siteUrl as String?),
        progress:
            progress == _undefined ? _instance.progress : (progress as String?),
        status: status == _undefined ? _instance.status : (status as String?),
        media: media == _undefined
            ? _instance.media
            : (media as Fragment$ListActivity$media?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$ListActivity$user<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith$Fragment$ListActivity$user.stub(_then(_instance))
        : CopyWith$Fragment$ListActivity$user(local$user, (e) => call(user: e));
  }

  CopyWith$Fragment$ListActivity$media<TRes> get media {
    final local$media = _instance.media;
    return local$media == null
        ? CopyWith$Fragment$ListActivity$media.stub(_then(_instance))
        : CopyWith$Fragment$ListActivity$media(
            local$media, (e) => call(media: e));
  }
}

class _CopyWithStubImpl$Fragment$ListActivity<TRes>
    implements CopyWith$Fragment$ListActivity<TRes> {
  _CopyWithStubImpl$Fragment$ListActivity(this._res);

  TRes _res;

  call({
    int? id,
    Fragment$ListActivity$user? user,
    int? likeCount,
    int? replyCount,
    int? createdAt,
    bool? isLiked,
    bool? isSubscribed,
    String? siteUrl,
    String? progress,
    String? status,
    Fragment$ListActivity$media? media,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$ListActivity$user<TRes> get user =>
      CopyWith$Fragment$ListActivity$user.stub(_res);

  CopyWith$Fragment$ListActivity$media<TRes> get media =>
      CopyWith$Fragment$ListActivity$media.stub(_res);
}

const fragmentDefinitionListActivity = FragmentDefinitionNode(
  name: NameNode(value: 'ListActivity'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'ListActivity'),
    isNonNull: false,
  )),
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
          name: NameNode(value: 'avatar'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: SelectionSetNode(selections: [
            FieldNode(
              name: NameNode(value: 'medium'),
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
          name: NameNode(value: 'name'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'isFollowing'),
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
      name: NameNode(value: 'likeCount'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'replyCount'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'createdAt'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'isLiked'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'isSubscribed'),
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
      name: NameNode(value: 'progress'),
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
      name: NameNode(value: 'media'),
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
          name: NameNode(value: 'coverImage'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: SelectionSetNode(selections: [
            FieldNode(
              name: NameNode(value: 'medium'),
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
          name: NameNode(value: 'title'),
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
              name: NameNode(value: '__typename'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
          ]),
        ),
        FieldNode(
          name: NameNode(value: 'type'),
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
          name: NameNode(value: 'isAdult'),
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
);
const documentNodeFragmentListActivity = DocumentNode(definitions: [
  fragmentDefinitionListActivity,
]);

extension ClientExtension$Fragment$ListActivity on graphql.GraphQLClient {
  void writeFragment$ListActivity({
    required Fragment$ListActivity data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'ListActivity',
            document: documentNodeFragmentListActivity,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$ListActivity? readFragment$ListActivity({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'ListActivity',
          document: documentNodeFragmentListActivity,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$ListActivity.fromJson(result);
  }
}

class Fragment$ListActivity$user {
  Fragment$ListActivity$user({
    required this.id,
    this.avatar,
    required this.name,
    this.isFollowing,
    this.$__typename = 'User',
  });

  factory Fragment$ListActivity$user.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$avatar = json['avatar'];
    final l$name = json['name'];
    final l$isFollowing = json['isFollowing'];
    final l$$__typename = json['__typename'];
    return Fragment$ListActivity$user(
      id: (l$id as int),
      avatar: l$avatar == null
          ? null
          : Fragment$ListActivity$user$avatar.fromJson(
              (l$avatar as Map<String, dynamic>)),
      name: (l$name as String),
      isFollowing: (l$isFollowing as bool?),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final Fragment$ListActivity$user$avatar? avatar;

  final String name;

  final bool? isFollowing;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$avatar = avatar;
    _resultData['avatar'] = l$avatar?.toJson();
    final l$name = name;
    _resultData['name'] = l$name;
    final l$isFollowing = isFollowing;
    _resultData['isFollowing'] = l$isFollowing;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$avatar = avatar;
    final l$name = name;
    final l$isFollowing = isFollowing;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$avatar,
      l$name,
      l$isFollowing,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$ListActivity$user) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$avatar = avatar;
    final lOther$avatar = other.avatar;
    if (l$avatar != lOther$avatar) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
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
    return true;
  }
}

extension UtilityExtension$Fragment$ListActivity$user
    on Fragment$ListActivity$user {
  CopyWith$Fragment$ListActivity$user<Fragment$ListActivity$user>
      get copyWith => CopyWith$Fragment$ListActivity$user(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$ListActivity$user<TRes> {
  factory CopyWith$Fragment$ListActivity$user(
    Fragment$ListActivity$user instance,
    TRes Function(Fragment$ListActivity$user) then,
  ) = _CopyWithImpl$Fragment$ListActivity$user;

  factory CopyWith$Fragment$ListActivity$user.stub(TRes res) =
      _CopyWithStubImpl$Fragment$ListActivity$user;

  TRes call({
    int? id,
    Fragment$ListActivity$user$avatar? avatar,
    String? name,
    bool? isFollowing,
    String? $__typename,
  });
  CopyWith$Fragment$ListActivity$user$avatar<TRes> get avatar;
}

class _CopyWithImpl$Fragment$ListActivity$user<TRes>
    implements CopyWith$Fragment$ListActivity$user<TRes> {
  _CopyWithImpl$Fragment$ListActivity$user(
    this._instance,
    this._then,
  );

  final Fragment$ListActivity$user _instance;

  final TRes Function(Fragment$ListActivity$user) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? avatar = _undefined,
    Object? name = _undefined,
    Object? isFollowing = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$ListActivity$user(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        avatar: avatar == _undefined
            ? _instance.avatar
            : (avatar as Fragment$ListActivity$user$avatar?),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        isFollowing: isFollowing == _undefined
            ? _instance.isFollowing
            : (isFollowing as bool?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$ListActivity$user$avatar<TRes> get avatar {
    final local$avatar = _instance.avatar;
    return local$avatar == null
        ? CopyWith$Fragment$ListActivity$user$avatar.stub(_then(_instance))
        : CopyWith$Fragment$ListActivity$user$avatar(
            local$avatar, (e) => call(avatar: e));
  }
}

class _CopyWithStubImpl$Fragment$ListActivity$user<TRes>
    implements CopyWith$Fragment$ListActivity$user<TRes> {
  _CopyWithStubImpl$Fragment$ListActivity$user(this._res);

  TRes _res;

  call({
    int? id,
    Fragment$ListActivity$user$avatar? avatar,
    String? name,
    bool? isFollowing,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$ListActivity$user$avatar<TRes> get avatar =>
      CopyWith$Fragment$ListActivity$user$avatar.stub(_res);
}

class Fragment$ListActivity$user$avatar {
  Fragment$ListActivity$user$avatar({
    this.medium,
    this.$__typename = 'UserAvatar',
  });

  factory Fragment$ListActivity$user$avatar.fromJson(
      Map<String, dynamic> json) {
    final l$medium = json['medium'];
    final l$$__typename = json['__typename'];
    return Fragment$ListActivity$user$avatar(
      medium: (l$medium as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? medium;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$medium = medium;
    _resultData['medium'] = l$medium;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$medium = medium;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$medium,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$ListActivity$user$avatar) ||
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
    return true;
  }
}

extension UtilityExtension$Fragment$ListActivity$user$avatar
    on Fragment$ListActivity$user$avatar {
  CopyWith$Fragment$ListActivity$user$avatar<Fragment$ListActivity$user$avatar>
      get copyWith => CopyWith$Fragment$ListActivity$user$avatar(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$ListActivity$user$avatar<TRes> {
  factory CopyWith$Fragment$ListActivity$user$avatar(
    Fragment$ListActivity$user$avatar instance,
    TRes Function(Fragment$ListActivity$user$avatar) then,
  ) = _CopyWithImpl$Fragment$ListActivity$user$avatar;

  factory CopyWith$Fragment$ListActivity$user$avatar.stub(TRes res) =
      _CopyWithStubImpl$Fragment$ListActivity$user$avatar;

  TRes call({
    String? medium,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$ListActivity$user$avatar<TRes>
    implements CopyWith$Fragment$ListActivity$user$avatar<TRes> {
  _CopyWithImpl$Fragment$ListActivity$user$avatar(
    this._instance,
    this._then,
  );

  final Fragment$ListActivity$user$avatar _instance;

  final TRes Function(Fragment$ListActivity$user$avatar) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? medium = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$ListActivity$user$avatar(
        medium: medium == _undefined ? _instance.medium : (medium as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$ListActivity$user$avatar<TRes>
    implements CopyWith$Fragment$ListActivity$user$avatar<TRes> {
  _CopyWithStubImpl$Fragment$ListActivity$user$avatar(this._res);

  TRes _res;

  call({
    String? medium,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$ListActivity$media {
  Fragment$ListActivity$media({
    required this.id,
    this.coverImage,
    this.title,
    this.type,
    this.format,
    this.isAdult,
    this.$__typename = 'Media',
  });

  factory Fragment$ListActivity$media.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$coverImage = json['coverImage'];
    final l$title = json['title'];
    final l$type = json['type'];
    final l$format = json['format'];
    final l$isAdult = json['isAdult'];
    final l$$__typename = json['__typename'];
    return Fragment$ListActivity$media(
      id: (l$id as int),
      coverImage: l$coverImage == null
          ? null
          : Fragment$ListActivity$media$coverImage.fromJson(
              (l$coverImage as Map<String, dynamic>)),
      title: l$title == null
          ? null
          : Fragment$ListActivity$media$title.fromJson(
              (l$title as Map<String, dynamic>)),
      type: l$type == null ? null : fromJson$Enum$MediaType((l$type as String)),
      format: l$format == null
          ? null
          : fromJson$Enum$MediaFormat((l$format as String)),
      isAdult: (l$isAdult as bool?),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final Fragment$ListActivity$media$coverImage? coverImage;

  final Fragment$ListActivity$media$title? title;

  final Enum$MediaType? type;

  final Enum$MediaFormat? format;

  final bool? isAdult;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$coverImage = coverImage;
    _resultData['coverImage'] = l$coverImage?.toJson();
    final l$title = title;
    _resultData['title'] = l$title?.toJson();
    final l$type = type;
    _resultData['type'] = l$type == null ? null : toJson$Enum$MediaType(l$type);
    final l$format = format;
    _resultData['format'] =
        l$format == null ? null : toJson$Enum$MediaFormat(l$format);
    final l$isAdult = isAdult;
    _resultData['isAdult'] = l$isAdult;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$coverImage = coverImage;
    final l$title = title;
    final l$type = type;
    final l$format = format;
    final l$isAdult = isAdult;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$coverImage,
      l$title,
      l$type,
      l$format,
      l$isAdult,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$ListActivity$media) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$coverImage = coverImage;
    final lOther$coverImage = other.coverImage;
    if (l$coverImage != lOther$coverImage) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$format = format;
    final lOther$format = other.format;
    if (l$format != lOther$format) {
      return false;
    }
    final l$isAdult = isAdult;
    final lOther$isAdult = other.isAdult;
    if (l$isAdult != lOther$isAdult) {
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

extension UtilityExtension$Fragment$ListActivity$media
    on Fragment$ListActivity$media {
  CopyWith$Fragment$ListActivity$media<Fragment$ListActivity$media>
      get copyWith => CopyWith$Fragment$ListActivity$media(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$ListActivity$media<TRes> {
  factory CopyWith$Fragment$ListActivity$media(
    Fragment$ListActivity$media instance,
    TRes Function(Fragment$ListActivity$media) then,
  ) = _CopyWithImpl$Fragment$ListActivity$media;

  factory CopyWith$Fragment$ListActivity$media.stub(TRes res) =
      _CopyWithStubImpl$Fragment$ListActivity$media;

  TRes call({
    int? id,
    Fragment$ListActivity$media$coverImage? coverImage,
    Fragment$ListActivity$media$title? title,
    Enum$MediaType? type,
    Enum$MediaFormat? format,
    bool? isAdult,
    String? $__typename,
  });
  CopyWith$Fragment$ListActivity$media$coverImage<TRes> get coverImage;
  CopyWith$Fragment$ListActivity$media$title<TRes> get title;
}

class _CopyWithImpl$Fragment$ListActivity$media<TRes>
    implements CopyWith$Fragment$ListActivity$media<TRes> {
  _CopyWithImpl$Fragment$ListActivity$media(
    this._instance,
    this._then,
  );

  final Fragment$ListActivity$media _instance;

  final TRes Function(Fragment$ListActivity$media) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? coverImage = _undefined,
    Object? title = _undefined,
    Object? type = _undefined,
    Object? format = _undefined,
    Object? isAdult = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$ListActivity$media(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        coverImage: coverImage == _undefined
            ? _instance.coverImage
            : (coverImage as Fragment$ListActivity$media$coverImage?),
        title: title == _undefined
            ? _instance.title
            : (title as Fragment$ListActivity$media$title?),
        type: type == _undefined ? _instance.type : (type as Enum$MediaType?),
        format: format == _undefined
            ? _instance.format
            : (format as Enum$MediaFormat?),
        isAdult: isAdult == _undefined ? _instance.isAdult : (isAdult as bool?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$ListActivity$media$coverImage<TRes> get coverImage {
    final local$coverImage = _instance.coverImage;
    return local$coverImage == null
        ? CopyWith$Fragment$ListActivity$media$coverImage.stub(_then(_instance))
        : CopyWith$Fragment$ListActivity$media$coverImage(
            local$coverImage, (e) => call(coverImage: e));
  }

  CopyWith$Fragment$ListActivity$media$title<TRes> get title {
    final local$title = _instance.title;
    return local$title == null
        ? CopyWith$Fragment$ListActivity$media$title.stub(_then(_instance))
        : CopyWith$Fragment$ListActivity$media$title(
            local$title, (e) => call(title: e));
  }
}

class _CopyWithStubImpl$Fragment$ListActivity$media<TRes>
    implements CopyWith$Fragment$ListActivity$media<TRes> {
  _CopyWithStubImpl$Fragment$ListActivity$media(this._res);

  TRes _res;

  call({
    int? id,
    Fragment$ListActivity$media$coverImage? coverImage,
    Fragment$ListActivity$media$title? title,
    Enum$MediaType? type,
    Enum$MediaFormat? format,
    bool? isAdult,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$ListActivity$media$coverImage<TRes> get coverImage =>
      CopyWith$Fragment$ListActivity$media$coverImage.stub(_res);

  CopyWith$Fragment$ListActivity$media$title<TRes> get title =>
      CopyWith$Fragment$ListActivity$media$title.stub(_res);
}

class Fragment$ListActivity$media$coverImage {
  Fragment$ListActivity$media$coverImage({
    this.medium,
    this.$__typename = 'MediaCoverImage',
  });

  factory Fragment$ListActivity$media$coverImage.fromJson(
      Map<String, dynamic> json) {
    final l$medium = json['medium'];
    final l$$__typename = json['__typename'];
    return Fragment$ListActivity$media$coverImage(
      medium: (l$medium as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? medium;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$medium = medium;
    _resultData['medium'] = l$medium;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$medium = medium;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$medium,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$ListActivity$media$coverImage) ||
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
    return true;
  }
}

extension UtilityExtension$Fragment$ListActivity$media$coverImage
    on Fragment$ListActivity$media$coverImage {
  CopyWith$Fragment$ListActivity$media$coverImage<
          Fragment$ListActivity$media$coverImage>
      get copyWith => CopyWith$Fragment$ListActivity$media$coverImage(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$ListActivity$media$coverImage<TRes> {
  factory CopyWith$Fragment$ListActivity$media$coverImage(
    Fragment$ListActivity$media$coverImage instance,
    TRes Function(Fragment$ListActivity$media$coverImage) then,
  ) = _CopyWithImpl$Fragment$ListActivity$media$coverImage;

  factory CopyWith$Fragment$ListActivity$media$coverImage.stub(TRes res) =
      _CopyWithStubImpl$Fragment$ListActivity$media$coverImage;

  TRes call({
    String? medium,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$ListActivity$media$coverImage<TRes>
    implements CopyWith$Fragment$ListActivity$media$coverImage<TRes> {
  _CopyWithImpl$Fragment$ListActivity$media$coverImage(
    this._instance,
    this._then,
  );

  final Fragment$ListActivity$media$coverImage _instance;

  final TRes Function(Fragment$ListActivity$media$coverImage) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? medium = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$ListActivity$media$coverImage(
        medium: medium == _undefined ? _instance.medium : (medium as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$ListActivity$media$coverImage<TRes>
    implements CopyWith$Fragment$ListActivity$media$coverImage<TRes> {
  _CopyWithStubImpl$Fragment$ListActivity$media$coverImage(this._res);

  TRes _res;

  call({
    String? medium,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$ListActivity$media$title {
  Fragment$ListActivity$media$title({
    this.userPreferred,
    this.$__typename = 'MediaTitle',
  });

  factory Fragment$ListActivity$media$title.fromJson(
      Map<String, dynamic> json) {
    final l$userPreferred = json['userPreferred'];
    final l$$__typename = json['__typename'];
    return Fragment$ListActivity$media$title(
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
    if (!(other is Fragment$ListActivity$media$title) ||
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

extension UtilityExtension$Fragment$ListActivity$media$title
    on Fragment$ListActivity$media$title {
  CopyWith$Fragment$ListActivity$media$title<Fragment$ListActivity$media$title>
      get copyWith => CopyWith$Fragment$ListActivity$media$title(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$ListActivity$media$title<TRes> {
  factory CopyWith$Fragment$ListActivity$media$title(
    Fragment$ListActivity$media$title instance,
    TRes Function(Fragment$ListActivity$media$title) then,
  ) = _CopyWithImpl$Fragment$ListActivity$media$title;

  factory CopyWith$Fragment$ListActivity$media$title.stub(TRes res) =
      _CopyWithStubImpl$Fragment$ListActivity$media$title;

  TRes call({
    String? userPreferred,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$ListActivity$media$title<TRes>
    implements CopyWith$Fragment$ListActivity$media$title<TRes> {
  _CopyWithImpl$Fragment$ListActivity$media$title(
    this._instance,
    this._then,
  );

  final Fragment$ListActivity$media$title _instance;

  final TRes Function(Fragment$ListActivity$media$title) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userPreferred = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$ListActivity$media$title(
        userPreferred: userPreferred == _undefined
            ? _instance.userPreferred
            : (userPreferred as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$ListActivity$media$title<TRes>
    implements CopyWith$Fragment$ListActivity$media$title<TRes> {
  _CopyWithStubImpl$Fragment$ListActivity$media$title(this._res);

  TRes _res;

  call({
    String? userPreferred,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$ActivityReply {
  Fragment$ActivityReply({
    required this.id,
    this.user,
    this.text,
    this.isLiked,
    required this.likeCount,
    required this.createdAt,
    this.$__typename = 'ActivityReply',
  });

  factory Fragment$ActivityReply.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$user = json['user'];
    final l$text = json['text'];
    final l$isLiked = json['isLiked'];
    final l$likeCount = json['likeCount'];
    final l$createdAt = json['createdAt'];
    final l$$__typename = json['__typename'];
    return Fragment$ActivityReply(
      id: (l$id as int),
      user: l$user == null
          ? null
          : Fragment$ActivityReply$user.fromJson(
              (l$user as Map<String, dynamic>)),
      text: (l$text as String?),
      isLiked: (l$isLiked as bool?),
      likeCount: (l$likeCount as int),
      createdAt: (l$createdAt as int),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final Fragment$ActivityReply$user? user;

  final String? text;

  final bool? isLiked;

  final int likeCount;

  final int createdAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$text = text;
    _resultData['text'] = l$text;
    final l$isLiked = isLiked;
    _resultData['isLiked'] = l$isLiked;
    final l$likeCount = likeCount;
    _resultData['likeCount'] = l$likeCount;
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$user = user;
    final l$text = text;
    final l$isLiked = isLiked;
    final l$likeCount = likeCount;
    final l$createdAt = createdAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$user,
      l$text,
      l$isLiked,
      l$likeCount,
      l$createdAt,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$ActivityReply) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
      return false;
    }
    final l$text = text;
    final lOther$text = other.text;
    if (l$text != lOther$text) {
      return false;
    }
    final l$isLiked = isLiked;
    final lOther$isLiked = other.isLiked;
    if (l$isLiked != lOther$isLiked) {
      return false;
    }
    final l$likeCount = likeCount;
    final lOther$likeCount = other.likeCount;
    if (l$likeCount != lOther$likeCount) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
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

extension UtilityExtension$Fragment$ActivityReply on Fragment$ActivityReply {
  CopyWith$Fragment$ActivityReply<Fragment$ActivityReply> get copyWith =>
      CopyWith$Fragment$ActivityReply(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$ActivityReply<TRes> {
  factory CopyWith$Fragment$ActivityReply(
    Fragment$ActivityReply instance,
    TRes Function(Fragment$ActivityReply) then,
  ) = _CopyWithImpl$Fragment$ActivityReply;

  factory CopyWith$Fragment$ActivityReply.stub(TRes res) =
      _CopyWithStubImpl$Fragment$ActivityReply;

  TRes call({
    int? id,
    Fragment$ActivityReply$user? user,
    String? text,
    bool? isLiked,
    int? likeCount,
    int? createdAt,
    String? $__typename,
  });
  CopyWith$Fragment$ActivityReply$user<TRes> get user;
}

class _CopyWithImpl$Fragment$ActivityReply<TRes>
    implements CopyWith$Fragment$ActivityReply<TRes> {
  _CopyWithImpl$Fragment$ActivityReply(
    this._instance,
    this._then,
  );

  final Fragment$ActivityReply _instance;

  final TRes Function(Fragment$ActivityReply) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? user = _undefined,
    Object? text = _undefined,
    Object? isLiked = _undefined,
    Object? likeCount = _undefined,
    Object? createdAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$ActivityReply(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        user: user == _undefined
            ? _instance.user
            : (user as Fragment$ActivityReply$user?),
        text: text == _undefined ? _instance.text : (text as String?),
        isLiked: isLiked == _undefined ? _instance.isLiked : (isLiked as bool?),
        likeCount: likeCount == _undefined || likeCount == null
            ? _instance.likeCount
            : (likeCount as int),
        createdAt: createdAt == _undefined || createdAt == null
            ? _instance.createdAt
            : (createdAt as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$ActivityReply$user<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith$Fragment$ActivityReply$user.stub(_then(_instance))
        : CopyWith$Fragment$ActivityReply$user(
            local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl$Fragment$ActivityReply<TRes>
    implements CopyWith$Fragment$ActivityReply<TRes> {
  _CopyWithStubImpl$Fragment$ActivityReply(this._res);

  TRes _res;

  call({
    int? id,
    Fragment$ActivityReply$user? user,
    String? text,
    bool? isLiked,
    int? likeCount,
    int? createdAt,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$ActivityReply$user<TRes> get user =>
      CopyWith$Fragment$ActivityReply$user.stub(_res);
}

const fragmentDefinitionActivityReply = FragmentDefinitionNode(
  name: NameNode(value: 'ActivityReply'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'ActivityReply'),
    isNonNull: false,
  )),
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
          name: NameNode(value: 'avatar'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: SelectionSetNode(selections: [
            FieldNode(
              name: NameNode(value: 'medium'),
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
      name: NameNode(value: 'text'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'isLiked'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'likeCount'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'createdAt'),
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
);
const documentNodeFragmentActivityReply = DocumentNode(definitions: [
  fragmentDefinitionActivityReply,
]);

extension ClientExtension$Fragment$ActivityReply on graphql.GraphQLClient {
  void writeFragment$ActivityReply({
    required Fragment$ActivityReply data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'ActivityReply',
            document: documentNodeFragmentActivityReply,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$ActivityReply? readFragment$ActivityReply({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'ActivityReply',
          document: documentNodeFragmentActivityReply,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$ActivityReply.fromJson(result);
  }
}

class Fragment$ActivityReply$user {
  Fragment$ActivityReply$user({
    required this.id,
    this.avatar,
    required this.name,
    this.$__typename = 'User',
  });

  factory Fragment$ActivityReply$user.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$avatar = json['avatar'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Fragment$ActivityReply$user(
      id: (l$id as int),
      avatar: l$avatar == null
          ? null
          : Fragment$ActivityReply$user$avatar.fromJson(
              (l$avatar as Map<String, dynamic>)),
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final Fragment$ActivityReply$user$avatar? avatar;

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$avatar = avatar;
    _resultData['avatar'] = l$avatar?.toJson();
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$avatar = avatar;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$avatar,
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$ActivityReply$user) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$avatar = avatar;
    final lOther$avatar = other.avatar;
    if (l$avatar != lOther$avatar) {
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

extension UtilityExtension$Fragment$ActivityReply$user
    on Fragment$ActivityReply$user {
  CopyWith$Fragment$ActivityReply$user<Fragment$ActivityReply$user>
      get copyWith => CopyWith$Fragment$ActivityReply$user(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$ActivityReply$user<TRes> {
  factory CopyWith$Fragment$ActivityReply$user(
    Fragment$ActivityReply$user instance,
    TRes Function(Fragment$ActivityReply$user) then,
  ) = _CopyWithImpl$Fragment$ActivityReply$user;

  factory CopyWith$Fragment$ActivityReply$user.stub(TRes res) =
      _CopyWithStubImpl$Fragment$ActivityReply$user;

  TRes call({
    int? id,
    Fragment$ActivityReply$user$avatar? avatar,
    String? name,
    String? $__typename,
  });
  CopyWith$Fragment$ActivityReply$user$avatar<TRes> get avatar;
}

class _CopyWithImpl$Fragment$ActivityReply$user<TRes>
    implements CopyWith$Fragment$ActivityReply$user<TRes> {
  _CopyWithImpl$Fragment$ActivityReply$user(
    this._instance,
    this._then,
  );

  final Fragment$ActivityReply$user _instance;

  final TRes Function(Fragment$ActivityReply$user) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? avatar = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$ActivityReply$user(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        avatar: avatar == _undefined
            ? _instance.avatar
            : (avatar as Fragment$ActivityReply$user$avatar?),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$ActivityReply$user$avatar<TRes> get avatar {
    final local$avatar = _instance.avatar;
    return local$avatar == null
        ? CopyWith$Fragment$ActivityReply$user$avatar.stub(_then(_instance))
        : CopyWith$Fragment$ActivityReply$user$avatar(
            local$avatar, (e) => call(avatar: e));
  }
}

class _CopyWithStubImpl$Fragment$ActivityReply$user<TRes>
    implements CopyWith$Fragment$ActivityReply$user<TRes> {
  _CopyWithStubImpl$Fragment$ActivityReply$user(this._res);

  TRes _res;

  call({
    int? id,
    Fragment$ActivityReply$user$avatar? avatar,
    String? name,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$ActivityReply$user$avatar<TRes> get avatar =>
      CopyWith$Fragment$ActivityReply$user$avatar.stub(_res);
}

class Fragment$ActivityReply$user$avatar {
  Fragment$ActivityReply$user$avatar({
    this.medium,
    this.$__typename = 'UserAvatar',
  });

  factory Fragment$ActivityReply$user$avatar.fromJson(
      Map<String, dynamic> json) {
    final l$medium = json['medium'];
    final l$$__typename = json['__typename'];
    return Fragment$ActivityReply$user$avatar(
      medium: (l$medium as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? medium;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$medium = medium;
    _resultData['medium'] = l$medium;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$medium = medium;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$medium,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$ActivityReply$user$avatar) ||
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
    return true;
  }
}

extension UtilityExtension$Fragment$ActivityReply$user$avatar
    on Fragment$ActivityReply$user$avatar {
  CopyWith$Fragment$ActivityReply$user$avatar<
          Fragment$ActivityReply$user$avatar>
      get copyWith => CopyWith$Fragment$ActivityReply$user$avatar(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$ActivityReply$user$avatar<TRes> {
  factory CopyWith$Fragment$ActivityReply$user$avatar(
    Fragment$ActivityReply$user$avatar instance,
    TRes Function(Fragment$ActivityReply$user$avatar) then,
  ) = _CopyWithImpl$Fragment$ActivityReply$user$avatar;

  factory CopyWith$Fragment$ActivityReply$user$avatar.stub(TRes res) =
      _CopyWithStubImpl$Fragment$ActivityReply$user$avatar;

  TRes call({
    String? medium,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$ActivityReply$user$avatar<TRes>
    implements CopyWith$Fragment$ActivityReply$user$avatar<TRes> {
  _CopyWithImpl$Fragment$ActivityReply$user$avatar(
    this._instance,
    this._then,
  );

  final Fragment$ActivityReply$user$avatar _instance;

  final TRes Function(Fragment$ActivityReply$user$avatar) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? medium = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$ActivityReply$user$avatar(
        medium: medium == _undefined ? _instance.medium : (medium as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$ActivityReply$user$avatar<TRes>
    implements CopyWith$Fragment$ActivityReply$user$avatar<TRes> {
  _CopyWithStubImpl$Fragment$ActivityReply$user$avatar(this._res);

  TRes _res;

  call({
    String? medium,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$PageInfo {
  Fragment$PageInfo({
    this.currentPage,
    this.hasNextPage,
    this.$__typename = 'PageInfo',
  });

  factory Fragment$PageInfo.fromJson(Map<String, dynamic> json) {
    final l$currentPage = json['currentPage'];
    final l$hasNextPage = json['hasNextPage'];
    final l$$__typename = json['__typename'];
    return Fragment$PageInfo(
      currentPage: (l$currentPage as int?),
      hasNextPage: (l$hasNextPage as bool?),
      $__typename: (l$$__typename as String),
    );
  }

  final int? currentPage;

  final bool? hasNextPage;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$currentPage = currentPage;
    _resultData['currentPage'] = l$currentPage;
    final l$hasNextPage = hasNextPage;
    _resultData['hasNextPage'] = l$hasNextPage;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$currentPage = currentPage;
    final l$hasNextPage = hasNextPage;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$currentPage,
      l$hasNextPage,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$PageInfo) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$currentPage = currentPage;
    final lOther$currentPage = other.currentPage;
    if (l$currentPage != lOther$currentPage) {
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

extension UtilityExtension$Fragment$PageInfo on Fragment$PageInfo {
  CopyWith$Fragment$PageInfo<Fragment$PageInfo> get copyWith =>
      CopyWith$Fragment$PageInfo(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$PageInfo<TRes> {
  factory CopyWith$Fragment$PageInfo(
    Fragment$PageInfo instance,
    TRes Function(Fragment$PageInfo) then,
  ) = _CopyWithImpl$Fragment$PageInfo;

  factory CopyWith$Fragment$PageInfo.stub(TRes res) =
      _CopyWithStubImpl$Fragment$PageInfo;

  TRes call({
    int? currentPage,
    bool? hasNextPage,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$PageInfo<TRes>
    implements CopyWith$Fragment$PageInfo<TRes> {
  _CopyWithImpl$Fragment$PageInfo(
    this._instance,
    this._then,
  );

  final Fragment$PageInfo _instance;

  final TRes Function(Fragment$PageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? currentPage = _undefined,
    Object? hasNextPage = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$PageInfo(
        currentPage: currentPage == _undefined
            ? _instance.currentPage
            : (currentPage as int?),
        hasNextPage: hasNextPage == _undefined
            ? _instance.hasNextPage
            : (hasNextPage as bool?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$PageInfo<TRes>
    implements CopyWith$Fragment$PageInfo<TRes> {
  _CopyWithStubImpl$Fragment$PageInfo(this._res);

  TRes _res;

  call({
    int? currentPage,
    bool? hasNextPage,
    String? $__typename,
  }) =>
      _res;
}

const fragmentDefinitionPageInfo = FragmentDefinitionNode(
  name: NameNode(value: 'PageInfo'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'PageInfo'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FieldNode(
      name: NameNode(value: 'currentPage'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
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
);
const documentNodeFragmentPageInfo = DocumentNode(definitions: [
  fragmentDefinitionPageInfo,
]);

extension ClientExtension$Fragment$PageInfo on graphql.GraphQLClient {
  void writeFragment$PageInfo({
    required Fragment$PageInfo data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'PageInfo',
            document: documentNodeFragmentPageInfo,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$PageInfo? readFragment$PageInfo({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'PageInfo',
          document: documentNodeFragmentPageInfo,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$PageInfo.fromJson(result);
  }
}

class Fragment$User {
  Fragment$User({
    required this.id,
    required this.name,
    this.avatar,
    this.$__typename = 'User',
  });

  factory Fragment$User.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$avatar = json['avatar'];
    final l$$__typename = json['__typename'];
    return Fragment$User(
      id: (l$id as int),
      name: (l$name as String),
      avatar: l$avatar == null
          ? null
          : Fragment$User$avatar.fromJson((l$avatar as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String name;

  final Fragment$User$avatar? avatar;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$avatar = avatar;
    _resultData['avatar'] = l$avatar?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$avatar = avatar;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$avatar,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$User) || runtimeType != other.runtimeType) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$User on Fragment$User {
  CopyWith$Fragment$User<Fragment$User> get copyWith => CopyWith$Fragment$User(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$User<TRes> {
  factory CopyWith$Fragment$User(
    Fragment$User instance,
    TRes Function(Fragment$User) then,
  ) = _CopyWithImpl$Fragment$User;

  factory CopyWith$Fragment$User.stub(TRes res) =
      _CopyWithStubImpl$Fragment$User;

  TRes call({
    int? id,
    String? name,
    Fragment$User$avatar? avatar,
    String? $__typename,
  });
  CopyWith$Fragment$User$avatar<TRes> get avatar;
}

class _CopyWithImpl$Fragment$User<TRes>
    implements CopyWith$Fragment$User<TRes> {
  _CopyWithImpl$Fragment$User(
    this._instance,
    this._then,
  );

  final Fragment$User _instance;

  final TRes Function(Fragment$User) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? avatar = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$User(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        avatar: avatar == _undefined
            ? _instance.avatar
            : (avatar as Fragment$User$avatar?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$User$avatar<TRes> get avatar {
    final local$avatar = _instance.avatar;
    return local$avatar == null
        ? CopyWith$Fragment$User$avatar.stub(_then(_instance))
        : CopyWith$Fragment$User$avatar(local$avatar, (e) => call(avatar: e));
  }
}

class _CopyWithStubImpl$Fragment$User<TRes>
    implements CopyWith$Fragment$User<TRes> {
  _CopyWithStubImpl$Fragment$User(this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    Fragment$User$avatar? avatar,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$User$avatar<TRes> get avatar =>
      CopyWith$Fragment$User$avatar.stub(_res);
}

const fragmentDefinitionUser = FragmentDefinitionNode(
  name: NameNode(value: 'User'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'User'),
    isNonNull: false,
  )),
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
          name: NameNode(value: 'medium'),
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
);
const documentNodeFragmentUser = DocumentNode(definitions: [
  fragmentDefinitionUser,
]);

extension ClientExtension$Fragment$User on graphql.GraphQLClient {
  void writeFragment$User({
    required Fragment$User data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'User',
            document: documentNodeFragmentUser,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$User? readFragment$User({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'User',
          document: documentNodeFragmentUser,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$User.fromJson(result);
  }
}

class Fragment$User$avatar {
  Fragment$User$avatar({
    this.medium,
    this.$__typename = 'UserAvatar',
  });

  factory Fragment$User$avatar.fromJson(Map<String, dynamic> json) {
    final l$medium = json['medium'];
    final l$$__typename = json['__typename'];
    return Fragment$User$avatar(
      medium: (l$medium as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? medium;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$medium = medium;
    _resultData['medium'] = l$medium;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$medium = medium;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$medium,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$User$avatar) || runtimeType != other.runtimeType) {
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
    return true;
  }
}

extension UtilityExtension$Fragment$User$avatar on Fragment$User$avatar {
  CopyWith$Fragment$User$avatar<Fragment$User$avatar> get copyWith =>
      CopyWith$Fragment$User$avatar(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$User$avatar<TRes> {
  factory CopyWith$Fragment$User$avatar(
    Fragment$User$avatar instance,
    TRes Function(Fragment$User$avatar) then,
  ) = _CopyWithImpl$Fragment$User$avatar;

  factory CopyWith$Fragment$User$avatar.stub(TRes res) =
      _CopyWithStubImpl$Fragment$User$avatar;

  TRes call({
    String? medium,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$User$avatar<TRes>
    implements CopyWith$Fragment$User$avatar<TRes> {
  _CopyWithImpl$Fragment$User$avatar(
    this._instance,
    this._then,
  );

  final Fragment$User$avatar _instance;

  final TRes Function(Fragment$User$avatar) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? medium = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$User$avatar(
        medium: medium == _undefined ? _instance.medium : (medium as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$User$avatar<TRes>
    implements CopyWith$Fragment$User$avatar<TRes> {
  _CopyWithStubImpl$Fragment$User$avatar(this._res);

  TRes _res;

  call({
    String? medium,
    String? $__typename,
  }) =>
      _res;
}
