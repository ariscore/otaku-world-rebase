import 'package:flutter/material.dart';
import 'package:otaku_world/bloc/profile/favorite_manga/favorite_manga_bloc.dart';
import 'package:otaku_world/core/ui/media_section/media_slider_screen.dart';

class FavoriteMangaSlider extends StatelessWidget {
  const FavoriteMangaSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return const MediaSliderScreen<FavoriteMangaBloc>(
      sectionHeader: 'Favorite Manga',
    );
  }
}
