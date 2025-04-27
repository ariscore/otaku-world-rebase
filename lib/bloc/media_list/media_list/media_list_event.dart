part of 'media_list_bloc.dart';

sealed class MediaListEvent {
  const MediaListEvent();
}

class LoadMediaList extends MediaListEvent {
  const LoadMediaList({
    required this.client,
    this.loadForSettings = false,
  });

  final GraphQLClient client;
  final bool loadForSettings;
}

class ApplyFilter extends MediaListEvent {
  const ApplyFilter({
    this.search,
    this.lists,
    this.mediaFilter,
    this.applySearch = false,
  });

  final String? search;
  final List<String>? lists;
  final FilterModel? mediaFilter;
  final bool applySearch;
}

class UpdateListEntry extends MediaListEvent {
  const UpdateListEntry({required this.entry});

  final Fragment$MediaListEntry entry;
}

class RemoveListEntry extends MediaListEvent {
  const RemoveListEntry({required this.id});

  final int id;
}

class ClearSearch extends MediaListEvent {}

class RemoveFilters extends MediaListEvent {}

class UpdateListSettings extends MediaListEvent {
  const UpdateListSettings({required this.options});

  final Fragment$MediaListOptions? options;
}
