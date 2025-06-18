import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
            context.push(
              RouteConstants.trendingAnime,
              extra: context.read<TrendingAnimeBloc>(),
            );
          },
          onSliderPressed: () {
            context.push(
              RouteConstants.trendingAnimeSlider,
              extra: context.read<TrendingAnimeBloc>(),
            );
          },
          heroTag: 'trending_anime',
        ),
        const SizedBox(
          height: 15,
        ),
        MediaSection<RecommendedAnimeBloc>(
          label: 'Recommended',
          onMorePressed: () {
            context.push(
              RouteConstants.recommendedAnime,
              extra: context.read<RecommendedAnimeBloc>(),
            );
          },
          onSliderPressed: () {
            context.push(
              RouteConstants.recommendedAnimeSlider,
              extra: context.read<RecommendedAnimeBloc>(),
            );
          },
          heroTag: 'recommended_anime',
        ),
        const SizedBox(
          height: 15,
        ),
        MediaSection<TopAiringAnimeBloc>(
          label: 'Top Airing',
          onMorePressed: () {
            context.push(
              RouteConstants.topAiringAnime,
              extra: context.read<TopAiringAnimeBloc>(),
            );
          },
          onSliderPressed: () {
            context.push(
              RouteConstants.topAiringAnimeSlider,
              extra: context.read<TopAiringAnimeBloc>(),
            );
          },
          heroTag: 'top_airing_anime',
        ),
        const SizedBox(
          height: 15,
        ),
        MediaSection<TopUpcomingAnimeBloc>(
          label: 'Top Upcoming',
          onMorePressed: () {
            context.push(
              RouteConstants.topUpcomingAnime,
              extra: context.read<TopUpcomingAnimeBloc>(),
            );
          },
          onSliderPressed: () {
            context.push(
              RouteConstants.topUpcomingAnimeSlider,
              extra: context.read<TopUpcomingAnimeBloc>(),
            );
          },
          heroTag: 'top_upcoming_anime',
        ),
        const SizedBox(
          height: 15,
        ),
        MediaSection<AllTimePopularAnimeBloc>(
          label: 'All Time Popular',
          onMorePressed: () {
            context.push(
              RouteConstants.allTimePopularAnime,
              extra: context.read<AllTimePopularAnimeBloc>(),
            );
          },
          onSliderPressed: () {
            context.push(
              RouteConstants.allTimePopularAnimeSlider,
              extra: context.read<AllTimePopularAnimeBloc>(),
            );
          },
          heroTag: 'all_time_popular_anime',
        ),
        const SizedBox(
          height: 15,
        ),
        MediaCards<Top100AnimeBloc>(
          label: 'Top 100 Anime',
          onMorePressed: () {
            context.push(
              RouteConstants.topAnime,
              extra: context.read<Top100AnimeBloc>(),
            );
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
