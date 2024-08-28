import 'package:flutter/material.dart';
import 'package:otaku_world/graphql/__generated/graphql/fragments.graphql.dart';
import 'package:otaku_world/utils/app_texts.dart';
import 'package:otaku_world/utils/ui_utils.dart';

import '../../../../../theme/colors.dart';

class Tag extends StatelessWidget {
  const Tag({super.key, required this.tag});

  final Fragment$MediaDetailed$tags tag;

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: AppTextStyles.titleSectionStyle.copyWith(
          fontSize: 15,
          color: tag.isMediaSpoiler! ? AppColors.sunsetOrange : null,
          overflow: TextOverflow.ellipsis,
          fontWeight: FontWeight.normal),
      child: GestureDetector(
        onLongPress: () => UIUtils.showInfoDialog(
          context,
          tag.name,
          tag.description ?? "No Description",
        ),
        child: Container(
          padding: const EdgeInsets.only(
            left: 10,
            right: 8,
            top: 5,
            bottom: 5,
          ),
          height: 30,
          decoration: ShapeDecoration(
            gradient: const LinearGradient(
              begin: Alignment(-1.00, 0.00),
              end: Alignment(1, 0),
              colors: [
                AppColors.darkCharcoal,
                AppColors.japaneseIndigo,
              ],
            ),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          ),
          width: (MediaQuery.of(context).size.width - 30) / 2,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Text(
                  tag.name.toString(),
                ),
              ),
              Text(
                "${tag.rank.toString()}%",
              )
            ],
          ),
        ),
      ),
    );
  }
}
