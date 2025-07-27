part of 'router.dart';

final bottomNavRoutes = StatefulShellRoute.indexedStack(
  builder: (context, state, navigationShell) {
    return BlocProvider(
      create: (context) => BottomNavBarCubit(),
      child: AppScaffold(navigationShell: navigationShell),
    );
  },
  branches: [
    StatefulShellBranch(
      navigatorKey: _shellNavigatorHomeKey,
      routes: [
        GoRoute(
          path: RouteConstants.home,
          name: RouteConstants.home,
          pageBuilder: (context, state) {
            return NoTransitionPage(
              child: MultiBlocProvider(
                providers: [
                  BlocProvider(
                    create: (context) => UpcomingEpisodesBloc(),
                  ),
                  BlocProvider(
                    create: (context) => TrendingAnimeBloc(),
                  ),
                  BlocProvider(
                    create: (context) => RecommendedAnimeBloc(),
                  ),
                  BlocProvider(
                    create: (context) => TrendingMangaBloc(),
                  ),
                  BlocProvider(
                    create: (context) => RecommendedMangaBloc(),
                  ),
                ],
                child: const HomeScreen(),
              ),
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
          name: RouteConstants.discover,
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
          name: RouteConstants.social,
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
          name: RouteConstants.myList,
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
