import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:otaku_world/theme/colors.dart';
import '../buttons/back_button.dart';

class SimpleAppBar extends StatelessWidget implements PreferredSizeWidget {
  const SimpleAppBar({
    super.key,
    required this.title,
    this.actions,
    this.bgColor = AppColors.raisinBlack,
  });

  final String title;
  final List<Widget>? actions;
  final Color bgColor;

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
      title: Text(title, style: Theme.of(context).textTheme.displayMedium),
      backgroundColor: bgColor,
      elevation: 0,
      actions: actions,
      centerTitle: false,
      surfaceTintColor: AppColors.raisinBlack,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(55);
}
