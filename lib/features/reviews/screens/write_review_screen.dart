import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:otaku_world/config/router/router_constants.dart';
import 'package:otaku_world/core/ui/buttons/primary_button.dart';
import 'package:otaku_world/core/ui/custom_text_field.dart';
import 'package:otaku_world/theme/colors.dart';

import '../../../core/ui/appbars/simple_app_bar.dart';
import '../../../core/ui/texts/counter_text.dart';
import '../../../generated/assets.dart';
import '../../../utils/ui_utils.dart';

class WriteReviewScreen extends StatefulWidget {
  const WriteReviewScreen({super.key});

  @override
  State<WriteReviewScreen> createState() => _WriteReviewScreenState();
}

class _WriteReviewScreenState extends State<WriteReviewScreen> {
  final List<MarkdownItemModel> markDownItems = [
    MarkdownItemModel(
      iconPath: Assets.iconsEdit,
      label: 'Bold',
      onTap: () {},
    ),
    MarkdownItemModel(
      iconPath: Assets.iconsItalic,
      label: 'Bold',
      onTap: () {},
    ),
    MarkdownItemModel(
      iconPath: Assets.iconsStrike,
      label: 'Bold',
      onTap: () {},
    ),
    MarkdownItemModel(
      iconPath: Assets.iconsBold,
      label: 'Bold',
      onTap: () {},
    ),
    MarkdownItemModel(
      iconPath: Assets.iconsBold,
      label: 'Bold',
      onTap: () {},
    ),
  ];

  final TextEditingController reviewController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const SimpleAppBar(title: 'Write New Review'),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 10,
          children: [
            CustomTextField(
              controller: reviewController,
              isShowingCounter: true,
              maxLength: 2200,
              counterBuilder: (_, currentLength, maxLength) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CounterText(
                        currentLength: currentLength,
                        maxLength: maxLength,
                        fontWeight: FontWeight.w600,
                      ),
                      PrimaryButton(
                        onTap: () {
                          context.push(
                            RouteConstants.previewReview,
                            extra: reviewController.text,
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
            ),
          ],
        ),
      ),
      bottomSheet: SafeArea(
        child: Container(
          height: 50,
          width: MediaQuery.sizeOf(context).width,
          color: AppColors.japaneseIndigo,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: markDownItems.length,
            padding: const EdgeInsets.symmetric(horizontal: 10),
            itemBuilder: (context, index) => SizedBox(
              height: 25,
              width: 25,
              child: InkWell(
                onTap: markDownItems[index].onTap, // ✅ Ensure onTap works
                child: SvgPicture.asset(
                  markDownItems[index].iconPath,
                  height: 25,
                  width: 25,
                  colorFilter: const ColorFilter.mode(
                    AppColors.white,
                    BlendMode.srcIn,
                  ),
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    reviewController.dispose();
    super.dispose();
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
