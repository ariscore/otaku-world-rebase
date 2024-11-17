import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:otaku_world/bloc/discover/staff/birthday_staff_bloc.dart';
import 'package:otaku_world/bloc/discover/staff/most_favorite_staff_bloc.dart';
import 'package:otaku_world/bloc/search/search_staff/search_staff_bloc.dart';

// TODO: Remove all discover wrappers, instead use bloc passing
class DiscoverStaffWrapper extends StatelessWidget {
  const DiscoverStaffWrapper({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => BirthdayStaffBloc()),
        BlocProvider(create: (context) => MostFavoriteStaffBloc()),
        BlocProvider(create: (context) => SearchStaffBloc()),
      ],
      child: child,
    );
  }
}
