import 'package:stacked/stacked_annotations.dart';
import 'package:uniplex/views/onboarding/onboard.dart';
import 'package:uniplex/views/splash/splash_view.dart';

@StackedApp(routes: [
  MaterialRoute(page: SplashView, initial: true),
  MaterialRoute(page: OnBoard),
])
class App {}
