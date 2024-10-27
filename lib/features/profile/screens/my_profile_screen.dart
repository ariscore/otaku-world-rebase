import 'dart:developer';

import 'package:extended_nested_scroll_view/extended_nested_scroll_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:otaku_world/bloc/graphql_client/graphql_client_cubit.dart';
import 'package:otaku_world/bloc/profile/my_profile/my_profile_bloc.dart';
import 'package:otaku_world/constants/string_constants.dart';
import 'package:otaku_world/core/ui/appbars/simple_app_bar.dart';
import 'package:otaku_world/core/ui/error_text.dart';
import 'package:otaku_world/features/profile/widgets/keep_alive_tab.dart';
import 'package:otaku_world/features/profile/widgets/my_profile_app_bar.dart';
import 'package:otaku_world/features/profile/widgets/user_favorites.dart';
import 'package:otaku_world/features/profile/widgets/user_overview.dart';
import 'package:otaku_world/features/profile/widgets/user_reviews.dart';
import 'package:otaku_world/features/profile/widgets/user_social.dart';
import 'package:otaku_world/features/reviews/widgets/bottom_sheet_component.dart';
import 'package:otaku_world/generated/assets.dart';
import 'package:otaku_world/theme/colors.dart';

class MyProfileScreen extends HookWidget {
  const MyProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    log('Building profile screen');
    final tabController = useTabController(initialLength: 5);
    final profileBloc = context.read<MyProfileBloc>();
    final client = context.read<GraphqlClientCubit>().getClient();
    final scrollViewKey = GlobalKey<ExtendedNestedScrollViewState>();

    return Scaffold(
      body: BlocBuilder<MyProfileBloc, MyProfileState>(
        builder: (context, state) {
          if (state is MyProfileInitial) {
            if (client == null) {
              return _buildErrorScaffold(
                message: ActivityConstants.clientError,
                onPressed: () {
                  profileBloc.add(LoadProfile(client!));
                },
              );
            }
            profileBloc.add(LoadProfile(client));
            return _buildLoadingScaffold();
          } else if (state is MyProfileLoading) {
            return _buildLoadingScaffold();
          } else if (state is MyProfileLoaded) {
            return RefreshIndicator(
              backgroundColor: AppColors.raisinBlack,
              displacement: 60,
              onRefresh: () {
                return Future.delayed(const Duration(seconds: 1), () {
                  context.read<MyProfileBloc>().add(LoadProfile(client!));
                });
              },
              notificationPredicate: (notification) {
                return notification.depth == 2;
              },
              child: ExtendedNestedScrollView(
                key: scrollViewKey,
                onlyOneScrollInBody: true,
                headerSliverBuilder: (context, innerBoxIsScrolled) => [
                  MyProfileAppBar(
                    user: state.user,
                    tabController: tabController,
                  ),
                ],
                pinnedHeaderSliverHeightBuilder: () {
                  return 130;
                },
                body: TabBarView(
                  controller: tabController,
                  children: [
                    KeepAliveTab(
                      child: UserOverview(
                        user: state.user,
                        followingCount: state.followingCount,
                        followerCount: state.followerCount,
                      ),
                    ),
                    KeepAliveTab(
                      child: UserFavorites(
                        userId: state.user.id,
                      ),
                    ),
                    KeepAliveTab(
                      child: UserSocial(
                        userId: state.user.id,
                        scrollKey: scrollViewKey,
                      ),
                    ),
                    KeepAliveTab(
                      child: UserSocial(
                        userId: state.user.id,
                        scrollKey: scrollViewKey,
                      ),
                    ),
                    KeepAliveTab(
                      child: UserReviews(
                        userId: state.user.id,
                      ),
                    ),
                  ],
                ),
              ),
            );
          } else if (state is MyProfileError) {
            return _buildErrorScaffold(
              message: state.message,
              onPressed: () {
                profileBloc.add(LoadProfile(client!));
              },
            );
          } else {
            return const Text('Unknown State');
          }
        },
      ),
    );
  }

  Widget _buildLoadingScaffold() {
    return const Scaffold(
      appBar: SimpleAppBar(title: 'My Profile'),
      body: Center(child: CircularProgressIndicator()),
    );
  }

  Widget _buildErrorScaffold({
    required String message,
    required VoidCallback onPressed,
  }) {
    return Scaffold(
      appBar: const SimpleAppBar(title: 'My Profile'),
      body: Center(
        child: ErrorText(
          message: message,
          onTryAgain: onPressed,
        ),
      ),
    );
  }

  void _showOptions(BuildContext context) {
    List<BottomSheetComponent> options = [];

    options.add(BottomSheetComponent(iconName: Assets.iconsSettings, text: 'Settings', onTap: () {},),);

    showModalBottomSheet(
      context: context,
      backgroundColor: AppColors.darkCharcoal,
      isScrollControlled: true,
      useRootNavigator: true,
      builder: (context) {
        return Container(
          decoration: const BoxDecoration(
            color: AppColors.darkCharcoal,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            ),
          ),
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 10,
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 5,
                  width: 50,
                  decoration: ShapeDecoration(
                    color: AppColors.lightSilver,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                ...options
              ],
            ),
          ),
        );
      },
    );
  }
}
