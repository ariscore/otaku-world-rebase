import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:otaku_world/bloc/graphql_client/graphql_client_cubit.dart';
import 'package:otaku_world/bloc/social/edit_text_activity/edit_text_activity_cubit.dart';
import 'package:otaku_world/bloc/viewer/viewer_bloc.dart';
import 'package:otaku_world/constants/string_constants.dart';
import 'package:otaku_world/core/types/types.dart';
import 'package:otaku_world/core/ui/activities/previews/text_activity_preview.dart';
import 'package:otaku_world/core/ui/appbars/simple_app_bar.dart';
import 'package:otaku_world/core/ui/markdown_v2/markdown_editor.dart';
import 'package:otaku_world/generated/assets.dart';
import 'package:otaku_world/utils/ui_utils.dart';

class EditTextActivityScreen extends StatefulWidget {
  const EditTextActivityScreen({
    super.key,
    required this.onPosted,
    required this.text,
  });

  final OnPosted onPosted;
  final String text;

  @override
  State<EditTextActivityScreen> createState() => _EditTextActivityScreenState();
}

class _EditTextActivityScreenState extends State<EditTextActivityScreen> {
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
    return BlocListener<EditTextActivityCubit, EditTextActivityState>(
      listener: (context, state) {
        if (state is EditingActivity) {
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
        } else if (state is EditedActivity) {
          widget.onPosted(state.activity);
          context.pop();
          context.pop();
        } else if (state is EditActivityError) {
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
        //     child: Text(\
        //       'Preview',
        //       style: Theme.of(context).textTheme.displaySmall?.copyWith(
        //             fontFamily: 'Poppins',
        //           ),
        //     ),
        //   ),
        // ),
        appBar: SimpleAppBar(
          title: 'Edit Text Status',
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: BlocBuilder<EditTextActivityCubit, EditTextActivityState>(
                builder: (context, state) {
                  if (state is EditingActivity) {
                    return const CircularProgressIndicator();
                  } else {
                    return IconButton(
                      onPressed: () {
                        _editActivity();
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
        body: MarkdownEditor(onShowPreview: _showPreview, textController: textController,),
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
            child: TextActivityPreview(
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

  void _editActivity() {
    log('Editing activity');
    final text = textController.text.trim().replaceAll('\n', '<br>');
    if (text.isEmpty) {
      UIUtils.showSnackBar(context, 'Activity can\'t be empty!');
    } else {
      final replyCubit = context.read<EditTextActivityCubit>();

      final client = context.read<GraphqlClientCubit>().getClient();
      if (client != null) {
        replyCubit.editActivity(client, text: text);
      } else {
        UIUtils.showSnackBar(context, ActivityConstants.clientError);
      }
    }
  }
}
