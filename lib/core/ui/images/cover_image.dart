import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:otaku_world/graphql/__generated/graphql/schema.graphql.dart';

import '../../../services/caching/image_cache_manager.dart';
import '../placeholders/poster_placeholder.dart';

class CoverImage extends StatelessWidget {
  const CoverImage({
    super.key,
    required this.imageUrl,
    required this.type,
    this.animeRadius = 15,
    // required this.placeHolderName,
  });

  final String imageUrl;
  final Enum$MediaType type;
  final double animeRadius;

  // final String placeHolderName;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: (type == Enum$MediaType.ANIME)
          ? BorderRadius.circular(animeRadius)
          : BorderRadius.circular(5),
      child: CachedNetworkImage(
        cacheManager: ImageCacheManager.instance,
        imageUrl: imageUrl,
        useOldImageOnUrlChange: true,
        imageBuilder: (context, imageProvider) {
          return Image(
            image: imageProvider,
            fit: BoxFit.cover,
          );
        },
        placeholder: (context, url) {
          return const PosterPlaceholder();
        },
        errorWidget: (context, url, error) {
          return const PosterPlaceholder();
        },
      ),
    );
  }
}
