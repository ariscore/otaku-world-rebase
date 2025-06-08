import 'dart:developer';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:like_button/like_button.dart';
import 'package:otaku_world/bloc/graphql_client/graphql_client_cubit.dart';
import 'package:otaku_world/bloc/viewer/viewer_bloc.dart';
import 'package:otaku_world/config/router/router_constants.dart';
import 'package:otaku_world/core/ui/markdown/markdown.dart';
import 'package:otaku_world/graphql/__generated/graphql/fragments.graphql.dart';
import 'package:otaku_world/utils/navigation_helper.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../bloc/social/activity_replies/activity_replies_bloc.dart';
import '../../../constants/string_constants.dart';
import '../../../features/reviews/widgets/bottom_sheet_component.dart';
import '../../../generated/assets.dart';
import '../../../theme/colors.dart';
import '../../../utils/formatting_utils.dart';
import '../../../utils/ui_utils.dart';
import '../dialogs/alert_dialog.dart';

class ActivityReplyCard extends StatelessWidget {
  const ActivityReplyCard({
    super.key,
    required this.activityReply,
    required this.onDeleted,
  });

  final Fragment$ActivityReply activityReply;
  final VoidCallback onDeleted;

  @override
  Widget build(BuildContext context) {
    bool isCurrentUser = false;
    final state = context.read<ViewerBloc>().state;
    if (state is ViewerLoaded) {
      isCurrentUser = activityReply.user?.id == state.user.id;
    }

    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: GestureDetector(
        onTap: () => NavigationHelper.goToProfileScreen(
          context: context,
          userId: activityReply.user?.id ?? 0,
        ),
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
              MarkdownWidget(data: activityReply.text!),
              // Other details
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  LikeButton(
                    isLiked: activityReply.isLiked,
                    likeCount: activityReply.likeCount,
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
                    onTap: (isLiked) async {
                      final client =
                          context.read<GraphqlClientCubit>().getClient();
                      if (client != null) {
                        return await _likeActivity(context, client);
                      } else {
                        return isLiked;
                      }
                    },
                  ),
                  isCurrentUser
                      ? IconButton(
                          onPressed: () => _showOptions(context),
                          icon: SvgPicture.asset(Assets.iconsMoreHorizontal),
                        )
                      : GestureDetector(
                          onTap: () => _report(context),
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
                      color: AppColors.white.withValues(alpha:0.8),
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<bool?> _likeActivity(
    BuildContext context,
    GraphQLClient client,
  ) async {
    final bloc = context.read<ActivityRepliesBloc>();
    final result = await bloc.toggleLike(
      client,
      replyId: activityReply.id,
    );
    return result.fold(
      (error) {
        log('Got error: $error', name: 'ActivityLike');
        UIUtils.showSnackBar(context, error);
        return null;
      },
      (isLiked) {
        return isLiked;
      },
    );
  }

  void _showOptions(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: AppColors.darkCharcoal,
      isScrollControlled: true,
      useRootNavigator: true,
      builder: (bottomSheetContext) {
        List<BottomSheetComponent> options = [
          BottomSheetComponent(
            iconName: Assets.iconsDelete,
            text: 'Delete',
            onTap: () => _delete(context),
          ),
          BottomSheetComponent(
            iconName: Assets.iconsEditSmall,
            text: 'Edit',
            onTap: () => _edit(context),
          ),
        ];

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
                ...options,
              ],
            ),
          ),
        );
      },
    );
  }

  void _edit(BuildContext context) {
    context.pop();
    context.push(
      '${RouteConstants.editActivityReply}?id=${activityReply.id}&activity_id=${activityReply.activityId}',
      extra: {
        'text': activityReply.text,
        'on_replied': (Fragment$ActivityReply reply) {
          final bloc = context.read<ActivityRepliesBloc>();
          bloc.editReply(reply);
        },
      },
    );
  }

  void _delete(BuildContext context) {
    showDialog(
      context: context,
      builder: (dialogContext) {
        return CustomAlertDialog(
          title: 'Delete Activity Reply',
          body: 'Are you sure you want to delete this activity reply?',
          confirmText: 'Delete',
          onConfirm: () {
            dialogContext.pop();
            context.pop();
            final client = context.read<GraphqlClientCubit>().getClient();
            if (client != null) {
              final bloc = context.read<ActivityRepliesBloc>();
              bloc
                  .deleteActivityReply(
                client,
                replyId: activityReply.id,
              )
                  .then((e) {
                if (e != null) {
                  UIUtils.showSnackBar(context, e);
                } else {
                  onDeleted();
                }
              });
            } else {
              UIUtils.showSnackBar(context, ActivityConstants.clientError);
            }
          },
          onCancel: dialogContext.pop,
        );
      },
    );
  }

  void _report(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return CustomAlertDialog(
          title: 'Report Activity Reply',
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

  void _viewOnAniList(BuildContext context) {
    final Uri reviewUri = Uri(
      scheme: 'https',
      host: 'anilist.co',
      path: 'activity/${activityReply.activityId}',
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
