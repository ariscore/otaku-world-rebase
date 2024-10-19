import 'package:flutter/material.dart';
import 'package:otaku_world/graphql/__generated/graphql/schema.graphql.dart';
import '../../../bloc/trending_anime/trending_anime_bloc.dart';
import '../../../core/ui/media_section/media_grid_screen.dart';

class TrendingAnimeScreen extends StatelessWidget {
  const TrendingAnimeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MediaGridScreen<TrendingAnimeBloc>(
      appbarTitle: 'Trending Anime',
      mediaType: Enum$MediaType.ANIME,
      tag: 'trending_anime',
    );
  }
}
