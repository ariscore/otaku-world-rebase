part of 'characters_bloc.dart';

sealed class CharactersEvent extends Equatable {
  const CharactersEvent();

  @override
  List<Object?> get props => [];
}

class LoadCharacters extends CharactersEvent {
  final int id;
  final GraphQLClient client;
  final String language;

  const LoadCharacters({
    required this.id,
    required this.client,
    required this.language,
  });
  @override
  List<Object?> get props => [id, client,language];
}
