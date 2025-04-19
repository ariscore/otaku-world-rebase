import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
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
  }

  final Enum$MediaType type;
  final int userId;
  late FilterModel filter;
  Query$MediaList$MediaListCollection? collection;

  void _onLoadMediaList(
    LoadMediaList event,
    Emitter<MediaListState> emit,
  ) async {
    if (state is! MediaListLoaded) emit(MediaListLoading());
    filter = filter.reset();
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
    // TODO: Add other filters here
    List<Query$MediaList$MediaListCollection$lists?>? filteredCollections = collection?.lists;

    if (event.search != null && event.search!.trim().isNotEmpty) {
      filteredCollections = collection?.lists?.map((collection) {
        final filteredMediaList = collection?.entries?.where((entry) {
          return entry?.media?.title?.userPreferred?.toLowerCase().contains(
            event.search!.trim().toLowerCase(),
          ) ??
              false;
        }).toList();
        return collection?.copyWith(entries: filteredMediaList);
      }).toList();
    }

    if (type == Enum$MediaType.ANIME) {
      filter = (filter as AnimeFilter).copyWith(search: event.search);
    } else {
      filter = (filter as MangaFilter).copyWith(search: event.search);
    }

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

    add(const ApplyFilter());
  }

  @override
  void onTransition(Transition<MediaListEvent, MediaListState> transition) {
    log(transition.toString(), name: 'MediaListBloc');
    super.onTransition(transition);
  }
}
