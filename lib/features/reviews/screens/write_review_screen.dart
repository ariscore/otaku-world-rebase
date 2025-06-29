import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:otaku_world/config/router/router_constants.dart';
import 'package:otaku_world/core/ui/markdown_v2/markdown_editor.dart';

import '../../../core/ui/appbars/simple_app_bar.dart';
import '../../../generated/assets.dart';

class WriteReviewScreen extends StatefulWidget {
  const WriteReviewScreen({
    super.key,
    required this.controller,
  });

  final TextEditingController controller;

  @override
  State<WriteReviewScreen> createState() => _WriteReviewScreenState();
}

class _WriteReviewScreenState extends State<WriteReviewScreen> {

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SimpleAppBar(
        title: 'Write New Review',
        actions: [
          Padding(
            padding: const EdgeInsets.only(
              left: 0,
              right: 16,
            ),
            child: IconButton(
              onPressed: () {
                if (_formKey.currentState?.validate() ?? false) {
                  context.pop(widget.controller.text);
                }
              },
              icon: SvgPicture.asset(Assets.iconsSave, width: 30),
            ),
          ),
        ],
      ),
      body: Form(
        key: _formKey,
        child: Builder(
          builder: (context) {
            return MarkdownEditor(
              onShowPreview: (content) {
                context.push(
                  RouteConstants.previewReview,
                  extra: content.replaceAll('\n', '<br>'),
                );
              },
              textController: widget.controller,
              minLength: 2200,
              showCounter: true,
            );
            // return CustomTextField(
            //   controller: widget.controller,
            //   isShowingCounter: true,
            //   minLength: 2200,
            //   counterBuilder: (_, currentLength, maxLength) {
            //     return Padding(
            //       padding: const EdgeInsets.symmetric(vertical: 15),
            //       child: Row(
            //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //         children: [
            //           CounterText(
            //             currentLength: currentLength,
            //             maxLength: 2200,
            //             fontWeight: FontWeight.w600,
            //           ),
            //           PrimaryButton(
            //             onTap: () {
            //               context.push(
            //                 RouteConstants.previewReview,
            //                 extra: widget.controller.text,
            //               );
            //             },
            //             label: 'Preview',
            //             width: UIUtils.getWidgetWidth(
            //               targetWidgetWidth: 100,
            //               screenWidth: MediaQuery.sizeOf(context).width,
            //             ),
            //             fontSize: 14,
            //             horizontalPadding: 0,
            //             verticalPadding: 7,
            //             radius: 8,
            //             isSmall: true,
            //           ),
            //         ],
            //       ),
            //     );
            //   },
            //   validator: (value) {
            //     if (value == null && value!.isEmpty) {
            //       return 'The text can not be empty';
            //     } else if (value.length < 2200) {
            //       return 'The text must be at least 2200 characters.';
            //     } else {
            //       return null;
            //     }
            //   },
            // );
          },
        ),
      ),
      // bottomSheet: SafeArea(
      //   child: Container(
      //     height: 50,
      //     width: MediaQuery.sizeOf(context).width,
      //     color: AppColors.japaneseIndigo,
      //     child: ListView.builder(
      //       scrollDirection: Axis.horizontal,
      //       itemCount: markDownItems.length,
      //       padding: const EdgeInsets.symmetric(horizontal: 10),
      //       itemBuilder: (context, index) => SizedBox(
      //         height: 25,
      //         width: 25,
      //         child: InkWell(
      //           onTap: markDownItems[index].onTap, // ✅ Ensure onTap works
      //           child: SvgPicture.asset(
      //             markDownItems[index].iconPath,
      //             height: 25,
      //             width: 25,
      //             colorFilter: const ColorFilter.mode(
      //               AppColors.white,
      //               BlendMode.srcIn,
      //             ),
      //             fit: BoxFit.contain,
      //           ),
      //         ),
      //       ),
      //     ),
      //   ),
      // ),
    );
  }
}
