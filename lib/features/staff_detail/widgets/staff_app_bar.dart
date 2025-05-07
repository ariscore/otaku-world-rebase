import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:like_button/like_button.dart';

import '../../../core/ui/buttons/back_button.dart';
import '../../../core/ui/image_viewer.dart';
import '../../../core/ui/images/cover_image.dart';
import '../../../core/ui/tabs/custom_tab_bar.dart';
import '../../../generated/assets.dart';
import '../../../graphql/__generated/graphql/schema.graphql.dart';
import '../../../graphql/__generated/graphql/staff_detail/staff_detail.graphql.dart';
import '../../../theme/colors.dart';
import '../../../utils/ui_utils.dart';

class StaffAppBar extends StatefulWidget {
  const StaffAppBar({
    super.key,
    required this.staff,
    required this.tabController,
    required this.tabs,
  });

  final Query$getStaffDetail$Staff staff;
  final TabController tabController;
  final List<String> tabs;

  @override
  State<StaffAppBar> createState() => _StaffAppBarState();
}

class _StaffAppBarState extends State<StaffAppBar> {
  bool isLiked = true;

  @override
  void initState() {
    isLiked = widget.staff.isFavourite;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return SliverAppBar(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
      ),
      pinned: true,
      expandedHeight: UIUtils.getWidgetHeight(
        targetWidgetHeight: 420,
        screenHeight: height,
      ),
      leading: CustomBackButton(
        onPressed: () => _onPopInvoked(context),
      ),
      backgroundColor: AppColors.raisinBlack,
      surfaceTintColor: AppColors.raisinBlack,
      actions: [
        LikeButton(
          isLiked: isLiked,
          size: 25,
          likeBuilder: (isLiked) {
            return SvgPicture.asset(
              isLiked ? Assets.iconsFavourite : Assets.iconsLike,
            );
          },
          onTap: (isLiked) async {
            // Replace this with your own toggle logic
            this.isLiked = !isLiked;
            setState(() {});
            return !isLiked;
          },
        ),
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(Assets.iconsMoreVertical),
        ),
      ],
      flexibleSpace: FlexibleSpaceBar(
        background: buildPosterContent(context, width, height),
      ),
      bottom: CustomTabBar(
        controller: widget.tabController,
        tabs: widget.tabs,
      ),
    );
  }

  Widget buildPosterContent(BuildContext context, double width, double height) {
    final staff = widget.staff;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: UIUtils.getWidgetHeight(
            targetWidgetHeight: 320,
            screenHeight: height,
          ),
          child: Stack(
            children: [
              Container(
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.all(16),
                child: SizedBox(
                  width: UIUtils.getWidgetWidth(
                    targetWidgetWidth: 200,
                    screenWidth: width,
                  ),
                  child: GestureDetector(
                    onTap: () => staff.image?.large != null
                        ? showImage(context, staff.image!.large!)
                        : null,
                    child: Hero(
                      tag: staff.image?.large ?? '',
                      child: CoverImage(
                        imageUrl: staff.image?.large ?? '',
                        type: Enum$MediaType.ANIME,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 16,
                left: 16,
                right: 16,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      staff.name?.userPreferred ?? '',
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                        overflow: TextOverflow.ellipsis,
                      ),
                      maxLines: 1,
                    ),
                    const SizedBox(height: 4),
                    if (staff.name?.native != null)
                      Text(
                        staff.name!.native!,
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.white60,
                          overflow: TextOverflow.ellipsis,
                        ),
                        maxLines: 1,
                      ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  void _onPopInvoked(BuildContext context) {
    if (context.canPop()) {
      context.pop();
    } else {
      context.go('/home');
    }
  }
}
