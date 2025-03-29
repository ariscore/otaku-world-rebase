import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:otaku_world/constants/string_constants.dart';
import 'package:otaku_world/core/types/enums.dart';
import 'package:otaku_world/graphql/__generated/graphql/list/media_list.graphql.dart';
import 'package:otaku_world/graphql/__generated/graphql/schema.graphql.dart';

part 'media_list_event.dart';

part 'media_list_state.dart';

class MediaListBloc extends Bloc<MediaListEvent, MediaListState> {
  MediaListBloc({required this.type, required this.userId})
      : super(MediaListInitial()) {
    on<LoadMediaList>(_onLoadMediaList);
    on<ApplyFilter>(_onApplyFilter);
  }

  final Enum$MediaType type;
  final int userId;

  void _onLoadMediaList(
    LoadMediaList event,
    Emitter<MediaListState> emit,
  ) async {
    if (state is! MediaListLoaded) emit(MediaListLoading());
    final response = await event.client.query$MediaList(
      Options$Query$MediaList(
        fetchPolicy: FetchPolicy.networkOnly,
        variables: Variables$Query$MediaList(
          type: type,
          userId: userId,
        ),
      ),
    );

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
        emit(MediaListLoaded(listCollection: data));
      }
    }
  }

  void _onApplyFilter(ApplyFilter event, Emitter<MediaListState> emit) {
    final collection = (state as MediaListLoaded).listCollection;

    final filteredCollections = collection.lists?.map((collection) {
      final filteredMediaList = collection?.entries?.where((entry) {
        return entry?.media?.title?.userPreferred?.toLowerCase().contains(
                  event.search!.toLowerCase(),
                ) ??
            false;
      }).toList();
      return collection?.copyWith(entries: filteredMediaList);
    }).toList();

    emit(
      MediaListLoaded(
        listCollection: collection.copyWith(
          lists: filteredCollections,
        ),
      ),
    );
  }

  @override
  void onTransition(Transition<MediaListEvent, MediaListState> transition) {
    log(transition.toString(), name: 'MediaListBloc');
    super.onTransition(transition);
  }
}
