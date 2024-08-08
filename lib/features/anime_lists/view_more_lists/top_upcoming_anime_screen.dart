import 'package:flutter/material.dart';

import '../../../bloc/discover/anime/top_upcoming_anime/top_upcoming_anime_bloc.dart';
import '../../../core/ui/media_section/media_grid_screen.dart';
import '../../../graphql/__generated/graphql/schema.graphql.dart';

class TopUpcomingAnimeScreen extends StatelessWidget {
  const TopUpcomingAnimeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MediaGridScreen<TopUpcomingAnimeBloc>(
      mediaType: Enum$MediaType.ANIME,
      appbarTitle: 'Top Upcoming',
    );
  }
}
