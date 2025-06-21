import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:otaku_world/bloc/graphql_client/graphql_client_cubit.dart';
import 'package:otaku_world/bloc/profile/my_profile/my_profile_bloc.dart';
import 'package:otaku_world/bloc/viewer/viewer_bloc.dart';
import 'package:otaku_world/config/router/router_constants.dart';
import 'package:otaku_world/core/ui/buttons/back_button.dart';
import 'package:otaku_world/core/ui/image.dart';
import 'package:otaku_world/features/profile/widgets/user_avatar.dart';
import 'package:otaku_world/graphql/__generated/graphql/fragments.graphql.dart';
import 'package:otaku_world/theme/colors.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../core/ui/tabs/custom_tab_bar.dart';
import '../../../generated/assets.dart';
import '../../../utils/ui_utils.dart';
import '../../reviews/widgets/bottom_sheet_component.dart';

class MyProfileAppBar extends StatelessWidget {
  const MyProfileAppBar({
    super.key,
    required this.user,
    required this.tabController,
  });

  final Fragment$UserInfo user;
  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 360,
      pinned: true,
      backgroundColor: AppColors.raisinBlack,
      surfaceTintColor: AppColors.raisinBlack,
      leading: CustomBackButton(
        onPressed: () => _onPopInvoked(context),
      ),
      title: Text(
        'My Profile',
        style: Theme.of(context).textTheme.displayMedium,
      ),
      centerTitle: false,
      actions: [
        _buildAction(
          asset: Assets.iconsMessage,
          onPressed: () {
            context.push(
              '${RouteConstants.userActivities}?is_current_user=1&user_id=${user.id}',
            );
          },
        ),
        BlocSelector<MyProfileBloc, MyProfileState, int>(
          selector: (state) {
            if (state is MyProfileLoaded) {
              return state.unreadNotificationCount;
            }
            return 0;
          },
          builder: (context, unreadCount) {
            return _buildAction(
              asset: unreadCount > 0
                  ? Assets.iconsNotificationUnread
                  : Assets.iconsNotificationRead,
              onPressed: () {
                context.push(
                  RouteConstants.userNotifications,
                  extra: () {
                    context.read<MyProfileBloc>().add(ResetNotificationCount());
                  },
                );
              },
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
                        AppColors.raisinBlack.withValues(alpha:0.3),
                        AppColors.raisinBlack,
                      ],
                    ),
                  ),
                ),
              ),
            ),
            // Profile Image and Name
            Positioned.fill(
              bottom: 80,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  UserAvatar(url: user.avatar?.large ?? ''),
                  const SizedBox(height: 10),
                  Text(
                    user.name,
                    style: Theme.of(context).textTheme.displayMedium?.copyWith(
                          fontFamily: 'Poppins-Medium',
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
        iconName: Assets.iconsSettings,
        text: 'Settings',
        onTap: () {
          context.pop();
          context.read<ViewerBloc>().add(
                LoadViewer(context.read<GraphqlClientCubit>().getClient()!),
              );
          context.push('${RouteConstants.settings}?name=${user.name}');
        },
      ),
      BottomSheetComponent(
        iconName: Assets.iconsLinkSquare,
        text: 'View on AniList',
        onTap: () {
          _viewOnAniList(context, user.name);
        },
      ),
      BottomSheetComponent(
        iconName: Assets.iconsShare,
        text: 'Share Profile',
        onTap: () {
          _shareProfile(context, user.name);
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

  void _viewOnAniList(BuildContext context, String userName) {
    context.pop();
    final Uri reviewUri = Uri(
      scheme: 'https',
      host: 'anilist.co',
      path: 'user/$userName',
    );
    launchUrl(
      reviewUri,
      mode: LaunchMode.externalApplication,
    ).then(
      (isSuccess) {
        if (!isSuccess) {
          UIUtils.showSnackBar(context, 'Can\'t open the link!');
        }
      },
      onError: (e) {
        UIUtils.showSnackBar(context, 'Can\'t open the link!');
      },
    );
  }

  void _shareProfile(BuildContext context, String userName) {
    context.pop();
    Share.share('Bhai ni profile check karo: $userName');
  }
}
