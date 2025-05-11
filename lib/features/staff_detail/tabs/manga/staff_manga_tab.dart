import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:otaku_world/bloc/staff_detail/media/staff_media_bloc.dart';
import 'package:otaku_world/features/media_detail/tabs/characters/widgets/character_parameters.dart';
import 'package:otaku_world/graphql/__generated/graphql/staff_detail/staff_media.graphql.dart';
import 'package:otaku_world/utils/navigation_helper.dart';

import '../../../../bloc/graphql_client/graphql_client_cubit.dart';
import '../../../../bloc/paginated_data/paginated_data_bloc.dart';
import '../../../../core/ui/widgets/media_filter_widget.dart';
import '../../../media_detail/widgets/simple_loading.dart';
import '../../widgets/staff_media_card.dart';

class StaffMangaTab extends StatelessWidget {
  const StaffMangaTab({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<StaffMediaBloc>();

    return NotificationListener<ScrollNotification>(
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
          BlocBuilder<StaffMediaBloc, PaginatedDataState>(
            builder: (context, state) {
              if (state is PaginatedDataInitial ||
                  state is PaginatedDataLoading) {
                return const SliverToBoxAdapter(
                  child: Center(child: SimpleLoading()),
                );
              } else if (state is PaginatedDataError) {
                return SliverToBoxAdapter(
                  child: Center(child: Text('Error: ${state.message}')),
                );
              } else if (state is PaginatedDataLoaded) {
                final staffMediaEdges = state.list
                    as List<Query$staffMedia$Staff$staffMedia$edges?>;

                if (staffMediaEdges.isEmpty) {
                  return const SliverToBoxAdapter(
                    child: Center(child: Text('No manga found')),
                  );
                }

                // Display the media items
                return SliverPadding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
                  sliver: SliverList.separated(
                    itemCount: staffMediaEdges.length,
                    separatorBuilder: (context, index) =>
                        const SizedBox(height: 10),
                    itemBuilder: (context, index) {
                      final media = staffMediaEdges[index]?.node;
                      return StaffMediaCard(
                        staffParams: CharacterParameters(
                          imageUrl: media?.coverImage?.large ?? '',
                          characterName: media?.title?.userPreferred ?? '',
                          characterRole:
                              staffMediaEdges[index]?.staffRole ?? '',
                          characterId: media?.id ?? 0,
                          onTap: () => NavigationHelper.goToMediaDetailScreen(
                            context: context,
                            mediaId: media?.id ?? 0,
                          ),
                        ),
                      );
                    },
                  ),
                );
              } else {
                return const SliverFillRemaining(
                  child: Center(child: Text('No data available')),
                );
              }
            },
          ),

          // Loading indicator at the bottom when paginating
          BlocBuilder<StaffMediaBloc, PaginatedDataState>(
            builder: (context, state) {
              if (state is PaginatedDataLoaded && state.hasNextPage) {
                return const SliverToBoxAdapter(
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 16.0),
                    child: Center(child: CircularProgressIndicator()),
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
