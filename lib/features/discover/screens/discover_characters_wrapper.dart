import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:otaku_world/bloc/discover/characters/most_favorite_characters_bloc.dart';
import 'package:otaku_world/bloc/search/search_characters/search_characters_bloc.dart';

import '../../../bloc/discover/characters/birthday_characters_bloc.dart';

class DiscoverCharactersWrapper extends StatelessWidget {
  const DiscoverCharactersWrapper({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => BirthdayCharactersBloc()),
        BlocProvider(create: (context) => MostFavoriteCharactersBloc()),
        BlocProvider(create: (context) => SearchCharactersBloc()),
      ],
      child: child,
    );
  }
}
