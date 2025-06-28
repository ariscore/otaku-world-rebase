import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:otaku_world/bloc/graphql_client/graphql_client_cubit.dart';
import 'package:otaku_world/bloc/profile/send_message/send_message_cubit.dart';
import 'package:otaku_world/bloc/viewer/viewer_bloc.dart';
import 'package:otaku_world/constants/string_constants.dart';
import 'package:otaku_world/core/types/types.dart';
import 'package:otaku_world/core/ui/activities/previews/message_activity_preview.dart';
import 'package:otaku_world/core/ui/appbars/simple_app_bar.dart';
import 'package:otaku_world/core/ui/dialogs/alert_dialog.dart';
import 'package:otaku_world/core/ui/markdown_v2/markdown_editor.dart';
import 'package:otaku_world/generated/assets.dart';
import 'package:otaku_world/utils/ui_utils.dart';

class SendMessageScreen extends StatefulWidget {
  const SendMessageScreen({
    super.key,
    required this.receiverId,
    required this.onSent,
  });

  final int receiverId;
  final OnMessaged onSent;

  @override
  State<SendMessageScreen> createState() => _SendMessageScreenState();
}

class _SendMessageScreenState extends State<SendMessageScreen> {
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
    return BlocListener<SendMessageCubit, SendMessageState>(
      listener: (context, state) {
        if (state is SendingMessage) {
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
        } else if (state is SentMessage) {
          widget.onSent(state.message);
          context.pop();
          context.pop();
        } else if (state is SendMessageError) {
          context.pop();
          UIUtils.showSnackBar(context, state.message);
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
        //             fontFamily: 'Poppins',
        //           ),
        //     ),
        //   ),
        // ),
        appBar: SimpleAppBar(
          title: 'Send Message',
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: BlocBuilder<SendMessageCubit, SendMessageState>(
                builder: (context, state) {
                  if (state is SendingMessage) {
                    return const CircularProgressIndicator();
                  } else {
                    return IconButton(
                      onPressed: () {
                        _showConfirmDialog();
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
        //         controller: textController,
        //         focusNode: focusNode,
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
            child: MessageActivityPreview(
              text: content,
              senderAvatar: state.user.avatar?.medium ?? '',
              senderName: state.user.name,
            ),
          );
        },
      );
    } else {
      UIUtils.showSnackBar(context, 'Preview not available!');
    }
  }

  void _showConfirmDialog() {
    showDialog(
      context: context,
      builder: (dialogContext) {
        return CustomAlertDialog(
          title: 'Send Message',
          body: StringConstants.messageConfirmation,
          showCheckBox: true,
          checkValue: context.read<SendMessageCubit>().isPrivate,
          onChange: () {
            final value = context.read<SendMessageCubit>().isPrivate;
            log('Private: $value');
            context.read<SendMessageCubit>().changePrivate();
          },
          onConfirm: () {
            dialogContext.pop();
            _sendMessage();
          },
          onCancel: () {
            dialogContext.pop();
          },
        );
      },
    );
  }

  void _sendMessage() {
    log('Sending message');
    final text = textController.text.trim();
    if (text.isEmpty) {
      UIUtils.showSnackBar(context, 'Message can\'t be empty!');
    } else {
      final replyCubit = context.read<SendMessageCubit>();

      final client = context.read<GraphqlClientCubit>().getClient();
      if (client != null) {
        replyCubit.sendMessage(
          client,
          text: text,
          receiverId: widget.receiverId,
        );
      } else {
        UIUtils.showSnackBar(context, ActivityConstants.clientError);
      }
    }
  }
}
