import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:equatable/equatable.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:otaku_world/bloc/filter/search/search_media_cubit.dart';
import 'package:otaku_world/core/model/manga_filter.dart';
import 'package:otaku_world/graphql/__generated/graphql/schema.graphql.dart';

import '../../../constants/filter_constants.dart';
import '../../../graphql/__generated/graphql/discover/filter_media.graphql.dart';
import '../../../graphql/__generated/graphql/fragments.graphql.dart';
import '../../../utils/formatting_utils.dart';

part 'filter_manga_event.dart';
part 'filter_manga_state.dart';

class FilterMangaBloc extends Bloc<FilterMangaEvent, FilterMangaState> {
  FilterMangaBloc() : super(FilterMangaInitial()) {
    on<ApplyFilter>(_onApplyFilter, transformer: droppable());
    on<LoadMore>(_onLoadMore, transformer: droppable());
    on<RemoveAllFilters>(_onRemoveAllFilters);
    on<UpdateSearch>(_onUpdateSearch);
    on<ApplySearch>(_onApplySearch);
    on<ClearSearch>(_onClearSearch);
    on<SelectMangaSort>(_onSelectMangaSort);
    on<SelectMangaGenre>(_onSelectMangaGenre);
    on<UnselectMangaGenre>(_onUnselectMangaGenre);
    on<SelectMangaYear>(_onSelectMangaYear);
    on<SelectMangaFormat>(_onSelectMangaFormat);
    on<UnselectMangaFormat>(_onUnselectMangaFormat);
    on<SelectPublishingStatus>(_onSelectPublishingStatus);
    on<UnselectPublishingStatus>(_onUnselectPublishingStatus);
    on<SelectSource>(_onSelectSource);
    on<UnselectSource>(_onUnselectSource);
    on<SelectCountry>(_onSelectCountry);
    on<SelectPlatform>(_onSelectPlatform);
    on<UnselectPlatform>(_onUnselectPlatform);
    on<ToggleHideMangaOnList>(_onToggleHideMangaOnList);
    on<ToggleDoujin>(_onToggleDoujin);
    on<ToggleAdult>(_onToggleAdult);
    on<SetYearRange>(_onSetYearRange);
    on<SetChaptersRange>(_onSetChaptersRange);
    on<SetVolumesRange>(_onSetVolumesRange);
    on<SelectMangaTag>(_onSelectMangaTag);
    on<UnselectMangaTag>(_onUnselectMangaTag);
    on<SetTagRank>(_onSetTagRank);
  }

  MangaFilter appliedFilter = const MangaFilter(
    sort: [Enum$MediaSort.POPULARITY_DESC],
  );
  MangaFilter filter = const MangaFilter(
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
    Emitter<FilterMangaState> emit,
  ) async {
    emit(ResultsLoading());

    page = 1;
    hasNextPage = true;
    list.clear();
    final response = await _loadData(event.client);

    if (response.hasException) {
      final exception = response.exception!;

      if (exception.linkException != null) {
        log(exception.toString());
        emit(
          const FilterError('Please check your internet connection!'),
        );
      } else {
        emit(const FilterError('Some Unexpected error occurred!'));
      }
    } else {
      _processData(response);

      appliedFilter = MangaFilter.copy(filter);
      _filterApplied = true;
      emit(ResultsLoaded(
        list: List.from(list),
        hasNextPage: hasNextPage,
      ));
    }
  }

  Future<void> _onApplySearch(
    ApplySearch event,
    Emitter<FilterMangaState> emit,
  ) async {
    if (event.search.isEmpty) return;
    emit(ResultsLoading());

    page = 1;
    hasNextPage = true;
    list.clear();

    final response = await event.client.query$FilterMedia(
      Options$Query$FilterMedia(
        cacheRereadPolicy: CacheRereadPolicy.ignoreAll,
        variables: Variables$Query$FilterMedia(
          page: page,
          type: Enum$MediaType.MANGA,
          search: event.search,
        ),
      ),
    );

    final data = response.parsedData!;
    hasNextPage = data.Page!.pageInfo!.hasNextPage!;
    log('Page: $page', name: 'SearchManga');
    page++;
    list.addAll(data.Page!.media!);
    log('Filter size: ${list.length}', name: 'SearchManga');

    searchCubit.searchApplied = true;
    emit(ResultsLoaded(
      list: List.from(list),
      hasNextPage: hasNextPage,
    ));
  }

