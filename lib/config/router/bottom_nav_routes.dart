part of 'router.dart';

final bottomNavRoutes = StatefulShellRoute.indexedStack(
  builder: (context, state, navigationShell) {
    return AppScaffold(navigationShell: navigationShell);
  },
  branches: [

    StatefulShellBranch(
      navigatorKey: _shellNavigatorHomeKey,
      routes: [
        GoRoute(
          path: RouteConstants.home,
          pageBuilder: (context, state) {
            return const NoTransitionPage(
              child: HomeScreen(),
            );
          },
        ),
      ],
    ),
    StatefulShellBranch(
      navigatorKey: _shellNavigatorDiscoverKey,
      routes: [
        GoRoute(
          path: RouteConstants.discover,
          pageBuilder: (context, state) {
            return const NoTransitionPage(
              child: DiscoverScreen(),
            );
          },
        ),
      ],
    ),
    StatefulShellBranch(
      navigatorKey: _shellNavigatorSocialKey,
      routes: [
        GoRoute(
          path: RouteConstants.social,
          pageBuilder: (context, state) {
            return NoTransitionPage(
              child: BlocProvider(
                create: (context) => ActivitiesBloc(),
                child: const SocialScreen(),
              ),
            );
          },
        ),
      ],
    ),
    StatefulShellBranch(
      navigatorKey: _shellNavigatorMyListKey,
      routes: [
        GoRoute(
          path: RouteConstants.myList,
          pageBuilder: (context, state) {
            return const NoTransitionPage(
              child: MyListScreen(),
            );
          },
        ),
      ],
    ),
  ],
);
