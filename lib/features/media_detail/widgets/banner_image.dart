import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../core/ui/placeholders/poster_placeholder.dart';

class BannerImage extends StatelessWidget {
  const BannerImage({
    super.key,
    required this.url,
    // required this.placeHolderName,
  });

  final String url;

  // final String placeHolderName;
  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: url,
      imageBuilder: (context, imageProvider) {
        return Container(
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: imageProvider,
              fit: BoxFit.cover,
            ),
          ),
        );
      },
      placeholder: (context, url) {
        return const PosterPlaceholder(size: 100);
      },
      errorWidget: (context, url, error) {
        return const PosterPlaceholder(size: 100);
      },
    );
  }
}
