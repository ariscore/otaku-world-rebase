import 'package:flutter/material.dart';
import 'package:otaku_world/features/media_detail/tabs/characters/widgets/character_parameters.dart';

import '../../../../../core/ui/images/cover_image.dart';
import '../../../../../graphql/__generated/graphql/schema.graphql.dart';
import 'character_card.dart';

class SubAnimeCharacter extends StatelessWidget {
  const SubAnimeCharacter({
    super.key,
    required this.character,
    this.isStaff = false,
  });

  final CharacterParameters character;
  final bool isStaff;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: character.onTap,
          child: SizedBox(
            width: 78,
            height: 115,
            child: CoverImage(
              imageUrl: character.imageUrl,
              type: character.isManga
                  ? Enum$MediaType.MANGA
                  : Enum$MediaType.ANIME,
              animeRadius: 10,
            ),
          ),
        ),
        const SizedBox(
          width: 5,
        ),
        Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: isStaff
                  ? MediaQuery.of(context).size.width - 120
                  : MediaQuery.of(context).size.width - 220,
              child: Text(
                character.characterName,
                style: CharacterCard.nameTextStyle,
                maxLines: 2,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            SizedBox(
              height: 50,
              width: isStaff
                  ? MediaQuery.of(context).size.width - 120
                  : MediaQuery.of(context).size.width - 200,
              child: Text(
                character.characterRole,
                textAlign: TextAlign.start,
                style: CharacterCard.roleTextStyle,
                maxLines: isStaff ? 3 : 1,
              ),
            ),
          ],
        )
      ],
    );
  }
}
