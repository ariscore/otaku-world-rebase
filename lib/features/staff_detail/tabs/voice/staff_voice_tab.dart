import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:otaku_world/bloc/staff_detail/voice/staff_voice_bloc.dart';
import 'package:otaku_world/core/ui/shimmers/detail_screens/list/character_list_shimmer.dart';
import 'package:otaku_world/features/staff_detail/tabs/voice/widgets/staff_voice_card.dart';
import 'package:otaku_world/graphql/__generated/graphql/staff_detail/staff_voice.graphql.dart';

import '../../../../bloc/graphql_client/graphql_client_cubit.dart';
import '../../../../bloc/paginated_data/paginated_data_bloc.dart';
import '../../../../core/ui/placeholders/anime_character_placeholder.dart';
import '../../../../core/ui/widgets/media_filter_widget.dart';
import '../../../../generated/assets.dart';

class StaffVoiceTab extends StatelessWidget {
  const StaffVoiceTab({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<StaffVoiceBloc>();

    return NotificationListener<ScrollNotification>(
      // Move notification listener to the root
      onNotification: (scrollInfo) {
        if (scrollInfo.metrics.pixels == scrollInfo.metrics.maxScrollExtent) {
          if (bloc.state is PaginatedDataLoaded) {
            final hasNextPage = (bloc.state as PaginatedDataLoaded).hasNextPage;
            if (hasNextPage) {
              final client = (context.read<GraphqlClientCubit>().state
                      as GraphqlClientInitialized)
                  .client;
              bloc.add(LoadData(client));
            }
          }
        }
        return false;
      },
      child: CustomScrollView(
        slivers: [
          // Filter Widget
          SliverPadding(
            padding: const EdgeInsets.all(10),
            sliver: SliverToBoxAdapter(
              child: MediaFilterWidget(
                mediaSortNotifier: bloc.mediaSortNotifier,
                isOnMyListNotifier: bloc.isOnMyList,
                onApplyFilters: () {
                  final client = (context.read<GraphqlClientCubit>().state
                          as GraphqlClientInitialized)
                      .client;
                  bloc.applyFilter(client: client);
                },
                bloc: bloc,
              ),
            ),
          ),

          // Content Area
          BlocBuilder<StaffVoiceBloc, PaginatedDataState>(
            builder: (context, state) {
              if (state is PaginatedDataInitial ||
                  state is PaginatedDataLoading) {
                return const SliverFillRemaining(
                  child: CharacterListShimmer(),
                );
              } else if (state is PaginatedDataLoaded) {
                final staffVoiceEdges = state.list
                    as List<Query$staffVoice$Staff$characterMedia$edges?>;

                if (staffVoiceEdges.isEmpty) {
                  return const SliverFillRemaining(
                    child: AnimeCharacterPlaceholder(
                      asset: Assets.charactersErenYeager,
                      heading: 'No Voice Actors Available',
                      subheading:
                          'Looks like there aren’t any voice actors to display right now.',
                      isScrollable: true,
                    ),
                  );
                }

                // Display the voice acting roles
                return SliverPadding(
                  padding: const EdgeInsets.all(10),
                  sliver: SliverList.separated(
                    itemCount: staffVoiceEdges.length,
                    separatorBuilder: (context, index) =>
                        const SizedBox(height: 10),
                    itemBuilder: (context, index) {
                      return StaffVoiceCard(
                        staffEdge: staffVoiceEdges[index],
                      );
                    },
                  ),
                );
              } else {
                return SliverFillRemaining(
                  child: AnimeCharacterPlaceholder(
                    asset: Assets.charactersNoInternet,
                    heading: 'Something went wrong!',
                    subheading:
                        'Please check your internet connection or try again later.',
                    onTryAgain: () {
                      context.read<StaffVoiceBloc>().add(
                            LoadData(
                              (context.read<GraphqlClientCubit>().state
                                      as GraphqlClientInitialized)
                                  .client,
                            ),
                          );
                    },
                    isError: true,
                    isScrollable: true,
                  ),
                );
              }
            },
          ),

          // Loading indicator at the bottom when paginating
          BlocBuilder<StaffVoiceBloc, PaginatedDataState>(
            builder: (context, state) {
              if (state is PaginatedDataLoaded && state.hasNextPage) {
                return const SliverPadding(
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
                  sliver: SliverToBoxAdapter(
                    child: CharacterCardShimmer(),
                  ),
                );
              }
              return const SliverToBoxAdapter(child: SizedBox.shrink());
            },
          ),
        ],
      ),
    );
  }
}
