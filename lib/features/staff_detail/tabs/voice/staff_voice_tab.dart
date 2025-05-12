import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:otaku_world/bloc/staff_detail/voice/staff_voice_bloc.dart';
import 'package:otaku_world/features/staff_detail/tabs/voice/widgets/staff_voice_card.dart';
import 'package:otaku_world/graphql/__generated/graphql/staff_detail/staff_voice.graphql.dart';

import '../../../../bloc/graphql_client/graphql_client_cubit.dart';
import '../../../../bloc/paginated_data/paginated_data_bloc.dart';
import '../../../../core/ui/widgets/media_filter_widget.dart';
import '../../../media_detail/widgets/simple_loading.dart';

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
                  child: Center(child: SimpleLoading()),
                );
              } else if (state is PaginatedDataError) {
                return SliverFillRemaining(
                  child: Center(child: Text('Error: ${state.message}')),
                );
              } else if (state is PaginatedDataLoaded) {
                final staffVoiceEdges = state.list
                    as List<Query$staffVoice$Staff$characterMedia$edges?>;

                if (staffVoiceEdges.isEmpty) {
                  return const SliverFillRemaining(
                    child: Center(child: Text('No voice acting roles found')),
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
                return const SliverFillRemaining(
                  child: Center(child: Text('No data available')),
                );
              }
            },
          ),

          // Loading indicator at the bottom when paginating
          BlocBuilder<StaffVoiceBloc, PaginatedDataState>(
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
