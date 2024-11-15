import 'package:flutter/material.dart';

import '../../../bloc/discover/anime/all_time_popular_anime/all_time_popular_anime_bloc.dart';
import '../../../core/ui/media_section/media_grid_screen.dart';
import '../../../graphql/__generated/graphql/schema.graphql.dart';

class AllTimePopularAnimeScreen extends StatelessWidget {
  const AllTimePopularAnimeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MediaGridScreen<AllTimePopularAnimeBloc>(
      mediaType: Enum$MediaType.ANIME,
      appbarTitle: 'All Time Popular',
      tag: 'all_time_popular_anime',
    );
  }
}
