import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:otaku_world/bloc/graphql_client/graphql_client_cubit.dart';
import 'package:otaku_world/bloc/social/activities/activities_bloc.dart';
import 'package:otaku_world/constants/filter_constants.dart';
import 'package:otaku_world/constants/string_constants.dart';
import 'package:otaku_world/core/ui/activities/list_activity_card.dart';
import 'package:otaku_world/core/ui/activities/text_activity_card.dart';
import 'package:otaku_world/core/ui/discover_header.dart';
import 'package:otaku_world/core/ui/filters/custom_dropdown.dart';
import 'package:otaku_world/core/ui/media_section/scroll_to_top_button.dart';
import 'package:otaku_world/core/ui/tabs/custom_tab_bar.dart';
import 'package:otaku_world/features/social/widgets/activities_list.dart';
import 'package:otaku_world/graphql/__generated/graphql/social/activities.graphql.dart';
import 'package:otaku_world/theme/colors.dart';

import '../../../bloc/bottom_nav_bar/bottom_nav_bar_cubit.dart';

class SocialScreen extends HookWidget {
  const SocialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    log('Building social screen', name: 'Social');
    final size = MediaQuery.of(context).size;
    final tabController = useTabController(initialLength: 2);
    final scrollController = useScrollController();
    final bottomBarBloc = context.read<BottomNavBarCubit>();
    final client =
        (context.read<GraphqlClientCubit>().state as GraphqlClientInitialized)
            .client;
    final activitiesBloc = context.read<ActivitiesBloc>();

    useEffect(() {
      scrollController.addListener(() {
        if (scrollController.position.pixels <=
                scrollController.position.minScrollExtent &&
            bottomBarBloc.state is BottomNavBarNotVisible) {
          bottomBarBloc.showBottomBar();
        }
        final direction = scrollController.position.userScrollDirection;
        if (direction == ScrollDirection.forward) {
          if (bottomBarBloc.state is BottomNavBarNotVisible) {
            bottomBarBloc.showBottomBar();
          }
        } else if (direction == ScrollDirection.reverse) {
          if (bottomBarBloc.state is BottomNavBarVisible) {
            bottomBarBloc.hideBottomBar();
          }
        }

        // if (scrollController.position.pixels >=
        //     scrollController.position.maxScrollExtent - 100) {
        //   activitiesBloc.add(
        //     LoadMoreActivities(
        //       client: client,
        //       isFollowing: tabController.index == 0,
        //     ),
        //   );
        // }
      });
      return null;
    }, const []);

    return RefreshIndicator(
      backgroundColor: AppColors.raisinBlack,
      onRefresh: () => _refresh(context),
      child: Scaffold(
        floatingActionButton: ScrollToTopFAB(controller: scrollController),
        body: NestedScrollView(
          controller: scrollController,
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverOverlapAbsorber(
                handle:
                    NestedScrollView.sliverOverlapAbsorberHandleFor(context),
                sliver: const SliverAppBar(
                  collapsedHeight: 90,
                  expandedHeight: 90,
                  backgroundColor: AppColors.raisinBlack,
                  flexibleSpace: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: DiscoverHeader(
                      title: StringConstants.socialHeading,
                      subtitle: StringConstants.socialSubheading,
                    ),
                  ),
                ),
              ),
              SliverPersistentHeader(
                pinned: true,
                delegate: _StickyHeaderDelegate(
                  child: Column(
                    children: [
                      CustomTabBar(
                        tabs: const [
                          'Following',
                          'Global',
                        ],
                        controller: tabController,
                        tabWidth: size.width / 2 - 45,
                      ),
                      const SizedBox(height: 5),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Activity',
                              style: Theme.of(context)
                                  .textTheme
                                  .displayMedium
                                  ?.copyWith(
                                    fontFamily: 'Roboto-Condensed',
                                  ),
                            ),
                            const SizedBox(width: 100),
                            Expanded(
                              child: CustomDropdown(
                                dropdownItems:
                                    FilterConstants.activitiesOptions,
                                initialValue:
                                    FilterConstants.activitiesOptions[0],
                                borderRadius: 20,
                                onChange: (option) {
                                  activitiesBloc.add(
                                    SelectActivityType(
                                      client: client,
                                      type: option,
                                    ),
                                  );
                                  scrollController.jumpTo(0);
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ];
          },
          body: TabBarView(
            controller: tabController,
            children: const [
              ActivitiesList(
                pageKey: PageStorageKey<String>('following'),
                isFollowing: true,
              ),
              ActivitiesList(
                pageKey: PageStorageKey<String>('global'),
                isFollowing: false,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _refresh(BuildContext context) async {}
}

class _StickyHeaderDelegate extends SliverPersistentHeaderDelegate {
  final Widget child;

  _StickyHeaderDelegate({required this.child});

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return Container(
      color: Theme.of(context).scaffoldBackgroundColor,
      child: child,
    );
  }

  @override
  double get maxExtent => 115.0;

  @override
  double get minExtent => 115.0;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
