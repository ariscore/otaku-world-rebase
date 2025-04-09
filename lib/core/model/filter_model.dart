import '../../graphql/__generated/graphql/schema.graphql.dart';

abstract class FilterModel {
  const FilterModel({
    this.search,
    this.sort = const [Enum$MediaSort.POPULARITY_DESC],
    required this.listSort,
    this.genres,
    this.startDateGreater,
    this.startDateLesser,
    this.isLicensed = true,
    this.season,
    this.seasonYear,
    this.formatIn,
    this.statusIn,
    this.countryOfOrigin,
  });

  final String? search;
  final List<Enum$MediaSort> sort;
  final Enum$MediaListSort listSort;
  final List<String>? genres;
  final String? startDateGreater;
  final String? startDateLesser;
  final bool isLicensed;
  final Enum$MediaSeason? season;
  final int? seasonYear;
  final List<Enum$MediaFormat>? formatIn;
  final List<Enum$MediaStatus>? statusIn;
  final String? countryOfOrigin;

  FilterModel reset();
}
