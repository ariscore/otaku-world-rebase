import 'package:flutter/material.dart';
import 'package:otaku_world/bloc/profile/favorite_studios/favorite_studios_bloc.dart';
import 'package:otaku_world/features/discover/screens/entity_screen.dart';

class FavoriteStudiosScreen extends StatelessWidget {
  const FavoriteStudiosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const EntityScreen<FavoriteStudiosBloc>(
      title: 'Favorite Studios',
      tag: 'favorite_studios',
    );
  }
}
