import 'package:flutter/material.dart';

import '../../../bloc/discover/anime/all_time_popular_anime/all_time_popular_anime_bloc.dart';
import '../../../core/ui/media_section/media_slider_screen.dart';

class AllTimePopularAnimeSlider extends StatelessWidget {
  const AllTimePopularAnimeSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return const MediaSliderScreen<AllTimePopularAnimeBloc>(
      sectionHeader: 'All Time Popular',
    );
  }
}
