import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:otaku_world/theme/colors.dart';
import '../buttons/back_button.dart';

class SimpleAppBar extends StatelessWidget implements PreferredSizeWidget {
  const SimpleAppBar({
    super.key,
    this.title,
    this.actions,
    this.bgColor = AppColors.raisinBlack,
    this.flexibleSpace,
  });

  final String? title;
  final List<Widget>? actions;
  final Color bgColor;
  final Widget? flexibleSpace;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: CustomBackButton(
        onPressed: () {
          if (context.canPop()) {
            context.pop();
          } else {
            context.go('/home');
          }
        },
      ),
      title: (title != null && title!.isNotEmpty)
          ? Text(
              title!,
              style: Theme.of(context).textTheme.displayMedium,
            )
          : null,
      backgroundColor: bgColor,
      elevation: 0,
      actions: actions,
      centerTitle: false,
      surfaceTintColor: AppColors.raisinBlack,
      flexibleSpace: flexibleSpace,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(55);
}
