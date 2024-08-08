part of 'search_bloc.dart';

sealed class SearchState extends Equatable {
  const SearchState();
}

final class SearchDataInitial extends SearchState {
  @override
  List<Object> get props => [];
}
