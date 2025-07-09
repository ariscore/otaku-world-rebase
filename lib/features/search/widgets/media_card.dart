import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:otaku_world/graphql/__generated/graphql/schema.graphql.dart';

import '../../../core/ui/placeholders/poster_placeholder.dart';
import '../../../generated/assets.dart';
import '../../../graphql/__generated/graphql/fragments.graphql.dart';
import '../../../services/caching/image_cache_manager.dart';
import '../../../theme/colors.dart';
import '../../../utils/formatting_utils.dart';
import '../../../utils/navigation_helper.dart';

class ResultMediaCard extends StatelessWidget {
  const ResultMediaCard({super.key, this.media});

  final Fragment$SearchResultMedia? media;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    if (media == null) return const SizedBox();

    return GestureDetector(
      onTap: () => NavigationHelper.goToMediaDetailScreen(
        context: context,
        mediaId: media!.id,
      ),
      child: Container(
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
            _buildMediaPoster(media?.coverImage?.large, size),
            const SizedBox(width: 5),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    media!.title!.userPreferred!,
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                          fontFamily: 'Poppins',
                        ),
                    maxLines: 5,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Text(
                    '${media!.startDate?.year == null ? '?' : media!.startDate!.year},'
                    ' ${media!.format == null ? 'Unknown' : FormattingUtils.getMediaFormatString(media!.format!)}',
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          color: AppColors.white.withValues(alpha: 0.8),
                          fontFamily: 'Poppins',
                        ),
                  ),
                  if (media?.meanScore != null) ...[
                    const Spacer(),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          Assets.iconsStar,
                        ),
                        const SizedBox(width: 1),
                        Text(
                          '${media!.meanScore}',
                          style:
                              Theme.of(context).textTheme.titleLarge?.copyWith(
                                    fontFamily: 'Poppins',
                                  ),
                        ),
                      ],
                    ),
                  ],
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMediaPoster(String? imageUrl, Size size) {
    return (imageUrl != null)
        ? CachedNetworkImage(
            cacheManager: ImageCacheManager.instance,
            imageUrl: imageUrl,
            width: 90,
            fit: BoxFit.cover,
            imageBuilder: (context, imageProvider) {
              return AspectRatio(
                aspectRatio: 0.7,
                child: ClipRRect(
                  borderRadius: (media!.type == Enum$MediaType.ANIME)
                      ? BorderRadius.circular(15)
                      : BorderRadius.circular(5),
                  child: Image(
                    image: imageProvider,
                    fit: BoxFit.cover,
                  ),
                ),
              );
            },
            errorWidget: (context, url, error) {
              return _buildPlaceholderImage();
            },
            placeholder: (context, url) {
              return _buildPlaceholderImage();
            },
          )
        : _buildPlaceholderImage();
  }

  Widget _buildPlaceholderImage() {
    return ClipRRect(
      borderRadius: (media?.type == Enum$MediaType.ANIME)
          ? BorderRadius.circular(15)
          : BorderRadius.circular(5),
      child: const PosterPlaceholder(),
    );
  }
}
