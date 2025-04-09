import 'package:otaku_world/core/model/filter_model.dart';
import 'package:otaku_world/graphql/__generated/graphql/schema.graphql.dart';

class AnimeFilter extends FilterModel {
  final List<String>? licensedByIn;
  final List<Enum$MediaSource>? sourceIn;
  final int? episodesGreater;
  final int? episodesLesser;
  final int? durationGreater;
  final int? durationLesser;
  final int? minTagRank;
  final List<String>? tagCategoryIn;
  final List<String>? tagIn;
  final bool hideMyAnime;
  final bool isAdult;

  const AnimeFilter({
    super.search,
    required super.sort,
    super.listSort = Enum$MediaListSort.MEDIA_POPULARITY_DESC,
    super.genres,
    super.startDateGreater,
    super.startDateLesser,
    super.isLicensed = true,
    super.season,
    super.seasonYear,
    super.formatIn,
    super.statusIn,
    this.licensedByIn,
    super.countryOfOrigin,
    this.sourceIn,
    this.episodesGreater,
    this.episodesLesser,
    this.durationGreater,
    this.durationLesser,
    this.minTagRank,
    this.tagCategoryIn,
    this.tagIn,
    this.hideMyAnime = false,
    this.isAdult = false,
  });

  @override
  FilterModel reset() {
    return const AnimeFilter(sort: [Enum$MediaSort.POPULARITY_DESC]);
  }

  @override
  String toString() {
    return 'AnimeFilter{ search: $search, sort: $sort, listSort: $listSort, genres: $genres, startDateGreater: $startDateGreater, startDateLesser: $startDateLesser, isLicensed: $isLicensed, season: $season, seasonYear: $seasonYear, formatIn: $formatIn, statusIn: $statusIn, licensedByIn: $licensedByIn, countryOfOrigin: $countryOfOrigin, sourceIn: $sourceIn, episodesGreater: $episodesGreater, episodesLesser: $episodesLesser, durationGreater: $durationGreater, durationLesser: $durationLesser, minTagRank: $minTagRank, tagCategoryIn: $tagCategoryIn, tagIn: $tagIn, hideMyAnime: $hideMyAnime, Adult: $isAdult}';
  }

  static AnimeFilter copy(AnimeFilter filter) {
    return AnimeFilter(
      search: filter.search,
      sort: filter.sort,
      genres: filter.genres,
      startDateGreater: filter.startDateGreater,
      startDateLesser: filter.startDateLesser,
      isLicensed: filter.isLicensed,
      season: filter.season,
      seasonYear: filter.seasonYear,
      formatIn: filter.formatIn,
      statusIn: filter.statusIn,
      licensedByIn: filter.licensedByIn,
      countryOfOrigin: filter.countryOfOrigin,
      sourceIn: filter.sourceIn,
      episodesGreater: filter.episodesGreater,
      episodesLesser: filter.episodesLesser,
      durationGreater: filter.durationGreater,
      durationLesser: filter.durationLesser,
      minTagRank: filter.minTagRank,
      tagCategoryIn: filter.tagCategoryIn,
      tagIn: filter.tagIn,
      isAdult: filter.isAdult,
      hideMyAnime: filter.hideMyAnime,
    );
  }

  AnimeFilter copyWith({
    String? search,
    List<Enum$MediaSort>? sort,
    Enum$MediaListSort? listSort,
    List<String>? genres,
    String? startDateGreater,
    String? startDateLesser,
    bool? isLicensed,
    Enum$MediaSeason? season,
    int? seasonYear,
    List<Enum$MediaFormat>? formatIn,
    List<Enum$MediaStatus>? statusIn,
    List<String>? licensedByIn,
    String? countryOfOrigin,
    List<Enum$MediaSource>? sourceIn,
    int? episodesGreater,
    int? episodesLesser,
    int? durationGreater,
    int? durationLesser,
    int? minTagRank,
    List<String>? tagCategoryIn,
    List<String>? tagIn,
    bool? isAdult,
    bool? hideMyAnime,
  }) {
    Enum$MediaSeason? season0;
    int? seasonYear0;
    String? countryCode;
    if (season != null) {
      if (season == Enum$MediaSeason.$unknown) {
        season0 = null;
      } else {
        season0 = season;
      }
    } else {
      season0 = this.season;
    }

    if (seasonYear != null) {
      if (seasonYear == 0) {
        seasonYear0 = null;
      } else {
        seasonYear0 = seasonYear;
      }
    } else {
      seasonYear0 = this.seasonYear;
    }

    if (countryOfOrigin != null) {
      if (countryOfOrigin == 'NO') {
        countryCode = null;
      }else {
        countryCode = countryOfOrigin;
      }
    }else {
      countryCode = this.countryOfOrigin;
    }

    return AnimeFilter(
      search: search ?? this.search,
      sort: sort ?? this.sort,
      listSort: listSort ?? this.listSort,
      genres: genres ?? this.genres,
      startDateGreater: startDateGreater ?? this.startDateGreater,
      startDateLesser: startDateLesser ?? this.startDateLesser,
      isLicensed: isLicensed ?? this.isLicensed,
      season: season0,
      seasonYear: seasonYear0,
      formatIn: formatIn ?? this.formatIn,
      statusIn: statusIn ?? this.statusIn,
      licensedByIn: licensedByIn ?? this.licensedByIn,
      countryOfOrigin: countryCode,
      sourceIn: sourceIn ?? this.sourceIn,
      episodesGreater: episodesGreater ?? this.episodesGreater,
      episodesLesser: episodesLesser ?? this.episodesLesser,
      durationGreater: durationGreater ?? this.durationGreater,
      durationLesser: durationLesser ?? this.durationLesser,
      minTagRank: minTagRank ?? this.minTagRank,
      tagCategoryIn: tagCategoryIn ?? this.tagCategoryIn,
      tagIn: tagIn ?? this.tagIn,
      isAdult: isAdult ?? this.isAdult,
      hideMyAnime: hideMyAnime ?? this.hideMyAnime,
    );
  }
}
