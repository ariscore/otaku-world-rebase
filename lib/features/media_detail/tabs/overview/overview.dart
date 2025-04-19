import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:otaku_world/bloc/paginated_data/paginated_data_bloc.dart';
import 'package:otaku_world/features/media_detail/models/recommendations_parameters.dart';
import 'package:otaku_world/features/media_detail/tabs/overview/widgets/description.dart';
import 'package:otaku_world/features/media_detail/tabs/overview/widgets/relations.dart';
import 'package:otaku_world/features/media_detail/tabs/overview/widgets/tags.dart';
import 'package:otaku_world/graphql/__generated/graphql/schema.graphql.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../../../../bloc/graphql_client/graphql_client_cubit.dart';
import '../../../../bloc/media_detail/media_detail_bloc.dart';
import '../../../../bloc/recommendations/recommendation_anime_bloc.dart';
import '../../../../core/ui/media_section/media_section.dart';
import '../../../../theme/colors.dart';
import '../../../../utils/app_texts.dart';
import 'widgets/links_section.dart';
import 'widgets/overall_information.dart';

class Overview extends StatefulHookWidget {
  const Overview({super.key});

  @override
  State<Overview> createState() => _OverviewState();
}

class _OverviewState extends State<Overview> {

  late YoutubePlayerController youtubePlayerController;
  late String youtubeId;

  @override
  void dispose() {
    super.dispose();
    youtubePlayerController.dispose();
    youtubeId = "";
  }

  @override
  Widget build(BuildContext context) {
    final media =
        (context.read<MediaDetailBloc>().state as MediaDetailLoaded).media;
    youtubeId = media.trailer == null ? "" : media.trailer!.id.toString();

    final client =
        (context.read<GraphqlClientCubit>().state as GraphqlClientInitialized)
            .client;
    final recommendationBloc =
        context.read<MediaDetailBloc>().recommendationAnimeBloc;

    youtubePlayerController = YoutubePlayerController(
      initialVideoId: youtubeId,
      flags: const YoutubePlayerFlags(
        autoPlay: false,
        showLiveFullscreenButton: false,
      ),
    );
    return ListView(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
      ),
      children: [
        _buildGenres(
          context,
          media.genres,
        ),
        const Text(
          'Description',
          style: AppTextStyles.titleSectionStyle,
        ),
        const SizedBox(
          height: 5,
        ),
        Description(
          description: media.description == null
              ? "No description"
              : media.description.toString(),
        ),
        SizedBox(
          height: youtubeId == "" ? 0 : 20,
        ),
        youtubeId == ""
            ? const SizedBox()
            : const Text(
                "Trailer",
                style: AppTextStyles.titleSectionStyle,
              ),
        SizedBox(
          height: youtubeId == "" ? 0 : 5,
        ),
        // youtubeId == ""
        //     ? const SizedBox()
        //     : YoutubePlayer(
        //         aspectRatio: 16 / 9,
        //         bottomActions: [
        //           CurrentPosition(),
        //           ProgressBar(
        //             controller: youtubePlayerController,
        //             colors: const ProgressBarColors(
        //               handleColor: AppColors.sunsetOrange,
        //               playedColor: AppColors.sunsetOrange,
        //             ),
        //             isExpanded: true,
        //           ),
        //           RemainingDuration(),
        //         ],
        //         controller: youtubePlayerController,
        //       ),
        const SizedBox(
          height: 20,
        ),
        const Text(
          'Info',
          style: AppTextStyles.titleSectionStyle,
        ),
        const OverallInfo(),
        const SizedBox(
          height: 20,
        ),
        if (media.relations!.edges!.isNotEmpty) ...[
          const Text(
            "Relations",
            style: AppTextStyles.titleSectionStyle,
          ),
          const SizedBox(
            height: 150,
            child: Relations(),
          ),
          const SizedBox(
            height: 20,
          ),
        ],

        // Recommendations

        if (media.recommendations!.nodes!.isNotEmpty) ...[
          BlocProvider.value(
            value: recommendationBloc,
            child: MediaSection<RecommendationAnimeBloc>(
              label: "Recommendations",
              onSliderPressed: () {
                recommendationBloc.add(LoadData(client));
                context.push(
                  '/recommendations-slider',
                  extra: recommendationBloc,
                );
              },
              onMorePressed: () {
                recommendationBloc.add(LoadData(client));
                context.push(
                  '/recommendations-grid',
                  extra: RecommendationsParameters(
                    bloc: recommendationBloc,
                    mediaType: media.type ?? Enum$MediaType.$unknown,
                  ),
                );
              },
              heroTag: 'trending_anime',
              leftPadding: 0,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
        if (media.tags!.isNotEmpty)
          Tags(
            tags: media.tags!,
          ),
        if (media.externalLinks?.isNotEmpty == true) ...[
          const Text(
            "External & Streaming Links",
            style: AppTextStyles.titleSectionStyle,
          ),
          const SizedBox(
            height: 5,
          ),
          Wrap(
            runSpacing: 5,
            spacing: 5,
            children: [
              for (var link in media.externalLinks!)
                LinkSection(externalLinks: link!),
            ],
          ),
          const SizedBox(height: 20)
        ],
      ],
    );
  }

  Widget _buildGenres(BuildContext context, List<String?>? genres) {
    if (genres == null) return const Text('No genre');

    List<InlineSpan> textSpans = [];

    for (int i = 0; i < genres.length; i++) {
      String genre = genres[i].toString();
      textSpans.add(
        TextSpan(
          text: genre,
          style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                color: AppColors.white,
                fontWeight: FontWeight.w500,
                fontFamily: 'Poppins',
              ),
        ),
      );

      if (i != genres.length - 1) {
        textSpans.add(
          TextSpan(
            text: ' · ',
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  color: AppColors.sunsetOrange,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Poppins',
                ),
          ),
        );
      }
    }
    return RichText(
      text: TextSpan(
        children: textSpans,
      ),
      maxLines: 2,
      overflow: TextOverflow.clip,
      textAlign: TextAlign.center,
    );
  }
}
