import 'package:flutter/material.dart';
import 'package:otaku_world/graphql/__generated/graphql/schema.graphql.dart';

import '../../../bloc/discover/manga/all_time_popular_manga/popular_manhwa_bloc.dart';
import '../../../core/ui/media_section/media_grid_screen.dart';

class PopularManhwaScreen extends StatelessWidget {
  const PopularManhwaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MediaGridScreen<PopularManhwaBloc>(
      mediaType: Enum$MediaType.MANGA,
      appbarTitle: 'Popular Manhwa',
      tag: 'popular_manhwa',
    );
  }
}
