import 'package:flutter/material.dart';

import '../../../bloc/discover/anime/top_upcoming_anime/top_upcoming_anime_bloc.dart';
import '../../../core/ui/media_section/media_slider_screen.dart';

class TopUpcomingAnimeSlider extends StatelessWidget {
  const TopUpcomingAnimeSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return const MediaSliderScreen<TopUpcomingAnimeBloc>(
      sectionHeader: 'Top Upcoming',
    );
  }
}
