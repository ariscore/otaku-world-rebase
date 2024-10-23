import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:otaku_world/bloc/viewer/viewer_bloc.dart';
import 'package:otaku_world/config/router/router_constants.dart';
import 'package:otaku_world/generated/assets.dart';
import 'package:otaku_world/theme/colors.dart';

class MainAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MainAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leadingWidth: 0,
      title: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 5,
        ),
        child: SvgPicture.asset(Assets.assetsAppLogoHorizontal),
      ),
      backgroundColor: AppColors.raisinBlack,
      actions: [
        _buildAvatar(context),
      ],
      elevation: 0,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(55);
}

Widget _buildAvatar(BuildContext context) {
  return GestureDetector(
    onTap: () {
      context.push(RouteConstants.myProfile);
    },
    child: Padding(
      padding: const EdgeInsets.only(right: 20),
      child: ClipOval(
        child: Container(
          width: 45,
          height: 45,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
          ),
          child: BlocBuilder<ViewerBloc, ViewerState>(
            builder: (context, state) {
              if (state is ViewerLoaded) {
                return CachedNetworkImage(
                  imageUrl: state.user.avatar?.medium ?? '',
                  fit: BoxFit.cover,
                );
              } else {
                return Container(
                  padding: const EdgeInsets.all(5),
                  color: AppColors.darkGray,
                  child: SvgPicture.asset(Assets.assetsLogoBw),
                );
              }
            },
          ),
        ),
      ),
    ),
  );
}
