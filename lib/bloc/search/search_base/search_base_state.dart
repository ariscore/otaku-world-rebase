part of 'search_base_bloc.dart';

abstract class SearchBaseState extends Equatable {
  const SearchBaseState();

  @override
  List<Object> get props => [];
}

class SearchInitial extends SearchBaseState {}

class SearchResultLoading extends SearchBaseState {}

class SearchResultLoaded<E> extends SearchBaseState {
  const SearchResultLoaded({required this.list, required this.hasNextPage});

  final List<E?> list;
  final bool hasNextPage;

  @override
  List<Object> get props => [list, hasNextPage];
}

class SearchError extends SearchBaseState {
  const SearchError(this.error);

  final CustomError error;
}
