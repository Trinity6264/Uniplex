import 'dart:developer';

import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:uniplex/app/app.locator.dart';

class VerifyAccountViewModel extends BaseViewModel {
  final _navService = locator<NavigationService>();
  void back() {
    _navService.back();
  }
}
