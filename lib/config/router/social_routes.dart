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
        child: ActivityRepliesScreen(bloc: state.extra! as Bloc),
      );
    },
  ),
  SlideTransitionRoute(
    parentNavigatorKey: _rootNavigatorKey,
    path: RouteConstants.replyActivity,
    directionTween: SlideTransitionRoute.bottomToTopTween,
    builder: (state) {
      return BlocProvider(
        create: (context) => ReplyActivityCubit(
          activityId: int.parse(state.uri.queryParameters['id']!),
        ),
        child: ReplyActivityScreen(onReplied: state.extra as OnReplied),
      );
    },
  ),
  SlideTransitionRoute(
    parentNavigatorKey: _rootNavigatorKey,
    path: RouteConstants.editActivityReply,
    directionTween: SlideTransitionRoute.bottomToTopTween,
    builder: (state) {
      final map = state.extra as Map<String, dynamic>;
      final text = map['text'];
      final onReplied = map['on_replied'];

      return BlocProvider(
        create: (context) => EditActivityReplyCubit(
          replyId: int.parse(state.uri.queryParameters['id']!),
          activityId: int.parse(state.uri.queryParameters['activity_id']!),
        ),
        child: EditActivityReplyScreen(
          text: text,
          onReplied: onReplied,
        ),
      );
    },
  ),
];
