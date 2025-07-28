part of 'router.dart';

final homeRoutes = [
  // Reviews screen
  SlideTransitionRoute(
    parentNavigatorKey: _rootNavigatorKey,
    path: RouteConstants.reviews,
    name: RouteConstants.reviews,
    builder: (state) {
      return BlocProvider(
        create: (context) => ReviewsBloc(),
        child: const ReviewScreen(),
      );
    },
    directionTween: SlideTransitionRoute.leftToRightTween,
  ),
  // Review detail
  SlideTransitionRoute(
    parentNavigatorKey: _rootNavigatorKey,
    path: RouteConstants.reviewDetail,
    name: RouteConstants.reviewDetail,
    builder: (state) {
      return BlocProvider(
        create: (context) => ReviewDetailBloc(
          reviewId: int.parse(state.uri.queryParameters['id']!),
        ),
        child: ReviewDetailScreen(
          bloc: state.extra != null ? state.extra as Bloc : null,
        ),
      );
    },
    directionTween: SlideTransitionRoute.leftToRightTween,
  ),
  // Calendar screen
  SlideTransitionRoute(
    parentNavigatorKey: _rootNavigatorKey,
    path: RouteConstants.calendar,
    name: RouteConstants.calendar,
    builder: (state) => MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => WeekCalendarBloc()..add(InitializeCalendar()),
        ),
        BlocProvider(
          create: (context) => DayBloc(DateTime.now()),
        ),
      ],
      child: const CalendarScreen(),
    ),
    directionTween: SlideTransitionRoute.leftToRightTween,
  ),
  // Search Screen
  GoRoute(
    parentNavigatorKey: _rootNavigatorKey,
    path: RouteConstants.search,
    name: RouteConstants.search,
    builder: (context, state) => BlocProvider(
      create: (context) => SearchBloc(),
      child: const SearchScreen(),
    ),
  ),
  // Post Review
  SlideTransitionRoute(
    parentNavigatorKey: _rootNavigatorKey,
    path: RouteConstants.postReview,
    name: RouteConstants.postReview,
    directionTween: SlideTransitionRoute.bottomToTopTween,
    builder: (state) {
      final int mediaId =
          int.parse(state.uri.queryParameters['mediaId'] as String);
      return BlocProvider(
        create: (context) => PostReviewBloc(),
        child: PostReviewScreen(
          mediaId: mediaId,
        ),
      );
    },
  ),
  SlideTransitionRoute(
    parentNavigatorKey: _rootNavigatorKey,
    path: RouteConstants.writeReview,
    name: RouteConstants.writeReview,
    directionTween: SlideTransitionRoute.bottomToTopTween,
    builder: (state) {
      final commentController = state.extra as TextEditingController;
      return WriteReviewScreen(controller: commentController);
    },
  ),
  SlideTransitionRoute(
    parentNavigatorKey: _rootNavigatorKey,
    path: RouteConstants.previewReview,
    name: RouteConstants.previewReview,
    directionTween: SlideTransitionRoute.leftToRightTween,
    builder: (state) {
      final String data = state.extra != null ? state.extra as String : '';
      return PreviewReviewScreen(data: data);
    },
  ),
  // Trending Anime
  SlideTransitionRoute(
    parentNavigatorKey: _rootNavigatorKey,
    path: RouteConstants.trendingAnime,
    name: RouteConstants.trendingAnime,
    builder: (state) {
      final bloc = state.extra as TrendingAnimeBloc;
      return BlocProvider.value(
        value: bloc,
        child: const TrendingAnimeScreen(),
      );
    },
    directionTween: SlideTransitionRoute.bottomToTopTween,
  ),
  // Trending Anime Slider
  SlideTransitionRoute(
    parentNavigatorKey: _rootNavigatorKey,
    path: RouteConstants.trendingAnimeSlider,
    name: RouteConstants.trendingAnimeSlider,
    builder: (state) {
      final bloc = state.extra as TrendingAnimeBloc;
      return BlocProvider.value(
        value: bloc,
        child: const TrendingAnimeSlider(),
      );
    },
    directionTween: SlideTransitionRoute.bottomToTopTween,
  ),
  // Recommended Anime
  SlideTransitionRoute(
    parentNavigatorKey: _rootNavigatorKey,
    path: RouteConstants.recommendedAnime,
    name: RouteConstants.recommendedAnime,
    builder: (state) {
      final bloc = state.extra as RecommendedAnimeBloc;
      return BlocProvider.value(
        value: bloc,
        child: const RecommendedAnimeScreen(),
      );
    },
    directionTween: SlideTransitionRoute.bottomToTopTween,
  ),
  // Recommended Anime Slider
  SlideTransitionRoute(
    parentNavigatorKey: _rootNavigatorKey,
    path: RouteConstants.recommendedAnimeSlider,
    name: RouteConstants.recommendedAnimeSlider,
    builder: (state) {
      final bloc = state.extra as RecommendedAnimeBloc;
      return BlocProvider.value(
        value: bloc,
        child: const RecommendedAnimeSlider(),
      );
    },
    directionTween: SlideTransitionRoute.bottomToTopTween,
  ),
  // Trending Manga
  SlideTransitionRoute(
    parentNavigatorKey: _rootNavigatorKey,
    path: RouteConstants.trendingManga,
    name: RouteConstants.trendingManga,
    builder: (state) {
      final bloc = state.extra as TrendingMangaBloc;
      return BlocProvider.value(
        value: bloc,
        child: const TrendingMangaScreen(),
      );
    },
    directionTween: SlideTransitionRoute.bottomToTopTween,
  ),
  // Trending Manga Slider
  SlideTransitionRoute(
    parentNavigatorKey: _rootNavigatorKey,
    path: RouteConstants.trendingMangaSlider,
    name: RouteConstants.trendingMangaSlider,
    builder: (state) {
      final bloc = state.extra as TrendingMangaBloc;
      return BlocProvider.value(
        value: bloc,
        child: const TrendingMangaSlider(),
      );
    },
    directionTween: SlideTransitionRoute.bottomToTopTween,
  ),
  // Recommended Manga
  SlideTransitionRoute(
    parentNavigatorKey: _rootNavigatorKey,
    path: RouteConstants.recommendedManga,
    name: RouteConstants.recommendedManga,
    builder: (state) {
      final bloc = state.extra as RecommendedMangaBloc;
      return BlocProvider.value(
        value: bloc,
        child: const RecommendedMangaScreen(),
      );
    },
    directionTween: SlideTransitionRoute.bottomToTopTween,
  ),
  // Recommended Manga Slider
  SlideTransitionRoute(
    parentNavigatorKey: _rootNavigatorKey,
    path: RouteConstants.recommendedMangaSlider,
    name: RouteConstants.recommendedMangaSlider,
    builder: (state) {
      final bloc = state.extra as RecommendedMangaBloc;
      return BlocProvider.value(
        value: bloc,
        child: const RecommendedMangaSlider(),
      );
    },
    directionTween: SlideTransitionRoute.bottomToTopTween,
  ),
];
