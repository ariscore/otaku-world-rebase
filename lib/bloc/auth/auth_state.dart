part of 'auth_cubit.dart';

@immutable
abstract class AuthState {}

class AuthInitial extends AuthState {}

class Authenticating extends AuthState {}

class LoggingOut extends AuthState {}

class Authenticated extends AuthState {
  Authenticated(this.token);

  final String token;
}

class UnAuthenticated extends AuthState {}

class AuthError extends AuthState {
  AuthError(this.message);

  final String message;
}
