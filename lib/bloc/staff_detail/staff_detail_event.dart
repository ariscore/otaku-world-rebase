part of 'staff_detail_bloc.dart';

abstract class StaffDetailEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class FetchStaffDetail extends StaffDetailEvent {
  final int staffId;

  FetchStaffDetail(this.staffId);

  @override
  List<Object?> get props => [staffId];
}