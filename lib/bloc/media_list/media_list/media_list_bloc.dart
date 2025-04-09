import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:otaku_world/constants/filter_constants.dart';
import 'package:otaku_world/constants/string_constants.dart';
import 'package:otaku_world/core/model/anime_filter.dart';
import 'package:otaku_world/core/model/filter_model.dart';
import 'package:otaku_world/core/model/manga_filter.dart';
import 'package:otaku_world/core/types/enums.dart';
import 'package:otaku_world/graphql/__generated/graphql/list/media_list.graphql.dart';
import 'package:otaku_world/graphql/__generated/graphql/schema.graphql.dart';

part 'media_list_event.dart';

part 'media_list_state.dart';

class MediaListBloc extends Bloc<MediaListEvent, MediaListState> {
  MediaListBloc({required this.type, required this.userId})
      : super(MediaListInitial()) {
    filter = type == Enum$MediaType.ANIME
        ? const AnimeFilter(sort: [Enum$MediaSort.UPDATED_AT_DESC])
        : const MangaFilter(sort: [Enum$MediaSort.UPDATED_AT_DESC]);

    on<LoadMediaList>(_onLoadMediaList);
    on<ApplyFilter>(_onApplyFilter);
    on<ClearSearch>(_onClearSearch);
    on<RemoveFilters>(_onRemoveFilters);
  }

  final Enum$MediaType type;
  final int userId;
  List<String> _selectedLists = [];
  late FilterModel filter;
  bool searchApplied = false;
  bool filterApplied = false;
  Query$MediaList$MediaListCollection? collection;

  List<String> get selectedLists => _selectedLists;

  void _onLoadMediaList(
    LoadMediaList event,
    Emitter<MediaListState> emit,
  ) async {
    if (state is! MediaListLoaded) emit(MediaListLoading());
    filter = filter.reset();
    _selectedLists = [];
    filterApplied = false;
    searchApplied = false;
    log('Media filters: $filter');
    final response = await event.client.query$MediaList(
      Options$Query$MediaList(
        fetchPolicy: FetchPolicy.networkOnly,
        variables: Variables$Query$MediaList(
          type: type,
          userId: userId,
        ),
      ),
    );
    log('Response: $response');

    if (response.hasException) {
      if (response.exception!.linkException != null &&
          response.exception!.linkException is ServerException) {
        emit(
          const MediaListError(
            type: ErrorType.noInternet,
            message: StringConstants.noInternetError,
          ),
        );
      } else {
        emit(
          const MediaListError(
            type: ErrorType.unknown,
            message: StringConstants.somethingWentWrongError,
          ),
        );
      }
    } else {
      final data = response.parsedData?.MediaListCollection;
      if (data == null) {
        emit(
          const MediaListError(
            type: ErrorType.unknown,
            message: StringConstants.somethingWentWrongError,
          ),
        );
      } else {
        collection = data;
        emit(MediaListLoaded(listCollection: collection!));
      }
    }
  }

