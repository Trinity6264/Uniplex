import 'dart:developer';

import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:uniplex/app/app.locator.dart';
import 'package:uniplex/app/app.router.dart';

class ForgotPasswordViewModel extends BaseViewModel {
  final _dialogService = locator<DialogService>();
  final _navService = locator<NavigationService>();

  void showDialog() async {
    final res = await _dialogService.showConfirmationDialog(
      title: '🎊',
    );
    if (res!.confirmed) {
      toNewPasswordPage();
    }
  }

  void toNewPasswordPage() async {
    _navService.navigateTo(Routes.newPassWordView);
  }
}
