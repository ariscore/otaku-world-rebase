import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../bloc/discover/anime/all_time_popular_anime/all_time_popular_anime_bloc.dart';
import '../../../../bloc/discover/anime/top_100_anime/top_100_anime_bloc.dart';
import '../../../../bloc/discover/anime/top_airing_anime/top_airing_anime_bloc.dart';
import '../../../../bloc/discover/anime/top_upcoming_anime/top_upcoming_anime_bloc.dart';
import '../../../../bloc/recommended_anime/recommended_anime_bloc.dart';
import '../../../../bloc/trending_anime/trending_anime_bloc.dart';
import '../../../../config/router/router_constants.dart';
import '../../../../core/ui/media_section/media_cards.dart';
import '../../../../core/ui/media_section/media_section.dart';

class DiscoverAnimeSection extends StatelessWidget {
  const DiscoverAnimeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MediaSection<TrendingAnimeBloc>(
          label: 'Trending now',
          onMorePressed: () {
            context.push(RouteConstants.trendingAnime);
          },
          onSliderPressed: () {
            context.push(RouteConstants.trendingAnimeSlider);
          },
          heroTag: 'trending_anime',
        ),
        const SizedBox(
          height: 15,
        ),
        MediaSection<RecommendedAnimeBloc>(
          label: 'Recommended',
          onMorePressed: () {
            context.push(RouteConstants.recommendedAnime);
          },
          onSliderPressed: () {
            context.push(RouteConstants.recommendedAnimeSlider);
          },
          heroTag: 'recommended_anime',
        ),
        const SizedBox(
          height: 15,
        ),
        MediaSection<TopAiringAnimeBloc>(
          label: 'Top Airing',
          onMorePressed: () {
            context.push(RouteConstants.topAiringAnime);
          },
          onSliderPressed: () {
            context.push(RouteConstants.topAiringAnimeSlider);
          },
          heroTag: 'top_airing_anime',
        ),
        const SizedBox(
          height: 15,
        ),
        MediaSection<TopUpcomingAnimeBloc>(
          label: 'Top Upcoming',
          onMorePressed: () {
            context.push(RouteConstants.topUpcomingAnime);
          },
          onSliderPressed: () {
            context.push(RouteConstants.topUpcomingAnimeSlider);
          },
          heroTag: 'top_upcoming_anime',
        ),
        const SizedBox(
          height: 15,
        ),
        MediaSection<AllTimePopularAnimeBloc>(
          label: 'All Time Popular',
          onMorePressed: () {
            context.push(RouteConstants.allTimePopularAnime);
          },
          onSliderPressed: () {
            context.push(RouteConstants.allTimePopularAnimeSlider);
          },
          heroTag: 'all_time_popular_anime',
        ),
        const SizedBox(
          height: 15,
        ),
        MediaCards<Top100AnimeBloc>(
          label: 'Top 100 Anime',
          onMorePressed: () {
            context.push(RouteConstants.topAnime);
          },
          heroTag: 'top_100_anime',
        ),
        const SizedBox(
          height: 15,
        )
      ],
    );
  }
}