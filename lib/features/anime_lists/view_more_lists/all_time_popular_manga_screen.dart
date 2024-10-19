import 'package:flutter/material.dart';
import 'package:otaku_world/graphql/__generated/graphql/schema.graphql.dart';

import '../../../bloc/discover/manga/all_time_popular_manga/all_time_popular_manga_bloc.dart';
import '../../../core/ui/media_section/media_grid_screen.dart';

class AllTimePopularMangaScreen extends StatelessWidget {
  const AllTimePopularMangaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MediaGridScreen<AllTimePopularMangaBloc>(
      mediaType: Enum$MediaType.MANGA,
      appbarTitle: 'All Time Popular',
      tag: 'all_time_popular_manga',
    );
  }
}
