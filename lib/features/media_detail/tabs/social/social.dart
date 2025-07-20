import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:otaku_world/bloc/media_detail/social/social_bloc.dart';
import 'package:otaku_world/core/model/custom_error.dart';
import 'package:otaku_world/features/media_detail/tabs/social/widgets/social_card.dart';

import '../../../../bloc/graphql_client/graphql_client_cubit.dart';
import '../../../../bloc/paginated_data/paginated_data_bloc.dart';
import '../../../../core/ui/placeholders/anime_character_placeholder.dart';
import '../../../../core/ui/shimmers/activity_shimmer_card.dart';
import '../../../../generated/assets.dart';
import '../../../../theme/colors.dart';
import '../../../social/widgets/activity_shimmer_list.dart';

class Social extends StatelessWidget {
  const Social({super.key});

  @override
  Widget build(BuildContext context) {
    final client =
        (context.read<GraphqlClientCubit>().state as GraphqlClientInitialized)
            .client;

    final socialBloc = context.read<SocialBloc>();
    return Column(
      children: [
        const SwitchWidget(),
        Expanded(
          child: BlocBuilder<SocialBloc, PaginatedDataState>(
            builder: (context, state) {
              if (state is PaginatedDataInitial) {
                context.read<SocialBloc>().add(LoadData(client));
                return const ActivityShimmerList();
              } else if (state is PaginatedDataLoading) {
                return const ActivityShimmerList();
              } else if (state is PaginatedDataLoaded) {
                final activities = state.list;
                if (activities.isEmpty) {
                  return AnimeCharacterPlaceholder(
                    asset: Assets.charactersChillBoy,
                    heading: 'No Activity Yet',
                    subheading: socialBloc.isFollowing
                        ? 'No activity from friends yet — maybe recommend it to them?'
                        : 'Nobody has interacted with this yet.',
                    isScrollable: true,
                  );
                }
                return NotificationListener<ScrollNotification>(
                  onNotification: (scrollInfo) {
                    if (scrollInfo.metrics.pixels ==
                        scrollInfo.metrics.maxScrollExtent) {
                      final hasNextPage = (context.read<SocialBloc>().state
                              as PaginatedDataLoaded)
                          .hasNextPage;
                      if (hasNextPage) {
                        context.read<SocialBloc>().add(LoadData(client));
                      }
                    }
                    return false;
                  },
                  child: CustomScrollView(
                    slivers: [
                      SliverPadding(
                        padding: const EdgeInsets.all(10),
                        sliver: SliverList.separated(
                          itemCount: activities.length,
                          separatorBuilder: (context, index) =>
                              const SizedBox(height: 10),
                          itemBuilder: (context, index) {
                            return SocialCard(
                              activity: activities[index]!,
                            );
                          },
                        ),
                      ),
                      if (state.hasNextPage)
                        const SliverToBoxAdapter(
                          child: ActivityShimmerCard(),
                        ),
                    ],
                  ),
                );
              } else if (state is PaginatedDataError) {
                return AnimeCharacterPlaceholder(
                  asset: Assets.charactersChillBoy,
                  height: 300,
                  error: state.error,
                  onTryAgain: () {
                    context.read<SocialBloc>().add(
                          LoadData(
                            (context.read<GraphqlClientCubit>().state
                                    as GraphqlClientInitialized)
                                .client,
                          ),
                        );
                  },
                  isError: true,
                  isScrollable: true,
                );
              }
              return AnimeCharacterPlaceholder(
                asset: Assets.charactersNoInternet,
                height: 300,
                error: CustomError.unexpectedError(),
                onTryAgain: () {
                  context.read<SocialBloc>().add(
                        LoadData(
                          (context.read<GraphqlClientCubit>().state
                                  as GraphqlClientInitialized)
                              .client,
                        ),
                      );
                },
                isError: true,
                isScrollable: true,
              );
            },
          ),
        ),
      ],
    );
  }
}

class SwitchWidget extends StatelessWidget {
  const SwitchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final socialBloc = context.read<SocialBloc>();
    final client =
        (context.read<GraphqlClientCubit>().state as GraphqlClientInitialized)
            .client;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: BlocBuilder<SocialBloc, PaginatedDataState>(
        builder: (context, state) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Show Friend's List",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                ),
              ),
              Switch(
                activeColor: AppColors.sunsetOrange,
                value: socialBloc.isFollowing,
                onChanged: (value) {
                  socialBloc.toggleIsFollowing(value, client);
                },
              ),
            ],
          );
        },
      ),
    );
  }
}
