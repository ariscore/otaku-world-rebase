import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

class SlideTransitionShellRoute extends ShellRoute {
  SlideTransitionShellRoute({
    required super.routes,
    required super.parentNavigatorKey,
    required Widget Function(
      BuildContext context,
      GoRouterState state,
      Widget child,
    ) builder,
    required Tween<Offset> directionTween,
  }) : super(
          pageBuilder: (context, state, child) {
            return CustomTransitionPage(
              child: builder(context, state, child),
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
