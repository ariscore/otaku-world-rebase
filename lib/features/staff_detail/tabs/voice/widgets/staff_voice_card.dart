import 'package:flutter/material.dart';
import 'package:otaku_world/features/media_detail/tabs/characters/widgets/character_parameters.dart';
import 'package:otaku_world/features/media_detail/tabs/characters/widgets/sub_anime_character.dart';
import 'package:otaku_world/features/media_detail/tabs/characters/widgets/sub_staff_character.dart';
import 'package:otaku_world/graphql/__generated/graphql/staff_detail/staff_voice.graphql.dart';
import 'package:otaku_world/utils/extensions.dart';
import 'package:otaku_world/utils/navigation_helper.dart';

import '../../../../../graphql/__generated/graphql/schema.graphql.dart';
import '../../../../../theme/colors.dart';
import '../../../../../utils/formatting_utils.dart';

class StaffVoiceCard extends StatelessWidget {
  const StaffVoiceCard({
    super.key,
    required this.staffEdge,
  });

  final Query$staffVoice$Staff$characterMedia$edges? staffEdge;
  static const nameTextStyle = TextStyle(
    color: Colors.white,
    fontSize: 14,
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w600,
    overflow: TextOverflow.ellipsis,
  );

  static final roleTextStyle = TextStyle(
    color: AppColors.white.withValues(alpha: 0.8),
    fontSize: 12,
    fontFamily: 'Roboto Condensed',
    fontWeight: FontWeight.w400,
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
      child: Stack(
        children: [
          SubAnimeCharacter(
            character: CharacterParameters(
              imageUrl: staffEdge?.node?.coverImage?.large ?? "",
              characterId: staffEdge?.node?.id ?? 0,
              characterName: staffEdge?.node?.title?.userPreferred ?? "Unknown",
              characterRole: ' ${FormattingUtils.getMediaFormatString(
                staffEdge?.node?.format ?? Enum$MediaFormat.$unknown,
              )}, ${staffEdge?.node?.startDate?.year}',
              onTap: () => NavigationHelper.goToMediaDetailScreen(
                context: context,
                mediaId: staffEdge?.node?.id,
              ),
            ),
          ),
          if (staffEdge?.characters?.isNotEmpty != null &&
              staffEdge?.characters?.first != null)
            Positioned(
              top: 0,
              bottom: 0,
              right: 0,
              child: SubStaffCharacter(
                character: CharacterParameters(
                  imageUrl: staffEdge!.characters!.first!.image?.large ?? "",
                  characterName:
                      staffEdge!.characters!.first!.name?.userPreferred ??
                          "Unknown",
                  characterRole: toJson$Enum$CharacterRole(
                    staffEdge!.characterRole ?? Enum$CharacterRole.$unknown,
                  ).toString().capitalize(),
                  characterId: staffEdge!.characters!.first!.id,
                  onTap: () => NavigationHelper.goToCharacterDetailScreen(
                    context: context,
                    characterId: staffEdge!.characters!.first!.id,
                  ),
                ),
              ),
            )
        ],
      ),
    );
  }
}