  void _onApplyFilter(ApplyFilter event, Emitter<MediaListState> emit) {
    log('Applying filters: ${event.search} | ${event.lists} | ${event.mediaFilter}');
    List<Query$MediaList$MediaListCollection$lists?>? filteredCollections =
        collection?.lists;

    if (type == Enum$MediaType.ANIME) {
      filter = ((event.mediaFilter ?? filter) as AnimeFilter)
          .copyWith(search: event.search);
      log('Filters to be applied: $filter');
    } else {
      filter = ((event.mediaFilter ?? filter) as MangaFilter)
          .copyWith(search: event.search);
    }

    if (event.lists != null && event.lists!.isNotEmpty) {
      _selectedLists = event.lists!;
    }
    log('Lists: $selectedLists');

    filteredCollections = collection?.lists
        ?.map((collection) {
          log('Filtering collection: ${collection?.name}');
          final updatedMediaList = collection?.entries?.where((entry) {
            bool matches = true;

            if (filter.search != null && filter.search!.isNotEmpty) {
              matches &= entry?.media?.title?.userPreferred
                      ?.toLowerCase()
                      .contains(filter.search!.toLowerCase()) ??
                  false;
              searchApplied = true;
            } else {
              searchApplied = false;
            }

            // List filters
            if (selectedLists.isNotEmpty) {
              matches &= selectedLists.contains(collection.name);
            }

            // Anime Filters
            final animeFilter = filter;

            if (animeFilter.genres != null &&
                animeFilter.genres!.isNotEmpty) {
              matches &= entry?.media?.genres
                  ?.any((genre) => animeFilter.genres!.contains(genre)) ??
                  false;
            }

            if (animeFilter.startDateGreater != null && animeFilter.startDateLesser != null) {
              if (entry?.media?.startDate?.year != null) {
                matches &= entry!.media!.startDate!.year! >= int.parse(animeFilter.startDateGreater!) &&
                    entry.media!.startDate!.year! <= int.parse(animeFilter.startDateLesser!);
              }
            }

            if (animeFilter.formatIn != null &&
                animeFilter.formatIn!.isNotEmpty) {
              matches &= animeFilter.formatIn!.contains(entry?.media?.format);
            }

            if (animeFilter.statusIn != null &&
                animeFilter.statusIn!.isNotEmpty) {
              matches &= animeFilter.statusIn!.contains(entry?.media?.status);
            }

            if (animeFilter.countryOfOrigin != null) {
              matches &= entry?.media?.countryOfOrigin ==
                  animeFilter.countryOfOrigin;
            }

            return matches;
          }).toList();

          // Sorting based on filter
          Enum$MediaListSort sortOption =
              Enum$MediaListSort.MEDIA_POPULARITY_DESC;
          if (type == Enum$MediaType.ANIME) {
            sortOption = (filter as AnimeFilter).listSort;
            log('Filter for option: $sortOption');
          } else {
            sortOption = (filter as MangaFilter).listSort;
          }
          updatedMediaList?.sort((a, b) {
            int primaryCompare = 0;
            switch (sortOption) {
              case Enum$MediaListSort.MEDIA_TITLE_ROMAJI:
                primaryCompare = (a?.media?.title?.userPreferred ?? "")
                    .compareTo(b?.media?.title?.userPreferred ?? "");
                break;
              case Enum$MediaListSort.SCORE_DESC:
                primaryCompare = (b?.score ?? 0).compareTo(a?.score ?? 0);
                break;
              case Enum$MediaListSort.PROGRESS_DESC:
                primaryCompare = (b?.progress ?? 0).compareTo(a?.progress ?? 0);
                break;
              case Enum$MediaListSort.UPDATED_TIME_DESC:
                primaryCompare =
                    (b?.updatedAt ?? 0).compareTo(a?.updatedAt ?? 0);
                break;
              case Enum$MediaListSort.ADDED_TIME_DESC:
                primaryCompare =
                    (b?.createdAt ?? 0).compareTo(a?.createdAt ?? 0);
                break;
              case Enum$MediaListSort.STARTED_ON_DESC:
                final aTime = DateTime(
                  a?.startedAt?.year ??
                      FilterConstants.mediaYearMinimum.toInt(),
                  a?.startedAt?.month ?? 1,
                  a?.startedAt?.day ?? 1,
                );
                final bTime = DateTime(
                  b?.startedAt?.year ??
                      FilterConstants.mediaYearMinimum.toInt(),
                  b?.startedAt?.month ?? 1,
                  b?.startedAt?.day ?? 1,
                );
                primaryCompare = bTime.compareTo(aTime);
                break;
              case Enum$MediaListSort.FINISHED_ON_DESC:
                final aTime = DateTime(
                  a?.completedAt?.year ??
                      FilterConstants.mediaYearMinimum.toInt(),
                  a?.completedAt?.month ?? 1,
                  a?.completedAt?.day ?? 1,
                );
                final bTime = DateTime(
                  b?.completedAt?.year ??
                      FilterConstants.mediaYearMinimum.toInt(),
                  b?.completedAt?.month ?? 1,
                  b?.completedAt?.day ?? 1,
                );
                primaryCompare = bTime.compareTo(aTime);
                break;
              case Enum$MediaListSort
                    .ADDED_TIME: // Assume this is correct for release date
                final aTime = DateTime(
                  a?.media?.startDate?.year ??
                      FilterConstants.mediaYearMinimum.toInt(),
                  a?.media?.startDate?.month ?? 1,
                  a?.media?.startDate?.day ?? 1,
                );
                final bTime = DateTime(
                  b?.media?.startDate?.year ??
                      FilterConstants.mediaYearMinimum.toInt(),
                  b?.media?.startDate?.month ?? 1,
                  b?.media?.startDate?.day ?? 1,
                );
                primaryCompare = bTime.compareTo(aTime);
                break;
              case Enum$MediaListSort
                    .MEDIA_ID_DESC: // Assume this is correct for average score
                primaryCompare = (b?.media?.averageScore ?? 0)
                    .compareTo(a?.media?.averageScore ?? 0);
                break;
              case Enum$MediaListSort.MEDIA_POPULARITY_DESC:
                primaryCompare = (b?.media?.popularity ?? 0)
                    .compareTo(a?.media?.popularity ?? 0);
                break;
              default:
                primaryCompare = 0;
            }
            if (primaryCompare == 0) {
              return (a?.media?.title?.userPreferred ?? '')
                  .compareTo(b?.media?.title?.userPreferred ?? '');
            }
            return primaryCompare;
          });

          return collection?.copyWith(entries: updatedMediaList);
        })
        .where((collection) => (collection?.entries ?? []).isNotEmpty)
        .toList();

    if (!event.applySearch) filterApplied = true;
    log('Filtered collections: ${filteredCollections?.length}');
    emit(
      MediaListLoaded(
        listCollection: collection!.copyWith(
          lists: filteredCollections,
        ),
      ),
    );
  }

  void _onClearSearch(ClearSearch event, Emitter<MediaListState> emit) {
    if (type == Enum$MediaType.ANIME) {
      filter = (filter as AnimeFilter).copyWith(search: '');
    } else {
      filter = (filter as MangaFilter).copyWith(search: '');
    }

    searchApplied = false;
    if (filterApplied) {
      add(const ApplyFilter());
    } else {
      emit(MediaListLoaded(listCollection: collection!));
    }
  }

  void _onRemoveFilters(RemoveFilters event, Emitter<MediaListState> emit) {
    _selectedLists = [];
    filterApplied = false;
    final search = filter.search;
    filter = type == Enum$MediaType.ANIME
        ? AnimeFilter(
            sort: [Enum$MediaSort.UPDATED_AT_DESC],
            search: search != null && search.trim().isNotEmpty ? search : null,
          )
        : MangaFilter(
            sort: [Enum$MediaSort.UPDATED_AT_DESC],
            search: search != null && search.trim().isNotEmpty ? search : null,
          );
    if (searchApplied) {
      add(ApplyFilter(search: filter.search));
    } else {
      emit(MediaListLoaded(listCollection: collection!));
    }
  }

  List<String> getUserLists() {
    return (collection?.lists ?? []).map((e) => e?.name ?? '').toList();
  }

  @override
  void onTransition(Transition<MediaListEvent, MediaListState> transition) {
    log(transition.toString(), name: 'log');
    super.onTransition(transition);
  }
}
