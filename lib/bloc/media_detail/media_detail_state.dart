part of 'media_detail_bloc.dart';

abstract class MediaDetailState extends Equatable {
  const MediaDetailState();
  @override
  List<Object> get props => [];
}

class MediaDetailInitial extends MediaDetailState {

}
class MediaDetailLoading extends MediaDetailState{

}

class MediaDetailLoaded extends MediaDetailState{
  final Fragment$MediaDetailed media;

  const MediaDetailLoaded({required this.media});
  @override
  List<Object> get props => [media];
}

class MediaDetailError extends MediaDetailState{
  final String message;
  const MediaDetailError(this.message);
  @override
  List<Object> get props => [message];
}
