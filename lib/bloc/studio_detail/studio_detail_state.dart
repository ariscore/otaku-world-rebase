part of 'studio_detail_bloc.dart';

sealed class StudioDetailState extends Equatable {
  const StudioDetailState();

  @override
  List<Object> get props => [];
}

final class StudioDetailInitial extends StudioDetailState {}

class StudioDetailLoading extends StudioDetailState {}

class StudioDetailLoaded extends StudioDetailState {
  final Query$getStudioDetail$Studio studio;

  const StudioDetailLoaded({required this.studio});

  @override
  List<Object> get props => [studio];
}

class StudioDetailError extends StudioDetailState {
  final CustomError error;

  const StudioDetailError(this.error);

  @override
  List<Object> get props => [error];
}