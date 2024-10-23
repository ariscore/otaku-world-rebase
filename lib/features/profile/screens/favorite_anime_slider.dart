import 'package:flutter/material.dart';
import 'package:otaku_world/bloc/profile/favorite_anime/favorite_anime_bloc.dart';
import 'package:otaku_world/core/ui/media_section/media_slider_screen.dart';

class FavoriteAnimeSlider extends StatelessWidget {
  const FavoriteAnimeSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return const MediaSliderScreen<FavoriteAnimeBloc>(
      sectionHeader: 'Favorite Anime',
    );
  }
}
