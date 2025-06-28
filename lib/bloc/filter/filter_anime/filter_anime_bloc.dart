import 'dart:async';
import 'dart:developer' as dev;

import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:equatable/equatable.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:otaku_world/bloc/filter/search/search_media_cubit.dart';
import 'package:otaku_world/constants/filter_constants.dart';
import 'package:otaku_world/core/model/anime_filter.dart';
import 'package:otaku_world/graphql/__generated/graphql/discover/filter_media.graphql.dart';
import 'package:otaku_world/graphql/__generated/graphql/fragments.graphql.dart';
import 'package:otaku_world/graphql/__generated/graphql/schema.graphql.dart';
import 'package:otaku_world/utils/formatting_utils.dart';

part 'filter_anime_event.dart';
part 'filter_anime_state.dart';

class FilterAnimeBloc extends Bloc<FilterAnimeEvent, FilterAnimeState> {
  FilterAnimeBloc() : super(FilterAnimeInitial()) {
    on<ApplyFilter>(_onApplyFilter, transformer: droppable());
    on<LoadMore>(_onLoadMore, transformer: droppable());
    on<RemoveAllFilters>(_onRemoveAllFilters);
    on<UpdateSearch>(_onUpdateSearch);
    on<ApplySearch>(_onApplySearch);
    on<ClearSearch>(_onClearSearch);
    on<SelectAnimeSort>(_onSelectAnimeSort);
    on<SelectAnimeGenre>(_onSelectAnimeGenre);
    on<UnselectAnimeGenre>(_onUnselectAnimeGenre);
    on<SelectAnimeSeason>(_onSelectAnimeSeason);
    on<SelectAnimeSeasonYear>(_onSelectAnimeSeasonYear);
    on<SelectAnimeFormat>(_onSelectAnimeFormat);
    on<UnselectAnimeFormat>(_onUnselectAnimeFormat);
    on<SelectAiringStatus>(_onSelectAiringStatus);
    on<UnselectAiringStatus>(_onUnselectAiringStatus);
    on<SelectSource>(_onSelectSource);
    on<UnselectSource>(_onUnselectSource);
    on<SelectCountry>(_onSelectCountry);
    on<SelectPlatform>(_onSelectPlatform);
    on<UnselectPlatform>(_onUnselectPlatform);
    on<ToggleHideAnimeOnList>(_onToggleHideAnimeOnList);
    on<ToggleDoujin>(_onToggleDoujin);
    on<ToggleAdult>(_onToggleAdult);
    on<SetYearRange>(_onSetYearRange);
    on<SetDurationRange>(_onSetDurationRange);
    on<SetEpisodesRange>(_onSetEpisodesRange);
    on<SelectAnimeTag>(_onSelectAnimeTag);
    on<UnselectAnimeTag>(_onUnselectAnimeTag);
    on<SetTagRank>(_onSetTagRank);
  }

  AnimeFilter appliedFilter = const AnimeFilter(
    sort: [Enum$MediaSort.POPULARITY_DESC],
  );
  AnimeFilter filter = const AnimeFilter(
    sort: [Enum$MediaSort.POPULARITY_DESC],
  );

  final searchCubit = SearchMediaCubit();
  bool _filterApplied = false;

  bool get filterApplied => _filterApplied;

  var page = 1;
  var hasNextPage = true;
  final List<Fragment$MediaShort?> list = [];

  Future<void> _onApplyFilter(
    ApplyFilter event,
    Emitter<FilterAnimeState> emit,
  ) async {
    emit(ResultsLoading());

    page = 1;
    hasNextPage = true;
    list.clear();
    final response = await _loadData(event.client);

    if (response.hasException) {
      final exception = response.exception!;

      if (exception.linkException != null) {
        dev.log(exception.toString());
        emit(
          const FilterError('Please check your internet connection!'),
        );
      } else {
        emit(const FilterError('Some Unexpected error occurred!'));
      }
    } else {
      _processData(response);

      appliedFilter = AnimeFilter.copy(filter);
      _filterApplied = true;
      emit(ResultsLoaded(
        list: List.from(list),
        hasNextPage: hasNextPage,
      ));
    }
  }

