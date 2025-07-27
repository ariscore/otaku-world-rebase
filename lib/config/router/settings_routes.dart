part of 'router.dart';

final settingsRoutes = [
  SlideTransitionRoute(
    parentNavigatorKey: _rootNavigatorKey,
    path: RouteConstants.settings,
    name: RouteConstants.settings,
    directionTween: SlideTransitionRoute.leftToRightTween,
    builder: (state) {
      return SettingsScreen(userName: state.uri.queryParameters['name']!);
    },
  ),
  SlideTransitionRoute(
    parentNavigatorKey: _rootNavigatorKey,
    path: RouteConstants.mediaSettings,
    name: RouteConstants.mediaSettings,
    directionTween: SlideTransitionRoute.leftToRightTween,
    builder: (state) {
      return const AnimeMangaSettingsScreen();
    },
  ),
  SlideTransitionRoute(
    parentNavigatorKey: _rootNavigatorKey,
    path: RouteConstants.notificationsSettings,
    name: RouteConstants.notificationsSettings,
    directionTween: SlideTransitionRoute.leftToRightTween,
    builder: (state) {
      return const NotificationsSettingsScreen();
    },
  ),
  SlideTransitionRoute(
    parentNavigatorKey: _rootNavigatorKey,
    path: RouteConstants.listSettings,
    name: RouteConstants.listSettings,
    directionTween: SlideTransitionRoute.leftToRightTween,
    builder: (state) {
      return const ListSettings();
    },
  ),
  SlideTransitionRoute(
    parentNavigatorKey: _rootNavigatorKey,
    path: RouteConstants.aboutUs,
    name: RouteConstants.aboutUs,
    directionTween: SlideTransitionRoute.leftToRightTween,
    builder: (state) {
      return const AboutUsScreen();
    },
  ),
];
