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
    this.showProcess = false,
    this.showError = false,
    this.error,
  });

  final Fragment$Settings user;
  final bool showProcess;
  final bool showError;
  final String? error;

  @override
  List<Object> get props => [user, showProcess, error.toString()];

  @override
  String toString() {
    return 'ViewerLoaded{ userId: ${user.id}, name: ${user.name} }';
  }

  ViewerLoaded copyWith({
    Fragment$Settings? user,
    bool? showProcess,
    bool? showError,
    String? error,
  }) {
    return ViewerLoaded(
      user: user ?? this.user,
      showProcess: showProcess ?? this.showProcess,
      showError: showError ?? this.showError,
      error: error,
    );
  }
}

final class ViewerError extends ViewerState {
  const ViewerError({required this.type, required this.message});

  final ErrorType type;
  final String message;
}
