import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:otaku_world/core/ui/activities/message_activity_card.dart';
import 'package:otaku_world/core/ui/error_text.dart';
import 'package:otaku_world/features/social/widgets/activity_shimmer_list.dart';
import 'package:otaku_world/theme/colors.dart';

import '../../../bloc/graphql_client/graphql_client_cubit.dart';
import '../../../bloc/social/activities/activities_bloc.dart';
import '../../../core/ui/activities/list_activity_card.dart';
import '../../../core/ui/activities/text_activity_card.dart';
import '../../../graphql/__generated/graphql/social/activities.graphql.dart';

class ActivitiesList extends StatelessWidget {
  const ActivitiesList({
    super.key,
    required this.pageKey,
    required this.isFollowing,
  });

  final bool isFollowing;
  final PageStorageKey pageKey;

  @override
  Widget build(BuildContext context) {
    final client =
        (context.read<GraphqlClientCubit>().state as GraphqlClientInitialized)
            .client;
    final activitiesBloc = context.read<ActivitiesBloc>();

    return BlocBuilder<ActivitiesBloc, ActivitiesState>(
      builder: (context, state) {
        if (state is ActivitiesInitial) {
          activitiesBloc.add(LoadActivities(client));
          return const ActivityShimmerList();
        } else if (state is ActivitiesLoading) {
          return const ActivityShimmerList();
        } else if (state is ActivitiesLoaded) {
          final activities =
              isFollowing ? state.followingActivities : state.globalActivities;
          return RefreshIndicator(
            backgroundColor: AppColors.raisinBlack,
            onRefresh: () => _refresh(client, activitiesBloc),
            child: CustomScrollView(
              key: pageKey,
              slivers: [
                SliverOverlapInjector(
                  handle:
                      NestedScrollView.sliverOverlapAbsorberHandleFor(context),
                ),
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) {
                      if (index == activities.length - 1) {
                        log('Loading more activities');
                        activitiesBloc.add(
                          LoadMoreActivities(
                            client: client,
                            isFollowing: isFollowing,
                          ),
                        );
                      }

                      final activity = activities[index];
                      if (activity
                          is Query$GetActivities$Page$activities$$TextActivity) {
                        return TextActivityCard(activity: activity);
                      } else if (activity
                          is Query$GetActivities$Page$activities$$ListActivity) {
                        return ListActivityCard(activity: activity);
                      } else if (activity
                          is Query$GetActivities$Page$activities$$MessageActivity) {
                        return MessageActivityCard(activity: activity);
                      } else {
                        return const SizedBox();
                      }
                    },
                    childCount: activities.length,
                  ),
                ),
                if (isFollowing && state.hasNextPageFollowing) _buildLoader(),
                if (!isFollowing && state.hasNextPageGlobal) _buildLoader()
              ],
            ),
          );
        } else if (state is ActivitiesError) {
          return ErrorText(message: state.message, onTryAgain: () {});
        } else {
          return const Text('Unknown State');
        }
      },
    );
  }

  Future<void> _refresh(GraphQLClient client, ActivitiesBloc bloc) async {
    bloc.add(RefreshActivities(client));
  }

  Widget _buildLoader() {
    return const SliverToBoxAdapter(
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
