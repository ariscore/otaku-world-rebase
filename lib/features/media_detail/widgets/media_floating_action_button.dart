import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:otaku_world/config/router/router_constants.dart';

import '../../../generated/assets.dart';
import '../../../theme/colors.dart';

class MediaFloatingActionButton extends HookWidget {
  const MediaFloatingActionButton({
    super.key,
    required this.tabController,
    required this.isAdd,
    required this.reviewIndex,
    required this.userId,
    required this.mediaId,
  });

  final TabController tabController;
  final bool isAdd;
  final int reviewIndex;
  final int userId;
  final int mediaId;

  @override
  Widget build(BuildContext context) {
    final showButton = useState(tabController.index == reviewIndex);

    useEffect(() {
      void onTabChange() {
        showButton.value = tabController.index == reviewIndex;
      }

      tabController.addListener(onTabChange);
      return () => tabController.removeListener(onTabChange);
    }, [tabController]);

    final String icon = isAdd ? Assets.iconsMediaAdd : Assets.iconsMediaEdit;

    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      spacing: 10,
      children: [
        if (showButton.value)
          FloatingActionButton(
            heroTag: 'postReview',
            onPressed: () {
              context.push(
                '${RouteConstants.postReview}?userId=$userId&mediaId=$mediaId',
              );
            },
            backgroundColor: AppColors.sunsetOrange,
            child: SvgPicture.asset(
              Assets.iconsEdit,
              width: 30,
            ),
          ),
        FloatingActionButton(
          heroTag: 'mediaList',
          onPressed: () {},
          backgroundColor: AppColors.sunsetOrange,
          child: SvgPicture.asset(
            icon,
            width: 30,
          ),
        ),
      ],
    );
  }
}
