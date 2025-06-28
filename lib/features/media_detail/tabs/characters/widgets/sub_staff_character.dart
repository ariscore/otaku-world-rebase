import 'package:flutter/material.dart';

import '../../../../../core/ui/images/cover_image.dart';
import '../../../../../graphql/__generated/graphql/schema.graphql.dart';
import 'character_card.dart';
import 'character_parameters.dart';

class SubStaffCharacter extends StatelessWidget {
  const SubStaffCharacter({
    super.key,
    required this.character,
  });

  final CharacterParameters character;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              character.characterRole,
              style: CharacterCard.roleTextStyle,
            ),
            const SizedBox(
              height: 5,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width - 200,
              child: Text(
                textAlign: TextAlign.end,
                character.characterName,
                style: CharacterCard.nameTextStyle,
              ),
            ),
          ],
        ),
        const SizedBox(
          width: 5,
        ),
        GestureDetector(
          onTap: character.onTap,
          child: SizedBox(
            width: 80,
            height: 120,
            child: CoverImage(
              imageUrl: character.imageUrl,
              type: character.isManga
                  ? Enum$MediaType.MANGA
                  : Enum$MediaType.ANIME,
              animeRadius: 10,
            ),
          ),
        ),
      ],
    );
  }
}
