import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SlideTransitionRoute extends GoRoute {
  static final leftToRightTween = Tween<Offset>(
    begin: const Offset(1.0, 0.0),
    end: Offset.zero,
  );

  static final bottomToTopTween = Tween<Offset>(
    begin: const Offset(0.0, 1.0),
    end: Offset.zero,
  );

  SlideTransitionRoute({
    required String path,
    GlobalKey<NavigatorState>? parentNavigatorKey,
    required Widget Function(GoRouterState state) builder,
    required Tween<Offset> directionTween,
    GoRouterRedirect? redirect,
    List<RouteBase> routes = const [],
  }) : super(
    path: path,
    parentNavigatorKey: parentNavigatorKey,
    routes: routes,
    redirect: redirect,
    pageBuilder: (context, state) {
      return CustomTransitionPage(
        child: builder(state),
        transitionsBuilder: (
            context,
            animation,
            secondaryAnimation,
            child,
            ) {
          return SlideTransition(
            position: directionTween.animate(animation),
            child: child,
          );
        },
      );
    },
  );
}