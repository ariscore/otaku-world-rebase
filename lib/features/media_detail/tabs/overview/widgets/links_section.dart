import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:otaku_world/generated/assets.dart';
import 'package:otaku_world/graphql/__generated/graphql/fragments.graphql.dart';
import 'package:otaku_world/utils/ui_utils.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../../../../../theme/colors.dart';

class LinkSection extends StatelessWidget {
  const LinkSection({super.key, required this.externalLinks});

  final Fragment$MediaDetailed$externalLinks externalLinks;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (externalLinks.isDisabled == true || externalLinks.url == null)
          ? null
          : () => launchUrlString(
                externalLinks.url!,
                mode: LaunchMode.externalApplication,
              ),
      child: Container(
        height: 45,
        padding: const EdgeInsets.all(5),
        clipBehavior: Clip.antiAlias,
        decoration: ShapeDecoration(
          gradient: const LinearGradient(
            begin: Alignment(0.00, -1.00),
            end: Alignment(0, 1),
            colors: [Color(0xFF263749), Color(0xFF303030)],
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 35,
              height: 35,
              padding: const EdgeInsets.all(5),
              clipBehavior: Clip.antiAlias,
              decoration: ShapeDecoration(
                color: UIUtils.hexToColor(externalLinks.color ?? "#202020"),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
              ),
              child: Center(
                child: externalLinks.icon == null
                    ? SvgPicture.asset(
                        Assets.iconsOpenLink2,
                      )
                    : CachedNetworkImage(
                        imageUrl: externalLinks.icon!,
                        errorWidget: (context, url, error) => const SizedBox(),
                      ),
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            Text(
              externalLinks.site.toString(),
              style: const TextStyle(
                color: AppColors.white,
                fontSize: 16,
                fontFamily: 'Roboto Condensed',
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
