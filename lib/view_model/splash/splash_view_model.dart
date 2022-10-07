import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:uniplex/app/app.locator.dart';
import 'package:uniplex/app/app.router.dart';

class SplashViewModel extends BaseViewModel {
  final _navService = locator<NavigationService>();

  // to onboard or login Screen
  void toOnboardOrAuthScreen() {
    Future.delayed(
      const Duration(seconds: 3),
      () => _navService.replaceWith(Routes.onBoardView),
    );
  }
}
