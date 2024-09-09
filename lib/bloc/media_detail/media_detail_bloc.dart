import 'dart:async';
import 'dart:developer' as dev;

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:otaku_world/bloc/paginated_data/paginated_data_bloc.dart';
import 'package:otaku_world/bloc/recommendations/recommendation_anime_bloc.dart';
import 'package:otaku_world/graphql/__generated/graphql/details/media_detail.graphql.dart';

import '../../graphql/__generated/graphql/fragments.graphql.dart';

part 'media_detail_event.dart';

part 'media_detail_state.dart';

class MediaDetailBloc extends Bloc<MediaDetailEvent, MediaDetailState> {
  MediaDetailBloc() : super(MediaDetailInitial()) {
    on<LoadMediaDetail>(_onLoadMediaDetail);
    on<ResetMediaData>(_onResetMedia);
  }

  late RecommendationAnimeBloc recommendationAnimeBloc;

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
      emit(MediaDetailError(response.exception.toString()));
    } else {
      emit(MediaDetailLoaded(media: response.parsedData!.Media!));
    }
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
