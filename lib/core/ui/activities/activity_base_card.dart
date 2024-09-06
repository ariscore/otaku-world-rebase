import 'dart:developer';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:like_button/like_button.dart';
import 'package:otaku_world/bloc/graphql_client/graphql_client_cubit.dart';
import 'package:otaku_world/bloc/social/like_activity/like_activity_cubit.dart';
import 'package:otaku_world/config/router/router_constants.dart';
import 'package:otaku_world/generated/assets.dart';
import 'package:otaku_world/theme/colors.dart';
import 'package:otaku_world/utils/formatting_utils.dart';

class ActivityBaseCard extends StatelessWidget {
  const ActivityBaseCard({
    super.key,
    required this.id,
    required this.child,
    required this.avatarUrl,
    required this.userName,
    this.receiverAvatarUrl,
    this.receiverUserName,
    required this.likeCount,
    required this.isLiked,
    required this.replyCount,
    required this.timestamp,
  });

  final Widget child;
  final int id;
  final String? avatarUrl;
  final String? userName;
  final String? receiverAvatarUrl;
  final String? receiverUserName;
  final int likeCount;
  final bool isLiked;
  final int replyCount;
  final int timestamp;

  @override
  Widget build(BuildContext context) {
    final client =
        (context.read<GraphqlClientCubit>().state as GraphqlClientInitialized)
            .client;

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
            // Name and Avatar
            Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width - 40,
                  child: Wrap(
                    runSpacing: 5,
                    children: [
                      _buildUser(
                        context,
                        avatarUrl: avatarUrl,
                        userName: userName,
                      ),
                      if (receiverAvatarUrl != null)
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 8,
                            horizontal: 10,
                          ),
                          child: SvgPicture.asset(Assets.iconsArrowRight),
                        ),
                      if (receiverAvatarUrl != null)
                        _buildUser(
                          context,
                          avatarUrl: receiverAvatarUrl,
                          userName: receiverUserName,
                        ),
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(height: 10),
            // Main content
            child,
            // Other details
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const SizedBox(width: 5),
                    LikeButton(
                      isLiked: isLiked,
                      likeCount: likeCount,
                      size: 25,
                      likeCountPadding: const EdgeInsets.only(left: 5),
                      likeBuilder: (isLiked) {
                        return SvgPicture.asset(
                          isLiked ? Assets.iconsFavourite : Assets.iconsLike,
                        );
                      },
                      countBuilder: (likeCount, isLiked, text) {
                        return Text(
                          likeCount.toString(),
                          style: Theme.of(context).textTheme.headlineMedium,
                        );
                      },
                      onTap: (isLiked) {
                        return likeActivity(context, client, isLiked);
                      },
                    ),
                    const SizedBox(width: 15),
                    InkWell(
                      onTap: () {
                        context.push(
                          '${RouteConstants.activityReplies}?id=$id',
                        );
                      },
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            Assets.iconsComment,
                            width: 25,
                          ),
                          const SizedBox(width: 5),
                          Text(
                            replyCount.toString(),
                            style: Theme.of(context).textTheme.headlineMedium,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(Assets.iconsMoreHorizontal),
                ),
              ],
            ),
            const SizedBox(height: 5),
            Text(
              FormattingUtils.formatUnixTimestamp(timestamp),
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    color: AppColors.white.withOpacity(0.8),
                  ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildUser(
    BuildContext context, {
    required String? avatarUrl,
    required String? userName,
  }) {
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
              imageUrl: avatarUrl ?? '',
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
            userName ?? '',
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

  Future<bool?> likeActivity(
    BuildContext context,
    GraphQLClient client,
    bool isLiked,
  ) async {
    final result = await LikeActivityCubit().toggleLike(client, activityId: id);
    return result.fold(
      (error) {
        log('Got error: $error', name: 'ActivityLike');
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(error),
          ),
        );
        return null;
      },
      (isLiked) {
        return isLiked;
      },
    );
    // return await LikeActivityCubit().toggleLike(client, activityId: id);
  }
}
