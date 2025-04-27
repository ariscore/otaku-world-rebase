part of 'studio_detail_bloc.dart';

sealed class StudioDetailEvent extends Equatable {
  const StudioDetailEvent();

  @override
  List<Object?> get props => [];
}

class LoadStudioDetail extends StudioDetailEvent {
  final int id;
  final GraphQLClient client;

  const LoadStudioDetail({required this.id, required this.client});
}

class ResetStudioData extends StudioDetailEvent {}