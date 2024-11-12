import 'package:flutter/material.dart';
import 'package:otaku_world/bloc/profile/favorite_staff/favorite_staff_bloc.dart';
import 'package:otaku_world/features/discover/screens/entity_screen.dart';

class FavoriteStaffScreen extends StatelessWidget {
  const FavoriteStaffScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const EntityScreen<FavoriteStaffBloc>(
      title: 'Favorite Staff',
      tag: 'favorite_staff',
    );
  }
}
