import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:uniplex/views/onboarding/onboard.dart';
import 'package:uniplex/views/splash/splash_view.dart';

@StackedApp(routes: [
  MaterialRoute(page: SplashView, initial: true),
  MaterialRoute(page: OnBoard),
], dependencies: [
  LazySingleton<DialogService>(classType: DialogService),
  LazySingleton<NavigationService>(classType: NavigationService),
  LazySingleton<BottomSheetService>(classType: BottomSheetService),
  LazySingleton<SnackbarService>(classType: SnackbarService),
])
class App {}
