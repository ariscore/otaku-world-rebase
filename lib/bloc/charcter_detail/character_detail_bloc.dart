import 'dart:async';
import 'dart:developer' as dev;

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:otaku_world/graphql/__generated/graphql/character-detail/character_detail.graphql.dart';

part 'character_detail_event.dart';
part 'character_detail_state.dart';

class CharacterDetailBloc
    extends Bloc<CharacterDetailEvent, CharacterDetailState> {
  CharacterDetailBloc() : super(CharacterDetailInitial()) {
    on<LoadCharacterDetail>(_onCharacterDetailLoaded);
    on<ResetCharacterData>(_onResetMedia);
  }

  FutureOr<void> _onCharacterDetailLoaded(
    LoadCharacterDetail event,
    Emitter<CharacterDetailState> emit,
  ) async {
    emit(CharacterDetailLoading());

    final response = await event.client.query$getCharacterDetails(
      Options$Query$getCharacterDetails(
        variables: Variables$Query$getCharacterDetails(
          characterId: event.id,
        ),
      ),
    );

    if (response.hasException) {
      emit(CharacterDetailError(response.exception.toString()));
    } else {
      if (response.parsedData?.Character != null) {
        emit(CharacterDetailLoaded(character: response.parsedData!.Character!));
      }
    }
  }

  @override
  void onTransition(
      Transition<CharacterDetailEvent, CharacterDetailState> transition) {
    super.onTransition(transition);
    dev.log(
      " From this ${transition.currentState.toString()} To this ${transition.nextState.toString()}",
      name: "CharacterDetailsScreen",
    );
  }

  FutureOr<void> _onResetMedia(
    ResetCharacterData event,
    Emitter<CharacterDetailState> emit,
  ) {
    emit(CharacterDetailInitial());
  }
}
