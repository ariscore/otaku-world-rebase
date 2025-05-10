import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:like_button/like_button.dart';
import 'package:otaku_world/bloc/staff_detail/toggle_favorite_staff/toggle_favorite_staff_cubit.dart';

import '../../../bloc/graphql_client/graphql_client_cubit.dart';
import '../../../core/ui/buttons/back_button.dart';
import '../../../core/ui/image_viewer.dart';
import '../../../core/ui/images/cover_image.dart';
import '../../../core/ui/tabs/custom_tab_bar.dart';
import '../../../generated/assets.dart';
import '../../../graphql/__generated/graphql/schema.graphql.dart';
import '../../../graphql/__generated/graphql/staff_detail/staff_detail.graphql.dart';
import '../../../theme/colors.dart';
import '../../../utils/ui_utils.dart';
import '../../media_detail/widgets/info_data.dart';

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
          bottomRight: Radius.circular(20),
          bottomLeft: Radius.circular(20),
        ),
      ),
      pinned: true,
      expandedHeight: UIUtils.getWidgetHeight(
        targetWidgetHeight: 320,
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
            final client = (context.read<GraphqlClientCubit>().state
                    as GraphqlClientInitialized)
                .client;
            return toggleFavorite(context, client);
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
        tabWidth: 100,
      ),
    );
  }

  Widget buildPosterContent(BuildContext context, double width, double height) {
    final staff = widget.staff;

    return Container(
      padding: const EdgeInsets.all(20),
      decoration: UIUtils.getDetailScreenDecoration(),
      child: Column(
        children: [
          const SizedBox(
            height: kToolbarHeight + 10,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: UIUtils.getWidgetHeight(
                  targetWidgetHeight: 196,
                  screenHeight: height,
                ),
                width: UIUtils.getWidgetWidth(
                  targetWidgetWidth: 130,
                  screenWidth: width,
                ),
                child: GestureDetector(
                  onTap: () => staff.image?.large != null
                      ? showImage(
                          context,
                          staff.image!.large!.toString(),
                          tag: staff.image!.large!.toString(),
                        )
                      : null,
                  child: Hero(
                    tag: staff.image!.large!.toString(),
                    child: CoverImage(
                      imageUrl: staff.image!.large!.toString(),
                      type: Enum$MediaType.ANIME,
                      // placeHolderName: Assets.placeholders210x310,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 5,
                children: [
                  if (staff.name?.userPreferred != null)
                    Text(
                      staff.name!.userPreferred!,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  if (staff.name?.native != null)
                    Text(
                      staff.name!.native!,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  InfoData(
                    iconName: Assets.iconsFavourite,
                    separateWidth: 3,
                    info: staff.favourites.toString(),
                    mainAxisAlignment: MainAxisAlignment.center,
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }

  void _onPopInvoked(BuildContext context) {
    if (context.canPop()) {
      context.pop();
    } else {
      context.go('/home');
    }
  }

  Future<bool?> toggleFavorite(
    BuildContext context,
    GraphQLClient client,
  ) async {
    final result = await ToggleFavoriteStaffCubit().toggleFavoriteStaff(
      client,
      staffId: widget.staff.id,
      isLiked: isLiked,
    );
    return result.fold(
      (error) {
        log('Got error: $error', name: 'ActivityLike');
        UIUtils.showSnackBar(context, error);
        return null;
      },
      (isLiked) {
        this.isLiked = isLiked;
        UIUtils.showSnackBar(
          context,
          isLiked ? 'Added to Favourites!' : 'Removed from Favourites!',
        );
        return isLiked;
      },
    );
  }
}
