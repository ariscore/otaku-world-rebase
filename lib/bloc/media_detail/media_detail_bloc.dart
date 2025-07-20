import 'dart:async';
import 'dart:developer' as dev;

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:otaku_world/bloc/paginated_data/paginated_data_bloc.dart';
import 'package:otaku_world/bloc/recommendations/recommendation_anime_bloc.dart';
import 'package:otaku_world/graphql/__generated/graphql/details/media_detail.graphql.dart';

import '../../core/model/custom_error.dart';
import '../../graphql/__generated/graphql/fragments.graphql.dart';
import '../../utils/graphql_error_handler.dart';

part 'media_detail_event.dart';
part 'media_detail_state.dart';

class MediaDetailBloc extends Bloc<MediaDetailEvent, MediaDetailState> {
  MediaDetailBloc() : super(MediaDetailInitial()) {
    on<LoadMediaDetail>(_onLoadMediaDetail);
    on<ResetMediaData>(_onResetMedia);
    on<UpdateDetailListEntry>(_onUpdateListEntry);
    on<RemoveDetailListEntry>(_onRemoveListEntry);
  }

  late RecommendationAnimeBloc recommendationAnimeBloc;
  bool isDeletedEntry = false;

  FutureOr<void> _onLoadMediaDetail(
    LoadMediaDetail event,
    Emitter<MediaDetailState> emit,
  ) async {
    emit(MediaDetailLoading());

    recommendationAnimeBloc = RecommendationAnimeBloc();
    recommendationAnimeBloc.setId(event.id);
    recommendationAnimeBloc.add(LoadData(event.client));

    final response = await event.client.query$GetMediaDetail(
      Options$Query$GetMediaDetail(
        fetchPolicy: FetchPolicy.networkOnly, // TODO: Change it later
        variables: Variables$Query$GetMediaDetail(id: event.id),
      ),
    );
    // dev.log('Response: $response', name: 'MediaDetail');

    if (response.hasException) {
      final exception = response.exception!;
      emit(
        MediaDetailError(
          (GraphQLErrorHandler.handleException(exception)),
        ),
      );
    } else {
      emit(
        MediaDetailLoaded(
          media: response.parsedData!.Media!,
          options: response.parsedData?.Viewer?.mediaListOptions,
        ),
      );
    }
  }

  FutureOr<void> _onUpdateListEntry(
    UpdateDetailListEntry event,
    Emitter<MediaDetailState> emit,
  ) async {
    final loadedState = state as MediaDetailLoaded;
    emit(
      MediaDetailLoaded(
        media: loadedState.media.copyWith(
          mediaListEntry: event.entry,
        ),
        options: loadedState.options,
      ),
    );
  }

  FutureOr<void> _onRemoveListEntry(
    RemoveDetailListEntry event,
    Emitter<MediaDetailState> emit,
  ) async {
    isDeletedEntry = true;
    final loadedState = state as MediaDetailLoaded;
    emit(
      MediaDetailLoaded(
        media: loadedState.media.copyWith(
          mediaListEntry: null,
        ),
        options: loadedState.options,
      ),
    );
  }

  @override
  void onTransition(Transition<MediaDetailEvent, MediaDetailState> transition) {
    super.onTransition(transition);
    dev.log(
      " From this ${transition.currentState.toString()} To this ${transition.nextState.toString()}",
      name: "MediaDetailScreen",
    );
  }

  FutureOr<void> _onResetMedia(
      ResetMediaData event, Emitter<MediaDetailState> emit) {
    emit(MediaDetailInitial());
  }
}
