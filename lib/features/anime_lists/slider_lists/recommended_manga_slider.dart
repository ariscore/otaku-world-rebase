import 'package:flutter/material.dart';
import 'package:otaku_world/bloc/recommended_manga/recommended_manga_bloc.dart';
import 'package:otaku_world/core/ui/media_section/media_slider_screen.dart';

class RecommendedMangaSlider extends StatelessWidget {
  const RecommendedMangaSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return const  MediaSliderScreen<RecommendedMangaBloc>(sectionHeader: 'Recommended Manga');
  }
}
