import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:otaku_world/bloc/graphql_client/graphql_client_cubit.dart';
import 'package:otaku_world/bloc/paginated_data/paginated_data_bloc.dart';
import 'package:otaku_world/bloc/profile/character_images/character_images_bloc.dart';
import 'package:otaku_world/bloc/profile/media_posters/media_posters_bloc.dart';
import 'package:otaku_world/core/ui/image.dart';
import 'package:otaku_world/generated/assets.dart';
import 'package:otaku_world/graphql/__generated/graphql/user/character_images.graphql.dart';
import 'package:otaku_world/graphql/__generated/graphql/user/media_posters.graphql.dart';
import 'package:otaku_world/graphql/__generated/graphql/user/user_stats.graphql.dart';
import 'package:otaku_world/utils/formatting_utils.dart';
import 'package:otaku_world/utils/navigation_helper.dart';

import '../../../../../theme/colors.dart';

class VoiceActorCard extends StatefulWidget {
  const VoiceActorCard({
    super.key,
    required this.voiceActor,
    required this.index,
    required this.option,
  });

  final Fragment$UserStatistics$voiceActors? voiceActor;
  final int index;
  final String option;

  @override
  State<VoiceActorCard> createState() => _VoiceActorCardState();
}

class _VoiceActorCardState extends State<VoiceActorCard>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    if (widget.voiceActor == null) return const SizedBox();
    final client = context.read<GraphqlClientCubit>().getClient()!;

    return MultiBlocProvider(
      key: UniqueKey(),
      providers: [
        BlocProvider(
          create: (context) =>
              MediaPostersBloc(idIn: widget.voiceActor!.mediaIds)
                ..add(LoadData(client)),
        ),
        BlocProvider(
          create: (context) => CharacterImagesBloc(
            idIn: widget.voiceActor!.characterIds,
          ),
        ),
      ],
      child: Container(
        margin: const EdgeInsets.symmetric(
          // horizontal: 10,
          vertical: 5,
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 20,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: AppColors.secondaryGradient,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.voiceActor?.voiceActor?.name?.userPreferred ?? '',
                  style: Theme.of(context).textTheme.displaySmall?.copyWith(
                        fontFamily: 'Poppins',
                      ),
                ),
                Text(
                  '#${widget.index}',
                  style: Theme.of(context).textTheme.displaySmall?.copyWith(
                        fontFamily: 'Poppins',
                      ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: CImage(
                    imageUrl: widget.voiceActor!.voiceActor?.image?.large ?? '',
                    width: 100,
                    placeholder: (context, url) => _buildPlaceholder(),
                    errorWidget: (context, url, error) => _buildPlaceholder(),
                  ),
                ),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildStat(
                      context,
                      count: widget.voiceActor!.count,
                      label: 'Count',
                    ),
                    const SizedBox(height: 10),
                    _buildStat(
                      context,
                      count: FormattingUtils.formatMinutes(
                        widget.voiceActor!.minutesWatched,
                      ),
                      label: 'Time Watched',
                    ),
                    const SizedBox(height: 10),
                    _buildStat(
                      context,
                      count: '${formatDouble(widget.voiceActor!.meanScore)}%',
                      label: 'Mean Score',
                    ),
                  ],
                ),
              ],
            ),
            (widget.option == 'Characters') ? BlocBuilder<CharacterImagesBloc, PaginatedDataState>(
              builder: (context, state) {
                if (state is PaginatedDataInitial) {
                  context.read<CharacterImagesBloc>().add(LoadData(client));
                }
                if (state is PaginatedDataLoaded) {
                  return Container(
                    height: 120,
                    margin: const EdgeInsets.only(top: 10),
                    child: ListView.builder(
                      clipBehavior: Clip.none,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        final poster =
                        state.list[index] as Fragment$CharacterImage;
                        return _buildImage(
                          url: poster.image?.medium,
                          onTap: () {

                          },
                        );
                      },
                      itemCount: state.list.length,
                    ),
                  );
                } else {
                  return const SizedBox(height: 130);
                }
              },
            ) :
            BlocBuilder<MediaPostersBloc, PaginatedDataState>(
              builder: (context, state) {
                if (state is PaginatedDataLoaded) {
                  return Container(
                    height: 120,
                    margin: const EdgeInsets.only(top: 10),
                    child: ListView.builder(
                      clipBehavior: Clip.none,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        final poster =
                            state.list[index] as Fragment$MediaPoster;
                        return _buildImage(
                          url: poster.coverImage?.medium,
                          onTap: () {
                            NavigationHelper.goToMediaDetailScreen(
                              context: context,
                              mediaId: poster.id,
                            );
                          },
                        );
                      },
                      itemCount: state.list.length,
                    ),
                  );
                } else {
                  return const SizedBox(height: 130);
                }
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildImage({required VoidCallback onTap, String? url}) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: GestureDetector(
        onTap: onTap,
        child: AspectRatio(
          aspectRatio: 70 / 100,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: CImage(
              imageUrl: url ?? '',
              placeholder: (context, url) {
                return _buildPlaceholder();
              },
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildPlaceholder() {
    return Container(
      padding: const EdgeInsets.all(10),
      color: AppColors.darkGray,
      child: SvgPicture.asset(
        Assets.assetsLogoBw,
      ),
    );
  }

  Widget _buildStat(
    BuildContext context, {
    required dynamic count,
    required String label,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width - 160,
          child: Text(
            count is double ? formatDouble(count) : count.toString(),
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  fontFamily: 'Poppins',
                ),
          ),
        ),
        const SizedBox(height: 5),
        Text(
          label,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                color: AppColors.white.withOpacity(0.7),
                fontFamily: 'Poppins',
              ),
        ),
      ],
    );
  }

  String formatDouble(double value) {
    if (value % 1 == 0) {
      return value.toInt().toString();
    } else {
      return value.toStringAsFixed(1);
    }
  }

  @override
  bool get wantKeepAlive => true;
}
