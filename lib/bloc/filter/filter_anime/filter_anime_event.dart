part of 'filter_anime_bloc.dart';

abstract class FilterAnimeEvent {
  const FilterAnimeEvent();
}

class ApplyFilter extends FilterAnimeEvent {
  const ApplyFilter(this.client);

  final GraphQLClient client;
}

class ApplySearch extends FilterAnimeEvent {
  const ApplySearch({required this.client, required this.search});

  final GraphQLClient client;
  final String search;
}

class LoadMore extends FilterAnimeEvent {
  const LoadMore(this.client);

  final GraphQLClient client;
}

class RemoveAllFilters extends FilterAnimeEvent {}

class UpdateSearch extends FilterAnimeEvent {
  const UpdateSearch(this.search);

  final String search;
}

class ClearSearch extends FilterAnimeEvent {
  const ClearSearch({required this.client, required this.clearFilter});

  final GraphQLClient client;
  final bool clearFilter;
}

class SelectAnimeSort extends FilterAnimeEvent {
  const SelectAnimeSort(this.sort);

  final String sort;
}

class SelectAnimeGenre extends FilterAnimeEvent {
  const SelectAnimeGenre(this.genre);

  final String genre;
}

class UnselectAnimeGenre extends FilterAnimeEvent {
  const UnselectAnimeGenre(this.genre);

  final String genre;
}

class SelectAnimeSeason extends FilterAnimeEvent {
  const SelectAnimeSeason(this.season);

  final String season;
}

class SelectAnimeSeasonYear extends FilterAnimeEvent {
  const SelectAnimeSeasonYear(this.year);

  final String year;
}

class SelectAnimeFormat extends FilterAnimeEvent {
  const SelectAnimeFormat(this.format);

  final String format;
}

class UnselectAnimeFormat extends FilterAnimeEvent {
  const UnselectAnimeFormat(this.format);

  final String format;
}

class SelectAiringStatus extends FilterAnimeEvent {
  const SelectAiringStatus(this.status);

  final String status;
}

class UnselectAiringStatus extends FilterAnimeEvent {
  const UnselectAiringStatus(this.status);

  final String status;
}

class SelectSource extends FilterAnimeEvent {
  const SelectSource(this.source);

  final String source;
}

class UnselectSource extends FilterAnimeEvent {
  const UnselectSource(this.source);

  final String source;
}

class SelectCountry extends FilterAnimeEvent {
  const SelectCountry(this.country);

  final String country;
}

class SelectPlatform extends FilterAnimeEvent {
  const SelectPlatform(this.platform);

  final String platform;
}

class UnselectPlatform extends FilterAnimeEvent {
  const UnselectPlatform(this.platform);

  final String platform;
}

class ToggleHideAnimeOnList extends FilterAnimeEvent {}

class ToggleDoujin extends FilterAnimeEvent {}

class ToggleAdult extends FilterAnimeEvent {}

class SetYearRange extends FilterAnimeEvent {
  const SetYearRange({required this.start, required this.end});

  final double start;
  final double end;
}

class SetDurationRange extends FilterAnimeEvent {
  const SetDurationRange({required this.start, required this.end});

  final double start;
  final double end;
}

class SetEpisodesRange extends FilterAnimeEvent {
  const SetEpisodesRange({required this.start, required this.end});

  final double start;
  final double end;
}

class SelectAnimeTag extends FilterAnimeEvent {
  const SelectAnimeTag(this.tag);

  final String tag;
}

class UnselectAnimeTag extends FilterAnimeEvent {
  const UnselectAnimeTag(this.tag);

  final String tag;
}

class SetTagRank extends FilterAnimeEvent {
  const SetTagRank(this.tagRank);

  final int tagRank;
}
