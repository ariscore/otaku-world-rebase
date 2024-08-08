import 'package:flutter/material.dart';
import 'package:otaku_world/graphql/__generated/graphql/schema.graphql.dart';
import '../../../bloc/recommended_manga/recommended_manga_bloc.dart';
import '../../../core/ui/media_section/media_grid_screen.dart';

class RecommendedMangaScreen extends StatelessWidget {
  const RecommendedMangaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MediaGridScreen<RecommendedMangaBloc>(
      appbarTitle: 'Recommended Manga',
      mediaType: Enum$MediaType.MANGA,
    );
  }
}
