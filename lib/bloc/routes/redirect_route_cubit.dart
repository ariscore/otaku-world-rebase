import 'dart:developer' as dev;

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'redirect_route_state.dart';

class RedirectRouteCubit extends Cubit<RedirectRouteState> {
  RedirectRouteCubit() : super(RedirectRouteInitial());

  String? _desiredRoute;
  Map<String, String>? queryParameters;

  void setDesiredRoute(String route, Map<String, String>? queryParameters) {
    _desiredRoute = route;
    this.queryParameters = queryParameters;
    dev.log(
      'Desired route: $route | Query: $queryParameters',
      name: 'RouteCubit',
    );
  }

  String getDesiredRoute() {
    if (queryParameters != null) {
      final path = Uri(path: _desiredRoute, queryParameters: queryParameters).toString();
      dev.log('Path: $path', name: 'RouteCubit');
      return path;
    } else {
      return _desiredRoute!;
    }
  }

  void resetDesiredRoute() {
    _desiredRoute = null;
    queryParameters = null;
    dev.log('Desired route reset', name: 'RouteCubit');
  }

  bool isDesiredRouteSet() {
    return _desiredRoute != null;
  }
}
