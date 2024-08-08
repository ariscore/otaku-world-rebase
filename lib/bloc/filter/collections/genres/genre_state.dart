part of 'genre_cubit.dart';

abstract class GenreState extends Equatable {
  const GenreState();

  @override
  List<Object> get props => [];
}

class GenreInitial extends GenreState {}

class GenreLoading extends GenreState {}

class GenreLoaded extends GenreState {
  const GenreLoaded(this.genres);

  final List<String?> genres;
}

class GenreError extends GenreState {
  const GenreError(this.message);

  final String message;
}
