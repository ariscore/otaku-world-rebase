part of 'search_bloc.dart';

sealed class SearchEvent extends Equatable {
  const SearchEvent();

  @override
  List<Object?> get props => [];
}

class SearchData extends SearchEvent {
  const SearchData({required this.client, required this.search});

  final GraphQLClient client;
  final String search;
}

class ClearSearchData extends SearchEvent {}
