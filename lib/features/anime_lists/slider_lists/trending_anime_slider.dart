import 'package:flutter/material.dart';
import 'package:otaku_world/bloc/trending_anime/trending_anime_bloc.dart';
import 'package:otaku_world/core/ui/media_section/media_slider_screen.dart';

class TrendingAnimeSlider extends StatelessWidget {
  const TrendingAnimeSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return const MediaSliderScreen<TrendingAnimeBloc>(
      sectionHeader: 'Trending Anime',
    );
  }
}
