import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../theme/colors.dart';
import '../buttons/back_button.dart';

class SimpleSliverAppBar extends StatelessWidget {
  const SimpleSliverAppBar({
    super.key,
    required this.title,
    this.actions,
    this.isPinned = false,
    this.floating = false,
  });

  final String title;
  final List<Widget>? actions;
  final bool isPinned;
  final bool floating;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      leading: CustomBackButton(
        onPressed: () {
          if (context.canPop()) {
            context.pop();
          }else {
            context.go('/home');
          }
        },
      ),
      expandedHeight: 55,
      toolbarHeight: 55,
      title: Text(
        title,
        style: Theme.of(context).textTheme.displayMedium,
      ),
      backgroundColor: AppColors.raisinBlack,
      elevation: 0,
      actions: actions,
      centerTitle: false,
      pinned: isPinned,
      floating: floating,
    );
  }
}
