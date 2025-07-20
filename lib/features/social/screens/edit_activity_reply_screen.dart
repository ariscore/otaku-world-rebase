import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:otaku_world/bloc/graphql_client/graphql_client_cubit.dart';
import 'package:otaku_world/bloc/social/edit_activity_reply/edit_activity_reply_cubit.dart';
// import 'package:otaku_world/bloc/social/reply_activity/reply_activity_cubit.dart';
import 'package:otaku_world/constants/string_constants.dart';
import 'package:otaku_world/core/types/types.dart';
import 'package:otaku_world/core/ui/appbars/simple_app_bar.dart';
import 'package:otaku_world/core/ui/markdown_v2/markdown_editor.dart';
import 'package:otaku_world/generated/assets.dart';
import 'package:otaku_world/utils/ui_utils.dart';

import '../../../bloc/viewer/viewer_bloc.dart';
import '../../../core/ui/activities/previews/activity_reply_preview.dart';

class EditActivityReplyScreen extends StatefulWidget {
  const EditActivityReplyScreen({
    super.key,
    required this.onReplied,
    required this.text,
  });

  final OnReplied onReplied;
  final String text;

  @override
  State<EditActivityReplyScreen> createState() =>
      _EditActivityReplyScreenState();
}

class _EditActivityReplyScreenState extends State<EditActivityReplyScreen> {
  late final TextEditingController textController;
  final focusNode = FocusNode();

  @override
  void initState() {
    textController = TextEditingController(text: widget.text);
    super.initState();
  }

  @override
  void dispose() {
    textController.dispose();
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<EditActivityReplyCubit, EditActivityReplyState>(
      listener: (context, state) {
        if (state is EditingActivityReply) {
          showDialog(
            context: context,
            barrierDismissible: false,
            useRootNavigator: true,
            builder: (context) {
              return const PopScope(
                canPop: false,
                child: Center(
                  child: CircularProgressIndicator(),
                ),
              );
            },
          );
        } else if (state is EditedActivityReply) {
          widget.onReplied(state.activityReply);
          context.pop();
          context.pop();
        } else if (state is EditActivityReplyError) {
          context.pop();
          UIUtils.showSnackBar(
            context,
            state.error.message,
          );
        }
      },
      child: Scaffold(
        // floatingActionButton: FloatingActionButton.extended(
        //   backgroundColor: AppColors.sunsetOrange,
        //   onPressed: _showPreview,
        //   label: Padding(
        //     padding: const EdgeInsets.symmetric(
        //       horizontal: 10,
        //       vertical: 10,
        //     ),
        //     child: Text(
        //       'Preview',
        //       style: Theme.of(context).textTheme.displaySmall?.copyWith(
        //         fontFamily: 'Poppins',
        //       ),
        //     ),
        //   ),
        // ),
        appBar: SimpleAppBar(
          title: 'Edit Activity Reply',
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child:
                  BlocBuilder<EditActivityReplyCubit, EditActivityReplyState>(
                builder: (context, state) {
                  if (state is EditingActivityReply) {
                    return const CircularProgressIndicator();
                  } else {
                    return IconButton(
                      onPressed: () {
                        _replyActivity();
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
        // body: Padding(
        //   padding: const EdgeInsets.symmetric(
        //     horizontal: 15,
        //   ),
        //   child: Stack(
        //     children: [
        //       CustomTextField(
        //         focusNode: focusNode,
        //         controller: textController,
        //       ),
        //     ],
        //   ),
        // ),
        body: MarkdownEditor(
          onShowPreview: _showPreview,
          textController: textController,
        ),
      ),
    );
  }

  void _showPreview(String content) {
    focusNode.unfocus();
    final state = context.read<ViewerBloc>().state;
    if (state is ViewerLoaded) {
      showDialog(
        context: context,
        builder: (context) {
          return Dialog(
            alignment: Alignment.center,
            backgroundColor: Colors.transparent,
            insetPadding: const EdgeInsets.all(10),
            child: ActivityReplyPreview(
              text: content.replaceAll('\n', '<br>'),
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

  void _replyActivity() {
    log('Replying activity');
    final text = textController.text.trim().replaceAll('\n', '<br>');
    if (text.isEmpty) {
      UIUtils.showSnackBar(context, 'Reply can\'t be empty!');
    } else {
      final replyCubit = context.read<EditActivityReplyCubit>();

      final client = context.read<GraphqlClientCubit>().getClient();
      if (client != null) {
        replyCubit.editActivityReply(client, text: text);
      } else {
        UIUtils.showSnackBar(context, ActivityConstants.clientError);
      }
    }
  }
}
