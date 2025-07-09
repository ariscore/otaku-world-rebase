part of 'filter_manga_bloc.dart';

sealed class FilterMangaEvent {
  const FilterMangaEvent();
}

class ApplyFilter extends FilterMangaEvent {
  const ApplyFilter(this.client);

  final GraphQLClient client;
}

class ApplySearch extends FilterMangaEvent {
  const ApplySearch({required this.client, required this.search});

  final GraphQLClient client;
  final String search;
}

class LoadMore extends FilterMangaEvent {
  const LoadMore(this.client);

  final GraphQLClient client;
}

class RemoveAllFilters extends FilterMangaEvent {}

class UpdateSearch extends FilterMangaEvent {
  const UpdateSearch(this.search);

  final String search;
}

class ClearSearch extends FilterMangaEvent {
  const ClearSearch({required this.client, required this.clearFilter});

  final GraphQLClient client;
  final bool clearFilter;
}

class SelectMangaSort extends FilterMangaEvent {
  const SelectMangaSort(this.sort);

  final String sort;
}

class SelectMangaGenre extends FilterMangaEvent {
  const SelectMangaGenre(this.genre);

  final String genre;
}

class UnselectMangaGenre extends FilterMangaEvent {
  const UnselectMangaGenre(this.genre);

  final String genre;
}

class SelectMangaFormat extends FilterMangaEvent {
  const SelectMangaFormat(this.format);

  final String format;
}

class UnselectMangaFormat extends FilterMangaEvent {
  const UnselectMangaFormat(this.format);

  final String format;
}

class SelectPublishingStatus extends FilterMangaEvent {
  const SelectPublishingStatus(this.status);

  final String status;
}

class UnselectPublishingStatus extends FilterMangaEvent {
  const UnselectPublishingStatus(this.status);

  final String status;
}

class SelectMangaYear extends FilterMangaEvent {
  const SelectMangaYear(this.year);

  final String year;
}

class SelectSource extends FilterMangaEvent {
  const SelectSource(this.source);

  final String source;
}

class UnselectSource extends FilterMangaEvent {
  const UnselectSource(this.source);

  final String source;
}

class SelectCountry extends FilterMangaEvent {
  const SelectCountry(this.country);

  final String country;
}

class SelectPlatform extends FilterMangaEvent {
  const SelectPlatform(this.platform);

  final String platform;
}

class UnselectPlatform extends FilterMangaEvent {
  const UnselectPlatform(this.platform);

  final String platform;
}

class ToggleHideMangaOnList extends FilterMangaEvent {}

class ToggleDoujin extends FilterMangaEvent {}

class ToggleAdult extends FilterMangaEvent {}

class SetYearRange extends FilterMangaEvent {
  const SetYearRange({required this.start, required this.end});

  final double start;
  final double end;
}

class SetChaptersRange extends FilterMangaEvent {
  const SetChaptersRange({required this.start, required this.end});

  final double start;
  final double end;
}

class SetVolumesRange extends FilterMangaEvent {
  const SetVolumesRange({required this.start, required this.end});

  final double start;
  final double end;
}

class SelectMangaTag extends FilterMangaEvent {
  const SelectMangaTag(this.tag);

  final String tag;
}

class UnselectMangaTag extends FilterMangaEvent {
  const UnselectMangaTag(this.tag);

  final String tag;
}

class SetTagRank extends FilterMangaEvent {
  const SetTagRank(this.tagRank);

  final int tagRank;
}

class UpdateListEntryForManga extends FilterMangaEvent {
  const UpdateListEntryForManga({required this.entry});

  final Fragment$MediaListEntry entry;
}

class RemoveListEntryFromManga extends FilterMangaEvent {
  const RemoveListEntryFromManga({required this.id});

  final int id;
}
