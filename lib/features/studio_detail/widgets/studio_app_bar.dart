import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:like_button/like_button.dart';
import 'package:otaku_world/bloc/studio_detail/toggle_favorite_studio/toggle_favorite_studio_cubit.dart';
import 'package:otaku_world/graphql/__generated/graphql/studio_detail/studio_detail.graphql.dart';
import 'package:otaku_world/utils/extensions.dart';
import 'package:otaku_world/utils/ui_utils.dart';

import '../../../bloc/graphql_client/graphql_client_cubit.dart';
import '../../../bloc/studio_detail/studio_media/studio_media_bloc.dart';
import '../../../core/ui/bottomsheet/helpers/share_helpers.dart';
import '../../../core/ui/bottomsheet/helpers/url_helpers.dart';
import '../../../core/ui/bottomsheet/option_bottom_sheet.dart';
import '../../../core/ui/buttons/back_button.dart';
import '../../../core/ui/widgets/media_filter_widget.dart';
import '../../../generated/assets.dart';
import '../../../theme/colors.dart';
import '../../../utils/navigation_helper.dart';
import '../../media_detail/widgets/info_data.dart';

class StudioAppBar extends StatefulWidget {
  const StudioAppBar({
    super.key,
    required this.studio,
    required this.bloc,
  });

  static const Widget fifteenSpacing = SizedBox(
    height: 15,
  );
  final Query$getStudioDetail$Studio studio;
  final StudioMediaBloc bloc;

  @override
  State<StudioAppBar> createState() => _StudioAppBarState();
}

class _StudioAppBarState extends State<StudioAppBar> {
  bool isLiked = true;

  @override
  void initState() {
    isLiked = widget.studio.isFavourite;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final client =
        (context.read<GraphqlClientCubit>().state as GraphqlClientInitialized)
            .client;
    return SliverAppBar(
      leading: CustomBackButton(
        onPressed: () {
          NavigationHelper.onPopInvoked(context);
        },
      ),
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
            final studioId = widget.studio.id;
            OptionsBottomSheet.showOptionBottomSheet(
              context: context,
              onShareTap: () {
                ShareHelpers.studioShareOptions(studioId);
              },
              onViewOnAniListTap: () {
                final String? url = widget.studio.siteUrl;
                if (url != null && url.isNotEmpty) {
                  UrlHelpers.launchUrlLink(
                    context,
                    url,
                  );
                }
              },
              onCopyLinkTap: () {
                final url = UrlHelpers.getStudioLocalUrl(studioId);
                UrlHelpers.copyUrlToClipboard(context, url);
              },
            );
          },
          icon: SvgPicture.asset(
            Assets.iconsMoreVertical,
          ),
        ),
      ],
      backgroundColor: AppColors.raisinBlack,
      surfaceTintColor: AppColors.raisinBlack,
      pinned: true,
      expandedHeight: 220,
      flexibleSpace: FlexibleSpaceBar(
        background: Container(
          decoration: UIUtils.getDetailScreenDecoration(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              StudioAppBar.fifteenSpacing,
              Text(
                widget.studio.name.checkIfNull(),
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                ),
              ),
              StudioAppBar.fifteenSpacing,
              InfoData(
                iconName: Assets.iconsFavourite,
                separateWidth: 3,
                info: widget.studio.favourites.toString(),
                mainAxisAlignment: MainAxisAlignment.center,
              ),
            ],
          ),
        ),
      ),
      bottom: PreferredSize(
        preferredSize: Size(
          MediaQuery.sizeOf(context).width,
          50,
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: MediaFilterWidget(
            mediaSortNotifier: widget.bloc.mediaSortNotifier,
            isOnMyListNotifier: widget.bloc.isOnMyList,
            onApplyFilters: () {
              final client = (context.read<GraphqlClientCubit>().state
                      as GraphqlClientInitialized)
                  .client;
              widget.bloc.applyFilter(client: client);
            },
            bloc: widget.bloc,
          ),
        ),
      ),
    );
  }

  Future<bool?> toggleFavorite(
    BuildContext context,
    GraphQLClient client,
  ) async {
    final result = await ToggleFavoriteStudioCubit().toggleFavoriteStudio(
      client,
      studioId: widget.studio.id,
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