  Future<void> _onLoadMore(
    LoadMore event,
    Emitter<FilterMangaState> emit,
  ) async {
    final response = await _loadData(event.client);

    if (response.hasException) {
      final exception = response.exception!;

      if (exception.linkException != null) {
        log(exception.toString());
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
        fetchPolicy: FetchPolicy.networkOnly,
        variables: Variables$Query$FilterMedia(
          page: page,
          type: Enum$MediaType.MANGA,
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
          seasonYear: filter.year,
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
          onList: filter.hideMyManga ? false : null,
          isLicensed: filter.isLicensed,
          chapters_greater:
              filter.chaptersGreater == FilterConstants.minChapters
                  ? null
                  : filter.chaptersGreater,
          chapters_lesser: filter.chaptersLesser == FilterConstants.maxChapters
              ? null
              : filter.chaptersLesser,
          volumes_greater: filter.volumesGreater == FilterConstants.minVolumes
              ? null
              : filter.volumesGreater,
          volumes_lesser: filter.volumesLesser == FilterConstants.maxVolumes
              ? null
              : filter.volumesLesser,
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
    log('Page: $page', name: 'FilterManga');
    page++;
    list.addAll(data.Page!.media!);
    log('Filter size: ${list.length}', name: 'FilterManga');
  }

  void _onRemoveAllFilters(
      RemoveAllFilters event,
      Emitter<FilterMangaState> emit,
      ) {
    filter = const MangaFilter(
      sort: [Enum$MediaSort.POPULARITY_DESC],
    );
    appliedFilter = const MangaFilter(
      sort: [Enum$MediaSort.POPULARITY_DESC],
    );
    searchCubit.searchController.clear();
    page = 1;
    hasNextPage = true;
    list.clear();
    _filterApplied = false;
    searchCubit.searchApplied = false;
    emit(FilterMangaInitial());
  }

  void _onUpdateSearch(UpdateSearch event, Emitter<FilterMangaState> emit) {
    filter = filter.copyWith(
      search: event.search,
    );
    log('Search: ${filter.search}', name: 'MangaFilter');
  }

  void _onClearSearch(ClearSearch event, Emitter<FilterMangaState> emit) {
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

  void _onSelectMangaSort(
      SelectMangaSort event,
      Emitter<FilterMangaState> emit,
      ) {
    filter = filter.copyWith(
      sort: [FormattingUtils.getMediaSortOption(event.sort)],
    );
    log('Selected filter: ${filter.sort}', name: 'MangaFilter');
  }

  void _onSelectMangaGenre(
      SelectMangaGenre event,
      Emitter<FilterMangaState> emit,
      ) {
    filter = filter.copyWith(
      genres: (filter.genres ?? [])..add(event.genre),
    );
    log('Selected genres: ${filter.genres}', name: 'MangaFilter');
  }

  void _onUnselectMangaGenre(
      UnselectMangaGenre event,
      Emitter<FilterMangaState> emit,
      ) {
    filter = filter.copyWith(
      genres: filter.genres!..remove(event.genre),
    );
    log('Selected genres: ${filter.genres}', name: 'MangaFilter');
  }

  void _onSelectMangaYear(
      SelectMangaYear event,
      Emitter<FilterMangaState> emit,
      ) {
    filter = filter.copyWith(
      year: (event.year == 'All') ? 0 : int.parse(event.year),
    );
    log('Selected year: $filter', name: 'MangaFilter');
  }

  void _onSelectMangaFormat(
      SelectMangaFormat event,
      Emitter<FilterMangaState> emit,
      ) {
    filter = filter.copyWith(
      formatIn: (filter.formatIn ?? [])
        ..add(
          FormattingUtils.getMediaFormat(event.format),
        ),
    );
    log('Selected format: ${filter.formatIn}', name: 'MangaFilter');
  }

  void _onUnselectMangaFormat(
      UnselectMangaFormat event,
      Emitter<FilterMangaState> emit,
      ) {
    filter = filter.copyWith(
      formatIn: filter.formatIn!
        ..remove(
          FormattingUtils.getMediaFormat(event.format),
        ),
    );
    log('Selected format: ${filter.formatIn}', name: 'MangaFilter');
  }

  void _onSelectPublishingStatus(
      SelectPublishingStatus event,
      Emitter<FilterMangaState> emit,
      ) {
    filter = filter.copyWith(
      statusIn: (filter.statusIn ?? [])
        ..add(
          FormattingUtils.getMediaStatus(event.status),
        ),
    );
    log('Selected publishing status: ${filter.statusIn}', name: 'FilterManga');
  }

  void _onUnselectPublishingStatus(
      UnselectPublishingStatus event,
      Emitter<FilterMangaState> emit,
      ) {
    filter = filter.copyWith(
      statusIn: filter.statusIn!
        ..remove(
          FormattingUtils.getMediaStatus(event.status),
        ),
    );
    log('Selected publishing status: ${filter.statusIn}', name: 'FilterManga');
  }

  void _onSelectSource(SelectSource event, Emitter<FilterMangaState> emit) {
    filter = filter.copyWith(
      sourceIn: (filter.sourceIn ?? [])
        ..add(
          FormattingUtils.getMediaSource(event.source),
        ),
    );
    log('Selected source: ${filter.sourceIn}', name: 'FilterManga');
  }

  void _onUnselectSource(UnselectSource event, Emitter<FilterMangaState> emit) {
    filter = filter.copyWith(
      sourceIn: filter.sourceIn!
        ..remove(
          FormattingUtils.getMediaSource(event.source),
        ),
    );
    log('Selected source: ${filter.sourceIn}', name: 'FilterManga');
  }

  void _onSelectCountry(SelectCountry event, Emitter<FilterMangaState> emit) {
    filter = filter.copyWith(
      countryOfOrigin: FormattingUtils.getCountryCode(event.country),
    );
    log('Selected country: ${filter.countryOfOrigin}', name: 'FilterManga');
  }

  void _onSelectPlatform(
      SelectPlatform event,
      Emitter<FilterMangaState> emit,
      ) {
    filter = filter.copyWith(
      licensedByIn: (filter.licensedByIn ?? [])..add(event.platform),
    );
    log(
      'Selected platforms: ${filter.licensedByIn}',
      name: 'FilterManga',
    );
  }

  void _onUnselectPlatform(
      UnselectPlatform event,
      Emitter<FilterMangaState> emit,
      ) {
    filter = filter.copyWith(
      licensedByIn: filter.licensedByIn!..remove(event.platform),
    );
    log(
      'Selected platforms: ${filter.licensedByIn}',
      name: 'FilterManga',
    );
  }

  void _onToggleHideMangaOnList(
      ToggleHideMangaOnList event,
      Emitter<FilterMangaState> emit,
      ) {
    filter = filter.copyWith(hideMyManga: !filter.hideMyManga);
    log('Hide my manga: ${filter.hideMyManga}', name: 'FilterManga');
  }

  void _onToggleDoujin(ToggleDoujin event, Emitter<FilterMangaState> emit) {
    filter = filter.copyWith(isLicensed: !filter.isLicensed);
    log('Doujin: ${!filter.isLicensed}', name: 'FilterManga');
  }

  void _onToggleAdult(ToggleAdult event, Emitter<FilterMangaState> emit) {
    filter = filter.copyWith(isAdult: !filter.isAdult);
    log('Adult: ${filter.isAdult}', name: 'FilterManga');
  }

  void _onSetYearRange(SetYearRange event, Emitter<FilterMangaState> emit) {
    filter = filter.copyWith(
      startDateGreater: event.start.toInt().toString(),
      startDateLesser: event.end.toInt().toString(),
    );
    log(
      'Release Date: ${filter.startDateGreater} to ${filter.startDateLesser}',
      name: 'FilterManga',
    );
  }

  void _onSetChaptersRange(
      SetChaptersRange event,
      Emitter<FilterMangaState> emit,
      ) {
    filter = filter.copyWith(
      chaptersGreater: event.start.toInt(),
      chaptersLesser: event.end.toInt(),
    );
    log(
      'Duration: ${filter.chaptersGreater} to ${filter.chaptersLesser}',
      name: 'FilterManga',
    );
  }

  void _onSetVolumesRange(
      SetVolumesRange event,
      Emitter<FilterMangaState> emit,
      ) {
    filter = filter.copyWith(
      volumesGreater: event.start.toInt(),
      volumesLesser: event.end.toInt(),
    );
    log(
      'Episodes: ${filter.volumesGreater} to ${filter.volumesLesser}',
      name: 'FilterManga',
    );
  }

  void _onSelectMangaTag(
      SelectMangaTag event,
      Emitter<FilterMangaState> emit,
      ) {
    filter = filter.copyWith(
      tagIn: (filter.tagIn ?? [])..add(event.tag),
    );
    log('Selected tags: ${filter.tagIn}', name: 'FilterManga');
  }

  void _onUnselectMangaTag(
      UnselectMangaTag event,
      Emitter<FilterMangaState> emit,
      ) {
    filter = filter.copyWith(
      tagIn: (filter.tagIn ?? [])..remove(event.tag),
    );
    log('Selected tags: ${filter.tagIn}', name: 'FilterManga');
  }

  void _onSetTagRank(SetTagRank event, Emitter<FilterMangaState> emit) {
    filter = filter.copyWith(
      minTagRank: event.tagRank,
    );
    log('Tag rank: ${filter.minTagRank}', name: 'FilterManga');
  }

  @override
  void onTransition(Transition<FilterMangaEvent, FilterMangaState> transition) {
    log(transition.toString(), name: 'FilterManga');
    super.onTransition(transition);
  }
}
