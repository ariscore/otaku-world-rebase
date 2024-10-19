import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:otaku_world/bloc/graphql_client/graphql_client_cubit.dart';
import 'package:otaku_world/bloc/social/reply_activity/reply_activity_cubit.dart';
import 'package:otaku_world/constants/string_constants.dart';
import 'package:otaku_world/core/types/types.dart';
import 'package:otaku_world/core/ui/appbars/simple_app_bar.dart';
import 'package:otaku_world/core/ui/custom_text_field.dart';
import 'package:otaku_world/generated/assets.dart';
import 'package:otaku_world/utils/ui_utils.dart';

class ReplyActivityScreen extends StatefulWidget {
  const ReplyActivityScreen({super.key, required this.onReplied});

  final OnReplied onReplied;

  @override
  State<ReplyActivityScreen> createState() => _ReplyActivityScreenState();
}

class _ReplyActivityScreenState extends State<ReplyActivityScreen> {
  final textController = TextEditingController();

  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<ReplyActivityCubit, ReplyActivityState>(
      listener: (context, state) {
        if (state is ReplyingActivity) {
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
        } else if (state is RepliedActivity) {
          // widget.repliesBloc.addReply(state.activityReply);
          widget.onReplied(state.activityReply);
          context.pop();
          context.pop();
        } else if (state is ReplyError) {
          context.pop();
          UIUtils.showSnackBar(context, state.message);
        }
      },
      child: Scaffold(
        appBar: SimpleAppBar(
          title: 'Reply Activity',
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: BlocBuilder<ReplyActivityCubit, ReplyActivityState>(
                builder: (context, state) {
                  if (state is ReplyingActivity) {
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
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
          ),
          child: Stack(
            children: [
              CustomTextField(controller: textController,),
            ],
          ),
        ),
      ),
    );
  }

  void _replyActivity() {
    log('Replying activity');
    final text = textController.text.trim();
    if (text.isEmpty) {
      UIUtils.showSnackBar(context, 'Reply can\'t be empty!');
    } else {
      final replyCubit = context.read<ReplyActivityCubit>();

      final client = context.read<GraphqlClientCubit>().getClient();
      if (client != null) {
        replyCubit.replyActivity(client, text: text);
      } else {
        UIUtils.showSnackBar(context, ActivityConstants.clientError);
      }
    }
  }
}
