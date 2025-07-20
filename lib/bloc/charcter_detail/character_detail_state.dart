part of 'character_detail_bloc.dart';

sealed class CharacterDetailState extends Equatable {
  const CharacterDetailState();

  @override
  List<Object> get props => [];
}

final class CharacterDetailInitial extends CharacterDetailState {}

class CharacterDetailLoading extends CharacterDetailState {}

class CharacterDetailLoaded extends CharacterDetailState {
  final Query$getCharacterDetails$Character character;

  const CharacterDetailLoaded({required this.character});

  @override
  List<Object> get props => [character];
}

class CharacterDetailError extends CharacterDetailState {
  final CustomError error;

  const CharacterDetailError(this.error);

  @override
  List<Object> get props => [error];
}
