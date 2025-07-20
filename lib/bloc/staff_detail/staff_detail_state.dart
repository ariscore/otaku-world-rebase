part of 'staff_detail_bloc.dart';

abstract class StaffDetailState extends Equatable {
  @override
  List<Object?> get props => [];
}

class StaffDetailInitial extends StaffDetailState {}

class StaffDetailLoading extends StaffDetailState {}

class StaffDetailLoaded extends StaffDetailState {
  final Query$getStaffDetail$Staff staff;

  StaffDetailLoaded(this.staff);

  @override
  List<Object?> get props => [staff];
}

class StaffDetailError extends StaffDetailState {
  final CustomError error;

  StaffDetailError(this.error);

  @override
  List<Object?> get props => [error];
}