  Future<void> _onApplySearch(
    ApplySearch event,
    Emitter<FilterAnimeState> emit,
  ) async {
    if (event.search.isEmpty) return;
    emit(ResultsLoading());

    page = 1;
    hasNextPage = true;
    list.clear();

    final response = await event.client.query$FilterMedia(
      Options$Query$FilterMedia(
        cacheRereadPolicy: CacheRereadPolicy.ignoreAll,
        fetchPolicy: FetchPolicy.networkOnly,
        variables: Variables$Query$FilterMedia(
          page: page,
          type: Enum$MediaType.ANIME,
          search: event.search,
        ),
      ),
    );

    final data = response.parsedData!;
    hasNextPage = data.Page!.pageInfo!.hasNextPage!;
    dev.log('Page: $page', name: 'SearchAnime');
    page++;
    list.addAll(data.Page!.media!);
    dev.log('Filter size: ${list.length}', name: 'SearchAnime');

    searchCubit.searchApplied = true;
    emit(ResultsLoaded(
      list: List.from(list),
      hasNextPage: hasNextPage,
    ));
  }

  Future<void> _onLoadMore(
    LoadMore event,
    Emitter<FilterAnimeState> emit,
  ) async {
    final response = await _loadData(event.client);

    if (response.hasException) {
      final exception = response.exception!;

      if (exception.linkException != null) {
        dev.log(exception.toString());
        emit(
          const FilterError('Please check your internet connection!'),
        );
      } else {
        emit(const FilterError('Some Unexpected error occurred!'));
      }
    } else {
      _processData(response);

      emit(ResultsLoaded(
        list: List.from(list),
        hasNextPage: hasNextPage,
      ));
    }
  }

  Future<QueryResult<Query$FilterMedia>> _loadData(GraphQLClient client) {
    return client.query$FilterMedia(
      Options$Query$FilterMedia(
        cacheRereadPolicy: CacheRereadPolicy.ignoreAll,
        variables: Variables$Query$FilterMedia(
          page: page,
          type: Enum$MediaType.ANIME,
          sort: filter.sort,
          search: (filter.search ?? '').isEmpty ? null : filter.search!,
          startDate_greater: (filter.startDateGreater != null)
              ? '${filter.startDateGreater}0000'
              : null,
          startDate_lesser: (filter.startDateLesser != null)
              ? '${filter.startDateLesser}0000'
              : null,
          genre: (filter.genres == null || filter.genres!.isEmpty)
              ? null
              : filter.genres,
          season: filter.season,
          seasonYear: filter.seasonYear,
          format_in: (filter.formatIn == null || filter.formatIn!.isEmpty)
              ? null
              : filter.formatIn,
          status_in: (filter.statusIn == null || filter.statusIn!.isEmpty)
              ? null
              : filter.statusIn,
          source_in: (filter.sourceIn == null || filter.sourceIn!.isEmpty)
              ? null
              : filter.sourceIn,
          countryOfOrigin: filter.countryOfOrigin,
          licensedBy_in:
              (filter.licensedByIn == null || filter.licensedByIn!.isEmpty)
                  ? null
                  : filter.licensedByIn,
          isAdult: filter.isAdult,
          onList: filter.hideMyAnime ? false : null,
          isLicensed: filter.isLicensed,
          duration_greater:
              filter.durationGreater == FilterConstants.minDuration
                  ? null
                  : filter.durationGreater,
          duration_lesser: filter.durationLesser == FilterConstants.maxDuration
              ? null
              : filter.durationLesser,
          episodes_greater: filter.episodesGreater == FilterConstants.minEpisode
              ? null
              : filter.episodesGreater,
          episodes_lesser: filter.episodesLesser == FilterConstants.maxEpisode
              ? null
              : filter.episodesLesser,
          tag_in: filter.tagIn == null || filter.tagIn!.isEmpty
              ? null
              : filter.tagIn,
          minimumTagRank: filter.minTagRank,
        ),
      ),
    );
  }

  void _processData(QueryResult<Query$FilterMedia> response) {
    final data = response.parsedData!;
    hasNextPage = data.Page!.pageInfo!.hasNextPage!;
    dev.log('Page: $page', name: 'FilterAnime');
    page++;
    list.addAll(data.Page!.media!);
    dev.log('Filter size: ${list.length}', name: 'FilterAnime');
  }

  void _onRemoveAllFilters(
    RemoveAllFilters event,
    Emitter<FilterAnimeState> emit,
  ) {
    filter = const AnimeFilter(
      sort: [Enum$MediaSort.POPULARITY_DESC],
    );
    appliedFilter = const AnimeFilter(
      sort: [Enum$MediaSort.POPULARITY_DESC],
    );
    searchCubit.searchController.clear();
    page = 1;
    hasNextPage = true;
    list.clear();
    _filterApplied = false;
    searchCubit.searchApplied = false;
    emit(FilterAnimeInitial());
  }

