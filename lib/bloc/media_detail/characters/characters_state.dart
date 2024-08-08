part of 'characters_bloc.dart';

abstract class CharactersState extends Equatable {
  const CharactersState();

  @override
  List<Object> get props => [];
}

class CharactersInitial extends CharactersState {}

class CharactersLoading extends CharactersState {}

class CharactersLoaded extends CharactersState {
  final Query$Characters$Media$characters$edges characters;
  final bool hasNextPage;

  const CharactersLoaded({required this.characters, required this.hasNextPage});

  @override
  List<Object> get props => [characters, hasNextPage];
}

class CharactersError extends CharactersState {
  final String errorMessage;

  const CharactersError({required this.errorMessage});
}
