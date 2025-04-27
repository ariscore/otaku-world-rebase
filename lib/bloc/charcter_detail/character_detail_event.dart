part of 'character_detail_bloc.dart';

sealed class CharacterDetailEvent extends Equatable {
  const CharacterDetailEvent();


  @override
  List<Object?> get props => [];
}

class LoadCharacterDetail extends CharacterDetailEvent {
  final int id;
  final GraphQLClient client;

  const LoadCharacterDetail({required this.id, required this.client});
}

class ResetCharacterData extends CharacterDetailEvent{

}
