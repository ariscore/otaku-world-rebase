import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:otaku_world/bloc/charcter_detail/media/character_media_bloc.dart';
import 'package:otaku_world/core/ui/appbars/simple_app_bar.dart';
import 'package:otaku_world/core/ui/media_section/media_grid_list.dart';
import 'package:otaku_world/features/character_detail/screens/widgets/name_widget.dart';
import 'package:otaku_world/features/media_detail/tabs/overview/widgets/description.dart';
import 'package:otaku_world/features/media_detail/widgets/simple_loading.dart';
import 'package:otaku_world/graphql/__generated/graphql/schema.graphql.dart';
import 'package:otaku_world/utils/extensions.dart';
import 'package:otaku_world/utils/navigation_helper.dart';

import '../../../bloc/charcter_detail/character_detail_bloc.dart';
import '../../../core/ui/bottomsheet/helpers/anilist_uri_helpers.dart';
import '../../../core/ui/bottomsheet/helpers/share_helpers.dart';
import '../../../core/ui/bottomsheet/helpers/url_helpers.dart';
import '../../../core/ui/bottomsheet/option_bottom_sheet.dart';
import '../../../core/ui/image_viewer.dart';
import '../../../core/ui/images/cover_image.dart';
import '../../../generated/assets.dart';
import '../../../theme/colors.dart';
import '../../../utils/app_texts.dart';
import '../../../utils/ui_utils.dart';
import '../../media_detail/widgets/info_data.dart';

class CharacterDetailScreen extends StatelessWidget {
  const CharacterDetailScreen({
    super.key,
    required this.characterId,
  });

  final int characterId;
  static const Widget fifteenSpacing = SizedBox(
    height: 15,
  );

  static const Widget twentySpacing = SizedBox(
    height: 20,
  );

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return PopScope(
      onPopInvokedWithResult: (didPop, result) {
        if (didPop) {
          return;
        }
        NavigationHelper.onPopInvoked(context);
      },
      child: Scaffold(
        appBar: SimpleAppBar(
          title: '',
          bgColor: AppColors.raisinBlack,
          actions: [
            // LikeButton(
            //   isLiked: isLiked,
            //   size: 25,
            //   likeBuilder: (isLiked) {
            //     return SvgPicture.asset(
            //       isLiked ? Assets.iconsFavourite : Assets.iconsLike,
            //     );
            //   },
            //   onTap: (isLiked) async {
            //     return toggleFavorite(context, client);
            //   },
            // ),
            IconButton(
              onPressed: () {
                OptionsBottomSheet.showOptionBottomSheet(
                  context: context,
                  onShareTap: () {
                    ShareHelpers.characterShareOptions(characterId);
                  },
                  onViewOnAniListTap: () {
                    final uri = AnilistUriHelpers.getCharacterUri(
                      characterId.toString(),
                    );
                    UrlHelpers.launchUri(context, uri);
                  },
                  onCopyLinkTap: () {
                    final url = UrlHelpers.getCharacterLocalUrl(characterId);
                    UrlHelpers.copyUrlToClipboard(context, url);
                  },
                );
              },
              icon: SvgPicture.asset(
                Assets.iconsMoreVertical,
              ),
            ),
          ],
        ),
        body: BlocBuilder<CharacterDetailBloc, CharacterDetailState>(
          builder: (context, state) {
            if (state is CharacterDetailInitial ||
                state is CharacterDetailLoading) {
              return const SimpleLoading();
            } else if (state is CharacterDetailLoaded) {
              final character = state.character;
              return SingleChildScrollView(
                padding: const EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
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
                    if (character.name != null) ...[
                      twentySpacing,
                      NameWidget(
                        name: character.name!,
                      ),
                      if (character.description != null) ...[
                        twentySpacing,
                        const Text(
                          'Description',
                          style: AppTextStyles.titleSectionStyle,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Description(
                          description: character.description,
                        ),
                      ]
                    ],
                    fifteenSpacing,
                    const Text(
                      'Media',
                      style: AppTextStyles.titleSectionStyle,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const MediaGridList<CharacterMediaBloc>(
                      mediaType: Enum$MediaType.ANIME,
                      crossAxisCount: 3,
                    ),
                  ],
                ),
              );
            }
            return const Center(
              child: Text(
                'Unknown State',
                style: TextStyle(
                  color: AppColors.white,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
