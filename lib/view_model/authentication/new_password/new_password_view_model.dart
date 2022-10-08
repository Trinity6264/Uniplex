import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:uniplex/app/app.locator.dart';
import 'package:uniplex/constant/color_pallet.dart';

class NewPasswordViewModel extends BaseViewModel {
  final _dialogService = locator<DialogService>();
  final _snackBarService = locator<SnackbarService>();

  void showDialog() async {
    final res = await _dialogService.showCustomDialog(
      title: '🎊',
    );
    log(res?.confirmed.toString() ?? 'Nope');
  }

  void showSnack(String errorMessage) async {
    _snackBarService.registerSnackbarConfig(
      SnackbarConfig(
        forwardAnimationCurve: Curves.ease,
        leftBarIndicatorColor: primaryColor,
        reverseAnimationCurve: Curves.ease,
        snackPosition: SnackPosition.TOP,
        messageColor: primaryColor,
      ),
    );
    _snackBarService.showSnackbar(
      title: 'Error Message',
      message: errorMessage,
    );
  }
}
