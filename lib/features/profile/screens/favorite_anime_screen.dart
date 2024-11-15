import 'package:flutter/material.dart';
import 'package:otaku_world/bloc/profile/favorite_anime/favorite_anime_bloc.dart';
import 'package:otaku_world/core/ui/media_section/media_grid_screen.dart';
import 'package:otaku_world/graphql/__generated/graphql/schema.graphql.dart';

class FavoriteAnimeScreen extends StatelessWidget {
  const FavoriteAnimeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MediaGridScreen<FavoriteAnimeBloc>(
      mediaType: Enum$MediaType.ANIME,
      appbarTitle: 'Favorite Anime',
      tag: 'favorite_anime',
    );
  }
}
