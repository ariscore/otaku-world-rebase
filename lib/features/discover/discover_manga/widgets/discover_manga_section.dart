import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../bloc/discover/manga/all_time_popular_manga/all_time_popular_manga_bloc.dart';
import '../../../../bloc/discover/manga/all_time_popular_manga/popular_manhwa_bloc.dart';
import '../../../../bloc/discover/manga/top_100_manga/top_100_manga.dart';
import '../../../../bloc/recommended_manga/recommended_manga_bloc.dart';
import '../../../../bloc/trending_manga/trending_manga_bloc.dart';
import '../../../../config/router/router_constants.dart';
import '../../../../core/ui/media_section/media_cards.dart';
import '../../../../core/ui/media_section/media_section.dart';

class DiscoverMangaSection extends StatelessWidget {
  const DiscoverMangaSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MediaSection<TrendingMangaBloc>(
          label: 'Trending now',
          onMorePressed: () {
            context.push(
              RouteConstants.trendingManga,
              extra: context.read<TrendingMangaBloc>(),
            );
          },
          onSliderPressed: () {
            context.push(
              RouteConstants.trendingMangaSlider,
              extra: context.read<TrendingMangaBloc>(),
            );
          },
          heroTag: 'trending_manga',
        ),
        const SizedBox(
          height: 15,
        ),
        MediaSection<RecommendedMangaBloc>(
          label: 'Recommended',
          onMorePressed: () {
            context.push(
              RouteConstants.recommendedManga,
              extra: context.read<RecommendedMangaBloc>(),
            );
          },
          onSliderPressed: () {
            context.push(
              RouteConstants.recommendedMangaSlider,
              extra: context.read<RecommendedMangaBloc>(),
            );
          },
          heroTag: 'recommended_manga',
        ),
        const SizedBox(
          height: 15,
        ),
        MediaSection<AllTimePopularMangaBloc>(
          label: 'All Time Popular',
          onMorePressed: () {
            context.push(
              RouteConstants.allTimePopularManga,
              extra: context.read<AllTimePopularMangaBloc>(),
            );
          },
          onSliderPressed: () {
            context.push(
              RouteConstants.allTimePopularMangaSlider,
              extra: context.read<AllTimePopularMangaBloc>(),
            );
          },
          heroTag: 'all_time_popular_manga',
        ),
        const SizedBox(
          height: 15,
        ),
        MediaSection<PopularManhwaBloc>(
          label: 'Popular Manhwa',
          onMorePressed: () {
            context.push(
              RouteConstants.popularManhwa,
              extra: context.read<PopularManhwaBloc>(),
            );
          },
          onSliderPressed: () {
            context.push(
              RouteConstants.popularManhwaSlider,
              extra: context.read<PopularManhwaBloc>(),
            );
          },
          heroTag: 'popular_manhwa',
        ),
        const SizedBox(
          height: 15,
        ),
        MediaCards<Top100MangaBloc>(
          label: 'Top 100 Manga',
          onMorePressed: () {
            context.push(
              RouteConstants.topManga,
              extra: context.read<Top100MangaBloc>(),
            );
          },
          heroTag: 'top_100_manga',
        ),
        const SizedBox(
          height: 15,
        )
      ],
    );
  }
}
