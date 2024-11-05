import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:like_button/like_button.dart';
import 'package:otaku_world/bloc/viewer/viewer_bloc.dart';
import 'package:otaku_world/core/ui/dialogs/alert_dialog.dart';
import 'package:otaku_world/features/reviews/widgets/bottom_sheet_component.dart';
import 'package:otaku_world/graphql/__generated/graphql/fragments.graphql.dart';
import 'package:otaku_world/utils/ui_utils.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../bloc/graphql_client/graphql_client_cubit.dart';
import '../../../bloc/social/like_activity/like_activity_cubit.dart';
import '../../../generated/assets.dart';
import '../../../theme/colors.dart';

class ActivityActions extends StatelessWidget {
  const ActivityActions({
    super.key,
    required this.userId,
    required this.likeCount,
    required this.replyCount,
    required this.activityId,
    required this.isLiked,
    required this.type,
    required this.isSubscribed,
    this.isCurrentUserMessage = false,
    required this.onToggleLike,
    required this.onToggleSubscription,
    required this.onDelete,
    required this.onReply,
    required this.onEdit,
  });

  final int userId;
  final int activityId;
  final bool isLiked;
  final int likeCount;
  final int replyCount;
  final Object type;
  final bool isCurrentUserMessage;
  final bool isSubscribed;
  final VoidCallback onToggleLike;
  final VoidCallback onToggleSubscription;
  final VoidCallback onDelete;
  final VoidCallback onReply;
  final VoidCallback onEdit;

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
                return _likeActivity(context, client);
              },
            ),
            const SizedBox(width: 15),
            InkWell(
              onTap: onReply,
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
          onPressed: () {
            // Show options bottom sheet
            _showOptions(context);
          },
          icon: SvgPicture.asset(Assets.iconsMoreHorizontal),
        ),
      ],
    );
  }

  Future<bool?> _likeActivity(
    BuildContext context,
    GraphQLClient client,
  ) async {
    final result = await LikeActivityCubit().toggleLike(
      client,
      activityId: activityId,
    );
    return result.fold(
      (error) {
        log('Got error: $error', name: 'ActivityLike');
        UIUtils.showSnackBar(context, error);
        return null;
      },
      (isLiked) {
        // context.read<ActivitiesBloc>().toggleLike(activityId: activityId);
        onToggleLike();
        return isLiked;
      },
    );
  }

  void _showOptions(BuildContext context) {
    final state = context.read<ViewerBloc>().state;
    final client =
        (context.read<GraphqlClientCubit>().state as GraphqlClientInitialized)
            .client;

    showModalBottomSheet(
      context: context,
      backgroundColor: AppColors.darkCharcoal,
      isScrollControlled: true,
      useRootNavigator: true,
      builder: (context) {
        List<BottomSheetComponent> options = [];

        if (state is ViewerLoaded) {
          final isCurrentUser = state.user.id == userId;

          if (isCurrentUser) {
            options.add(
              BottomSheetComponent(
                iconName: Assets.iconsDelete,
                text: 'Delete',
                onTap: () {
                  context.pop();
                  onDelete();
                },
              ),
            );

            if (type != Fragment$ListActivity) {
              options.add(
                BottomSheetComponent(
                  iconName: Assets.iconsEditSmall,
                  text: 'Edit',
                  onTap: () {
                    context.pop();
                    onEdit();
                  },
                ),
              );
            }

            if (type == Fragment$MessageActivity && !isCurrentUserMessage) {
              options.add(
                BottomSheetComponent(
                  iconName: Assets.iconsAlert,
                  text: 'Report',
                  onTap: () => _report(context),
                ),
              );
            }
          } else if (type != Fragment$ListActivity) {
            options.add(
              BottomSheetComponent(
                iconName: Assets.iconsAlert,
                text: 'Report',
                onTap: () => _report(context),
              ),
            );

            if (type == Fragment$MessageActivity && isCurrentUserMessage) {
              options.add(
                BottomSheetComponent(
                  iconName: Assets.iconsDelete,
                  text: 'Delete',
                  onTap: () {
                    context.pop();
                    onDelete();
                  },
                ),
              );
            }
          }
        } else if (state is! ViewerLoading) {
          context.read<ViewerBloc>().add(LoadViewer(client));
        }

        // Common options
        options.add(
          BottomSheetComponent(
            iconName: Assets.iconsLinkSquare,
            text: 'View on AniList',
            onTap: () => _viewOnAniList(context),
          ),
        );

        options.add(
          BottomSheetComponent(
            iconName: Assets.iconsShare,
            text: 'Share',
            onTap: () => _share(context),
          ),
        );

        options.add(
          BottomSheetComponent(
            iconName: Assets.iconsCopyLink,
            text: 'Copy Link',
            onTap: () => _copyLink(context),
          ),
        );

        return Container(
          decoration: const BoxDecoration(
            color: AppColors.darkCharcoal,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            ),
          ),
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 10,
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 5,
                  width: 50,
                  decoration: ShapeDecoration(
                    color: AppColors.lightSilver,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                BottomSheetComponent(
                  iconName: isSubscribed
                      ? Assets.iconsNotificationOff
                      : Assets.iconsNotification,
                  text: isSubscribed ? 'Unsubscribe' : 'Subscribe',
                  onTap: () {
                    onToggleSubscription();
                    context.pop();
                  },
                ),
                Container(
                  color: AppColors.white.withOpacity(0.5),
                  height: 1,
                ),
                const SizedBox(height: 20),
                ...options,
              ],
            ),
          ),
        );
      },
    );
  }

  void _report(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return CustomAlertDialog(
          title: 'Report Activity',
          body: 'This action must be completed on AniList website. Continue?',
          confirmText: 'Report',
          cancelText: 'Cancel',
          onConfirm: () {
            _viewOnAniList(context);
          },
          onCancel: context.pop,
        );
      },
    );
  }

  void _copyLink(BuildContext context) {
    final url = 'https://anilist.co/activity/$activityId';
    Clipboard.setData(ClipboardData(text: url)).then((v) {
      context.pop();
      UIUtils.showSnackBar(context, 'Link copied!');
    });
  }

  void _viewOnAniList(BuildContext context) {
    final Uri reviewUri = Uri(
      scheme: 'https',
      host: 'anilist.co',
      path: 'activity/$activityId',
    );
    context.pop();
    launchUrl(
      reviewUri,
      mode: LaunchMode.externalApplication,
    ).then(
      (isSuccess) {
        if (!isSuccess) {
          UIUtils.showSnackBar(context, "Can't open the link!");
        }
      },
      onError: (e) {
        UIUtils.showSnackBar(context, "Can't open the link!");
      },
    );
  }

  void _share(BuildContext context) {
    context.pop();
    Share.share(
      'Checkout this activity: https://otaku-world-8a7f4.firebaseapp.com/'
      'activity?id=$activityId',
    );
  }
}
