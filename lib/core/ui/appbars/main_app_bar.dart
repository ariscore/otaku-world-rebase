import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:otaku_world/core/ui/buttons/back_button.dart';
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
  return const Padding(
    padding: EdgeInsets.symmetric(
      horizontal: 10,
    ),
    child: CircleAvatar(
      radius: 20,
      backgroundColor: AppColors.chineseWhite,
      child: Icon(Icons.abc_outlined),
    ),
  );
}
