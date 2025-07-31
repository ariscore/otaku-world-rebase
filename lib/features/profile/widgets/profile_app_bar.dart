import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:otaku_world/bloc/graphql_client/graphql_client_cubit.dart';
import 'package:otaku_world/bloc/profile/follow/follow_cubit.dart';
import 'package:otaku_world/config/router/router_constants.dart';
import 'package:otaku_world/constants/string_constants.dart';
import 'package:otaku_world/core/ui/bottomsheet/helpers/url_helpers.dart';
import 'package:otaku_world/core/ui/buttons/back_button.dart';
import 'package:otaku_world/core/ui/buttons/primary_button.dart';
import 'package:otaku_world/core/ui/image.dart';
import 'package:otaku_world/features/profile/widgets/user_avatar.dart';
import 'package:otaku_world/graphql/__generated/graphql/fragments.graphql.dart';
import 'package:otaku_world/theme/colors.dart';

import '../../../core/ui/bottomsheet/helpers/share_helpers.dart';
import '../../../core/ui/dialogs/alert_dialog.dart';
import '../../../core/ui/tabs/custom_tab_bar.dart';
import '../../../generated/assets.dart';
import '../../reviews/widgets/bottom_sheet_component.dart';

class ProfileAppBar extends StatelessWidget {
  const ProfileAppBar({
    super.key,
    required this.user,
    required this.tabController,
  });

