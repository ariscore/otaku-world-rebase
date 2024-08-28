import 'dart:developer';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:otaku_world/graphql/__generated/graphql/fragments.graphql.dart';

import '../../../generated/assets.dart';
import '../../../theme/colors.dart';
import '../../../utils/formatting_utils.dart';

class ActivityReplyCard extends StatelessWidget {
  const ActivityReplyCard({super.key, required this.activityReply});

  final Fragment$ActivityReply activityReply;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              AppColors.japaneseIndigo,
              AppColors.darkCharcoal,
            ],
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildUser(context),
            const SizedBox(height: 10),
            // Main content
            Text(
              activityReply.text!,
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            // Other details
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: Row(
                      children: [
                        SvgPicture.asset(Assets.iconsLike),
                        const SizedBox(width: 5),
                        Text(
                          activityReply.likeCount.toString(),
                          style: Theme.of(context).textTheme.headlineSmall,
                        ),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    log('Reporting');
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: SvgPicture.asset(Assets.iconsAlert),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 5),
            Text(
              FormattingUtils.formatUnixTimestamp(activityReply.createdAt),
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                color: AppColors.white.withOpacity(0.8),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildUser(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 35,
          height: 35,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            border: Border.fromBorderSide(
              BorderSide(color: AppColors.sunsetOrange),
            ),
          ),
          // padding: const EdgeInsets.all(1),
          child: ClipOval(
            child: CachedNetworkImage(
              imageUrl: activityReply.user?.avatar?.medium ?? '',
              imageBuilder: (context, imageProvider) {
                return Image(image: imageProvider, fit: BoxFit.cover);
              },
              placeholder: (context, url) {
                return _buildPlaceholderProfile();
              },
              errorWidget: (context, url, error) {
                return _buildPlaceholderProfile();
              },
            ),
          ),
        ),
        const SizedBox(width: 10),
        Flexible(
          child: Text(
            activityReply.user?.name ?? '',
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  fontFamily: 'Poppins',
                ),
          ),
        ),
      ],
    );
  }

  Widget _buildPlaceholderProfile() {
    return Container(
      padding: const EdgeInsets.all(3),
      color: AppColors.darkGray,
      child: SvgPicture.asset(Assets.assetsLogoBw),
    );
  }
}
