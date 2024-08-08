import 'package:flutter/material.dart';

import 'dart:developer' as dev;

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
    super.didPush(route, previousRoute);
  }
}
