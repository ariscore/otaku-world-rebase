part of 'router.dart';

final socialRoutes = [
  SlideTransitionRoute(
    parentNavigatorKey: _rootNavigatorKey,
    path: RouteConstants.activityReplies,
    directionTween: SlideTransitionRoute.bottomToTopTween,
    builder: (state) {
      return BlocProvider(
        create: (context) => ActivityRepliesBloc(
          activityId: int.parse(state.uri.queryParameters['id']!),
        ),
        child: const ActivityRepliesScreen(),
      );
    },
  ),
];
