import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:otaku_world/graphql/__generated/graphql/fragments.graphql.dart';
import 'package:otaku_world/utils/extensions.dart';

import '../../../../../generated/assets.dart';
import '../../../../../graphql/__generated/graphql/schema.graphql.dart';
import '../../../../../theme/colors.dart';

class RankingsItem extends StatelessWidget {
  const RankingsItem({
    super.key,
    required this.ranking,
  });

  final Fragment$MediaDetailed$rankings ranking;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 5,
        horizontal: 10,
      ),
      decoration: ShapeDecoration(
        gradient: const LinearGradient(
          begin: Alignment(-1.00, 0.00),
          end: Alignment(1, 0),
          colors: [AppColors.darkCharcoal, AppColors.japaneseIndigo],
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        shadows: const [
          BoxShadow(
            color: AppColors.blackShadow,
            blurRadius: 4,
            offset: Offset(0, 4),
            spreadRadius: 0,
          )
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(
            ranking.type == Enum$MediaRankType.RATED
                ? Assets.iconsStar
                : Assets.iconsFavourite,
            height: 16,
            width: 16,
          ),
          const SizedBox(
            width: 5,
          ),
          Text(
            '#${ranking.rank.toString().checkIfNullReturnsEmpty()}  ${ranking.context.toString().toTitleCase()} ${ranking.year.toString().checkIfNullReturnsEmpty()}',
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: AppColors.white,
              fontSize: 12,
              fontFamily: 'Roboto Condensed',
              fontWeight: FontWeight.w500,
            ),
          )
        ],
      ),
    );
  }
}
