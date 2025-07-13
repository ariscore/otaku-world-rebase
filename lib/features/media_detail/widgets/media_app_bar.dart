import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:like_button/like_button.dart';
import 'package:otaku_world/bloc/media_detail/toggle_favorite_media/toggle_favorite_media_cubit.dart';
import 'package:otaku_world/core/ui/bottomsheet/helpers/share_helpers.dart';
import 'package:otaku_world/core/ui/bottomsheet/helpers/url_helpers.dart';
import 'package:otaku_world/core/ui/bottomsheet/option_bottom_sheet.dart';

import '../../../bloc/graphql_client/graphql_client_cubit.dart';
import '../../../core/ui/buttons/back_button.dart';
import '../../../core/ui/tabs/custom_tab_bar.dart';
import '../../../generated/assets.dart';
import '../../../graphql/__generated/graphql/fragments.graphql.dart';
import '../../../theme/colors.dart';
import '../../../utils/ui_utils.dart';

class MediaAppBar extends StatefulWidget {
  const MediaAppBar({
    super.key,
    required this.media,
    required this.tabController,
    required this.tabs,
    required this.expandedHeight,
    required this.backgroundWidget,
  });

  final Fragment$MediaDetailed media;
  final TabController tabController;
  final List<String> tabs;
  final double expandedHeight;
  final Widget backgroundWidget;

  @override
  State<MediaAppBar> createState() => _MediaAppBarState();
}

class _MediaAppBarState extends State<MediaAppBar> {
  bool isLiked = true;

  @override
  void initState() {
    isLiked = widget.media.isFavourite;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final client =
        (context.read<GraphqlClientCubit>().state as GraphqlClientInitialized)
            .client;

    return SliverAppBar(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(20),
          bottomLeft: Radius.circular(20),
        ),
      ),
      pinned: true,
      // expandedHeight: UIUtils.getWidgetHeight(
      //   targetWidgetHeight: 515,
      //   screenHeight: height,
      // ),
      expandedHeight: widget.expandedHeight,
      leading: CustomBackButton(
        onPressed: () {
          _onPopInvoked(context);
        },
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
            return toggleFavorite(context, client);
          },
        ),
        IconButton(
          onPressed: () {
            final mediaId = widget.media.id;
            OptionsBottomSheet.showOptionBottomSheet(
              context: context,
              onShareTap: () {
                ShareHelpers.mediaShareOptions(widget.media.id);
              },
              onViewOnAniListTap: () {
                final String? url = widget.media.siteUrl;
                if (url != null && url.isNotEmpty) {
                  UrlHelpers.launchUrlLink(
                    context,
                    url,
                  );
                }
              },
              onCopyLinkTap: () {
                final url = UrlHelpers.getMediaLocalUrl(mediaId);
                UrlHelpers.copyUrlToClipboard(context, url);
              },
            );
          },
          icon: SvgPicture.asset(
            Assets.iconsMoreVertical,
          ),
        ),
      ],
      flexibleSpace: FlexibleSpaceBar(
        background: widget.backgroundWidget,
      ),
      bottom: CustomTabBar(
        controller: widget.tabController,
        tabs: widget.tabs,
      ),
    );
  }

  Future<bool?> toggleFavorite(
    BuildContext context,
    GraphQLClient client,
  ) async {
    final result = await ToggleFavoriteMediaCubit().toggleFavoriteMedia(
      client,
      mediaId: widget.media.id,
      type: widget.media.type!,
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

  void _onPopInvoked(BuildContext context) {
    if (context.canPop()) {
      context.pop();
    } else {
      context.go('/home');
    }
  }
}
