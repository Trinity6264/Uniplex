import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:uniplex/app/app.locator.dart';
import 'package:uniplex/app/app.router.dart';

class OnBoardViewModel extends BaseViewModel {
  final _navService = locator<NavigationService>();

  int pageIndex = 0;

  // Catch the index of the current page

  void onPageChanged(int value) {
    pageIndex = value;
    notifyListeners();
  }

  

  void toLoginScreen() {
    _navService.replaceWith(Routes.loginView);
  }
}
