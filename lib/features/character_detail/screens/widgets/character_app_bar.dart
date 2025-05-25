import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:like_button/like_button.dart';
import 'package:otaku_world/bloc/charcter_detail/toggle_favorite_character/toggle_favorite_character_cubit.dart';

import '../../../../bloc/graphql_client/graphql_client_cubit.dart';
import '../../../../core/ui/appbars/simple_app_bar.dart';
import '../../../../core/ui/bottomsheet/helpers/share_helpers.dart';
import '../../../../core/ui/bottomsheet/helpers/url_helpers.dart';
import '../../../../core/ui/bottomsheet/option_bottom_sheet.dart';
import '../../../../generated/assets.dart';
import '../../../../graphql/__generated/graphql/character-detail/character_detail.graphql.dart';
import '../../../../theme/colors.dart';
import '../../../../utils/ui_utils.dart';

class CharacterAppBar extends StatefulWidget implements PreferredSizeWidget {
  const CharacterAppBar({
    super.key,
    required this.character,
  });

  final Query$getCharacterDetails$Character character;

  @override
  State<CharacterAppBar> createState() => _CharacterAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(55);
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
    return SimpleAppBar(
      title: '',
      bgColor: AppColors.raisinBlack,
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
