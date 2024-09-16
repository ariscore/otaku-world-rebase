import 'package:flutter/material.dart';

import '../../../graphql/__generated/graphql/schema.graphql.dart';
import '../../../theme/colors.dart';

class ReviewBottomSheet extends StatelessWidget {
  const ReviewBottomSheet({super.key});

  static const List<Enum$ReviewSort> reviewSort = [
    Enum$ReviewSort.CREATED_AT_DESC,
    Enum$ReviewSort.CREATED_AT,
    Enum$ReviewSort.SCORE_DESC,
    Enum$ReviewSort.SCORE,
    Enum$ReviewSort.RATING_DESC,
    Enum$ReviewSort.RATING,
    Enum$ReviewSort.UPDATED_AT_DESC,
    Enum$ReviewSort.UPDATED_AT
  ];

  final TextStyle bottomSheetHeaderStyle = const TextStyle(
    color: AppColors.white,
    fontSize: 20,
    fontFamily: 'Roboto Condensed',
    fontWeight: FontWeight.w500,
  );

  final TextStyle bottomSheetDropdownStyle = const TextStyle(
    color: Colors.white,
    fontSize: 14,
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w500,
    height: 0,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: AppColors.darkCharcoal,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
      ),
      padding: const EdgeInsets.only(
        top: 10,
        left: 15,
      ),
      height: 180,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 5,
            width: 50,
            decoration: ShapeDecoration(
              color: AppColors.lightSilver,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            'Media',
            style: bottomSheetHeaderStyle,
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            'Sort',
            style: bottomSheetHeaderStyle,
          ),
        ],
      ),
    );
  }
}
