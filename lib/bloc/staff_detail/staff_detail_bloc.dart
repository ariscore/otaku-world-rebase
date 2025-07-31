import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

import '../../core/model/custom_error.dart';
import '../../graphql/__generated/graphql/staff_detail/staff_detail.graphql.dart';
import '../../utils/graphql_error_handler.dart';

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
          variables: Variables$Query$getStaffDetail(staffId: event.staffId),
          fetchPolicy: FetchPolicy.networkOnly,
          cacheRereadPolicy: CacheRereadPolicy.ignoreAll,
        ),
      );

      if (result.hasException) {
        final exception = result.exception!;
        emit(
          StaffDetailError(
            (GraphQLErrorHandler.handleException(exception)),
          ),
        );
      } else {
        emit(StaffDetailLoaded(result.parsedData!.Staff!));
      }
    } catch (e) {
      final error = e is OperationException
          ? GraphQLErrorHandler.handleException(e)
          : CustomError.unexpectedError();
      emit(StaffDetailError(error));
    }
  }
}
