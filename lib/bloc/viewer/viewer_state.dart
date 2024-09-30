part of 'viewer_bloc.dart';

sealed class ViewerState extends Equatable {
  const ViewerState();

  @override
  List<Object> get props => [];
}

final class ViewerInitial extends ViewerState {}

final class ViewerLoading extends ViewerState {}

final class ViewerLoaded extends ViewerState {
  const ViewerLoaded(this.user);

  final Fragment$User user;

  @override
  List<Object> get props => [user];

  @override
  String toString() {
    return 'ViewerLoaded{ userId: ${user.id}, name: ${user.name} }';
  }
}

final class ViewerError extends ViewerState {
  const ViewerError(this.message);

  final String message;
}
