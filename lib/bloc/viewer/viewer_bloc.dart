import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:otaku_world/graphql/__generated/graphql/user/viewer.graphql.dart';

part 'viewer_event.dart';

part 'viewer_state.dart';

class ViewerBloc extends Bloc<ViewerEvent, ViewerState> {
  ViewerBloc() : super(ViewerInitial()) {
    on<LoadViewer>(_onLoadViewer);
  }

  bool showProcess = false;
  Query$Viewer$Viewer? user;

  Future<void> _onLoadViewer(
    LoadViewer event,
    Emitter<ViewerState> emit,
  ) async {
    final response = await event.client.query$Viewer();

    if (response.hasException) {
      final exception = response.exception!;

      if (response.exception!.linkException != null) {
        log(exception.toString());
        emit(
          const ViewerError('Please check your internet connection!'),
        );
      } else {
        emit(const ViewerError('Some Unexpected error occurred!'));
      }
    } else {
      final user = response.parsedData?.Viewer;
      if (user == null) {
        emit(const ViewerError('Some Unexpected error occurred!'));
      } else {
        emit(ViewerLoaded(
          user: user,
          showProcess: showProcess,
          error: null,
        ));
      }
    }
  }

  @override
  void onTransition(Transition<ViewerEvent, ViewerState> transition) {
    log(transition.toString(), name: 'Viewer');
    super.onTransition(transition);
  }
}
