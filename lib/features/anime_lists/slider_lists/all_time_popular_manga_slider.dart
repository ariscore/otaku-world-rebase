import 'package:flutter/material.dart';

import '../../../bloc/discover/manga/all_time_popular_manga/all_time_popular_manga_bloc.dart';
import '../../../core/ui/media_section/media_slider_screen.dart';

class AllTimePopularMangaSlider extends StatelessWidget {
  const AllTimePopularMangaSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return const MediaSliderScreen<AllTimePopularMangaBloc>(
      sectionHeader: 'All Time Popular',
    );
  }
}
