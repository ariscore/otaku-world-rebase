import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:otaku_world/bloc/graphql_client/graphql_client_cubit.dart';
import 'package:otaku_world/bloc/profile/my_profile/my_profile_bloc.dart';
import 'package:otaku_world/constants/string_constants.dart';
import 'package:otaku_world/core/ui/error_text.dart';
import 'package:otaku_world/features/profile/widgets/my_profile_app_bar.dart';
import 'package:otaku_world/features/profile/widgets/user_favorites.dart';
import 'package:otaku_world/features/profile/widgets/user_overview.dart';
import 'package:otaku_world/theme/colors.dart';

class MyProfileScreen extends HookWidget {
  const MyProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final tabController = useTabController(initialLength: 5);
    final profileBloc = context.read<MyProfileBloc>();
    final client = context.read<GraphqlClientCubit>().getClient();

    return Scaffold(
      body: BlocBuilder<MyProfileBloc, MyProfileState>(
        builder: (context, state) {
          if (state is MyProfileInitial) {
            if (client == null) {
              return ErrorText(
                message: ActivityConstants.clientError,
                onTryAgain: () {},
              );
            }
            profileBloc.add(LoadProfile(client));
            return const Center(child: CircularProgressIndicator());
          } else if (state is MyProfileLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is MyProfileLoaded) {
            return RefreshIndicator(
              backgroundColor: AppColors.raisinBlack,
              onRefresh: () {
                return Future.delayed(const Duration(seconds: 1), () {
                  context.read<MyProfileBloc>().add(LoadProfile(client!));
                });
              },
              notificationPredicate: (notification) {
                return notification.depth == 2;
              },
              child: NestedScrollView(
                headerSliverBuilder: (context, innerBoxIsScrolled) => [
                  // MyProfileAppBar(user: state.user),
                  SliverOverlapAbsorber(
                    handle: NestedScrollView.sliverOverlapAbsorberHandleFor(
                      context,
                    ),
                    sliver: MyProfileAppBar(
                      user: state.user,
                      tabController: tabController,
                    ),
                  ),
                  // SliverOverlapAbsorber(
                  //   handle:
                  //   NestedScrollView.sliverOverlapAbsorberHandleFor(context),
                  //   sliver: SliverPersistentHeader(
                  //     pinned: true,
                  //     delegate: _SliverTabBarDelegate(
                  //       CustomTabBar(
                  //         controller: tabController,
                  //         tabs: const [
                  //           'Overview',
                  //           'Favourites',
                  //           'Stats',
                  //           'Social',
                  //           'Reviews',
                  //         ],
                  //       ),
                  //     ),
                  //   ),
                  // ),
                ],
                // TabBarView Content
                body: TabBarView(
                  controller: tabController,
                  children: [
                    UserOverview(
                      key: const PageStorageKey<String>('my_profile_overview'),
                      user: state.user,
                      followingCount: state.followingCount,
                      followerCount: state.followerCount,
                    ),
                    UserFavorites(
                      key: const PageStorageKey<String>('my_favorites'),
                      userId: state.user.id,
                    ),
                    _buildListView(
                        'Settings Content', PageStorageKey<String>('3')),
                    _buildListView(
                        'Settings Content', PageStorageKey<String>('4')),
                    _buildListView(
                        'Settings Content', PageStorageKey<String>('5')),
                  ],
                ),
              ),
            );
          } else if (state is MyProfileError) {
            return ErrorText(
              message: state.message,
              onTryAgain: () {
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

  // Helper method to build a sample ListView for each TabBarView
  Widget _buildListView(String title, Key key) {
    return ListView.builder(
      key: key,
      padding: EdgeInsets.all(16),
      itemCount: 20,
      itemBuilder: (context, index) {
        return Card(
          child: ListTile(
            title: Text('$title - Item ${index + 1}'),
          ),
        );
      },
    );
  }
}
