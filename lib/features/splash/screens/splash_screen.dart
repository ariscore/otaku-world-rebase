import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:otaku_world/bloc/graphql_client/graphql_client_cubit.dart';
import 'package:otaku_world/bloc/routes/redirect_route_cubit.dart';
import 'package:otaku_world/config/router/router_constants.dart';
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
    WidgetsBinding.instance.addPostFrameCallback((_) {
      // navigateToNextScreen();
      context.read<AuthCubit>().authenticate();
      print('Authenticating from splash screen');
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<AuthCubit, AuthState>(
          listener: (context, state) {
            // navigateToNextScreen();
            if (state is Authenticated) {
              print('Splash screen authenticated');
              context
                  .read<GraphqlClientCubit>()
                  .initializeGraphqlClient(state.token);
            } else if (state is UnAuthenticated) {
              print('Splash screen unauthenticated');
              context.go(RouteConstants.login);
            }
          },
        ),
        BlocListener<GraphqlClientCubit, GraphqlClientState>(
          listener: (context, state) {
            if (state is GraphqlClientInitialized) {
              final routerCubit = context.read<RedirectRouteCubit>();
              if (routerCubit.isDesiredRouteSet()) {
                print('Going to desired route: ${routerCubit.getDesiredRoute()}');
                context.go(routerCubit.getDesiredRoute());
              } else {
                print('Going to home screen');
                context.go(RouteConstants.home);
              }
            }
          },
        ),
      ],
      child: Scaffold(
        body: Center(
          child: SvgPicture.asset(
            Assets.assetsAppLogoHorizontal,
            width: MediaQuery.of(context).size.width - 80,
          ),
        ),
      ),
    );
  }

// void navigateToNextScreen() {
//   final authState = context.read<AuthCubit>().state;
//   if (authState is Authenticated) {
//     context.go('/home');
//   } else if (authState is UnAuthenticated) {
//     context.go('/login');
//   }
// }
}