  void _onUpdateSearch(UpdateSearch event, Emitter<FilterAnimeState> emit) {
    filter = filter.copyWith(
      search: event.search,
    );
    dev.log('Search: ${filter.search}', name: 'AnimeFilter');
  }

  void _onClearSearch(ClearSearch event, Emitter<FilterAnimeState> emit) {
    filter = filter.copyWith(
      search: '',
    );
    searchCubit.searchController.clear();
    if (_filterApplied) {
      add(ApplyFilter(event.client));
    } else {
      add(RemoveAllFilters());
    }
  }

  void _onSelectAnimeSort(
    SelectAnimeSort event,
    Emitter<FilterAnimeState> emit,
  ) {
    filter = filter.copyWith(
      sort: [FormattingUtils.getMediaSortOption(event.sort)],
    );
    dev.log('Selected filter: ${filter.sort}', name: 'AnimeFilter');
  }

  void _onSelectAnimeGenre(
    SelectAnimeGenre event,
    Emitter<FilterAnimeState> emit,
  ) {
    filter = filter.copyWith(
      genres: (filter.genres ?? [])..add(event.genre),
    );
    dev.log('Selected genres: ${filter.genres}', name: 'AnimeFilter');
  }

  void _onUnselectAnimeGenre(
    UnselectAnimeGenre event,
    Emitter<FilterAnimeState> emit,
  ) {
    filter = filter.copyWith(
      genres: filter.genres!..remove(event.genre),
    );
    dev.log('Selected genres: ${filter.genres}', name: 'AnimeFilter');
  }

  void _onSelectAnimeSeason(
    SelectAnimeSeason event,
    Emitter<FilterAnimeState> emit,
  ) {
    filter = filter.copyWith(
      season: FormattingUtils.getSeason(event.season),
    );
    dev.log('Selected season: $filter', name: 'AnimeFilter');
  }

  void _onSelectAnimeSeasonYear(
    SelectAnimeSeasonYear event,
    Emitter<FilterAnimeState> emit,
  ) {
    filter = filter.copyWith(
      seasonYear: (event.year == 'All') ? 0 : int.parse(event.year),
    );
    dev.log('Selected year: $filter', name: 'AnimeFilter');
  }

  void _onSelectAnimeFormat(
    SelectAnimeFormat event,
    Emitter<FilterAnimeState> emit,
  ) {
    filter = filter.copyWith(
      formatIn: (filter.formatIn ?? [])
        ..add(
          FormattingUtils.getMediaFormat(event.format),
        ),
    );
    dev.log('Selected format: ${filter.formatIn}', name: 'AnimeFilter');
  }

  void _onUnselectAnimeFormat(
    UnselectAnimeFormat event,
    Emitter<FilterAnimeState> emit,
  ) {
    filter = filter.copyWith(
      formatIn: filter.formatIn!
        ..remove(
          FormattingUtils.getMediaFormat(event.format),
        ),
    );
    dev.log('Selected format: ${filter.formatIn}', name: 'AnimeFilter');
  }

  void _onSelectAiringStatus(
    SelectAiringStatus event,
    Emitter<FilterAnimeState> emit,
  ) {
    filter = filter.copyWith(
      statusIn: (filter.statusIn ?? [])
        ..add(
          FormattingUtils.getMediaStatus(event.status),
        ),
    );
    dev.log('Selected airing status: ${filter.statusIn}', name: 'AnimeFilter');
  }

  void _onUnselectAiringStatus(
    UnselectAiringStatus event,
    Emitter<FilterAnimeState> emit,
  ) {
    filter = filter.copyWith(
      statusIn: filter.statusIn!
        ..remove(
          FormattingUtils.getMediaStatus(event.status),
        ),
    );
    dev.log('Selected airing status: ${filter.statusIn}', name: 'AnimeFilter');
  }

  void _onSelectSource(SelectSource event, Emitter<FilterAnimeState> emit) {
    filter = filter.copyWith(
      sourceIn: (filter.sourceIn ?? [])
        ..add(
          FormattingUtils.getMediaSource(event.source),
        ),
    );
    dev.log('Selected source: ${filter.sourceIn}', name: 'AnimeFilter');
  }

