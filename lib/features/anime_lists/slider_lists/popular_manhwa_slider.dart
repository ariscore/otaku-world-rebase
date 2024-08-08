import 'package:flutter/material.dart';

import '../../../bloc/discover/manga/all_time_popular_manga/popular_manhwa_bloc.dart';
import '../../../core/ui/media_section/media_slider_screen.dart';

class PopularManhwaSlider extends StatelessWidget {
  const PopularManhwaSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return const MediaSliderScreen<PopularManhwaBloc>(
      sectionHeader: 'Popular Manhwa',
    );
  }
}
