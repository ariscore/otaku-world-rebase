part of 'viewer_bloc.dart';

sealed class ViewerState extends Equatable {
  const ViewerState();

  @override
  List<Object> get props => [];
}

final class ViewerInitial extends ViewerState {}

final class ViewerLoading extends ViewerState {}

final class ViewerLoaded extends ViewerState {
  const ViewerLoaded({
    required this.user,
    required this.showProcess,
    required this.error,
  });

  final Query$Viewer$Viewer user;
  final bool showProcess;
  final String? error;

  @override
  List<Object> get props => [user, showProcess, error.toString()];

  @override
  String toString() {
    return 'ViewerLoaded{ userId: ${user.id}, name: ${user.name} }';
  }
}

final class ViewerError extends ViewerState {
  const ViewerError(this.message);

  final String message;
}
