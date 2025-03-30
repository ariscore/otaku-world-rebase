part of 'media_list_bloc.dart';

sealed class MediaListEvent {
  const MediaListEvent();
}

class LoadMediaList extends MediaListEvent {
  const LoadMediaList(this.client);

  final GraphQLClient client;
}

class ApplyFilter extends MediaListEvent {
  const ApplyFilter({this.search});

  final String? search;
}

class ClearSearch extends MediaListEvent {}
