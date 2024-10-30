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
    path: RouteConstants.favoriteAnime,
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
    path: RouteConstants.settings,
    directionTween: SlideTransitionRoute.leftToRightTween,
    builder: (state) {
      return const SettingsScreen();
    },
  ),
  SlideTransitionRoute(
    parentNavigatorKey: _rootNavigatorKey,
    path: RouteConstants.userActivities,
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
    directionTween: SlideTransitionRoute.leftToRightTween,
    builder: (state) {
      return UserNotificationsScreen(resetCount: state.extra! as VoidCallback);
    },
  ),
];
