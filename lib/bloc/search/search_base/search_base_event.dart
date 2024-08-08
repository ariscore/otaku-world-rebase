part of 'search_base_bloc.dart';

abstract class SearchBaseEvent {
  const SearchBaseEvent();
}

class SearchMedia extends SearchBaseEvent {
  const SearchMedia({required this.client, required this.searchContent});

  final GraphQLClient client;
  final String searchContent;
}

class LoadMore extends SearchBaseEvent {
  const LoadMore(this.client);

  final GraphQLClient client;
}

class ClearSearch extends SearchBaseEvent {}
