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

class TagCard extends StatefulWidget {
  const TagCard({
    super.key,
    required this.tag,
    required this.index,
    required this.type,
  });

  final Fragment$UserStatistics$tags? tag;
  final int index;
  final Enum$MediaType type;

  @override
  State<TagCard> createState() => _TagCardState();
}

class _TagCardState extends State<TagCard> with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    if (widget.tag == null) return const SizedBox();
    final client = context.read<GraphqlClientCubit>().getClient()!;

    return BlocProvider(
      key: UniqueKey(),
      create: (context) => MediaPostersBloc(idIn: widget.tag!.mediaIds)
        ..add(
          LoadData(client),
        ),
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
                  widget.tag!.tag?.name ?? 'Unknown',
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildStat(context, count: widget.tag!.count, label: 'Count'),
                _buildSeparator(),
                widget.type == Enum$MediaType.ANIME
                    ? _buildStat(
                        context,
                        count: FormattingUtils.formatMinutes(
                            widget.tag!.minutesWatched),
                        label: 'Time Watched',
                      )
                    : _buildStat(
                        context,
                        count: widget.tag!.chaptersRead,
                        label: 'Chapters Read',
                      ),
                _buildSeparator(),
                _buildStat(
                  context,
                  count: '${formatDouble(widget.tag!.meanScore)}%',
                  label: 'Mean Score',
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
                        return Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: GestureDetector(
                            onTap: () {
                              NavigationHelper.goToMediaDetailScreen(
                                context: context,
                                mediaId: poster.id,
                              );
                            },
                            child: AspectRatio(
                              aspectRatio: 70 / 100,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(
                                  widget.type == Enum$MediaType.ANIME ? 12 : 5,
                                ),
                                child: CImage(
                                  imageUrl: poster.coverImage?.medium ?? '',
                                  placeholder: (context, url) {
                                    return Container(
                                      padding: const EdgeInsets.all(10),
                                      color: AppColors.darkGray,
                                      child: SvgPicture.asset(
                                        Assets.assetsLogoBw,
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ),
                          ),
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

  Widget _buildStat(
    BuildContext context, {
    required dynamic count,
    required String label,
  }) {
    final width = (MediaQuery.of(context).size.width - 60) / 3;
    return SizedBox(
      width: width,
      child: Column(
        children: [
          Text(
            count is double ? formatDouble(count) : count.toString(),
            textAlign: TextAlign.center,
            // overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  fontFamily: 'Poppins',
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
      ),
    );
  }

  Widget _buildSeparator() {
    return Container(
      height: 45,
      width: 2,
      decoration: BoxDecoration(
        color: AppColors.white.withValues(alpha:0.5),
        borderRadius: BorderRadius.circular(10),
      ),
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
