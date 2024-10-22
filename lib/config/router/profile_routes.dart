part of 'router.dart';

final profileRoutes = [
  SlideTransitionRoute(
    parentNavigatorKey: _rootNavigatorKey,
    path: RouteConstants.myProfile,
    directionTween: SlideTransitionRoute.leftToRightTween,
    builder: (state) {
      return BlocProvider(
        create: (context) => MyProfileBloc(),
        child: const MyProfileScreen(),
      );
    },
  ),
  SlideTransitionRoute(
    parentNavigatorKey: _rootNavigatorKey,
    path: RouteConstants.settings,
    directionTween: SlideTransitionRoute.leftToRightTween,
    builder: (state) {
      return SettingsScreen();
    },
  ),
];