import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:otaku_world/features/app_version_management/models/app_version_model.dart';
import 'package:otaku_world/features/app_version_management/services/app_version_service.dart';

part 'app_version_event.dart';
part 'app_version_state.dart';

class AppVersionBloc extends Bloc<AppVersionEvent, AppVersionState> {
  final AppVersionService service;

  AppVersionBloc({required this.service}) : super(AppVersionInitial()) {
    on<CheckAppVersionEvent>((event, emit) async {
      emit(AppVersionLoading());
      try {
        final result = await service.checkAppVersion();
        if (result == null) {
          emit(AppVersionError());
        } else if (result.forceUpdate == true) {
          emit(AppForceUpdate(result));
        } else {
          emit(AppVersionUpToDate());
        }
      } catch (_) {
        emit(AppVersionError());
      }
    });
  }
}
