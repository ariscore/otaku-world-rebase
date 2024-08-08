part of 'manga_platforms_cubit.dart';

abstract class MangaPlatformsState extends Equatable {
  const MangaPlatformsState();

  @override
  List<Object> get props => [];
}

class MangaPlatformsInitial extends MangaPlatformsState {}

class MangaPlatformsLoading extends MangaPlatformsState {}

class MangaPlatformsLoaded extends MangaPlatformsState {
  const MangaPlatformsLoaded(this.platforms);

  final List<String?> platforms;
}

class MangaPlatformsError extends MangaPlatformsState {
  const MangaPlatformsError(this.message);

  final String message;
}
