part of 'search_bloc.dart';

abstract class SearchEvent {
  const SearchEvent();
}

class SearchMedia extends SearchEvent {
  const SearchMedia({required this.client, required this.searchContent});

  final GraphQLClient client;
  final String searchContent;
}

class LoadMore extends SearchEvent {
  const LoadMore(this.client);

  final GraphQLClient client;
}

class ClearSearch extends SearchEvent {}
