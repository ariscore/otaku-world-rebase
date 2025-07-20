part of 'filter_anime_bloc.dart';

abstract class FilterAnimeState extends Equatable {
  const FilterAnimeState();

  @override
  List<Object> get props => [];
}

class FilterAnimeInitial extends FilterAnimeState {}

class ResultsLoaded extends FilterAnimeState {
  const ResultsLoaded({required this.list, required this.hasNextPage});

  final List<Fragment$MediaShort?> list;
  final bool hasNextPage;

  @override
  List<Object> get props => [list, hasNextPage];
}

class ResultsLoading extends FilterAnimeState {}

class FilterError extends FilterAnimeState {
  const FilterError(this.error);

  final CustomError error;
}
