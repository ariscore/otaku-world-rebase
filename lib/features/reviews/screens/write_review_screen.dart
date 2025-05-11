import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:otaku_world/config/router/router_constants.dart';
import 'package:otaku_world/core/ui/buttons/primary_button.dart';
import 'package:otaku_world/core/ui/custom_text_field.dart';

import '../../../core/ui/appbars/simple_app_bar.dart';
import '../../../core/ui/texts/counter_text.dart';
import '../../../generated/assets.dart';
import '../../../utils/ui_utils.dart';

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
  final List<MarkdownItemModel> markDownItems = [
    MarkdownItemModel(
      iconPath: Assets.markdownBold,
      label: 'Bold',
      onTap: () {},
    ),
    MarkdownItemModel(
      iconPath: Assets.markdownItalic,
      label: 'Italic',
      onTap: () {},
    ),
    MarkdownItemModel(
      iconPath: Assets.markdownStrike,
      label: 'Strikethrough',
      onTap: () {},
    ),
    MarkdownItemModel(
      iconPath: Assets.markdownEyeSlash,
      label: 'Spoiler',
      onTap: () {},
    ),
    MarkdownItemModel(
      iconPath: Assets.markdownLink,
      label: 'Link',
      onTap: () {},
    ),
    MarkdownItemModel(
      iconPath: Assets.markdownImage,
      label: 'Image',
      onTap: () {},
    ),MarkdownItemModel(
      iconPath: Assets.markdownYoutube,
      label: 'Youtube Video',
      onTap: () {},
    ),
    MarkdownItemModel(
      iconPath: Assets.markdownVideo,
      label: 'Video',
      onTap: () {},
    ),
    MarkdownItemModel(
      iconPath: Assets.markdownNumberList,
      label: 'Number List',
      onTap: () {},
    ),
    MarkdownItemModel(
      iconPath: Assets.markdownBulletList,
      label: 'Bullet list',
      onTap: () {},
    ),
    MarkdownItemModel(
      iconPath: Assets.markdownHeader,
      label: 'Header',
      onTap: () {},
    ),
    MarkdownItemModel(
      iconPath: Assets.markdownCenter,
      label: 'Center',
      onTap: () {},
    ),
    MarkdownItemModel(
      iconPath: Assets.markdownQuote,
      label: 'Quote',
      onTap: () {},
    ),
    MarkdownItemModel(
      iconPath: Assets.markdownQuote,
      label: 'Code',
      onTap: () {},
    ),
  ];

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
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 10,
            children: [
              Builder(
                builder: (context) {
                  return CustomTextField(
                    controller: widget.controller,
                    isShowingCounter: true,
                    minLength: 2200,
                    counterBuilder: (_, currentLength, maxLength) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CounterText(
                              currentLength: currentLength,
                              maxLength: 2200,
                              fontWeight: FontWeight.w600,
                            ),
                            PrimaryButton(
                              onTap: () {
                                context.push(
                                  RouteConstants.previewReview,
                                  extra: widget.controller.text,
                                );
                              },
                              label: 'Preview',
                              width: UIUtils.getWidgetWidth(
                                targetWidgetWidth: 100,
                                screenWidth: MediaQuery.sizeOf(context).width,
                              ),
                              fontSize: 14,
                              horizontalPadding: 0,
                              verticalPadding: 7,
                              radius: 8,
                              isSmall: true,
                            ),
                          ],
                        ),
                      );
                    },
                    validator: (value) {
                      if (value == null && value!.isEmpty) {
                        return 'The text can not be empty';
                      } else if (value.length < 2200) {
                        return 'The text must be at least 2200 characters.';
                      } else {
                        return null;
                      }
                    },
                  );
                },
              ),
            ],
          ),
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

class MarkdownItemModel {
  final String iconPath;
  final String label;
  final VoidCallback onTap;

  MarkdownItemModel({
    required this.iconPath,
    required this.label,
    required this.onTap,
  });
}
