import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:otaku_world/utils/navigation_helper.dart';

import '../../../core/ui/placeholders/poster_placeholder.dart';
import '../../../graphql/__generated/graphql/fragments.graphql.dart';
import '../../../services/caching/image_cache_manager.dart';
import '../../../theme/colors.dart';
import '../../../utils/ui_utils.dart';

class ResultUserCard extends StatelessWidget {
  const ResultUserCard({super.key, required this.user});

  final Fragment$SearchResultUser? user;

  @override
  Widget build(BuildContext context) {
    if (user == null) return const SizedBox();

    final size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () => NavigationHelper.goToProfileScreen(
        context: context,
        userId: user!.id,
      ),
      child: Container(
        height: 110,
        margin: const EdgeInsets.symmetric(
          vertical: 5,
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 10,
        ),
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          gradient: const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [AppColors.japaneseIndigo, AppColors.darkCharcoal],
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _buildUserImage(user!.avatar?.large, size),
            const SizedBox(width: 5),
            SizedBox(
              width: UIUtils.getWidgetWidth(
                targetWidgetWidth: 225,
                screenWidth: size.width,
              ),
              child: Text(
                user!.name,
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      fontFamily: 'Poppins',
                    ),
                maxLines: 5,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildUserImage(String? imageUrl, Size size) {
    return (imageUrl != null)
        ? CachedNetworkImage(
            cacheManager: ImageCacheManager.instance,
            imageUrl: imageUrl,
            width: UIUtils.getWidgetWidth(
              targetWidgetWidth: 85,
              screenWidth: size.width,
            ),
            fit: BoxFit.cover,
            imageBuilder: (context, imageProvider) {
              return AspectRatio(
                aspectRatio: 0.9,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Image(
                    image: imageProvider,
                    fit: BoxFit.cover,
                  ),
                ),
              );
            },
            errorWidget: (context, url, error) {
              return _buildPlaceholderImage110x162();
            },
            placeholder: (context, url) {
              return _buildPlaceholderImage110x162();
            },
          )
        : _buildPlaceholderImage110x162();
  }

  Widget _buildPlaceholderImage110x162() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(5),
      child: const PosterPlaceholder(),
    );
  }
}
