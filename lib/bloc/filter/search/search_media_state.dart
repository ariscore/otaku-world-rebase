part of 'search_media_cubit.dart';

abstract class SearchMediaState extends Equatable {
  @override
  List<Object?> get props => [];
}

class SearchContentChanged extends SearchMediaState {
  SearchContentChanged(this.content);

  final String content;

  @override
  List<Object?> get props => [content];
}
