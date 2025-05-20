import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../features/reviews/widgets/bottom_sheet_component.dart';
import '../../../generated/assets.dart';
import '../../../theme/colors.dart';

class OptionsBottomSheet extends StatelessWidget {
  final List<BottomSheetComponent>? extraItems;

  final void Function() onShareTap;
  final void Function() onViewOnAniListTap;

  const OptionsBottomSheet({
    super.key,
    this.extraItems,
    required this.onShareTap,
    required this.onViewOnAniListTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: AppColors.darkCharcoal,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
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
            if (extraItems != null) ...extraItems!,
            BottomSheetComponent(
              onTap: () {
                context.pop();
                onViewOnAniListTap();
              },
              iconName: Assets.iconsLinkSquare,
              text: 'View on AniList',
            ),
            BottomSheetComponent(
              onTap: () {
                context.pop();
                onShareTap();
              },
              iconName: Assets.iconsShare,
              text: 'Share',
            ),
          ],
        ),
      ),
    );
  }
}
