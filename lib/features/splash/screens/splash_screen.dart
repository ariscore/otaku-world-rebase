import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:otaku_world/generated/assets.dart';

import '../../../bloc/auth/auth_cubit.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_)  {
      navigateToNextScreen();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthCubit, AuthState>(
      listener: (context, state) {
        navigateToNextScreen();
      },
      child: Scaffold(
        body: Center(
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

  void navigateToNextScreen() {
    final authState = context.read<AuthCubit>().state;
    if (authState is Authenticated) {
      context.go('/home');
    } else if (authState is UnAuthenticated) {
      context.go('/login');
    }
  }
}
