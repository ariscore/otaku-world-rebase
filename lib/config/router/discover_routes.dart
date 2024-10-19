part of 'router.dart';

final discoverRoutes = [
  SlideTransitionRoute(
    parentNavigatorKey: _rootNavigatorKey,
    path: RouteConstants.discoverAnime,
    builder: (context) => const AnimeDiscoverScreen(),
    directionTween: SlideTransitionRoute.leftToRightTween,
  ),
  SlideTransitionRoute(
    parentNavigatorKey: _rootNavigatorKey,
    path: RouteConstants.animeFilters,
    builder: (context) => const AnimeFilters(),
    directionTween: SlideTransitionRoute.bottomToTopTween,
  ),
  SlideTransitionRoute(
    parentNavigatorKey: _rootNavigatorKey,
    path: RouteConstants.filterAnimeSlider,
    builder: (context) => const AnimeSliderScreen(),
    directionTween: SlideTransitionRoute.bottomToTopTween,
  ),
  SlideTransitionRoute(
    parentNavigatorKey: _rootNavigatorKey,
    path: RouteConstants.topAiringAnime,
    builder: (context) => const TopAiringAnimeScreen(),
    directionTween: SlideTransitionRoute.bottomToTopTween,
  ),
  SlideTransitionRoute(
    parentNavigatorKey: _rootNavigatorKey,
    path: RouteConstants.topAiringAnimeSlider,
    builder: (context) => const TopAiringAnimeSlider(),
    directionTween: SlideTransitionRoute.bottomToTopTween,
  ),
  SlideTransitionRoute(
    parentNavigatorKey: _rootNavigatorKey,
    path: RouteConstants.topUpcomingAnime,
    builder: (context) => const TopUpcomingAnimeScreen(),
    directionTween: SlideTransitionRoute.bottomToTopTween,
  ),
  SlideTransitionRoute(
    parentNavigatorKey: _rootNavigatorKey,
    path: RouteConstants.topUpcomingAnimeSlider,
    builder: (context) => const TopUpcomingAnimeSlider(),
    directionTween: SlideTransitionRoute.bottomToTopTween,
  ),
  SlideTransitionRoute(
    parentNavigatorKey: _rootNavigatorKey,
    path: RouteConstants.allTimePopularAnime,
    builder: (context) => const AllTimePopularAnimeScreen(),
    directionTween: SlideTransitionRoute.bottomToTopTween,
  ),
  SlideTransitionRoute(
    parentNavigatorKey: _rootNavigatorKey,
    path: RouteConstants.allTimePopularAnimeSlider,
    builder: (context) => const AllTimePopularAnimeSlider(),
    directionTween: SlideTransitionRoute.bottomToTopTween,
  ),
  SlideTransitionRoute(
    parentNavigatorKey: _rootNavigatorKey,
    path: RouteConstants.topAnime,
    builder: (context) => const TopAnimeScreen(),
    directionTween: SlideTransitionRoute.bottomToTopTween,
  ),
  SlideTransitionRoute(
    parentNavigatorKey: _rootNavigatorKey,
    path: RouteConstants.discoverManga,
    builder: (context) => const MangaDiscoverScreen(),
    directionTween: SlideTransitionRoute.leftToRightTween,
  ),
  SlideTransitionRoute(
    parentNavigatorKey: _rootNavigatorKey,
    path: RouteConstants.mangaFilters,
    builder: (context) => const MangaFilters(),
    directionTween: SlideTransitionRoute.bottomToTopTween,
  ),
  SlideTransitionRoute(
    parentNavigatorKey: _rootNavigatorKey,
    path: RouteConstants.allTimePopularManga,
    builder: (context) => const AllTimePopularMangaScreen(),
    directionTween: SlideTransitionRoute.bottomToTopTween,
  ),
  SlideTransitionRoute(
    parentNavigatorKey: _rootNavigatorKey,
    path: RouteConstants.allTimePopularMangaSlider,
    builder: (context) => const AllTimePopularMangaSlider(),
    directionTween: SlideTransitionRoute.bottomToTopTween,
  ),
  SlideTransitionRoute(
    parentNavigatorKey: _rootNavigatorKey,
    path: RouteConstants.popularManhwa,
    builder: (context) => const PopularManhwaScreen(),
    directionTween: SlideTransitionRoute.bottomToTopTween,
  ),
  SlideTransitionRoute(
    parentNavigatorKey: _rootNavigatorKey,
    path: RouteConstants.popularManhwaSlider,
    builder: (context) => const PopularManhwaSlider(),
    directionTween: SlideTransitionRoute.bottomToTopTween,
  ),
  SlideTransitionRoute(
    parentNavigatorKey: _rootNavigatorKey,
    path: RouteConstants.topManga,
    builder: (context) => const TopMangaScreen(),
    directionTween: SlideTransitionRoute.bottomToTopTween,
  ),
  SlideTransitionShellRoute(
    parentNavigatorKey: _rootNavigatorKey,
    builder: (context, state, child) {
      return DiscoverCharactersWrapper(child: child);
    },
    directionTween: SlideTransitionRoute.leftToRightTween,
    routes: [
      GoRoute(
        path: RouteConstants.discoverCharacters,
        pageBuilder: (context, state) {
          return const NoTransitionPage(child: CharactersDiscoverScreen());
        },
        // directionTween: SlideTransitionRoute.leftToRightTween,
        routes: [
          SlideTransitionRoute(
            path: RouteConstants.birthdayCharactersPath,
            directionTween: SlideTransitionRoute.bottomToTopTween,
            builder: (context) => const EntityScreen<BirthdayCharactersBloc>(
              title: 'Birthdays',
              tag: 'characters_birthdays',
            ),
          ),
          SlideTransitionRoute(
            path: RouteConstants.mostFavoriteCharactersPath,
            directionTween: SlideTransitionRoute.bottomToTopTween,
            builder: (context) =>
                const EntityScreen<MostFavoriteCharactersBloc>(
              title: 'Most Favorite Characters',
                  tag: 'most_favorite_characters',
            ),
          ),
        ],
      ),
    ],
  ),
  SlideTransitionShellRoute(
    parentNavigatorKey: _rootNavigatorKey,
    builder: (context, state, child) {
      return DiscoverStaffWrapper(child: child);
    },
    directionTween: SlideTransitionRoute.leftToRightTween,
    routes: [
      GoRoute(
        path: RouteConstants.discoverStaff,
        builder: (context, state) => const StaffDiscoverScreen(),
        // directionTween: SlideTransitionRoute.leftToRightTween,
        routes: [
          SlideTransitionRoute(
            path: RouteConstants.birthdayStaffPath,
            directionTween: SlideTransitionRoute.bottomToTopTween,
            builder: (context) => const EntityScreen<BirthdayStaffBloc>(
              title: 'Birthdays',
              tag: 'staff_birthdays',
            ),
          ),
          SlideTransitionRoute(
            path: RouteConstants.mostFavoriteStaffPath,
            directionTween: SlideTransitionRoute.bottomToTopTween,
            builder: (context) => const EntityScreen<MostFavoriteStaffBloc>(
              title: 'Most Favorite Staff',
              tag: 'most_favorite_staff',
            ),
          ),
        ],
      ),
    ],
  ),
  SlideTransitionRoute(
    parentNavigatorKey: _rootNavigatorKey,
    path: RouteConstants.discoverStudios,
    directionTween: SlideTransitionRoute.leftToRightTween,
    builder: (context) => MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => MostFavoriteStudiosBloc()),
        BlocProvider(create: (context) => SearchStudiosBloc()),
      ],
      child: const StudiosDiscoverScreen(),
    ),
  ),
];
