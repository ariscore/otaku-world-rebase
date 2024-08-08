import 'package:flutter/material.dart';
import 'package:otaku_world/core/ui/media_section/media_slider_screen.dart';
import '../../../bloc/trending_manga/trending_manga_bloc.dart';

class TrendingMangaSlider extends StatelessWidget {
  const TrendingMangaSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return const MediaSliderScreen<TrendingMangaBloc>(
      sectionHeader: 'Trending Manga',
    );
  }
}
