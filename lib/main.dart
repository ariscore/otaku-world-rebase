import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:media_kit/media_kit.dart';
import 'package:otaku_world/bloc/auth/auth_cubit.dart';
import 'package:otaku_world/bloc/filter/collections/external_links/anime/anime_platforms_cubit.dart';
import 'package:otaku_world/bloc/filter/collections/external_links/manga/manga_platforms_cubit.dart';
import 'package:otaku_world/bloc/filter/collections/genres/genre_cubit.dart';
import 'package:otaku_world/bloc/filter/collections/tags/media_tags_cubit.dart';
import 'package:otaku_world/bloc/graphql_client/graphql_client_cubit.dart';
import 'package:otaku_world/bloc/media_list/media_list/media_list_bloc.dart';
import 'package:otaku_world/bloc/routes/redirect_route_cubit.dart';
import 'package:otaku_world/bloc/viewer/viewer_bloc.dart';
import 'package:otaku_world/features/app_version_management/services/app_update_service.dart';
import 'package:otaku_world/features/app_version_management/services/app_version_service.dart';
import 'package:otaku_world/firebase_options.dart';
import 'package:otaku_world/theme/app_theme.dart';
import 'package:otaku_world/utils/shared_preference_utils.dart';
import 'package:path_provider/path_provider.dart';

import 'bloc/app_version/app_version_bloc.dart';
import 'config/router/router.dart';
import 'features/app_events_management/utils/analytics_logger.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  MediaKit.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await SharedPreferenceUtils.init();
  await AnalyticsLogger.init();
  if (kReleaseMode) {
    // Enable Crashlytics in release mode
    FlutterError.onError = (errorDetails) {
      FirebaseCrashlytics.instance.recordFlutterFatalError(errorDetails);
    };
    // Pass all uncaught asynchronous errors that aren't handled by the Flutter framework to Crashlytics
    PlatformDispatcher.instance.onError = (error, stack) {
      FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
      return true;
    };
  }
  await SystemChrome.setPreferredOrientations(
    [
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ],
  );

  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: HydratedStorageDirectory(
      (await getTemporaryDirectory()).path,
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => GraphqlClientCubit(),
        ),
        BlocProvider(
          create: (context) => AuthCubit(),
        ),
        BlocProvider(
          create: (context) => AppVersionBloc(
            service: AppVersionService(
              firestore: FirebaseFirestore.instance,
            ),
          )..add(CheckAppVersionEvent()),
        ),
        BlocProvider(
          create: (context) => RedirectRouteCubit(),
        ),
        // Filter screens.
        BlocProvider(
          create: (context) => GenreCubit(),
        ),
        BlocProvider(
          create: (context) => MediaTagsCubit(),
        ),
        BlocProvider(
          create: (context) => AnimePlatformsCubit(),
        ),
        BlocProvider(
          create: (context) => MangaPlatformsCubit(),
        ),
        BlocProvider(
          create: (context) => ViewerBloc(),
        ),
        BlocProvider(
          create: (context) => AnimeListBloc(),
        ),
        BlocProvider(
          create: (context) => MangaListBloc(),
        ),
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<AuthCubit, AuthState>(
            listener: (context, state) {
              // print('Auth state listening');
              // // router.refresh();
              // if (state is Authenticated) {
              //   context
              //       .read<GraphqlClientCubit>()
              //       .initializeGraphqlClient(state.token);
              // }
            },
          ),
          BlocListener<GraphqlClientCubit, GraphqlClientState>(
            listener: (context, state) {
              if (state is GraphqlClientInitialized) {
                context.read<ViewerBloc>().add(LoadViewer(state.client));
              }
            },
          ),
          BlocListener<AppVersionBloc, AppVersionState>(
            listener: (context, state) {
              if (state is AppForceUpdate) {
                AppUpdateService.checkForAppUpdate();
              }
            },
          ),
        ],
        child: MaterialApp.router(
          theme: AppTheme.getTheme(),
          themeMode: ThemeMode.dark,
          routerConfig: router,
          showSemanticsDebugger: false,
        ),
      ),
    );
  }
}
