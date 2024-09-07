import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:like_button/like_button.dart';

import '../../../bloc/graphql_client/graphql_client_cubit.dart';
import '../../../bloc/social/like_activity/like_activity_cubit.dart';
import '../../../config/router/router_constants.dart';
import '../../../generated/assets.dart';

class ActivityActions extends StatelessWidget {
  const ActivityActions({
    super.key,
    required this.likeCount,
    required this.replyCount,
    required this.activityId,
    required this.isLiked,
  });

  final int activityId;
  final bool isLiked;
  final int likeCount;
  final int replyCount;

  @override
  Widget build(BuildContext context) {
    final client =
        (context.read<GraphqlClientCubit>().state as GraphqlClientInitialized)
            .client;

    return Row(
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
                  '${RouteConstants.activityReplies}?id=$activityId',
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
    );
  }

  Future<bool?> likeActivity(
    BuildContext context,
    GraphQLClient client,
    bool isLiked,
  ) async {
    final result = await LikeActivityCubit().toggleLike(
      client,
      activityId: activityId,
    );
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
  }
}
