import 'dart:async';
import 'dart:developer' as dev;

import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:equatable/equatable.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:otaku_world/graphql/__generated/graphql/fragments.graphql.dart';
import 'package:otaku_world/utils/model_utils.dart';

import '../../core/model/custom_error.dart';
import '../../utils/graphql_error_handler.dart';

part 'paginated_data_event.dart';
part 'paginated_data_state.dart';

abstract class PaginatedDataBloc<Q, E>
    extends Bloc<PaginatedDataEvent, PaginatedDataState> {
  PaginatedDataBloc() : super(PaginatedDataInitial()) {
    on<LoadData>(
      _onLoadData,
      transformer: droppable(),
    );
    on<RefreshData>(
      _onRefreshData,
      transformer: droppable(),
    );
    on<UpdateData<E>>(_onUpdateData);
    on<UpdateListEntryForMedia>(_onUpdateListEntryForMedia);
    on<RemoveListEntryFromMedia>(_onRemoveListEntryFromMedia);
    on<ResetData>(_onResetData);
    on<UpdateLoading>(_onUpdateLoading);
  }

  var page = 1;
  var hasNextPage = true;
  final List<E?> list = [];

  void _onResetData(ResetData event, Emitter<PaginatedDataState> emit) {
    page = 1;
    hasNextPage = true;
    list.clear();
    emit(PaginatedDataInitial());
  }

  void _onRefreshData(RefreshData event, Emitter<PaginatedDataState> emit) {
    page = 1;
    hasNextPage = true;
    list.clear();
    add(LoadData(event.client));
  }

  void _onUpdateData(UpdateData<E> event, Emitter<PaginatedDataState> emit) {
    dev.log('Updating data');
    emit(PaginatedDataLoading());
    emit(PaginatedDataLoaded(list: event.list, hasNextPage: hasNextPage));
  }

  void _onUpdateListEntryForMedia(
    UpdateListEntryForMedia event,
    Emitter<PaginatedDataState> emit,
  ) {
    dev.log('Updating list entry: ${event.entry.id} | ${event.entry.progress}');
    if (E == Fragment$MediaShort) {
      final index = list.indexWhere(
        (e) => (e as Fragment$MediaShort?)?.id == event.entry.mediaId,
      );
      dev.log('Update list entry index: $index');
      if (index != -1) {
        list[index] = (list[index] as Fragment$MediaShort?)
            ?.copyWith(mediaListEntry: event.entry) as E?;
        emit(
          PaginatedDataLoaded(
            list: List<E?>.from(list),
            hasNextPage: hasNextPage,
          ),
        );
      }
      dev.log('Updated list entry');
    }
  }

  void _onRemoveListEntryFromMedia(
    RemoveListEntryFromMedia event,
    Emitter<PaginatedDataState> emit,
  ) {
    dev.log('Removing list entry: ${event.id}');
    // list.removeWhere((element) => element?.id == event.id);
    // emit(PaginatedDataLoaded(list: list, hasNextPage: hasNextPage));
    if (E == Fragment$MediaShort) {
      final index = list.indexWhere(
        (e) => (e as Fragment$MediaShort?)?.mediaListEntry?.id == event.id,
      );
      dev.log('Remove list entry index: $index');
      list[index] = (list[index] as Fragment$MediaShort?)
          ?.copyWith(mediaListEntry: null) as E?;
      list[index] = ModelUtils.getMediaShort(
        list[index] as Fragment$MediaShort?,
        removeListEntry: true,
      ) as E?;
      // list.removeWhere(
      //   (e) => (e as Fragment$MediaShort?)?.mediaListEntry?.id == event.id,
      // );
      emit(PaginatedDataLoaded(
        list: List<E?>.from(list),
        hasNextPage: hasNextPage,
      ));
      dev.log('Removed list entry');
    }
  }

  Future<void> _onLoadData(
    LoadData event,
    Emitter<PaginatedDataState> emit,
  ) async {
    if (page == 1) emit(PaginatedDataLoading());
    // This is for checking shimmer effect (Uncomment below code)
    // await Future.delayed(const Duration(seconds: 20));

    final response = await loadData(event.client);

    if (response.hasException) {
      final exception = response.exception!;
      emit(
        PaginatedDataError(
          (GraphQLErrorHandler.handleException(exception)),
        ),
      );
    } else {
      processData(response);

      emit(PaginatedDataLoaded<E>(
        list: List.from(list.where((e) => e != null)),
        hasNextPage: hasNextPage,
      ));
    }
  }

  Future<QueryResult<Q>> loadData(GraphQLClient client);

  void processData(QueryResult<Q> response);

  void _onUpdateLoading(UpdateLoading event, Emitter<PaginatedDataState> emit) {
    emit((state as PaginatedDataLoaded).copyWith(
      showProgress: event.showProgress,
    ));
  }

  @override
  void onTransition(
    Transition<PaginatedDataEvent, PaginatedDataState> transition,
  ) {
    dev.log(transition.toString(), name: 'PaginatedBloc');
    super.onTransition(transition);
  }
}
