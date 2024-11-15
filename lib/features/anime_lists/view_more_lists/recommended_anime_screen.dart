import 'package:flutter/material.dart';
import 'package:otaku_world/graphql/__generated/graphql/schema.graphql.dart';

import '../../../bloc/recommended_anime/recommended_anime_bloc.dart';
import '../../../core/ui/media_section/media_grid_screen.dart';

class RecommendedAnimeScreen extends StatelessWidget {
  const RecommendedAnimeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MediaGridScreen<RecommendedAnimeBloc>(
      appbarTitle: 'Recommended Anime',
      mediaType: Enum$MediaType.ANIME,
      tag: 'recommended_anime',
    );
  }
}
