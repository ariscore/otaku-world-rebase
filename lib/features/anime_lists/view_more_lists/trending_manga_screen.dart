import 'package:flutter/material.dart';
import 'package:otaku_world/graphql/__generated/graphql/schema.graphql.dart';
import '../../../bloc/trending_manga/trending_manga_bloc.dart';
import '../../../core/ui/media_section/media_grid_screen.dart';

class TrendingMangaScreen extends StatelessWidget {
  const TrendingMangaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MediaGridScreen<TrendingMangaBloc>(
      appbarTitle: 'Trending Manga',
      mediaType: Enum$MediaType.MANGA,
    );
  }
}
