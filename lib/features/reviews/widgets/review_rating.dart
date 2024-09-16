import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:like_button/like_button.dart';
import 'package:otaku_world/bloc/graphql_client/graphql_client_cubit.dart';
import 'package:otaku_world/bloc/reviews/rate_review/rate_review_cubit.dart';
import 'package:otaku_world/graphql/__generated/graphql/fragments.graphql.dart';
import 'package:otaku_world/graphql/__generated/graphql/schema.graphql.dart';
import 'package:otaku_world/theme/colors.dart';

import '../../../generated/assets.dart';
import '../../../utils/ui_utils.dart';

class ReviewRating extends StatefulWidget {
  const ReviewRating({super.key, required this.review});

  final Fragment$ReviewDetail review;

  @override
  State<ReviewRating> createState() => _ReviewRatingState();
}

class _ReviewRatingState extends State<ReviewRating> {
  bool isUpVote = false, isDownVote = false;
  int upVoteCount = 0, downVoteCount = 0;

  @override
  void initState() {
    isUpVote = widget.review.userRating == Enum$ReviewRating.UP_VOTE;
    isDownVote = widget.review.userRating == Enum$ReviewRating.DOWN_VOTE;
    upVoteCount = widget.review.rating ?? 0;
    downVoteCount =
        (widget.review.ratingAmount ?? 0) - (widget.review.rating ?? 0);

    super.initState();
  }

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
            _buildRatingOption(
              context,
              isLiked: isUpVote,
              count: upVoteCount,
              asset: Assets.iconsThumbsUp,
              likedAsset: Assets.iconsThumbsUpFilled,
              showColors: true,
              onPressed: (isLiked) {
                return toggleUpVote(context, client, isUpVote: isUpVote);
              },
            ),
            const SizedBox(width: 20),
            _buildRatingOption(
              context,
              isLiked: isDownVote,
              count: downVoteCount,
              asset: Assets.iconsThumbsDown,
              likedAsset: Assets.iconsThumbsDownFilled,
              showColors: false,
              onPressed: (isLiked) async {
                return toggleDownVote(context, client, isDownVote: isDownVote);
              },
            ),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SvgPicture.asset(Assets.iconsStar, width: 25),
            const SizedBox(
              width: 5,
            ),
            Text(
              (widget.review.score ?? 0).toString(),
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall
                  ?.copyWith(fontFamily: 'Poppins'),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildRatingOption(
    BuildContext context, {
    required bool isLiked,
    required int count,
    required String asset,
    required String likedAsset,
    required bool showColors,
    required Future<bool?> Function(bool isLiked) onPressed,
  }) {
    return Row(
      children: [
        LikeButton(
          isLiked: isLiked,
          likeCount: count,
          likeCountPadding: const EdgeInsets.only(left: 5),
          size: 35,
          circleColor: showColors
              ? const CircleColor(
                  start: AppColors.kiwi,
                  end: Colors.green,
                )
              : const CircleColor(
                  start: AppColors.maxRed,
                  end: AppColors.sunsetOrange,
                ),
          bubblesColor: showColors
              ? const BubblesColor(
                  dotPrimaryColor: AppColors.kiwi,
                  dotSecondaryColor: Colors.green,
                )
              : const BubblesColor(
                  dotPrimaryColor: AppColors.raisinBlack,
                  dotSecondaryColor: AppColors.raisinBlack,
                ),
          likeBuilder: (isLiked) {
            return SvgPicture.asset(isLiked ? likedAsset : asset);
          },
          countBuilder: (likeCount, isLiked, text) {
            return Text(
              likeCount.toString(),
              style: Theme.of(context).textTheme.headlineMedium,
            );
          },
          onTap: onPressed,
        ),
      ],
    );
  }

  Future<bool?> toggleUpVote(
    BuildContext context,
    GraphQLClient client, {
    required bool isUpVote,
  }) async {
    log('Is upvote: $isUpVote', name: 'ReviewRating');
    final result = await RateReviewCubit().toggleUpVote(
      client,
      reviewId: widget.review.id,
      isUpVote: isUpVote,
    );
    return result.fold(
      (error) {
        log('Got error: $error', name: 'ReviewRating');
        UIUtils.showSnackBar(context, error);
        return null;
      },
      (isLiked) {
        this.isUpVote = isLiked;
        upVoteCount += isLiked ? 1 : -1;

        if (isDownVote) {
          setState(() {
            isDownVote = false;
            downVoteCount--;
          });
        }
        return isLiked;
      },
    );
  }

  Future<bool?> toggleDownVote(
    BuildContext context,
    GraphQLClient client, {
    required bool isDownVote,
  }) async {
    log('Is downvote: $isDownVote', name: 'ReviewRating');
    final result = await RateReviewCubit().toggleDownVote(
      client,
      reviewId: widget.review.id,
      isDownVote: isDownVote,
    );
    return result.fold(
      (error) {
        log('Got error: $error', name: 'ReviewRating');
        UIUtils.showSnackBar(context, error);
        return null;
      },
      (isLiked) {
        this.isDownVote = isLiked;
        downVoteCount += isLiked ? 1 : -1;

        if (isUpVote) {
          setState(() {
            isUpVote = false;
            upVoteCount--;
          });
        }
        return isLiked;
      },
    );
  }
}
