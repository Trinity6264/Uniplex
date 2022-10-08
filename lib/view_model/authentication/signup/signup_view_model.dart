import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:uniplex/app/app.locator.dart';
import 'package:uniplex/app/app.router.dart';

class SignUpViewModel extends BaseViewModel {
  final _navService = locator<NavigationService>();

  bool passwordVisibility = false;
  bool agree = false;

  void onPasswordChange() {
    passwordVisibility = !passwordVisibility;
    notifyListeners();
  }

  void onChangedAgree(bool? val) {
    agree = val!;
    notifyListeners();
  }

  void toLoginPage() {
    _navService.replaceWith(Routes.loginView);
  }
  void toVerifyAccount() {
    _navService.replaceWith(Routes.verifyAccountView);
  }
}
