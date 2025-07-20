part of 'media_tags_cubit.dart';

sealed class MediaTagsState extends Equatable {
  const MediaTagsState();

  @override
  List<Object> get props => [];
}

final class MediaTagsInitial extends MediaTagsState {}

final class MediaTagsLoading extends MediaTagsState {}

final class MediaTagsLoaded extends MediaTagsState {
  const MediaTagsLoaded(this.mediaTags);

  final Map<String, List<Fragment$MediaTag>> mediaTags;
}

final class MediaTagsError extends MediaTagsState {
  const MediaTagsError(this.error);

  final CustomError error;
}
