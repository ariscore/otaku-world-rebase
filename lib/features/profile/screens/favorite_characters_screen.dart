import 'package:flutter/material.dart';
import 'package:otaku_world/bloc/profile/favorite_characters/favorite_characters_bloc.dart';
import 'package:otaku_world/features/discover/screens/entity_screen.dart';

class FavoriteCharactersScreen extends StatelessWidget {
  const FavoriteCharactersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const EntityScreen<FavoriteCharactersBloc>(
      title: 'Favorite Characters',
      tag: 'favorite_characters',
    );
  }
}
