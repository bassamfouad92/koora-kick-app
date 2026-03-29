
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

class ResetPasscodeRoute extends AppRouteData {
  const ResetPasscodeRoute();

  @override
  RouteAccess get access => RouteAccess.public;

  @override
  String get location => '/reset-passcode';

  @override
  Widget build(BuildContext context, GoRouterState state) => const ResetPasscodeScreen();
}

class CreateNewPasscodeRoute extends AppRouteData {
  const CreateNewPasscodeRoute();

  @override
  RouteAccess get access => RouteAccess.public;

  @override
  String get location => '/create-new-passcode';

  @override
  Widget build(BuildContext context, GoRouterState state) => const CreateNewPasscodeScreen();
}