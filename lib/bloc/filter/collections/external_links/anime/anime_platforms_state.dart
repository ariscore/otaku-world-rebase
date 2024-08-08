part of 'anime_platforms_cubit.dart';

abstract class AnimePlatformsState extends Equatable {
  const AnimePlatformsState();

  @override
  List<Object> get props => [];
}

class AnimePlatformsInitial extends AnimePlatformsState {}

class AnimePlatformsLoading extends AnimePlatformsState {}

class AnimePlatformsLoaded extends AnimePlatformsState {
  const AnimePlatformsLoaded(this.platforms);

  final List<String?> platforms;
}

class AnimePlatformsError extends AnimePlatformsState {
  const AnimePlatformsError(this.message);

  final String message;
}
