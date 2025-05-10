import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:otaku_world/bloc/staff_detail/voice/staff_voice_bloc.dart';
import 'package:otaku_world/features/staff_detail/tabs/voice/widgets/staff_voice_card.dart';
import 'package:otaku_world/graphql/__generated/graphql/staff_detail/staff_voice.graphql.dart';

import '../../../../bloc/graphql_client/graphql_client_cubit.dart';
import '../../../../bloc/paginated_data/paginated_data_bloc.dart';
import '../../../../core/ui/widgets/media_filter_widget.dart';
import '../../../../graphql/__generated/graphql/schema.graphql.dart';
import '../../../media_detail/widgets/simple_loading.dart';

class StaffVoiceTab extends StatefulWidget {
  const StaffVoiceTab({super.key});

  @override
  State<StaffVoiceTab> createState() => _StaffVoiceTabState();
}

class _StaffVoiceTabState extends State<StaffVoiceTab> {
  @override
  Widget build(BuildContext context) {
      final bloc = context.read<StaffVoiceBloc>();
    return BlocBuilder<StaffVoiceBloc, PaginatedDataState>(
      builder: (context, state) {
        if (state is PaginatedDataInitial || state is PaginatedDataLoading) {
          return const SimpleLoading();
        } else if (state is PaginatedDataError) {
          return Center(child: Text('Error: ${state.message}'));
        } else if (state is PaginatedDataLoaded) {
          List<Query$staffVoice$Staff$characterMedia$edges?> staff =
              state.list as List<Query$staffVoice$Staff$characterMedia$edges?>;
          return NotificationListener<ScrollNotification>(
            onNotification: (scrollInfo) {
              if (scrollInfo.metrics.pixels ==
                  scrollInfo.metrics.maxScrollExtent) {
                final staffVoiceBloc = context.read<StaffVoiceBloc>();
                final hasNextPage =
                    (staffVoiceBloc.state as PaginatedDataLoaded).hasNextPage;
                if (hasNextPage) {
                  final client = (context.read<GraphqlClientCubit>().state
                          as GraphqlClientInitialized)
                      .client;
                  staffVoiceBloc.add(LoadData(client));
                }
              }
              return false;
            },
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.all(10),
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
                SliverPadding(
                  padding: const EdgeInsets.all(10),
                  sliver: SliverList.separated(
                    itemCount: staff.length,
                    separatorBuilder: (context, index) =>
                        const SizedBox(height: 10),
                    itemBuilder: (context, index) {
                      return StaffVoiceCard(
                        staffEdge: staff[index],
                      );
                    },
                  ),
                ),
                if (state.hasNextPage)
                  const SliverToBoxAdapter(
                    child: SimpleLoading(),
                  ),
              ],
            ),
          );
        } else {
          return const Center(child: Text('No data available'));
        }
      },
    );
  }
}
