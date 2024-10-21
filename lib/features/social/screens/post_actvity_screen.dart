import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:otaku_world/bloc/graphql_client/graphql_client_cubit.dart';
import 'package:otaku_world/bloc/social/post_activity/post_activity_cubit.dart';
import 'package:otaku_world/bloc/viewer/viewer_bloc.dart';
import 'package:otaku_world/constants/string_constants.dart';
import 'package:otaku_world/core/types/types.dart';
import 'package:otaku_world/core/ui/activities/previews/text_activity_preview.dart';
import 'package:otaku_world/core/ui/appbars/simple_app_bar.dart';
import 'package:otaku_world/core/ui/custom_text_field.dart';
import 'package:otaku_world/generated/assets.dart';
import 'package:otaku_world/theme/colors.dart';
import 'package:otaku_world/utils/ui_utils.dart';

class PostActivityScreen extends StatefulWidget {
  const PostActivityScreen({super.key, required this.onPosted});

  final OnPosted onPosted;

  @override
  State<PostActivityScreen> createState() => _PostActivityScreenState();
}

class _PostActivityScreenState extends State<PostActivityScreen> {
  final textController = TextEditingController();
  final focusNode = FocusNode();

  @override
  void dispose() {
    textController.dispose();
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<PostActivityCubit, PostActivityState>(
      listener: (context, state) {
        if (state is PostingActivity) {
          showDialog(
            context: context,
            barrierDismissible: false,
            useRootNavigator: true,
            builder: (context) {
              return WillPopScope(
                onWillPop: () async => false,
                child: const Center(
                  child: CircularProgressIndicator(),
                ),
              );
            },
          );
        } else if (state is PostedActivity) {
          widget.onPosted(state.activity);
          context.pop();
          context.pop();
        } else if (state is PostActivityError) {
          context.pop();
          UIUtils.showSnackBar(context, state.message);
        }
      },
      child: Scaffold(
        floatingActionButton: FloatingActionButton.extended(
          backgroundColor: AppColors.sunsetOrange,
          onPressed: _showPreview,
          label: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 10,
            ),
            child: Text(
              'Preview',
              style: Theme.of(context).textTheme.displaySmall?.copyWith(
                fontFamily: 'Poppins',
              ),
            ),
          ),
        ),
        appBar: SimpleAppBar(
          title: 'Post New Activity',
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: BlocBuilder<PostActivityCubit, PostActivityState>(
                builder: (context, state) {
                  if (state is PostingActivity) {
                    return const CircularProgressIndicator();
                  } else {
                    return IconButton(
                      onPressed: () {
                        _postActivity();
                      },
                      icon: SvgPicture.asset(
                        Assets.iconsSend,
                        width: 35,
                      ),
                    );
                  }
                },
              ),
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
          ),
          child: Stack(
            children: [
              CustomTextField(
                controller: textController,
                focusNode: focusNode,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showPreview() {
    focusNode.unfocus();
    final state = context.read<ViewerBloc>().state;
    if (state is ViewerLoaded) {
      showDialog(
        context: context,
        builder: (context) {
          return Center(
            child: TextActivityPreview(
              text: textController.text.trim(),
              userAvatar: state.user.avatar?.medium ?? '',
              userName: state.user.name,
            ),
          );
        },
      );
    } else {
      UIUtils.showSnackBar(context, 'Preview not available!');
    }
  }

  void _postActivity() {
    log('Posting activity');
    final text = textController.text.trim();
    if (text.isEmpty) {
      UIUtils.showSnackBar(context, 'Activity can\'t be empty!');
    } else {
      final replyCubit = context.read<PostActivityCubit>();

      final client = context.read<GraphqlClientCubit>().getClient();
      if (client != null) {
        replyCubit.postActivity(client, text: text);
      } else {
        UIUtils.showSnackBar(context, ActivityConstants.clientError);
      }
    }
  }
}
