part of 'media_detail_bloc.dart';

abstract class MediaDetailState extends Equatable {
  const MediaDetailState();

  @override
  List<Object> get props => [];
}

class MediaDetailInitial extends MediaDetailState {}

class MediaDetailLoading extends MediaDetailState {}

class MediaDetailLoaded extends MediaDetailState {
  const MediaDetailLoaded({
    required this.media,
    required this.options,
  });

  final Fragment$MediaDetailed media;
  final Fragment$MediaListOptions? options;

  @override
  List<Object> get props => [media];
}

class MediaDetailError extends MediaDetailState {
  final String message;

  const MediaDetailError(this.message);

  @override
  List<Object> get props => [message];
}
