part of 'app_version_bloc.dart';

sealed class AppVersionEvent extends Equatable {
  const AppVersionEvent();

  @override
  List<Object> get props => [];
}

class CheckAppVersionEvent extends AppVersionEvent {}
