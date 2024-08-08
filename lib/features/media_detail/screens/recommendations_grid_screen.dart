import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:otaku_world/core/ui/media_section/media_grid_screen.dart';
import 'package:otaku_world/graphql/__generated/graphql/schema.graphql.dart';

import '../../../bloc/recommendations/recommendation_anime_bloc.dart';

class RecommendationsGridScreen extends StatelessWidget {
  const RecommendationsGridScreen(
      {super.key, required this.mediaType, required this.bloc});

  final Enum$MediaType mediaType;
  final RecommendationAnimeBloc bloc;

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value:bloc,
      child: MediaGridScreen<RecommendationAnimeBloc>(
        mediaType: mediaType,
        appbarTitle: 'Recommendations',
      ),
    );
  }
}
