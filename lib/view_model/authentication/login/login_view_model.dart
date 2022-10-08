import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:uniplex/app/app.locator.dart';
import 'package:uniplex/app/app.router.dart';

class LoginViewModel extends BaseViewModel {
  bool passwordVisibility = true;
  bool? rememberMe = false;
  final _navService = locator<NavigationService>();

  void onPasswordChange() {
    passwordVisibility = !passwordVisibility;
    notifyListeners();
  }

  void onRememberMe(bool? val) {
    rememberMe = val;
    notifyListeners();
  }

  void toSignUpPage() {
    _navService.replaceWith(Routes.signUpView);
  }

  void toForgotPasswordPage() {
    _navService.navigateTo(Routes.forgotPasswordView);
  }
}
