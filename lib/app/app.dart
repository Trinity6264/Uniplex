import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:uniplex/views/authentication/forgot_password/forgot_password_view.dart';
import 'package:uniplex/views/authentication/login/login_view.dart';
import 'package:uniplex/views/authentication/signup/signup_view.dart';
import 'package:uniplex/views/authentication/verify_account/verify_account_view.dart';
import 'package:uniplex/views/dashboard/dashboard_view.dart';
import 'package:uniplex/views/onboarding/onboard_view.dart';
import 'package:uniplex/views/splash/splash_view.dart';

import '../views/authentication/new_password/new_password_view.dart';

@StackedApp(routes: [
  MaterialRoute(page: SplashView, initial: true),
  MaterialRoute(page: OnBoardView),
  // ! Authentications
  MaterialRoute(page: LoginView),
  MaterialRoute(page: SignUpView),
  MaterialRoute(page: VerifyAccountView),
  MaterialRoute(page: ForgotPasswordView),
  MaterialRoute(page: NewPassWordView),

  // ! Dashboard
  MaterialRoute(page: DashboardView),

], dependencies: [
  LazySingleton<DialogService>(classType: DialogService),
  LazySingleton<NavigationService>(classType: NavigationService),
  LazySingleton<BottomSheetService>(classType: BottomSheetService),
  LazySingleton<SnackbarService>(classType: SnackbarService),
])
class App {}
