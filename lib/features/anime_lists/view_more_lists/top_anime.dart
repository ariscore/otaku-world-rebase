import 'package:flutter/material.dart';
import 'package:otaku_world/core/ui/media_section/media_grid_screen.dart';
import 'package:otaku_world/graphql/__generated/graphql/schema.graphql.dart';

import '../../../bloc/discover/anime/top_100_anime/top_100_anime_bloc.dart';

class TopAnimeScreen extends StatelessWidget {
  const TopAnimeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MediaGridScreen<Top100AnimeBloc>(
      mediaType: Enum$MediaType.ANIME,
      appbarTitle: 'Top 100 Anime',
      isTop100: true,
    );
  }
}
