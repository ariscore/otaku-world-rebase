part of 'router.dart';

final profileRoutes = [
  SlideTransitionRoute(
    parentNavigatorKey: _rootNavigatorKey,
    path: RouteConstants.myProfile,
    name: RouteConstants.myProfile,
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
    path: RouteConstants.profile,
    name: RouteConstants.profile,
    directionTween: SlideTransitionRoute.leftToRightTween,
    builder: (state) {
      final id = int.parse(state.uri.queryParameters['id']!);
      return BlocProvider(
        create: (context) => ProfileBloc(userId: id),
        child: const ProfileScreen(),
      );
    },
  ),
  SlideTransitionRoute(
    parentNavigatorKey: _rootNavigatorKey,
    path: RouteConstants.sendMessage,
    name: RouteConstants.sendMessage,
    directionTween: SlideTransitionRoute.bottomToTopTween,
    builder: (state) {
      final id = int.parse(state.uri.queryParameters['receiver_id']!);
      return BlocProvider(
        create: (context) => SendMessageCubit(),
        child: SendMessageScreen(
          receiverId: id,
          onSent: state.extra! as OnMessaged,
        ),
      );
    },
  ),
  SlideTransitionRoute(
    parentNavigatorKey: _rootNavigatorKey,
    path: RouteConstants.favoriteAnime,
    name: RouteConstants.favoriteAnime,
    directionTween: SlideTransitionRoute.leftToRightTween,
    builder: (state) {
      return BlocProvider<FavoriteAnimeBloc>.value(
        value: state.extra! as FavoriteAnimeBloc,
        child: const FavoriteAnimeScreen(),
      );
    },
  ),
  SlideTransitionRoute(
    parentNavigatorKey: _rootNavigatorKey,
    path: RouteConstants.favoriteAnimeSlider,
    name: RouteConstants.favoriteAnimeSlider,
    directionTween: SlideTransitionRoute.leftToRightTween,
    builder: (state) {
      return BlocProvider<FavoriteAnimeBloc>.value(
        value: state.extra! as FavoriteAnimeBloc,
        child: const FavoriteAnimeSlider(),
      );
    },
  ),
  SlideTransitionRoute(
    parentNavigatorKey: _rootNavigatorKey,
    path: RouteConstants.favoriteManga,
    name: RouteConstants.favoriteManga,
    directionTween: SlideTransitionRoute.leftToRightTween,
    builder: (state) {
      return BlocProvider<FavoriteMangaBloc>.value(
        value: state.extra! as FavoriteMangaBloc,
        child: const FavoriteMangaScreen(),
      );
    },
  ),
  SlideTransitionRoute(
    parentNavigatorKey: _rootNavigatorKey,
    path: RouteConstants.favoriteMangaSlider,
    name: RouteConstants.favoriteMangaSlider,
    directionTween: SlideTransitionRoute.leftToRightTween,
    builder: (state) {
      return BlocProvider<FavoriteMangaBloc>.value(
        value: state.extra! as FavoriteMangaBloc,
        child: const FavoriteMangaSlider(),
      );
    },
  ),
  SlideTransitionRoute(
    parentNavigatorKey: _rootNavigatorKey,
    path: RouteConstants.favoriteCharacters,
    name: RouteConstants.favoriteCharacters,
    directionTween: SlideTransitionRoute.leftToRightTween,
    builder: (state) {
      return BlocProvider<FavoriteCharactersBloc>.value(
        value: state.extra! as FavoriteCharactersBloc,
        child: const FavoriteCharactersScreen(),
      );
    },
  ),
  SlideTransitionRoute(
    parentNavigatorKey: _rootNavigatorKey,
    path: RouteConstants.favoriteStaff,
    name: RouteConstants.favoriteStaff,
    directionTween: SlideTransitionRoute.leftToRightTween,
    builder: (state) {
      return BlocProvider<FavoriteStaffBloc>.value(
        value: state.extra! as FavoriteStaffBloc,
        child: const FavoriteStaffScreen(),
      );
    },
  ),
  SlideTransitionRoute(
    parentNavigatorKey: _rootNavigatorKey,
    path: RouteConstants.favoriteStudios,
    name: RouteConstants.favoriteStudios,
    directionTween: SlideTransitionRoute.leftToRightTween,
    builder: (state) {
      return BlocProvider<FavoriteStudiosBloc>.value(
        value: state.extra! as FavoriteStudiosBloc,
        child: const FavoriteStudiosScreen(),
      );
    },
  ),
  SlideTransitionRoute(
    parentNavigatorKey: _rootNavigatorKey,
    path: RouteConstants.userActivities,
    name: RouteConstants.userActivities,
    directionTween: SlideTransitionRoute.leftToRightTween,
    builder: (state) {
      final isCurrentUser =
          state.uri.queryParameters['is_current_user'] == '1' ? true : false;
      final userId = int.parse(state.uri.queryParameters['user_id']!);
      return UserActivitiesScreen(isCurrentUser: isCurrentUser, userId: userId);
    },
  ),
  SlideTransitionRoute(
    parentNavigatorKey: _rootNavigatorKey,
    path: RouteConstants.userNotifications,
    name: RouteConstants.userNotifications,
    directionTween: SlideTransitionRoute.leftToRightTween,
    builder: (state) {
      return UserNotificationsScreen(resetCount: state.extra! as VoidCallback);
    },
  ),
  SlideTransitionRoute(
    parentNavigatorKey: _rootNavigatorKey,
    path: RouteConstants.statusDistribution,
    name: RouteConstants.statusDistribution,
    directionTween: SlideTransitionRoute.leftToRightTween,
    builder: (state) {
      final type = state.uri.queryParameters['type'] == 'anime'
          ? Enum$MediaType.ANIME
          : Enum$MediaType.MANGA;
      return StatusDistributionScreen(
        statuses: state.extra! as List<Fragment$UserStatistics$statuses?>,
        type: type,
      );
    },
  ),
  SlideTransitionRoute(
    parentNavigatorKey: _rootNavigatorKey,
    path: RouteConstants.formatDistribution,
    name: RouteConstants.formatDistribution,
    directionTween: SlideTransitionRoute.leftToRightTween,
    builder: (state) {
      final type = state.uri.queryParameters['type'] == 'anime'
          ? Enum$MediaType.ANIME
          : Enum$MediaType.MANGA;
      return FormatDistributionScreen(
        formats: state.extra! as List<Fragment$UserStatistics$formats?>,
        type: type,
      );
    },
  ),
  SlideTransitionRoute(
    parentNavigatorKey: _rootNavigatorKey,
    path: RouteConstants.countryDistribution,
    name: RouteConstants.countryDistribution,
    directionTween: SlideTransitionRoute.leftToRightTween,
    builder: (state) {
      final type = state.uri.queryParameters['type'] == 'anime'
          ? Enum$MediaType.ANIME
          : Enum$MediaType.MANGA;
      return CountryDistributionScreen(
        countries: state.extra! as List<Fragment$UserStatistics$countries?>,
        type: type,
      );
    },
  ),
  SlideTransitionRoute(
    parentNavigatorKey: _rootNavigatorKey,
    path: RouteConstants.releaseYearDistribution,
    name: RouteConstants.releaseYearDistribution,
    directionTween: SlideTransitionRoute.leftToRightTween,
    builder: (state) {
      final type = state.uri.queryParameters['type'] == 'anime'
          ? Enum$MediaType.ANIME
          : Enum$MediaType.MANGA;
      return ReleaseYearDistributionScreen(
        releaseYears:
            state.extra! as List<Fragment$UserStatistics$releaseYears?>,
        type: type,
      );
    },
  ),
  SlideTransitionRoute(
    parentNavigatorKey: _rootNavigatorKey,
    path: RouteConstants.startYearDistribution,
    name: RouteConstants.startYearDistribution,
    directionTween: SlideTransitionRoute.leftToRightTween,
    builder: (state) {
      final type = state.uri.queryParameters['type'] == 'anime'
          ? Enum$MediaType.ANIME
          : Enum$MediaType.MANGA;
      return StartYearDistributionScreen(
        startYears: state.extra! as List<Fragment$UserStatistics$startYears?>,
        type: type,
      );
    },
  ),
  SlideTransitionRoute(
    parentNavigatorKey: _rootNavigatorKey,
    path: RouteConstants.scoreDistribution,
    name: RouteConstants.scoreDistribution,
    directionTween: SlideTransitionRoute.leftToRightTween,
    builder: (state) {
      final type = state.uri.queryParameters['type'] == 'anime'
          ? Enum$MediaType.ANIME
          : Enum$MediaType.MANGA;
      return ScoreDistributionScreen(
        scores: state.extra! as List<Fragment$UserStatistics$scores?>,
        type: type,
      );
    },
  ),
  SlideTransitionRoute(
    parentNavigatorKey: _rootNavigatorKey,
    path: RouteConstants.lengthDistribution,
    name: RouteConstants.lengthDistribution,
    directionTween: SlideTransitionRoute.leftToRightTween,
    builder: (state) {
      final type = state.uri.queryParameters['type'] == 'anime'
          ? Enum$MediaType.ANIME
          : Enum$MediaType.MANGA;
      return LengthDistributionScreen(
        lengths: state.extra! as List<Fragment$UserStatistics$lengths?>,
        type: type,
      );
    },
  ),
];
