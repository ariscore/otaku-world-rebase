import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'staff_voice_card.dart';
import 'staff_voice_parameters.dart';

class SubCharacterCard extends StatelessWidget {
  const SubCharacterCard({
    super.key,
    required this.character,
  });

  final StaffVoiceParameters character;

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
              style: StaffVoiceCard.roleTextStyle,
            ),
            const SizedBox(
              height: 5,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width - 200,
              child: Text(
                textAlign: TextAlign.end,
                character.characterName,
                style: StaffVoiceCard.nameTextStyle,
              ),
            ),
          ],
        ),
        const SizedBox(
          width: 5,
        ),
        Container(
          width: 80,
          height: 120,
          clipBehavior: Clip.antiAlias,
          decoration: ShapeDecoration(
            image: DecorationImage(
              image: CachedNetworkImageProvider(
                character.imageUrl,
              ),
              fit: BoxFit.cover,
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