  final Fragment$UserInfo user;
  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FollowCubit(userId: user.id),
      child: SliverAppBar(
        expandedHeight: 360,
        pinned: true,
        backgroundColor: AppColors.raisinBlack,
        surfaceTintColor: AppColors.raisinBlack,
        leading: CustomBackButton(
          onPressed: () => _onPopInvoked(context),
        ),
        title: Text(
          'Profile',
          style: Theme.of(context).textTheme.displayMedium,
        ),
        centerTitle: false,
        actions: [
          _buildAction(
            asset: Assets.iconsMessage,
            onPressed: () {
              context.push(
                '${RouteConstants.userActivities}?is_current_user=0&user_id=${user.id}',
              );
            },
          ),
          _buildAction(
            asset: Assets.iconsMoreVertical,
            onPressed: () => _showOptions(context),
          ),
        ],
        flexibleSpace: FlexibleSpaceBar(
          background: Stack(
            children: [
              Positioned.fill(
                bottom: 50,
                child: CImage(
                  imageUrl: user.bannerImage ?? '',
                  viewer: true,
                ),
              ),
              Positioned.fill(
                bottom: 50,
                child: IgnorePointer(
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          AppColors.raisinBlack.withValues(alpha: 0.3),
                          AppColors.raisinBlack,
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              // Profile Image and Name
              Positioned.fill(
                bottom: 70,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    UserAvatar(url: user.avatar?.large ?? ''),
                    const SizedBox(height: 10),
                    Text(
                      user.name,
                      style:
                          Theme.of(context).textTheme.displayMedium?.copyWith(
                                fontFamily: 'Poppins-Medium',
                              ),
                    ),
                    const SizedBox(height: 10),
                    SizedBox(
                      height: 40,
                      child: BlocBuilder<FollowCubit, FollowState>(
                        builder: (context, state) {
                          if (state is FollowInitial) {
                            return _buildSocialButton(
                              context,
                              isFollowing: user.isFollowing ?? false,
                              isFollower: user.isFollower ?? false,
                            );
                          } else if (state is ProcessingFollow) {
                            return const Center(
                              child: CircularProgressIndicator(),
                            );
                          } else if (state is ToggleComplete) {
                            return _buildSocialButton(
                              context,
                              isFollowing: state.isFollowing,
                              isFollower: user.isFollower ?? false,
                            );
                          } else {
                            return const SizedBox();
                          }
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottom: CustomTabBar(
          controller: tabController,
          tabs: const [
            'Overview',
            'Favourites',
            'Stats',
            'Social',
            'Reviews',
          ],
        ),
      ),
    );
  }

  Widget _buildSocialButton(
    BuildContext context, {
    required bool isFollowing,
    required bool isFollower,
  }) {
    if (isFollowing && isFollower) {
      return _buildMutualButton(context);
    } else if (isFollowing) {
      return _buildUnfollowButton(context);
    }
    return _buildFollowButton(context);
  }

  Widget _buildFollowButton(BuildContext context) {
    return PrimaryButton(
      onTap: () {
        final client = context.read<GraphqlClientCubit>().getClient()!;
        context.read<FollowCubit>().toggleUserFollow(client);
      },
      isSmall: true,
      width: 100,
      verticalPadding: 10,
      fontSize: 16,
      label: 'Follow',
    );
  }

  Widget _buildUnfollowButton(BuildContext context) {
    return PrimaryButton(
      onTap: () => _showUnfollowConfirmation(context),
      isSmall: true,
      color: AppColors.japaneseIndigo,
      width: 100,
      verticalPadding: 10,
      fontSize: 16,
      label: 'Unfollow',
    );
  }

  Widget _buildMutualButton(BuildContext context) {
    return PrimaryButton(
      onTap: () => _showUnfollowConfirmation(context),
      isSmall: true,
      color: AppColors.htmlGray,
      width: 100,
      verticalPadding: 10,
      fontSize: 16,
      label: 'Mutual',
    );
  }

  void _showUnfollowConfirmation(BuildContext context) {
    showDialog(
      context: context,
      builder: (dialogContext) {
        return CustomAlertDialog(
          title: 'Unfollow user?',
          body: StringConstants.unfollowConfirmation,
          confirmText: 'Unfollow',
          onConfirm: () {
            dialogContext.pop();
            final client = context.read<GraphqlClientCubit>().getClient()!;
            context.read<FollowCubit>().toggleUserFollow(client);
          },
          onCancel: dialogContext.pop,
        );
      },
    );
  }

  Widget _buildAction({
    required String asset,
    required VoidCallback onPressed,
  }) {
    return IconButton(
      onPressed: onPressed,
      style: const ButtonStyle(
        backgroundColor: WidgetStatePropertyAll<Color>(Colors.black26),
      ),
      icon: SvgPicture.asset(asset, width: 20),
    );
  }

  void _onPopInvoked(BuildContext context) {
    if (context.canPop()) {
      context.pop();
    } else {
      context.go('/home');
    }
  }

  void _showOptions(BuildContext context) {
    List<BottomSheetComponent> options = [
      BottomSheetComponent(
        iconName: Assets.iconsLinkSquare,
        text: 'View on AniList',
        onTap: () {
          _viewOnAniList(context);
        },
      ),
      BottomSheetComponent(
        iconName: Assets.iconsShare,
        text: 'Share Profile',
        onTap: () {
          _shareProfile(context, user.id);
        },
      ),
      BottomSheetComponent(
        iconName: Assets.iconsAlert,
        text: 'Report',
        onTap: () {
          context.pop();
          _report(context);
        },
      ),
      BottomSheetComponent(
        iconName: Assets.iconsClose,
        text: 'Block',
        onTap: () {
          context.pop();
          _block(context);
        },
      ),
    ];

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
                ...options,
              ],
            ),
          ),
        );
      },
    );
  }

  void _report(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return CustomAlertDialog(
          title: 'Report Activity',
          body: 'This action must be completed on AniList website. Continue?',
          confirmText: 'Report',
          cancelText: 'Cancel',
          onConfirm: () {
            _viewOnAniList(context);
          },
          onCancel: context.pop,
        );
      },
    );
  }

  void _block(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return CustomAlertDialog(
          title: 'Block User',
          body: 'This action must be completed on AniList website. Continue?',
          confirmText: 'Block',
          cancelText: 'Cancel',
          onConfirm: () {
            _viewOnAniList(context);
          },
          onCancel: context.pop,
        );
      },
    );
  }

  void _viewOnAniList(BuildContext context) {
    context.pop();
    final Uri uri = Uri(
      scheme: 'https',
      host: 'anilist.co',
      path: 'user/${user.name}',
    );
    UrlHelpers.launchUri(
      context,
      uri,
    );
  }

  void _shareProfile(BuildContext context, int userId) {
    context.pop();
    ShareHelpers.profileShareOptions(userId);
  }
}
