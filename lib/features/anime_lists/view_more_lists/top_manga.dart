import 'package:flutter/material.dart';

import '../../../bloc/discover/manga/top_100_manga/top_100_manga.dart';
import '../../../core/ui/media_section/media_grid_screen.dart';
import '../../../graphql/__generated/graphql/schema.graphql.dart';

class TopMangaScreen extends StatelessWidget {
  const TopMangaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MediaGridScreen<Top100MangaBloc>(
      mediaType: Enum$MediaType.MANGA,
      appbarTitle: 'Top 100 Manga',
      isTop100: true,
      tag: 'top_100_manga',
    );
  }
}
