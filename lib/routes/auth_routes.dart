
part of 'koorakick_routes.dart';

class LoginRoute extends AppRouteData {
  const LoginRoute();

  @override
  RouteAccess get access => RouteAccess.public;

  @override
  String get location => '/login';

  @override
  Widget build(BuildContext context, GoRouterState state) => const LoginScreen();
}

class VerifyRoute extends AppRouteData {
  const VerifyRoute();

  @override
  RouteAccess get access => RouteAccess.public;

  @override
  String get location => '/verify';

  @override
  Widget build(BuildContext context, GoRouterState state) => const VerifyPhoneScreen();
}

class SignupRoute extends AppRouteData {
  const SignupRoute();

  @override
  RouteAccess get access => RouteAccess.public;

  @override
  String get location => '/signup';

  @override
  Widget build(BuildContext context, GoRouterState state) => const CreateAccountScreen();
}

class ForgotPasswordRoute extends AppRouteData {
  const ForgotPasswordRoute();

  @override
  RouteAccess get access => RouteAccess.public;

  @override
  String get location => '/forgot-password';

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const ForgotPasswordScreen();
}

class ResetPasswordRoute extends AppRouteData {
  const ResetPasswordRoute({this.token = ''});

  /// Reset token forwarded from the email deep link (`?token=`).
  final String token;

  @override
  RouteAccess get access => RouteAccess.public;

  @override
  String get location => '/reset-password';

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      ResetPasswordScreen(token: token);
}