import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:like_button/like_button.dart';
import 'package:otaku_world/bloc/graphql_client/graphql_client_cubit.dart';
import 'package:otaku_world/bloc/reviews/rate_review/rate_review_cubit.dart';
import 'package:otaku_world/bloc/reviews/reviews/reviews_bloc.dart';
import 'package:otaku_world/graphql/__generated/graphql/fragments.graphql.dart';
import 'package:otaku_world/graphql/__generated/graphql/schema.graphql.dart';
import 'package:otaku_world/theme/colors.dart';

import '../../../generated/assets.dart';
import '../../../utils/ui_utils.dart';

class ReviewRating extends StatefulWidget {
  const ReviewRating({
    super.key,
    required this.review,
    required this.onRatingUpdated,
  });

  final Fragment$ReviewDetail review;
  final Function(Enum$ReviewRating userRating) onRatingUpdated;

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
            _RatingOption(
              isLiked: isUpVote,
              count: upVoteCount,
              showColors: true,
              asset: Assets.iconsThumbsUp,
              likedAsset: Assets.iconsThumbsUpFilled,
              onPressed: (isLiked) {
                return toggleUpVote(context, client, isUpVote: isUpVote);
              },
            ),
            const SizedBox(width: 20),
            _RatingOption(
              isLiked: isDownVote,
              count: downVoteCount,
              showColors: false,
              asset: Assets.iconsThumbsDown,
              likedAsset: Assets.iconsThumbsDownFilled,
              onPressed: (isLiked) {
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
        widget.onRatingUpdated(
          this.isUpVote ? Enum$ReviewRating.UP_VOTE : Enum$ReviewRating.NO_VOTE,
        );
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

        widget.onRatingUpdated(
          this.isDownVote
              ? Enum$ReviewRating.DOWN_VOTE
              : Enum$ReviewRating.NO_VOTE,
        );

        return isLiked;
      },
    );
  }
}

class _RatingOption extends StatelessWidget {
  const _RatingOption({
    required this.isLiked,
    required this.count,
    required this.showColors,
    required this.asset,
    required this.likedAsset,
    required this.onPressed,
  });

  final bool isLiked;
  final int count;
  final bool showColors;
  final String asset;
  final String likedAsset;
  final Future<bool?> Function(bool isLiked) onPressed;

  @override
  Widget build(BuildContext context) {
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
          onTap: onPressed,
        ),
      ],
    );
  }
}
