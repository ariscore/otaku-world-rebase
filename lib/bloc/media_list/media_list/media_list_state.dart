part of 'media_list_bloc.dart';

sealed class MediaListState extends Equatable {
  const MediaListState();

  @override
  List<Object> get props => [];
}

final class MediaListInitial extends MediaListState {}

final class MediaListLoading extends MediaListState {}

final class MediaListLoaded extends MediaListState {
  const MediaListLoaded({
    required this.listCollection,
    this.isFiltered = false,
    this.filteredListCollection,
  });

  final Query$MediaList$MediaListCollection listCollection;
  final bool isFiltered;
  final Query$MediaList$MediaListCollection? filteredListCollection;

  @override
  List<Object> get props => [
        listCollection,
        isFiltered,
        filteredListCollection ?? Object(),
      ];
}

final class MediaListError extends MediaListState {
  const MediaListError(this.message);

  final String message;
}
