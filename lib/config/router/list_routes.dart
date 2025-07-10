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
  SlideTransitionRoute(
    parentNavigatorKey: _rootNavigatorKey,
    path: RouteConstants.editMediaList,
    directionTween: SlideTransitionRoute.bottomToTopTween,
    builder: (state) {
      final data = state.extra! as Map<String, dynamic>;
      return EditListEntryScreen(
        media: data['media'] as Fragment$ListEntryMedia?,
        listOptions: data['options']
            as Fragment$MediaListOptions,
        mediaListEntry: data['mediaListEntry'] as Fragment$MediaListEntry?,
        onEdited: data['onEdited'] as void Function(
          Fragment$MediaListEntry entry,
        ),
        onDeleted: data['onDeleted'] as void Function(int id),
      );
    },
  ),
];
