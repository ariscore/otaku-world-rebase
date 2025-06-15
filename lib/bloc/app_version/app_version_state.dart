part of 'app_version_bloc.dart';

sealed class AppVersionState extends Equatable {
  const AppVersionState();

  @override
  List<Object> get props => [];
}

class AppVersionInitial extends AppVersionState {}

class AppVersionLoading extends AppVersionState {}

class AppVersionUpToDate extends AppVersionState {}

class AppForceUpdate extends AppVersionState {
  final AppVersionModel appVersionModel;

  const AppForceUpdate(this.appVersionModel);

  @override
  List<Object> get props => [appVersionModel];
}

class AppVersionError extends AppVersionState {}
