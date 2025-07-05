import 'dart:async';
import 'dart:developer' as dev;

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:otaku_world/utils/shared_preference_utils.dart';
import 'package:uni_links5/uni_links.dart';
import 'package:url_launcher/url_launcher.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());

  final Uri _authUri = Uri(
    scheme: 'https',
    host: 'anilist.co',
    path: '/api/v2/oauth/authorize',
    query: 'client_id=28065&response_type=token',
  );

  final Uri _registerUri = Uri(
    scheme: 'https',
    host: 'anilist.co',
    path: '/signup',
  );

  StreamSubscription? _sub;

  Future<void> authenticate() async {
    await Future.delayed(const Duration(milliseconds: 500));
    final token = SharedPreferenceUtils.getAccessToken();
    if (token == null) {
      emit(UnAuthenticated());
    } else {
      emit(Authenticated(token));
    }
  }

  Future<bool> isLoggedIn() async {
    final token = SharedPreferenceUtils.getAccessToken();
    return token != null;
  }

  void login() async {
    emit(Authenticating());
    try {
      await _launchUrl(_authUri);

      _sub?.cancel();
      _sub = uriLinkStream.listen((uri) async {
        dev.log('Uri: $uri', name: 'Auth');
        if (uri?.scheme == 'otakuworld') {
          var fragment = uri!.toString();
          dev.log('Fragment: $fragment', name: 'Auth');
          var start = fragment.indexOf('=');
          var middle = fragment.indexOf('&');
          var accessToken = fragment.substring(start + 1, middle);
          dev.log('Access token: $accessToken', name: 'Auth');

          dev.log('Storing access token', name: 'Auth');
          await SharedPreferenceUtils.setAccessToken(accessToken);
          emit(Authenticated(accessToken));
        }
      });
    } catch (e) {
      dev.log('Got error: $e', name: 'Auth');
      emit(AuthError(e.toString()));
    }
  }

  Future<void> logOut() async {
    emit(LoggingOut());
    SharedPreferenceUtils.clearData();
    emit(UnAuthenticated());
  }

  void register() {
    _launchUrl(_registerUri);
  }

  Future<void> _launchUrl(Uri url) async {
    if (!await launchUrl(
      url,
      mode: LaunchMode.externalApplication,
    )) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  void onChange(Change<AuthState> change) {
    dev.log(change.toString(), name: 'AuthCubit');
    super.onChange(change);
  }
}
