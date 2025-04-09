part of 'media_list_bloc.dart';

sealed class MediaListEvent {
  const MediaListEvent();
}

class LoadMediaList extends MediaListEvent {
  const LoadMediaList(this.client);

  final GraphQLClient client;
}

class ApplyFilter extends MediaListEvent {
  const ApplyFilter({this.search, this.lists, this.mediaFilter, this.applySearch = false,});

  final String? search;
  final List<String>? lists;
  final FilterModel? mediaFilter;
  final bool applySearch;
}

class ClearSearch extends MediaListEvent {}

class RemoveFilters extends MediaListEvent {}
