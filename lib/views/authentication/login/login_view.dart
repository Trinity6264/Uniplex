import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:uniplex/view_model/authentication/login/login_view_model.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<LoginViewModel>.reactive(
      viewModelBuilder: () => LoginViewModel(),
      builder: (context, model, child) => 
      Scaffold(
        body: Center(child: Text('Login')),
      ),
    );
  }
}