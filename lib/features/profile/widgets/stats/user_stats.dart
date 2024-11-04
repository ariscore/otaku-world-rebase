import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:otaku_world/bloc/graphql_client/graphql_client_cubit.dart';
import 'package:otaku_world/bloc/profile/user_stats/user_stats_bloc.dart';
import 'package:otaku_world/constants/filter_constants.dart';
import 'package:otaku_world/core/ui/error_text.dart';
import 'package:otaku_world/core/ui/filters/custom_dropdown.dart';
import 'package:otaku_world/features/profile/widgets/stats/anime_stats_overview.dart';
import 'package:otaku_world/features/profile/widgets/stats/manga_stats_overview.dart';
import 'package:otaku_world/graphql/__generated/graphql/user/user_stats.graphql.dart';
import 'package:otaku_world/theme/colors.dart';

class UserStats extends StatefulWidget {
  const UserStats({super.key, required this.userId});

  final int userId;

  @override
  State<UserStats> createState() => _UserStatsState();
}

class _UserStatsState extends State<UserStats> {
  bool isAnime = true;
  StatsOption option = StatsOption.overview;

  @override
  Widget build(BuildContext context) {
    final client = context.read<GraphqlClientCubit>().getClient()!;

    // TODO: Provide bloc here
    return BlocBuilder<UserStatsBloc, UserStatsState>(
      builder: (context, state) {
        if (state is UserStatsInitial) {
          context.read<UserStatsBloc>().add(LoadUserStats(client));
        }
        if (state is UserStatsLoading || state is UserStatsInitial) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is UserStatsLoaded) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: CustomScrollView(
              slivers: [
                SliverPersistentHeader(
                  pinned: true,
                  delegate: _OptionDropdownDelegate(
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              isAnime ? 'Anime' : 'Manga',
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineMedium
                                  ?.copyWith(
                                fontFamily: 'Poppins',
                              ),
                            ),
                            Switch(
                              value: isAnime,
                              activeColor: AppColors.sunsetOrange,
                              onChanged: (value) {
                                setState(() {
                                  isAnime = value;
                                });
                              },
                            ),
                          ],
                        ),
                        CustomDropdown(
                          dropdownItems: StatsOption.values
                              .map((e) => e.displayName)
                              .toList(),
                          initialValue: StatsOption.overview.displayName,
                          onChange: (value) {
                            setState(() {
                              option = FilterConstants.statsOptionFromString(
                                value,
                              );
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                _buildStats(
                  animeStats: state.animeStats,
                  mangaStats: state.mangaStats,
                ),
              ],
            ),
          );
        } else if (state is UserStatsError) {
          return ErrorText(
            message: state.message,
            onTryAgain: () {},
          );
        } else {
          return const Text('Unknown State');
        }
      },
    );
  }

  Widget _buildStats({
    required Fragment$UserStatistics animeStats,
    required Fragment$UserStatistics mangaStats,
  }) {
    switch (option) {
      case StatsOption.overview:
        return isAnime
            ? AnimeStatsOverview(stats: animeStats)
            : MangaStatsOverview(stats: mangaStats);
      case StatsOption.genres:
        return const SizedBox();
      case StatsOption.tags:
        return const SizedBox();
      case StatsOption.voiceActors:
        return const SizedBox();
      case StatsOption.studios:
        return const SizedBox();
      case StatsOption.staff:
        return const SizedBox();
    }
  }
}

class _OptionDropdownDelegate extends SliverPersistentHeaderDelegate {
  const _OptionDropdownDelegate(this.child);

  final Widget child;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5),
      color: AppColors.raisinBlack,
      child: child,
    );
  }

  @override
  double get maxExtent => 110;

  @override
  double get minExtent => 110;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
