import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:otaku_world/features/media_detail/tabs/characters/character_parameters.dart';

import 'character_card.dart';

class SubAnimeCharacter extends StatelessWidget {
  const SubAnimeCharacter({
    super.key,
    required this.character,
  });

  final CharacterParameters character;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 78,
          height: 120,
          clipBehavior: Clip.antiAlias,
          decoration: ShapeDecoration(
            image: DecorationImage(
              image: CachedNetworkImageProvider(
                character.imageUrl,
              ),
              fit: BoxFit.fill,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        const SizedBox(
          width: 5,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              character.characterName,
              style: CharacterCard.nameTextStyle,
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              character.characterRole,
              textAlign: TextAlign.center,
              style: CharacterCard.roleTextStyle,
            ),
          ],
        )
      ],
    );
  }
}
