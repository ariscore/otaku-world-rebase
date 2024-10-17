import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:otaku_world/bloc/graphql_client/graphql_client_cubit.dart';
import 'package:otaku_world/bloc/paginated_data/paginated_data_bloc.dart';
import 'package:otaku_world/bloc/social/activity_replies/activity_replies_bloc.dart';
import 'package:otaku_world/core/ui/activities/activity_reply_card.dart';
import 'package:otaku_world/core/ui/placeholders/anime_character_placeholder.dart';
import 'package:otaku_world/core/ui/shimmers/activity_shimmer_card.dart';
import 'package:otaku_world/generated/assets.dart';
import 'package:otaku_world/theme/colors.dart';

import '../../../core/ui/appbars/simple_app_bar.dart';
import '../../../core/ui/appbars/simple_sliver_app_bar.dart';
import '../../../core/ui/error_text.dart';
import '../../reviews/widgets/scroll_to_top_fab.dart';

class ActivityRepliesScreen extends HookWidget {
  const ActivityRepliesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final client =
        (context.read<GraphqlClientCubit>().state as GraphqlClientInitialized)
            .client;
    final activityRepliesBloc = context.read<ActivityRepliesBloc>();

    final repliesScrollController = useScrollController();

    useEffect(() {
      repliesScrollController.addListener(() {
        final maxScroll = repliesScrollController.position.maxScrollExtent;
        final currentScroll = repliesScrollController.position.pixels;

        if (currentScroll == maxScroll) {
          log('Max scrolled', name: 'Reviews Screen');

          final hasNextPage =
              (activityRepliesBloc.state as PaginatedDataLoaded).hasNextPage;
          if (hasNextPage) {
            final client = (context.read<GraphqlClientCubit>().state
                    as GraphqlClientInitialized)
                .client;
            activityRepliesBloc.add(LoadData(client));
          }
        }
      });
      return null;
    });

    return BlocConsumer<ActivityRepliesBloc, PaginatedDataState>(
      listenWhen: (previous, current) =>
      current is PaginatedDataLoaded &&
          previous is PaginatedDataLoaded &&
          previous.showProgress != current.showProgress,
      listener: (context, state) {
        if (state is PaginatedDataLoaded && state.showProgress) {
          showDialog(
            context: context,
            barrierDismissible: false,
            useRootNavigator: true,
            builder: (context) {
              return WillPopScope(
                onWillPop: () async => false,
                child: const Center(
                  child: CircularProgressIndicator(),
                ),
              );
            },
          );
        } else {
          context.pop();
        }
      },
      builder: (context, state) {
        if (state is PaginatedDataInitial) {
          activityRepliesBloc.add(LoadData(client));
          return _buildLoadingScaffold();
        } else if (state is PaginatedDataLoading) {
          return _buildLoadingScaffold();
        } else if (state is PaginatedDataLoaded) {
          return Scaffold(
            floatingActionButton: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ScrollToTopFAB(
                  controller: repliesScrollController,
                  tag: 'replies_fab',
                ),
                const SizedBox(height: 10),
                FloatingActionButton(
                  backgroundColor: AppColors.sunsetOrange,
                  onPressed: () {},
                  child: SvgPicture.asset(Assets.iconsEdit, width: 25),
                ),
              ],
            ),
            body: RefreshIndicator(
              backgroundColor: AppColors.raisinBlack,
              onRefresh: () => _refreshData(client, activityRepliesBloc),
              child: CustomScrollView(
                clipBehavior: Clip.none,
                controller: repliesScrollController,
                slivers: [
                  const SimpleSliverAppBar(
                    title: 'Replies',
                    floating: true,
                    isPinned: false,
                  ),
                  (state.list.isEmpty)
                      ? const SliverFillRemaining(
                          hasScrollBody: false,
                          child: Padding(
                            padding: EdgeInsets.only(bottom: 100),
                            child: Center(
                              child: AnimeCharacterPlaceholder(
                                asset: Assets.charactersCigaretteGirl,
                                heading: 'Nothing to Show',
                                subheading:
                                    "Looks like there are no replies yet, Try adding one!",
                              ),
                            ),
                          ),
                        )
                      : SliverList(
                          delegate: SliverChildBuilderDelegate(
                            (context, index) {
                              return ActivityReplyCard(
                                activityReply: state.list[index],
                              );
                            },
                            childCount: state.list.length,
                          ),
                        ),
                  if (state.hasNextPage)
                    const SliverToBoxAdapter(
                      child: Center(
                        child: Padding(
                          padding: EdgeInsets.all(5.0),
                          child: CircularProgressIndicator(),
                        ),
                      ),
                    ),
                ],
              ),
            ),
          );
        } else if (state is PaginatedDataError) {
          return _buildErrorScaffold(state.message, () {
            final client = (context.read<GraphqlClientCubit>().state
                    as GraphqlClientInitialized)
                .client;
            activityRepliesBloc.add(LoadData(client));
          });
        } else {
          return const Text('Unknown State');
        }
      },
    );
  }

  Future<void> _refreshData(
    GraphQLClient client,
    ActivityRepliesBloc bloc,
  ) async {
    await Future.delayed(const Duration(seconds: 2));
    bloc.add(RefreshData(client));
  }

  Widget _buildErrorScaffold(String message, VoidCallback onTryAgain) {
    return Scaffold(
      appBar: const SimpleAppBar(
        title: 'Reviews',
      ),
      body: Center(
        child: ErrorText(
          message: message,
          onTryAgain: onTryAgain,
        ),
      ),
    );
  }

  Widget _buildLoadingScaffold() {
    return Scaffold(
      appBar: const SimpleAppBar(title: 'Replies'),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return const ActivityShimmerCard();
        },
      ),
    );
  }
}
