import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

import '../../graphql/__generated/graphql/staff_detail/staff_detail.graphql.dart';

part 'staff_detail_event.dart';

part 'staff_detail_state.dart';

class StaffDetailBloc extends Bloc<StaffDetailEvent, StaffDetailState> {
  final GraphQLClient client;

  StaffDetailBloc(this.client) : super(StaffDetailInitial()) {
    on<FetchStaffDetail>(_onFetchStaffDetail);
  }

  Future<void> _onFetchStaffDetail(
    FetchStaffDetail event,
    Emitter<StaffDetailState> emit,
  ) async {
    emit(StaffDetailLoading());
    try {
      final result = await client.query$getStaffDetail(
        Options$Query$getStaffDetail(
          fetchPolicy: FetchPolicy.networkOnly,
          variables: Variables$Query$getStaffDetail(staffId: event.staffId),
          cacheRereadPolicy: CacheRereadPolicy.ignoreAll,
        ),
      );

      if (result.parsedData?.Staff != null) {
        emit(StaffDetailLoaded(result.parsedData!.Staff!));
      } else {
        emit(StaffDetailError('Staff not found'));
      }
    } catch (e) {
      emit(StaffDetailError(e.toString()));
    }
  }
}
