import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:otaku_world/bloc/media_detail/social/social_bloc.dart';
import 'package:otaku_world/constants/string_constants.dart';
import 'package:otaku_world/core/ui/activities/activity_actions.dart';
import 'package:otaku_world/features/reviews/widgets/review_profile_photo.dart';
import 'package:otaku_world/graphql/__generated/graphql/fragments.graphql.dart';
import 'package:otaku_world/utils/extensions.dart';
import 'package:otaku_world/utils/navigation_helper.dart';

import '../../../../../bloc/graphql_client/graphql_client_cubit.dart';
import '../../../../../config/router/router_constants.dart';
import '../../../../../core/ui/dialogs/alert_dialog.dart';
import '../../../../../theme/colors.dart';
import '../../../../../theme/decorations.dart';
import '../../../../../utils/formatting_utils.dart';
import '../../../../../utils/ui_utils.dart';

class SocialCard extends StatefulWidget {
  const SocialCard({
    super.key,
    required this.activity,
  });

  final Fragment$ListActivity activity;

  @override
  State<SocialCard> createState() => _SocialCardState();
}

class _SocialCardState extends State<SocialCard> {
  bool isSubscribed = false;

  @override
  void initState() {
    isSubscribed = widget.activity.isSubscribed ?? false;
    super.initState();
  }

  final TextStyle userNameTextStyle = const TextStyle(
    color: AppColors.white,
    fontSize: 12,
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w400,
  );

  final TextStyle progressOfMediaActivity = const TextStyle(
    color: AppColors.white,
    fontSize: 14,
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w600,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: Decorations.simpleContainer,
      height: 140,
      width: MediaQuery.of(context).size.width - 20,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () => NavigationHelper.goToProfileScreen(
                  context: context,
                  userId: widget.activity.user?.id ?? 0,
                ),
                child: ReviewProfilePhoto(
                  profilePicUrl: widget.activity.user?.avatar?.medium ??
                      UiConstants.noImageUrl,
                  radius: 25,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () => NavigationHelper.goToProfileScreen(
                      context: context,
                      userId: widget.activity.user?.id ?? 0,
                    ),
                    child: Text(
                      widget.activity.user?.name ?? 'Unknown',
                      style: userNameTextStyle,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                      '${widget.activity.status?.checkIfNullReturnsEmpty().toCapitalized() ?? ''} ${widget.activity.progress ?? ''}',
                      style: progressOfMediaActivity),
                ],
              )
            ],
          ),
          ActivityActions(
            activityId: widget.activity.id,
            userId: widget.activity.user?.id ?? 0,
            isLiked: widget.activity.isLiked ?? false,
            likeCount: widget.activity.likeCount,
            replyCount: widget.activity.replyCount,
            type: Fragment$ListActivity,
            isSubscribed: isSubscribed,
            onToggleSubscription: () => _toggleSubscription(context),
            onDelete: () => _delete(context),
            onReply: () {
              context.push(
                '${RouteConstants.activityReplies}?id=${widget.activity.id}',
                extra: context.read<SocialBloc>(),
              );
            },
            onEdit: () {},
            onToggleLike: () {
              context.read<SocialBloc>().toggleLike(
                    activityId: widget.activity.id,
                  );
            },
          ),
          Text(
            FormattingUtils.formatUnixTimestamp(widget.activity.createdAt),
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontSize: 12,
                  fontFamily: 'Roboto',
                  color: AppColors.white.withValues(alpha:0.8),
                ),
          ),
        ],
      ),
    );
  }

  void _toggleSubscription(BuildContext context) async {
    final client = context.read<GraphqlClientCubit>().getClient();
    if (client != null) {
      final bloc = context.read<SocialBloc>();

      bloc
          .toggleActivitySubscription(
        client,
        activityId: widget.activity.id,
        subscribe: isSubscribed,
      )
          .then(
        (result) {
          if (result == null) {
            setState(() {
              isSubscribed = !isSubscribed;
              UIUtils.showSnackBar(
                context,
                ActivityConstants.subscriptionSuccess(isSubscribed),
              );
            });
          } else {
            UIUtils.showSnackBar(context, result);
          }
        },
      );
    } else {
      UIUtils.showSnackBar(context, ActivityConstants.clientError);
    }
  }

  void _delete(BuildContext context) {
    showDialog(
      context: context,
      builder: (dialogContext) {
        return CustomAlertDialog(
          title: 'Delete Activity',
          body: 'Are you sure you want to delete this activity?',
          confirmText: 'Delete',
          onConfirm: () {
            dialogContext.pop();
            final client = context.read<GraphqlClientCubit>().getClient();
            if (client != null) {
              final bloc = context.read<SocialBloc>();
              bloc.deleteActivity(
                client,
                activityId: widget.activity.id,
              );
            } else {
              UIUtils.showSnackBar(context, ActivityConstants.clientError);
            }
          },
          onCancel: dialogContext.pop,
        );
      },
    );
  }
}
