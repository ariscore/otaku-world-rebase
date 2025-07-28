import 'dart:developer' as dev;

import 'package:flutter/material.dart';
import 'package:otaku_world/features/app_events_management/utils/analytics_logger.dart';

class CustomRouteObserver extends NavigatorObserver {
  @override
  void didPush(Route route, Route? previousRoute) {
    if (previousRoute == null) {
      dev.log('Started with ${route.settings.name}', name: 'GoRouter');
    } else {
      dev.log(
        'Gone to ${route.settings.name} from ${previousRoute.settings.name}',
        name: 'GoRouter',
      );
    }
    _logScreenView(route);
    super.didPush(route, previousRoute);
  }

  @override
  void didReplace({Route? newRoute, Route? oldRoute}) {
    _logScreenView(newRoute);
    super.didReplace(newRoute: newRoute, oldRoute: oldRoute);
  }

  @override
  void didPop(Route route, Route? previousRoute) {
    _logScreenView(previousRoute);
    super.didPop(route, previousRoute);
  }

  Future<void> _logScreenView(Route<dynamic>? route) async {
    final screenName = route?.settings.name ??
        route?.settings.arguments?.toString() ??
        route.toString();
    await AnalyticsLogger.logScreenView(
      screenName: screenName,
      screenClass: route?.runtimeType.toString(),
    );
  }
}
