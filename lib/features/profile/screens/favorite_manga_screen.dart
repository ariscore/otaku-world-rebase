import 'package:flutter/material.dart';
import 'package:otaku_world/bloc/profile/favorite_manga/favorite_manga_bloc.dart';
import 'package:otaku_world/core/ui/media_section/media_grid_screen.dart';
import 'package:otaku_world/graphql/__generated/graphql/schema.graphql.dart';

class FavoriteMangaScreen extends StatelessWidget {
  const FavoriteMangaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MediaGridScreen<FavoriteMangaBloc>(
      mediaType: Enum$MediaType.MANGA,
      appbarTitle: 'Favorite Manga',
      tag: 'favorite_manga',
    );
  }
}
