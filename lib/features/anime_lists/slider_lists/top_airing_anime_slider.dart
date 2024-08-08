import 'package:flutter/material.dart';

import '../../../bloc/discover/anime/top_airing_anime/top_airing_anime_bloc.dart';
import '../../../core/ui/media_section/media_slider_screen.dart';

class TopAiringAnimeSlider extends StatelessWidget {
  const TopAiringAnimeSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return const MediaSliderScreen<TopAiringAnimeBloc>(
      sectionHeader: 'Top Airing',
    );
  }
}
