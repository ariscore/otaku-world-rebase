import 'package:flutter/material.dart';
import 'package:otaku_world/features/media_detail/tabs/characters/widgets/character_parameters.dart';
import 'package:otaku_world/features/media_detail/tabs/characters/widgets/sub_anime_character.dart';
import 'package:otaku_world/features/media_detail/tabs/characters/widgets/sub_staff_character.dart';
import 'package:otaku_world/graphql/__generated/graphql/details/characters.graphql.dart';
import 'package:otaku_world/utils/navigation_helper.dart';

import '../../../../../theme/colors.dart';

class StaffVoiceCard extends StatelessWidget {
  const StaffVoiceCard({
    super.key,
    required this.animeCharacter,
    required this.characterRole,
    required this.voiceActor,
  });

  final Query$Characters$Media$characters$edges$node animeCharacter;
  final String characterRole;
  final Query$Characters$Media$characters$edges$voiceActorRoles$voiceActor?
      voiceActor;
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
  );

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        NavigationHelper.goToCharacterDetailScreen(
          context: context,
          characterId: animeCharacter.id,
        );
      },
      child: Container(
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
                imageUrl: animeCharacter.image?.large ?? "",
                characterId: animeCharacter.id.toString(),
                characterName: animeCharacter.name?.userPreferred ?? "Unknown",
                characterRole: characterRole,
              ),
            ),
            if (voiceActor != null)
              Positioned(
                top: 0,
                bottom: 0,
                right: 0,
                child: SubStaffCharacter(
                  character: CharacterParameters(
                    imageUrl: voiceActor?.image?.large ?? " ",
                    characterName: voiceActor?.name?.userPreferred ?? "Unknown",
                    characterRole: voiceActor?.languageV2 ?? "",
                    characterId: voiceActor?.id.toString() ?? "",
                  ),
                ),
              )
          ],
        ),
      ),
    );
  }
}
