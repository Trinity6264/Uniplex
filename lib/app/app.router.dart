// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedRouterGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter/material.dart' as _i10;
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart' as _i1;
import 'package:stacked_services/stacked_services.dart' as _i11;
import 'package:uniplex/views/authentication/forgot_password/forgot_password_view.dart'
    as _i7;
import 'package:uniplex/views/authentication/login/login_view.dart' as _i4;
import 'package:uniplex/views/authentication/new_password/new_password_view.dart'
    as _i8;
import 'package:uniplex/views/authentication/signup/signup_view.dart' as _i5;
import 'package:uniplex/views/authentication/verify_account/verify_account_view.dart'
    as _i6;
import 'package:uniplex/views/dashboard/dashboard_view.dart' as _i9;
import 'package:uniplex/views/onboarding/onboard_view.dart' as _i3;
import 'package:uniplex/views/splash/splash_view.dart' as _i2;

class Routes {
  static const splashView = '/';

  static const onBoardView = '/on-board-view';

  static const loginView = '/login-view';

  static const signUpView = '/sign-up-view';

  static const verifyAccountView = '/verify-account-view';

  static const forgotPasswordView = '/forgot-password-view';

  static const newPassWordView = '/new-pass-word-view';

  static const dashboardView = '/dashboard-view';

  static const all = <String>{
    splashView,
    onBoardView,
    loginView,
    signUpView,
    verifyAccountView,
    forgotPasswordView,
    newPassWordView,
    dashboardView,
  };
}

class StackedRouter extends _i1.RouterBase {
  final _routes = <_i1.RouteDef>[
    _i1.RouteDef(
      Routes.splashView,
      page: _i2.SplashView,
    ),
    _i1.RouteDef(
      Routes.onBoardView,
      page: _i3.OnBoardView,
    ),
    _i1.RouteDef(
      Routes.loginView,
      page: _i4.LoginView,
    ),
    _i1.RouteDef(
      Routes.signUpView,
      page: _i5.SignUpView,
    ),
    _i1.RouteDef(
      Routes.verifyAccountView,
      page: _i6.VerifyAccountView,
    ),
    _i1.RouteDef(
      Routes.forgotPasswordView,
      page: _i7.ForgotPasswordView,
    ),
    _i1.RouteDef(
      Routes.newPassWordView,
      page: _i8.NewPassWordView,
    ),
    _i1.RouteDef(
      Routes.dashboardView,
      page: _i9.DashboardView,
    ),
  ];

  final _pagesMap = <Type, _i1.StackedRouteFactory>{
    _i2.SplashView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const _i2.SplashView(),
        settings: data,
      );
    },
    _i3.OnBoardView: (data) {
      final args = data.getArgs<OnBoardViewArguments>(
        orElse: () => const OnBoardViewArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => _i3.OnBoardView(key: args.key),
        settings: data,
      );
    },
    _i4.LoginView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const _i4.LoginView(),
        settings: data,
      );
    },
    _i5.SignUpView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const _i5.SignUpView(),
        settings: data,
      );
    },
    _i6.VerifyAccountView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const _i6.VerifyAccountView(),
        settings: data,
      );
    },
    _i7.ForgotPasswordView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const _i7.ForgotPasswordView(),
        settings: data,
      );
    },
    _i8.NewPassWordView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const _i8.NewPassWordView(),
        settings: data,
      );
    },
    _i9.DashboardView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const _i9.DashboardView(),
        settings: data,
      );
    },
  };

  @override
  List<_i1.RouteDef> get routes => _routes;
  @override
  Map<Type, _i1.StackedRouteFactory> get pagesMap => _pagesMap;
}

class OnBoardViewArguments {
  const OnBoardViewArguments({this.key});

  final _i10.Key? key;
}

extension NavigatorStateExtension on _i11.NavigationService {
  Future<dynamic> navigateToSplashView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.splashView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToOnBoardView({
    _i10.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.onBoardView,
        arguments: OnBoardViewArguments(key: key),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToLoginView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.loginView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToSignUpView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.signUpView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToVerifyAccountView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.verifyAccountView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToForgotPasswordView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.forgotPasswordView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToNewPassWordView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.newPassWordView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToDashboardView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.dashboardView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }
}
