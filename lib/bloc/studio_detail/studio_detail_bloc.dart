import 'dart:async';
import 'dart:developer' as dev;

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:otaku_world/graphql/__generated/graphql/studio_detail/studio_detail.graphql.dart';

part 'studio_detail_event.dart';
part 'studio_detail_state.dart';

class StudioDetailBloc extends Bloc<StudioDetailEvent, StudioDetailState> {
  StudioDetailBloc() : super(StudioDetailInitial()) {
    on<LoadStudioDetail>(_onStudioDetailLoaded);
    on<ResetStudioData>(_onResetStudio);
  }

  FutureOr<void> _onStudioDetailLoaded(
    LoadStudioDetail event,
    Emitter<StudioDetailState> emit,
  ) async {
    emit(StudioDetailLoading());

    final response = await event.client.query$getStudioDetail(
      Options$Query$getStudioDetail(
        variables: Variables$Query$getStudioDetail(
          id: event.id,
        ),
        fetchPolicy: FetchPolicy.networkOnly,
      ),
    );

    if (response.hasException) {
      emit(StudioDetailError(response.exception.toString()));
    } else {
      if (response.parsedData?.Studio != null) {
        debugPrint(
            'Studio data loaded: ${response.parsedData!.Studio?.toJson()}');
        emit(StudioDetailLoaded(studio: response.parsedData!.Studio!));
      }
    }
  }

  @override
  void onTransition(
      Transition<StudioDetailEvent, StudioDetailState> transition) {
    super.onTransition(transition);
    dev.log(
      " From this ${transition.currentState.toString()} To this ${transition.nextState.toString()}",
      name: "StudioDetailsScreen",
    );
  }

  FutureOr<void> _onResetStudio(
    ResetStudioData event,
    Emitter<StudioDetailState> emit,
  ) {
    emit(StudioDetailInitial());
  }
}
