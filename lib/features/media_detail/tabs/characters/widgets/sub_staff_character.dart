import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/navigation_helper.dart';
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
    return InkWell(
      onTap: () {
        NavigationHelper.goToStaffDetailScreen(
          context: context,
          staffId: character.characterId,
        );
      },
      child: Row(
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
      ),
    );
  }
}
