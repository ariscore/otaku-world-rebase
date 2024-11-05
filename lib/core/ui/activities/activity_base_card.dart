import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:otaku_world/bloc/media_detail/social/social_bloc.dart';
import 'package:otaku_world/bloc/profile/user_activities_bloc/user_activities_bloc.dart';
import 'package:otaku_world/bloc/social/activities/activities_bloc.dart';
import 'package:otaku_world/bloc/social/activity/activity_bloc.dart';
import 'package:otaku_world/core/ui/activities/activity_actions.dart';
import 'package:otaku_world/generated/assets.dart';
import 'package:otaku_world/theme/colors.dart';
import 'package:otaku_world/utils/formatting_utils.dart';

import '../../../bloc/graphql_client/graphql_client_cubit.dart';
import '../../../config/router/router_constants.dart';
import '../../../constants/string_constants.dart';
import '../../../utils/ui_utils.dart';
import '../dialogs/alert_dialog.dart';

class ActivityBaseCard extends StatefulWidget {
  const ActivityBaseCard({
    super.key,
    required this.id,
    required this.child,
    required this.avatarUrl,
    required this.userId,
    required this.userName,
    this.receiverAvatarUrl,
    this.receiverUserName,
    required this.likeCount,
    required this.isLiked,
    required this.replyCount,
    required this.timestamp,
    required this.type,
    this.isCurrentUserMessage = false,
    required this.isSubscribed,
    required this.onEdit,
    this.isProfile = false,
    this.isPrivate = false,
    required this.bloc,
  });

  final Widget child;
  final int id;
  final String? avatarUrl;
  final int userId;
  final String? userName;
  final String? receiverAvatarUrl;
  final String? receiverUserName;
  final int likeCount;
  final bool isLiked;
  final int replyCount;
  final int timestamp;
  final Object type;
  final bool isCurrentUserMessage;
  final bool isSubscribed;
  final VoidCallback onEdit;
  final bool isProfile;
  final bool isPrivate;
  final Bloc bloc;

  @override
  State<ActivityBaseCard> createState() => _ActivityBaseCardState();
}

class _ActivityBaseCardState extends State<ActivityBaseCard> {
  bool isSubscribed = false;

  @override
  void initState() {
    isSubscribed = widget.isSubscribed;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          gradient: AppColors.secondaryGradient,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Name and Avatar
            if (!widget.isProfile)
              Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width - 40,
                    child: Wrap(
                      runSpacing: 5,
                      children: [
                        _buildUser(
                          context,
                          avatarUrl: widget.avatarUrl,
                          userName: widget.userName,
                        ),
                        if (widget.receiverAvatarUrl != null)
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 8,
                              horizontal: 10,
                            ),
                            child: SvgPicture.asset(Assets.iconsArrowRight),
                          ),
                        if (widget.receiverAvatarUrl != null)
                          _buildUser(
                            context,
                            avatarUrl: widget.receiverAvatarUrl,
                            userName: widget.receiverUserName,
                          ),
                      ],
                    ),
                  )
                ],
              ),
            if (widget.isProfile && widget.receiverUserName != null)
              Row(
                children: [
                  _buildUser(
                    context,
                    avatarUrl: widget.avatarUrl,
                    userName: widget.userName,
                  ),
                  if (widget.isPrivate)
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: AppColors.sunsetOrange,
                      ),
                      padding: const EdgeInsets.all(5),
                      margin: const EdgeInsets.only(left: 10, bottom: 10),
                      child: Text(
                        'Private',
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                    ),
                ],
              ),
            // Main content
            widget.child,
            // Other details
            ActivityActions(
              userId: widget.userId,
              likeCount: widget.likeCount,
              replyCount: widget.replyCount,
              activityId: widget.id,
              isLiked: widget.isLiked,
              type: widget.type,
              isCurrentUserMessage: widget.isCurrentUserMessage,
              isSubscribed: isSubscribed,
              onToggleLike: () {
                if (widget.bloc is ActivitiesBloc) {
                  (widget.bloc as ActivitiesBloc).toggleLike(
                    activityId: widget.id,
                  );
                } else if (widget.bloc is UserActivitiesBloc) {
                  (widget.bloc as UserActivitiesBloc).toggleLike(
                    activityId: widget.id,
                  );
                } else if (widget.bloc is ActivityBloc) {
                  (widget.bloc as ActivityBloc).add(ToggleLike());
                }
              },
              onToggleSubscription: () => _toggleSubscription(context),
              onDelete: () => _delete(context),
              onReply: () {
                context.push(
                  '${RouteConstants.activityReplies}?id=${widget.id}',
                  extra: widget.bloc,
                );
              },
              onEdit: widget.onEdit,
            ),
            const SizedBox(height: 5),
            Text(
              FormattingUtils.formatUnixTimestamp(widget.timestamp),
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    color: AppColors.white.withOpacity(0.8),
                  ),
            ),
          ],
        ),
      ),
    );
  }

  void _toggleSubscription(BuildContext context) async {
    final client = context.read<GraphqlClientCubit>().getClient();
    if (client != null) {
      final bloc = widget.bloc;
      if (bloc is ActivitiesBloc) {
        bloc
            .toggleActivitySubscription(
              client,
              activityId: widget.id,
              subscribe: isSubscribed,
            )
            .then(
              (result) => _processSubscription(
                context,
                result,
              ),
            );
      } else if (bloc is SocialBloc) {
        bloc
            .toggleActivitySubscription(
              client,
              activityId: widget.id,
              subscribe: isSubscribed,
            )
            .then(
              (result) => _processSubscription(
                context,
                result,
              ),
            );
      } else if (bloc is UserActivitiesBloc) {
        bloc
            .toggleActivitySubscription(
              client,
              activityId: widget.id,
              subscribe: isSubscribed,
            )
            .then(
              (result) => _processSubscription(
                context,
                result,
              ),
            );
      } else if (bloc is ActivityBloc) {
        bloc
            .toggleActivitySubscription(
              client,
              activityId: widget.id,
              subscribe: isSubscribed,
            )
            .then(
              (result) => _processSubscription(
                context,
                result,
              ),
            );
      }
    } else {
      UIUtils.showSnackBar(context, ActivityConstants.clientError);
    }
  }

  void _processSubscription(BuildContext context, String? result) {
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
              final bloc = widget.bloc;
              if (bloc is ActivitiesBloc) {
                bloc.deleteActivity(client, activityId: widget.id).then((e) {
                  if (e != null) {
                    UIUtils.showSnackBar(context, e);
                  }
                });
              } else if (bloc is SocialBloc) {
                bloc.deleteActivity(client, activityId: widget.id).then((e) {
                  if (e != null) {
                    UIUtils.showSnackBar(context, e);
                  }
                });
              } else if (bloc is UserActivitiesBloc) {
                bloc.deleteActivity(client, activityId: widget.id).then((e) {
                  if (e != null) {
                    UIUtils.showSnackBar(context, e);
                  }
                });
              } else if (bloc is ActivityBloc) {
                bloc.deleteActivity(client, activityId: widget.id).then((e) {
                  if (e != null) {
                    UIUtils.showSnackBar(context, e);
                  } else {
                    context.pop();
                  }
                });
              }
            } else {
              UIUtils.showSnackBar(context, ActivityConstants.clientError);
            }
          },
          onCancel: dialogContext.pop,
        );
      },
    );
  }

  Widget _buildUser(
    BuildContext context, {
    required String? avatarUrl,
    required String? userName,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
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
      ),
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
