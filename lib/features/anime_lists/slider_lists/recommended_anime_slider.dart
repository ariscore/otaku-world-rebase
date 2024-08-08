import 'package:flutter/material.dart';
import 'package:otaku_world/core/ui/media_section/media_slider_screen.dart';

import '../../../bloc/recommended_anime/recommended_anime_bloc.dart';

class RecommendedAnimeSlider extends StatelessWidget {
  const RecommendedAnimeSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return const  MediaSliderScreen<RecommendedAnimeBloc>(sectionHeader: 'Recommended Anime');
  }
}
