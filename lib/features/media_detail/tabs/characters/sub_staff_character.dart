import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

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
            Text(
              character.characterName,
              style: CharacterCard.nameTextStyle,
            ),
            const SizedBox(
              height: 8,
            ),
          ],
        ),
        const SizedBox(
          width: 5,
        ),
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
      ],
    );
  }
}
