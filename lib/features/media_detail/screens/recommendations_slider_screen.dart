import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:otaku_world/core/ui/media_section/media_slider_screen.dart';

import '../../../bloc/recommendations/recommendation_anime_bloc.dart';

class RecommendationsSliderScreen extends StatelessWidget {
  const RecommendationsSliderScreen({super.key, required this.bloc});

  final RecommendationAnimeBloc bloc;

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: bloc,
      child: const MediaSliderScreen<RecommendationAnimeBloc>(
          sectionHeader: 'Recommendations'),
    );
  }
}
