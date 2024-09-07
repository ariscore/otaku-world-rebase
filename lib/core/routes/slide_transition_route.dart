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
    required super.path,
    super.parentNavigatorKey,
    required Widget Function(GoRouterState state) builder,
    required Tween<Offset> directionTween,
    super.redirect,
    super.routes,
  }) : super(
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