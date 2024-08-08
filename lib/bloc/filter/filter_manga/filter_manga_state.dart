part of 'filter_manga_bloc.dart';

sealed class FilterMangaState extends Equatable {
  const FilterMangaState();

  @override
  List<Object> get props => [];
}

final class FilterMangaInitial extends FilterMangaState {

}

class ResultsLoaded extends FilterMangaState {
  const ResultsLoaded({required this.list, required this.hasNextPage});

  final List<Fragment$MediaShort?> list;
  final bool hasNextPage;

  @override
  List<Object> get props => [list, hasNextPage];
}

class ResultsLoading extends FilterMangaState {}

class FilterError extends FilterMangaState {
  const FilterError(this.message);

  final String message;
}
