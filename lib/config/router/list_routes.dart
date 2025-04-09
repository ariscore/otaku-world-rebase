part of 'router.dart';

final listRoutes = [
  SlideTransitionRoute(
    parentNavigatorKey: _rootNavigatorKey,
    path: RouteConstants.animeListFilter,
    directionTween: SlideTransitionRoute.bottomToTopTween,
    builder: (state) {
      return AnimeListFilterScreen(listBloc: state.extra! as MediaListBloc);
    },
  ),
  SlideTransitionRoute(
    parentNavigatorKey: _rootNavigatorKey,
    path: RouteConstants.mangaListFilter,
    directionTween: SlideTransitionRoute.bottomToTopTween,
    builder: (state) {
      return MangaListFilterScreen(listBloc: state.extra! as MediaListBloc);
    },
  ),
];