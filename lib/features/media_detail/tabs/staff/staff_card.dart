import 'package:flutter/material.dart';
import 'package:otaku_world/features/media_detail/tabs/characters/widgets/character_parameters.dart';
import 'package:otaku_world/features/media_detail/tabs/characters/widgets/sub_anime_character.dart';
import 'package:otaku_world/graphql/__generated/graphql/details/staff.graphql.dart';

import '../../../../theme/colors.dart';

class StaffCard extends StatelessWidget {
  const StaffCard({super.key, required this.staff});

  final Query$MediaStaff$Media$staff$edges staff;
  static const nameTextStyle = TextStyle(
    color: Colors.white,
    fontSize: 14,
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w600,
    overflow: TextOverflow.ellipsis,
  );

  static final roleTextStyle = TextStyle(
    color: AppColors.white.withOpacity(0.8),
    fontSize: 12,
    fontFamily: 'Roboto Condensed',
    fontWeight: FontWeight.w400,
    height: 0.12,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      padding: const EdgeInsets.symmetric(
        horizontal: 8,
        vertical: 8,
      ),
      decoration: ShapeDecoration(
        gradient: const LinearGradient(
          begin: Alignment(-1.00, 0.00),
          end: Alignment(1, 0),
          colors: [
            AppColors.darkCharcoal,
            AppColors.japaneseIndigo,
          ],
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        shadows: const [
          BoxShadow(
            color: Color(0x3F000000),
            blurRadius: 4,
            offset: Offset(0, 4),
            spreadRadius: 0,
          )
        ],
      ),
      child: SubAnimeCharacter(
        isStaff: true,
        character: CharacterParameters(
          imageUrl: staff.node!.image?.large ?? "",
          characterId: staff.node!.id.toString(),
          characterName: staff.node!.name?.userPreferred ?? "Unknown",
          characterRole: staff.role ?? "",
        ),
      ),
    );
  }
}
