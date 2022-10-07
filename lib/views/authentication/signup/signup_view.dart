import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:uniplex/view_model/authentication/signup/signup_view_model.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SignUpViewModel>.reactive(
      viewModelBuilder: () => SignUpViewModel(),
      builder: (context, model, child) => 
      Scaffold(
        body: Center(child: Text('SignUpViewModel')),
      ),
    );
  }
}