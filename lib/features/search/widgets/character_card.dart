import 'package:flutter/material.dart';
import 'package:otaku_world/features/search/widgets/identity_card.dart';

import '../../../graphql/__generated/graphql/fragments.graphql.dart';

class ResultCharacterCard extends StatelessWidget {
  const ResultCharacterCard({super.key, required this.character});

  final Fragment$SearchResultCharacter? character;

  @override
  Widget build(BuildContext context) {
    if (character == null) return const SizedBox();

    return IdentityCard(
      imageUrl: character!.image?.large,
      name: character!.name!.userPreferred!,
      favorites: '${character!.favourites ?? '?'}',
    );
  }
}
