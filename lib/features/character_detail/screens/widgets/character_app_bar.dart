import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:like_button/like_button.dart';
import 'package:otaku_world/bloc/charcter_detail/toggle_favorite_character/toggle_favorite_character_cubit.dart';
import 'package:otaku_world/utils/extensions.dart';

import '../../../../bloc/graphql_client/graphql_client_cubit.dart';
import '../../../../core/ui/bottomsheet/helpers/share_helpers.dart';
import '../../../../core/ui/bottomsheet/helpers/url_helpers.dart';
import '../../../../core/ui/bottomsheet/option_bottom_sheet.dart';
import '../../../../core/ui/buttons/back_button.dart';
import '../../../../core/ui/image_viewer.dart';
import '../../../../core/ui/images/cover_image.dart';
import '../../../../generated/assets.dart';
import '../../../../graphql/__generated/graphql/character-detail/character_detail.graphql.dart';
import '../../../../graphql/__generated/graphql/schema.graphql.dart';
import '../../../../theme/colors.dart';
import '../../../../utils/navigation_helper.dart';
import '../../../../utils/ui_utils.dart';
import '../../../media_detail/widgets/info_data.dart';

class CharacterAppBar extends StatefulWidget {
  const CharacterAppBar({
    super.key,
    required this.character,
  });

  final Query$getCharacterDetails$Character character;

  @override
  State<CharacterAppBar> createState() => _CharacterAppBarState();
}

class _CharacterAppBarState extends State<CharacterAppBar> {
  bool isLiked = false;

  @override
  void initState() {
    isLiked = widget.character.isFavourite;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
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
            final client = (context.read<GraphqlClientCubit>().state
                    as GraphqlClientInitialized)
                .client;
            return toggleFavorite(context, client);
          },
        ),
        IconButton(
          onPressed: () {
            OptionsBottomSheet.showOptionBottomSheet(
              context: context,
              onShareTap: () {
                ShareHelpers.characterShareOptions(widget.character.id);
              },
              onViewOnAniListTap: () {
                final String? url = widget.character.siteUrl;
                if (url != null && url.isNotEmpty) {
                  UrlHelpers.launchUrlLink(
                    context,
                    url,
                  );
                }
              },
              onCopyLinkTap: () {
                final url =
                    UrlHelpers.getCharacterLocalUrl(widget.character.id);
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
      expandedHeight: 455,
      flexibleSpace: FlexibleSpaceBar(
        collapseMode: CollapseMode.parallax,
        background: _buildPosterContent(
          widget.character,
          context,
        ),
      ),
    );
  }

  static const Widget fifteenSpacing = SizedBox(
    height: 15,
  );

  Widget _buildPosterContent(
    Query$getCharacterDetails$Character character,
    BuildContext context,
  ) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    return Container(
      decoration: UIUtils.getDetailScreenDecoration(),
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: AppBar().preferredSize.height +
                MediaQuery.of(context).padding.top,
          ),
          SizedBox(
            height: UIUtils.getWidgetHeight(
              targetWidgetHeight: 256,
              screenHeight: height,
            ),
            width: UIUtils.getWidgetWidth(
              targetWidgetWidth: 170,
              screenWidth: width,
            ),
            child: GestureDetector(
              onTap: () => character.image?.large != null
                  ? showImage(
                      context,
                      character.image!.large!.toString(),
                      tag: character.image!.large!.toString(),
                    )
                  : null,
              child: Hero(
                tag: character.image!.large!.toString(),
                child: CoverImage(
                  imageUrl: character.image!.large!.toString(),
                  type: Enum$MediaType.ANIME,
                  // placeHolderName: Assets.placeholders210x310,
                ),
              ),
            ),
          ),
          fifteenSpacing,
          Text(
            character.name!.userPreferred!.checkIfNull(),
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
            ),
          ),
          fifteenSpacing,
          InfoData(
            iconName: Assets.iconsFavourite,
            separateWidth: 3,
            info: character.favourites.toString(),
            mainAxisAlignment: MainAxisAlignment.center,
          ),
        ],
      ),
    );
  }

  Future<bool?> toggleFavorite(
    BuildContext context,
    GraphQLClient client,
  ) async {
    final result = await ToggleFavoriteCharacterCubit().toggleFavoriteCharacter(
      client,
      characterId: widget.character.id,
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
