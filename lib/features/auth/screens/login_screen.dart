import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:otaku_world/bloc/auth/auth_cubit.dart';

import 'package:otaku_world/generated/assets.dart';
import 'package:otaku_world/theme/colors.dart';
import '../../../constants/string_constants.dart';
import '../../../core/ui/buttons/primary_button.dart';
import '../../../core/ui/buttons/primary_outlined_button.dart';

final Uri authUri = Uri(
  scheme: 'https',
  host: 'anilist.co',
  path: '/api/v2/oauth/authorize',
  query: 'client_id=13595&response_type=token',
);

final Uri registerUri = Uri(
  scheme: 'https',
  host: 'anilist.co',
  path: '/signup',
);

class LoginScreen extends HookWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final authCubit = context.read<AuthCubit>();

    return BlocListener<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is Authenticated) {
          context.go('/home');
        } else if (state is UnAuthenticated) {
          // context.go('/login');
        }
      },
      child: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(Assets.assetsAppLogo),
                const SizedBox(
                  height: 40,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width - 100,
                      child: Text(
                        LoginConstants.loginToAniListHeading,
                        style:
                            Theme.of(context).textTheme.displayLarge?.copyWith(
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Poppins',
                                ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width - 30,
                      child: Text(
                        LoginConstants.loginToAniListSubHeading,
                        style:
                            Theme.of(context).textTheme.headlineSmall?.copyWith(
                                  fontFamily: 'Poppins',
                                  color: AppColors.white,
                                ),
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width - 30,
                      child: Text(
                        LoginConstants.registerText,
                        style:
                            Theme.of(context).textTheme.headlineSmall?.copyWith(
                                  fontFamily: 'Poppins',
                                  color: AppColors.white,
                                ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 55,
                ),
                PrimaryButton(
                  onTap: () {
                    authCubit.login();
                  },
                  label: 'Log In',
                  horizontalPadding: 15,
                ),
                const SizedBox(
                  height: 20,
                ),
                PrimaryOutlinedButton(
                  onTap: () {
                    authCubit.register();
                  },
                  label: 'Register',
                  horizontalPadding: 15,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
