part of 'characters_bloc.dart';

sealed class CharactersEvent extends Equatable {
  const CharactersEvent();

  @override
  List<Object?> get props => [];
}

class LoadCharacters extends CharactersEvent {
  final int id;
  final GraphQLClient client;

  const LoadCharacters({required this.id, required this.client});
}


