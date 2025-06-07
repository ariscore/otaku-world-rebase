import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:otaku_world/bloc/graphql_client/graphql_client_cubit.dart';
import 'package:otaku_world/bloc/paginated_data/paginated_data_bloc.dart';
import 'package:otaku_world/bloc/profile/media_posters/media_posters_bloc.dart';
import 'package:otaku_world/core/ui/image.dart';
import 'package:otaku_world/generated/assets.dart';
import 'package:otaku_world/graphql/__generated/graphql/schema.graphql.dart';
import 'package:otaku_world/graphql/__generated/graphql/user/media_posters.graphql.dart';
import 'package:otaku_world/graphql/__generated/graphql/user/user_stats.graphql.dart';
import 'package:otaku_world/utils/formatting_utils.dart';
import 'package:otaku_world/utils/navigation_helper.dart';

import '../../../../../theme/colors.dart';

class StaffCard extends StatefulWidget {
  const StaffCard({
    super.key,
    required this.staff,
    required this.index,
    required this.type,
  });

  final Fragment$UserStatistics$staff? staff;
  final int index;
  final Enum$MediaType type;

  @override
  State<StaffCard> createState() => _StaffCardState();
}

class _StaffCardState extends State<StaffCard>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    if (widget.staff == null) return const SizedBox();
    final client = context.read<GraphqlClientCubit>().getClient()!;

    return BlocProvider(
      create: (context) =>
          MediaPostersBloc(idIn: widget.staff!.mediaIds)..add(LoadData(client)),
      key: UniqueKey(),
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
                  widget.staff?.staff?.name?.userPreferred ?? '',
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
                    imageUrl: widget.staff!.staff?.image?.large ?? '',
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
                      count: widget.staff!.count,
                      label: 'Count',
                    ),
                    const SizedBox(height: 10),
                    _buildStat(
                      context,
                      count: widget.type == Enum$MediaType.ANIME
                          ? FormattingUtils.formatMinutes(
                              widget.staff!.minutesWatched,
                            )
                          : widget.staff!.chaptersRead,
                      label: widget.type == Enum$MediaType.ANIME
                          ? 'Time Watched'
                          : 'Chapter Read',
                    ),
                    const SizedBox(height: 10),
                    _buildStat(
                      context,
                      count: '${formatDouble(widget.staff!.meanScore)}%',
                      label: 'Mean Score',
                    ),
                  ],
                ),
              ],
            ),
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
            borderRadius: BorderRadius.circular(
              widget.type == Enum$MediaType.ANIME ? 12 : 5,
            ),
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
                color: AppColors.white.withValues(alpha:0.7),
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
