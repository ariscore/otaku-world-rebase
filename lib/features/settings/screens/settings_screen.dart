import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:otaku_world/bloc/auth/auth_cubit.dart';
import 'package:otaku_world/core/ui/appbars/simple_app_bar.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SimpleAppBar(
        title: 'Settings',
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            context.read<AuthCubit>().logOut();
          },
          child: Text('Log out'),
        ),
      ),
    );
  }
}
