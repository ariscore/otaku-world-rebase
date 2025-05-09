import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:otaku_world/features/media_detail/tabs/characters/widgets/character_parameters.dart';

import 'staff_voice_card.dart';

class SubAnimeCard extends StatelessWidget {
  const SubAnimeCard({
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
        Container(
          width: 78,
          height: 115,
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
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
              width: isStaff
                  ? MediaQuery.of(context).size.width - 120
                  : MediaQuery.of(context).size.width - 200,
              child: Text(
                character.characterName,
                style: StaffVoiceCard.nameTextStyle,
                maxLines: isStaff ? 2 : 1,
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
                style: StaffVoiceCard.roleTextStyle,
                maxLines: isStaff ? 3 : 1,
              ),
            ),
          ],
        )
      ],
    );
  }
}
