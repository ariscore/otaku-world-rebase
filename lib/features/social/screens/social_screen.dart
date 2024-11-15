import 'dart:developer';

import 'package:extended_nested_scroll_view/extended_nested_scroll_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:otaku_world/bloc/graphql_client/graphql_client_cubit.dart';
import 'package:otaku_world/bloc/social/activities/activities_bloc.dart';
import 'package:otaku_world/config/router/router_constants.dart';
import 'package:otaku_world/constants/filter_constants.dart';
import 'package:otaku_world/constants/string_constants.dart';
import 'package:otaku_world/core/ui/buttons/primary_fab.dart';
import 'package:otaku_world/core/ui/discover_header.dart';
import 'package:otaku_world/core/ui/filters/custom_dropdown.dart';
import 'package:otaku_world/core/ui/tabs/custom_tab_bar.dart';
import 'package:otaku_world/features/social/widgets/activities_list.dart';
import 'package:otaku_world/graphql/__generated/graphql/fragments.graphql.dart';
import 'package:otaku_world/theme/colors.dart';

import '../../../bloc/bottom_nav_bar/bottom_nav_bar_cubit.dart';

class SocialScreen extends StatefulHookWidget {
  const SocialScreen({super.key});

  @override
  State<SocialScreen> createState() => _SocialScreenState();
}

class _SocialScreenState extends State<SocialScreen>
    with SingleTickerProviderStateMixin {
  final scrollViewKey = GlobalKey<ExtendedNestedScrollViewState>();
  late final BottomNavBarCubit bottomBarBloc;
  late final TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      final scrollController = scrollViewKey.currentState?.innerController;
      scrollController?.addListener(() {
        if (tabController.indexIsChanging) return;
        final position = tabController.index == 0
            ? scrollController.positions.first
            : scrollController.positions.last;

        if (position.pixels <= position.minScrollExtent &&
            bottomBarBloc.state is BottomNavBarNotVisible) {
          bottomBarBloc.showBottomBar();
        }
        final direction = position.userScrollDirection;
        if (direction == ScrollDirection.forward) {
          if (bottomBarBloc.state is BottomNavBarNotVisible) {
            bottomBarBloc.showBottomBar();
          }
        } else if (direction == ScrollDirection.reverse) {
          if (bottomBarBloc.state is BottomNavBarVisible) {
            bottomBarBloc.hideBottomBar();
          }
        }
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    // final tabController = useTabController(initialLength: 2);
    // final scrollController = useScrollController();
    // bottomBarBloc = context.read<BottomNavBarCubit>();
    final client =
        (context.read<GraphqlClientCubit>().state as GraphqlClientInitialized)
            .client;
    final activitiesBloc = context.read<ActivitiesBloc>();

    useEffect(() {
      bottomBarBloc = context.read<BottomNavBarCubit>();
      final scrollController = scrollViewKey.currentState?.outerController;
      log('Scroll controller: $scrollController');
      // scrollController?.addListener(() {
      //   log('Position: ${scrollController.position}');
      //   if (scrollController.position.pixels <=
      //           scrollController.position.minScrollExtent &&
      //       bottomBarBloc.state is BottomNavBarNotVisible) {
      //     bottomBarBloc.showBottomBar();
      //   }
      //   final direction = scrollController.position.userScrollDirection;
      //   if (direction == ScrollDirection.forward) {
      //     if (bottomBarBloc.state is BottomNavBarNotVisible) {
      //       bottomBarBloc.showBottomBar();
      //     }
      //   } else if (direction == ScrollDirection.reverse) {
      //     if (bottomBarBloc.state is BottomNavBarVisible) {
      //       bottomBarBloc.hideBottomBar();
      //     }
      //   }
      // });
      return null;
    }, const []);

    return BlocListener<ActivitiesBloc, ActivitiesState>(
      listenWhen: (previous, current) =>
          current is ActivitiesLoaded &&
          previous is ActivitiesLoaded &&
          previous.showProgress != current.showProgress,
      listener: (context, state) {
        if (state is ActivitiesLoaded && state.showProgress) {
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
      child: Scaffold(
        floatingActionButton: PrimaryFAB(
          controller: ScrollController(),
          onPressed: () {
            context.push(
              RouteConstants.postNewActivity,
              extra: (Fragment$TextActivity activity) {
                log('Posted new activity');
                activitiesBloc.addTextActivity(activity: activity);
              },
            );
          },
        ),
        body: ExtendedNestedScrollView(
          // controller: scrollController,
          key: scrollViewKey,
          onlyOneScrollInBody: true,
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                expandedHeight: 210,
                pinned: true,
                backgroundColor: AppColors.raisinBlack,
                flexibleSpace: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: DiscoverHeader(
                    title: StringConstants.socialHeading,
                    subtitle: StringConstants.socialSubheading,
                  ),
                ),
                bottom: PreferredSize(
                  preferredSize: const Size.fromHeight(60),
                  child: Container(
                    color: AppColors.raisinBlack,
                    padding: const EdgeInsets.only(
                      bottom: 10,
                    ),
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
                                        // fontFamily: 'Roboto-Condensed',
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
                                    // scrollController.jumpTo(0);
                                    scrollViewKey.currentState!.outerController
                                        .animateTo(
                                      0,
                                      duration: const Duration(seconds: 1),
                                      curve: Curves.ease,
                                    );
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
              ),
            ];
          },
          pinnedHeaderSliverHeightBuilder: () {
            return 120;
          },
          body: TabBarView(
            controller: tabController,
            children: const [
              ActivitiesList(
                // key: PageStorageKey<String>('following'),
                isFollowing: true,
              ),
              ActivitiesList(
                // key: PageStorageKey<String>('global'),
                isFollowing: false,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
