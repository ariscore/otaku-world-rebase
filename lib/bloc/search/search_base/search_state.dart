part of 'search_bloc.dart';

abstract class SearchState extends Equatable {
  const SearchState();

  @override
  List<Object> get props => [];
}

class SearchInitial extends SearchState {}

class SearchResultLoading extends SearchState {}

class SearchResultLoaded<E> extends SearchState {
  const SearchResultLoaded({required this.list, required this.hasNextPage});

  final List<E?> list;
  final bool hasNextPage;

  @override
  List<Object> get props => [list, hasNextPage];
}

class SearchError extends SearchState {
  const SearchError(this.error);

  final CustomError error;
}
