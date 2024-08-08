import 'package:flutter/material.dart';
import 'package:otaku_world/core/ui/media_section/media_grid_screen.dart';

import '../../../bloc/discover/anime/top_airing_anime/top_airing_anime_bloc.dart';
import '../../../graphql/__generated/graphql/schema.graphql.dart';

class TopAiringAnimeScreen extends StatelessWidget {
  const TopAiringAnimeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MediaGridScreen<TopAiringAnimeBloc>(
      mediaType: Enum$MediaType.ANIME,
      appbarTitle: 'Top Airing',
    );
  }
}
