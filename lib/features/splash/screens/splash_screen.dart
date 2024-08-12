import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:otaku_world/generated/assets.dart';

import '../../../bloc/auth/auth_cubit.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is Authenticated) {
          context.go('/home');
        } else if (state is UnAuthenticated) {
          context.go('/login');
        }
      },

      child: Scaffold(
        body: Center(
          // child: Column(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: [
          //     Text(
          //       'This is Splash Screen',
          //       style: Theme.of(context).textTheme.headlineMedium,
          //     ),
          //     const SizedBox(
          //       height: 5,
          //     ),
          //     const CircularProgressIndicator(),
          //   ],
          child: SizedBox(
            height: 128,
            width: 128,
            child: Image.asset(
              Assets.logosAppLogo,
            ),
          ),
        ),
      ),
    );
  }
}
