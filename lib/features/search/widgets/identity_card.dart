import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/ui/placeholders/poster_placeholder.dart';
import '../../../generated/assets.dart';
import '../../../services/caching/image_cache_manager.dart';
import '../../../theme/colors.dart';
import '../../../utils/ui_utils.dart';

class IdentityCard extends StatelessWidget {
  const IdentityCard({
    super.key,
    required this.imageUrl,
    required this.name,
    required this.favorites,
  });

  final String? imageUrl;
  final String name;
  final String favorites;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      height: 150,
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
        children: [
          _buildCharacterImage(imageUrl, size),
          const SizedBox(width: 5),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: UIUtils.getWidgetWidth(
                  targetWidgetWidth: 225,
                  screenWidth: size.width,
                ),
                child: Text(
                  name,
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                        fontFamily: 'Poppins',
                      ),
                  maxLines: 5,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    Assets.iconsFavourite,
                    width: 16,
                    height: 16,
                  ),
                  const SizedBox(width: 2),
                  Text(
                    favorites,
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          fontFamily: 'Poppins',
                        ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildCharacterImage(String? imageUrl, Size size) {
    return (imageUrl != null)
        ? CachedNetworkImage(
            cacheManager: ImageCacheManager.instance,
            imageUrl: imageUrl,
            width: UIUtils.getWidgetWidth(
              targetWidgetWidth: 91,
              screenWidth: size.width,
            ),
            fit: BoxFit.cover,
            imageBuilder: (context, imageProvider) {
              return AspectRatio(
                aspectRatio: 0.7,
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
