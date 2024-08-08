import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:otaku_world/config/router/router_constants.dart';

import '../../../../bloc/discover/characters/birthday_characters_bloc.dart';
import '../../../../bloc/discover/characters/most_favorite_characters_bloc.dart';
import '../../../../graphql/__generated/graphql/fragments.graphql.dart';
import '../../widgets/entity_section.dart';

class DiscoverCharactersSection extends StatelessWidget {
  const DiscoverCharactersSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        EntitySection<BirthdayCharactersBloc, Fragment$CharacterShort>(
          label: 'Birthdays',
          heroTag: 'birthday_characters',
          onViewAll: () {
            context.push(RouteConstants.birthdayCharacters);
          },
        ),
        // const SizedBox(height: 15),
        EntitySection<MostFavoriteCharactersBloc, Fragment$CharacterShort>(
          label: 'Most Favorite Characters',
          heroTag: 'favorite_characters',
          onViewAll: () {
            context.push(RouteConstants.mostFavoriteCharacters);
          },
        ),
        const SizedBox(height: 15),
      ],
    );
  }
}
