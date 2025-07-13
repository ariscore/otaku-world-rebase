part of 'router.dart';

final discoverRoutes = [
  SlideTransitionRoute(
    parentNavigatorKey: _rootNavigatorKey,
    path: RouteConstants.discoverAnime,
    builder: (context) => MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => AllTimePopularAnimeBloc()),
        BlocProvider(create: (context) => TrendingAnimeBloc()),
        BlocProvider(create: (context) => RecommendedAnimeBloc()),
        BlocProvider(create: (context) => TopAiringAnimeBloc()),
        BlocProvider(create: (context) => TopUpcomingAnimeBloc()),
        BlocProvider(create: (context) => Top100AnimeBloc()),
        BlocProvider(create: (context) => FilterAnimeBloc()),
      ],
      child: const AnimeDiscoverScreen(),
    ),
    directionTween: SlideTransitionRoute.leftToRightTween,
  ),
  SlideTransitionRoute(
    parentNavigatorKey: _rootNavigatorKey,
    path: RouteConstants.animeFilters,
    builder: (state) => BlocProvider.value(
      value: state.extra as FilterAnimeBloc,
      child: const AnimeFilters(),
    ),
    directionTween: SlideTransitionRoute.bottomToTopTween,
  ),
  SlideTransitionRoute(
    parentNavigatorKey: _rootNavigatorKey,
    path: RouteConstants.filterAnimeSlider,
    builder: (state) => BlocProvider.value(
      value: state.extra as FilterAnimeBloc,
      child: const AnimeSliderScreen(),
    ),
    directionTween: SlideTransitionRoute.bottomToTopTween,
  ),
  SlideTransitionRoute(
    parentNavigatorKey: _rootNavigatorKey,
    path: RouteConstants.filterMangaSlider,
    builder: (state) => BlocProvider.value(
      value: state.extra as FilterMangaBloc,
      child: const MangaSliderScreen(),
    ),
    directionTween: SlideTransitionRoute.bottomToTopTween,
  ),
  SlideTransitionRoute(
    parentNavigatorKey: _rootNavigatorKey,
    path: RouteConstants.topAiringAnime,
    builder: (state) {
      final bloc = state.extra as TopAiringAnimeBloc;
      return BlocProvider.value(
        value: bloc,
        child: const TopAiringAnimeScreen(),
      );
    },
    directionTween: SlideTransitionRoute.bottomToTopTween,
  ),
  SlideTransitionRoute(
    parentNavigatorKey: _rootNavigatorKey,
    path: RouteConstants.topAiringAnimeSlider,
    builder: (state) {
      final bloc = state.extra as TopAiringAnimeBloc;
      return BlocProvider.value(
        value: bloc,
        child: const TopAiringAnimeSlider(),
      );
    },
    directionTween: SlideTransitionRoute.bottomToTopTween,
  ),
  SlideTransitionRoute(
    parentNavigatorKey: _rootNavigatorKey,
    path: RouteConstants.topUpcomingAnime,
    builder: (state) {
      final bloc = state.extra as TopUpcomingAnimeBloc;
      return BlocProvider.value(
        value: bloc,
        child: const TopUpcomingAnimeScreen(),
      );
    },
    directionTween: SlideTransitionRoute.bottomToTopTween,
  ),
  SlideTransitionRoute(
    parentNavigatorKey: _rootNavigatorKey,
    path: RouteConstants.topUpcomingAnimeSlider,
    builder: (state) {
      final bloc = state.extra as TopUpcomingAnimeBloc;
      return BlocProvider.value(
        value: bloc,
        child: const TopUpcomingAnimeSlider(),
      );
    },
    directionTween: SlideTransitionRoute.bottomToTopTween,
  ),
  SlideTransitionRoute(
    parentNavigatorKey: _rootNavigatorKey,
    path: RouteConstants.allTimePopularAnime,
    builder: (state) {
      final bloc = state.extra as AllTimePopularAnimeBloc;
      return BlocProvider.value(
        value: bloc,
        child: const AllTimePopularAnimeScreen(),
      );
    },
    directionTween: SlideTransitionRoute.bottomToTopTween,
  ),
  SlideTransitionRoute(
    parentNavigatorKey: _rootNavigatorKey,
    path: RouteConstants.allTimePopularAnimeSlider,
    builder: (state) {
      final bloc = state.extra as AllTimePopularAnimeBloc;
      return BlocProvider.value(
        value: bloc,
        child: const AllTimePopularAnimeSlider(),
      );
    },
    directionTween: SlideTransitionRoute.bottomToTopTween,
  ),
  SlideTransitionRoute(
    parentNavigatorKey: _rootNavigatorKey,
    path: RouteConstants.topAnime,
    builder: (state) {
      final bloc = state.extra as Top100AnimeBloc;
      return BlocProvider.value(
        value: bloc,
        child: const TopAnimeScreen(),
      );
    },
    directionTween: SlideTransitionRoute.bottomToTopTween,
  ),
  SlideTransitionRoute(
    parentNavigatorKey: _rootNavigatorKey,
    path: RouteConstants.discoverManga,
    builder: (context) => MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => TrendingMangaBloc()),
        BlocProvider(create: (context) => RecommendedMangaBloc()),
        BlocProvider(create: (context) => AllTimePopularMangaBloc()),
        BlocProvider(create: (context) => PopularManhwaBloc()),
        BlocProvider(create: (context) => Top100MangaBloc()),
        BlocProvider(create: (context) => FilterMangaBloc()),
      ],
      child: const MangaDiscoverScreen(),
    ),
    directionTween: SlideTransitionRoute.leftToRightTween,
  ),
  SlideTransitionRoute(
    parentNavigatorKey: _rootNavigatorKey,
    path: RouteConstants.mangaFilters,
    builder: (state) => BlocProvider.value(
      value: state.extra as FilterMangaBloc,
      child: const MangaFilters(),
    ),
    directionTween: SlideTransitionRoute.bottomToTopTween,
  ),
  SlideTransitionRoute(
    parentNavigatorKey: _rootNavigatorKey,
    path: RouteConstants.allTimePopularManga,
    builder: (state) {
      final bloc = state.extra as AllTimePopularMangaBloc;
      return BlocProvider.value(
        value: bloc,
        child: const AllTimePopularMangaScreen(),
      );
    },
    directionTween: SlideTransitionRoute.bottomToTopTween,
  ),
  SlideTransitionRoute(
    parentNavigatorKey: _rootNavigatorKey,
    path: RouteConstants.allTimePopularMangaSlider,
    builder: (state) {
      final bloc = state.extra as AllTimePopularMangaBloc;
      return BlocProvider.value(
        value: bloc,
        child: const AllTimePopularMangaSlider(),
      );
    },
    directionTween: SlideTransitionRoute.bottomToTopTween,
  ),
  SlideTransitionRoute(
    parentNavigatorKey: _rootNavigatorKey,
    path: RouteConstants.popularManhwa,
    builder: (state) {
      final bloc = state.extra as PopularManhwaBloc;
      return BlocProvider.value(
        value: bloc,
        child: const PopularManhwaScreen(),
      );
    },
    directionTween: SlideTransitionRoute.bottomToTopTween,
  ),
  SlideTransitionRoute(
    parentNavigatorKey: _rootNavigatorKey,
    path: RouteConstants.popularManhwaSlider,
    builder: (state) {
      final bloc = state.extra as PopularManhwaBloc;
      return BlocProvider.value(
        value: bloc,
        child: const PopularManhwaSlider(),
      );
    },
    directionTween: SlideTransitionRoute.bottomToTopTween,
  ),
  SlideTransitionRoute(
    parentNavigatorKey: _rootNavigatorKey,
    path: RouteConstants.topManga,
    builder: (state) {
      final bloc = state.extra as Top100MangaBloc;
      return BlocProvider.value(
        value: bloc,
        child: const TopMangaScreen(),
      );
    },
    directionTween: SlideTransitionRoute.bottomToTopTween,
  ),
  // SlideTransitionShellRoute(
  //   parentNavigatorKey: _rootNavigatorKey,
  //   builder: (context, state, child) {
  //     return DiscoverCharactersWrapper(child: child);
  //   },
  //   directionTween: SlideTransitionRoute.leftToRightTween,
  //   routes: [
  //
  //   ],
  // ),
  GoRoute(
    parentNavigatorKey: _rootNavigatorKey,
    path: RouteConstants.discoverCharacters,
    pageBuilder: (context, state) {
      return NoTransitionPage(
        child: MultiBlocProvider(
          providers: [
            BlocProvider(create: (context) => BirthdayCharactersBloc()),
            BlocProvider(create: (context) => MostFavoriteCharactersBloc()),
            BlocProvider(create: (context) => SearchCharactersBloc()),
          ],
          child: const CharactersDiscoverScreen(),
        ),
      );
    },
    // directionTween: SlideTransitionRoute.leftToRightTween,
    routes: [
      SlideTransitionRoute(
        path: RouteConstants.birthdayCharactersPath,
        directionTween: SlideTransitionRoute.bottomToTopTween,
        builder: (state) {
          final bloc = state.extra as BirthdayCharactersBloc;
          return BlocProvider.value(
            value: bloc,
            child: const EntityScreen<BirthdayCharactersBloc>(
              title: 'Birthdays',
              tag: 'characters_birthdays',
            ),
          );
        },
      ),
      SlideTransitionRoute(
        path: RouteConstants.mostFavoriteCharactersPath,
        directionTween: SlideTransitionRoute.bottomToTopTween,
        builder: (state) {
          final bloc = state.extra as MostFavoriteCharactersBloc;
          return BlocProvider.value(
            value: bloc,
            child: const EntityScreen<MostFavoriteCharactersBloc>(
              title: 'Most Favorite Characters',
              tag: 'most_favorite_characters',
            ),
          );
        },
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