  void _onUnselectSource(UnselectSource event, Emitter<FilterAnimeState> emit) {
    filter = filter.copyWith(
      sourceIn: filter.sourceIn!
        ..remove(
          FormattingUtils.getMediaSource(event.source),
        ),
    );
    dev.log('Selected source: ${filter.sourceIn}', name: 'AnimeFilter');
  }

  void _onSelectCountry(SelectCountry event, Emitter<FilterAnimeState> emit) {
    filter = filter.copyWith(
      countryOfOrigin: FormattingUtils.getCountryCode(event.country),
    );
    dev.log('Selected country: ${filter.countryOfOrigin}', name: 'AnimeFilter');
  }

  void _onSelectPlatform(
    SelectPlatform event,
    Emitter<FilterAnimeState> emit,
  ) {
    filter = filter.copyWith(
      licensedByIn: (filter.licensedByIn ?? [])..add(event.platform),
    );
    dev.log(
      'Selected platforms: ${filter.licensedByIn}',
      name: 'AnimeFilter',
    );
  }

  void _onUnselectPlatform(
    UnselectPlatform event,
    Emitter<FilterAnimeState> emit,
  ) {
    filter = filter.copyWith(
      licensedByIn: filter.licensedByIn!..remove(event.platform),
    );
    dev.log(
      'Selected platforms: ${filter.licensedByIn}',
      name: 'AnimeFilter',
    );
  }

  void _onToggleHideAnimeOnList(
    ToggleHideAnimeOnList event,
    Emitter<FilterAnimeState> emit,
  ) {
    filter = filter.copyWith(hideMyAnime: !filter.hideMyAnime);
    dev.log('Hide my anime: ${filter.hideMyAnime}', name: 'AnimeFilter');
  }

  void _onToggleDoujin(ToggleDoujin event, Emitter<FilterAnimeState> emit) {
    filter = filter.copyWith(isLicensed: !filter.isLicensed);
    dev.log('Doujin: ${!filter.isLicensed}', name: 'AnimeFilter');
  }

  void _onToggleAdult(ToggleAdult event, Emitter<FilterAnimeState> emit) {
    filter = filter.copyWith(isAdult: !filter.isAdult);
    dev.log('Adult: ${filter.isAdult}', name: 'AnimeFilter');
  }

  void _onSetYearRange(SetYearRange event, Emitter<FilterAnimeState> emit) {
    filter = filter.copyWith(
      startDateGreater: event.start.toInt().toString(),
      startDateLesser: event.end.toInt().toString(),
    );
    dev.log(
      'Release Date: ${filter.startDateGreater} to ${filter.startDateLesser}',
      name: 'AnimeFilter',
    );
  }

  void _onSetDurationRange(
    SetDurationRange event,
    Emitter<FilterAnimeState> emit,
  ) {
    filter = filter.copyWith(
      durationGreater: event.start.toInt(),
      durationLesser: event.end.toInt(),
    );
    dev.log(
      'Duration: ${filter.durationGreater} to ${filter.durationLesser}',
      name: 'AnimeFilter',
    );
  }

  void _onSetEpisodesRange(
    SetEpisodesRange event,
    Emitter<FilterAnimeState> emit,
  ) {
    filter = filter.copyWith(
      episodesGreater: event.start.toInt(),
      episodesLesser: event.end.toInt(),
    );
    dev.log(
      'Episodes: ${filter.episodesGreater} to ${filter.episodesLesser}',
      name: 'AnimeFilter',
    );
  }

  void _onSelectAnimeTag(
    SelectAnimeTag event,
    Emitter<FilterAnimeState> emit,
  ) {
    filter = filter.copyWith(
      tagIn: (filter.tagIn ?? [])..add(event.tag),
    );
    dev.log('Selected tags: ${filter.tagIn}', name: 'AnimeFilter');
  }

  void _onUnselectAnimeTag(
    UnselectAnimeTag event,
    Emitter<FilterAnimeState> emit,
  ) {
    filter = filter.copyWith(
      tagIn: (filter.tagIn ?? [])..remove(event.tag),
    );
    dev.log('Selected tags: ${filter.tagIn}', name: 'AnimeFilter');
  }

  void _onSetTagRank(SetTagRank event, Emitter<FilterAnimeState> emit) {
    filter = filter.copyWith(
      minTagRank: event.tagRank,
    );
    dev.log('Tag rank: ${filter.minTagRank}', name: 'AnimeFilter');
  }

  @override
  void onTransition(Transition<FilterAnimeEvent, FilterAnimeState> transition) {
    dev.log(transition.toString(), name: 'FilterAnime');
    super.onTransition(transition);
  }
}
