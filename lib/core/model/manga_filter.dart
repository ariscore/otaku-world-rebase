import 'package:otaku_world/core/model/filter_model.dart';
import 'package:otaku_world/graphql/__generated/graphql/schema.graphql.dart';

class MangaFilter extends FilterModel {
  final int? year;
  final List<String>? licensedByIn;
  final List<Enum$MediaSource>? sourceIn;
  final int? chaptersGreater;
  final int? chaptersLesser;
  final int? volumesGreater;
  final int? volumesLesser;
  final int? minTagRank;
  final List<String>? tagCategoryIn;
  final List<String>? tagIn;
  final bool hideMyManga;
  final bool isAdult;

  const MangaFilter({
    super.search,
    required super.sort,
    super.listSort = Enum$MediaListSort.MEDIA_POPULARITY_DESC,
    super.genres,
    super.startDateGreater,
    super.startDateLesser,
    super.isLicensed = true,
    this.year,
    super.formatIn,
    super.statusIn,
    this.licensedByIn,
    super.countryOfOrigin,
    this.sourceIn,
    this.chaptersGreater,
    this.chaptersLesser,
    this.volumesGreater,
    this.volumesLesser,
    this.minTagRank,
    this.tagCategoryIn,
    this.tagIn,
    this.hideMyManga = false,
    this.isAdult = false,
  });

  @override
  FilterModel reset() {
    return const MangaFilter(sort: [Enum$MediaSort.POPULARITY_DESC]);
  }

  @override
  String toString() {
    return 'AnimeFilter{ search: $search, sort: $sort, genres: $genres, startDateGreater: $startDateGreater, startDateLesser: $startDateLesser, isLicensed: $isLicensed, seasonYear: $year, formatIn: $formatIn, statusIn: $statusIn, licensedByIn: $licensedByIn, countryOfOrigin: $countryOfOrigin, sourceIn: $sourceIn, episodesGreater: $chaptersGreater, episodesLesser: $chaptersLesser, durationGreater: $volumesGreater, durationLesser: $volumesLesser, minTagRank: $minTagRank, tagCategoryIn: $tagCategoryIn, tagIn: $tagIn, hideMyAnime: $hideMyManga, Adult: $isAdult}';
  }

  static MangaFilter copy(MangaFilter filter) {
    return MangaFilter(
      search: filter.search,
      sort: filter.sort,
      genres: filter.genres,
      startDateGreater: filter.startDateGreater,
      startDateLesser: filter.startDateLesser,
      isLicensed: filter.isLicensed,
      year: filter.year,
      formatIn: filter.formatIn,
      statusIn: filter.statusIn,
      licensedByIn: filter.licensedByIn,
      countryOfOrigin: filter.countryOfOrigin,
      sourceIn: filter.sourceIn,
      chaptersGreater: filter.chaptersGreater,
      chaptersLesser: filter.chaptersLesser,
      volumesGreater: filter.volumesGreater,
      volumesLesser: filter.volumesLesser,
      minTagRank: filter.minTagRank,
      tagCategoryIn: filter.tagCategoryIn,
      tagIn: filter.tagIn,
      isAdult: filter.isAdult,
      hideMyManga: filter.hideMyManga,
    );
  }

  MangaFilter copyWith({
    String? search,
    List<Enum$MediaSort>? sort,
    Enum$MediaListSort? listSort,
    String? startDateGreater,
    String? startDateLesser,
    List<String>? genres,
    bool? isLicensed,
    int? year,
    List<Enum$MediaFormat>? formatIn,
    List<Enum$MediaStatus>? statusIn,
    List<String>? licensedByIn,
    String? countryOfOrigin,
    List<Enum$MediaSource>? sourceIn,
    int? chaptersGreater,
    int? chaptersLesser,
    int? volumesGreater,
    int? volumesLesser,
    int? minTagRank,
    List<String>? tagCategoryIn,
    List<String>? tagIn,
    bool? isAdult,
    bool? hideMyManga,
  }) {
    int? seasonYear0;
    String? countryCode;

    if (year != null) {
      if (year == 0) {
        seasonYear0 = null;
      } else {
        seasonYear0 = year;
      }
    } else {
      seasonYear0 = this.year;
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

    return MangaFilter(
      search: search ?? this.search,
      sort: sort ?? this.sort,
      listSort: listSort ?? this.listSort,
      genres: genres ?? this.genres,
      startDateGreater: startDateGreater ?? this.startDateGreater,
      startDateLesser: startDateLesser ?? this.startDateLesser,
      isLicensed: isLicensed ?? this.isLicensed,
      year: seasonYear0,
      formatIn: formatIn ?? this.formatIn,
      statusIn: statusIn ?? this.statusIn,
      licensedByIn: licensedByIn ?? this.licensedByIn,
      countryOfOrigin: countryCode,
      sourceIn: sourceIn ?? this.sourceIn,
      chaptersGreater: chaptersGreater ?? this.chaptersGreater,
      chaptersLesser: chaptersLesser ?? this.chaptersLesser,
      volumesGreater: volumesGreater ?? this.volumesGreater,
      volumesLesser: volumesLesser ?? this.volumesLesser,
      minTagRank: minTagRank ?? this.minTagRank,
      tagCategoryIn: tagCategoryIn ?? this.tagCategoryIn,
      tagIn: tagIn ?? this.tagIn,
      isAdult: isAdult ?? this.isAdult,
      hideMyManga: hideMyManga ?? this.hideMyManga,
    );
  }
}
