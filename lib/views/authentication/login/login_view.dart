import 'dart:developer';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';
import 'package:uniplex/constant/color_pallet.dart';
import 'package:uniplex/helper/input_dec.dart';
import 'package:uniplex/view_model/authentication/login/login_view_model.dart';
import 'package:uniplex/helper/TextFieldWidget.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ViewModelBuilder<LoginViewModel>.reactive(
      viewModelBuilder: () => LoginViewModel(),
      builder: (context, model, child) => Scaffold(
        backgroundColor: backgroundColor,
        body: SafeArea(
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: size.height * .08),
                  Text(
                    'Welcome 👋',
                    style: GoogleFonts.poppins(
                      color: whiteColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 35.0,
                    ),
                  ),
                  SizedBox(height: size.height * .05),
                  TextFieldWidget(
                    inputAction: TextInputAction.next,
                    keyBoard: TextInputType.emailAddress,
                    label: 'Email Address',
                    inputDecoration: inputDec.copyWith(
                      hintText: 'user@gmail.com',
                      filled: true,
                      fillColor: whiteColor,
                    ),
                  ),
                  SizedBox(height: size.height * .05),
                  TextFieldWidget(
                    label: 'Password',
                    inputAction: TextInputAction.done,
                    keyBoard: TextInputType.visiblePassword,
                    isObsecured: model.passwordVisibility,
                    inputDecoration: inputDec.copyWith(
                      hintText: '8 Characters',
                      filled: true,
                      fillColor: whiteColor,
                      suffixIcon: IconButton(
                        icon: Icon(
                          model.passwordVisibility
                              ? Icons.visibility
                              : Icons.visibility_off,
                        ),
                        onPressed: model.onPasswordChange,
                      ),
                    ),
                  ),
                  SizedBox(height: size.height * .02),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        child: Row(
                          children: [
                            Checkbox(
                              value: model.rememberMe,
                              onChanged: model.onRememberMe,
                              hoverColor: whiteColor,
                              activeColor: paleGreenColor,
                              checkColor: whiteColor,
                              focusColor: paleGreenColor,
                            ),
                            Text(
                              'Remember me',
                              style: GoogleFonts.poppins(
                                color: paleGreenColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        child: TextButton(
                          onPressed: model.toForgotPasswordPage,
                          child: Text(
                            'Forgot Password?',
                            style: GoogleFonts.poppins(
                              color: paleGreenColor,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: size.height * .02),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'Login',
                        style: GoogleFonts.poppins(
                          color: backgroundColor,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: size.height * .02),
                  Container(
                    width: double.infinity,
                    alignment: Alignment.center,
                    child: RichText(
                      text: TextSpan(
                        children: [
                          const TextSpan(text: 'Don\'t have an account?     '),
                          TextSpan(
                            text: 'Sign up',
                            recognizer: TapGestureRecognizer()
                              ..onTap = model.toSignUpPage,
                            style: GoogleFonts.poppins(
                              color: paleGreenColor,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: size.height * .02),
                  Container(
                    alignment: Alignment.center,
                    child: Text(
                      'Or',
                      style: GoogleFonts.poppins(
                        color: whiteColor,
                        fontWeight: FontWeight.w600,
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                  SizedBox(height: size.height * .03),
                  Container(
                    alignment: Alignment.center,
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    margin: const EdgeInsets.symmetric(horizontal: 60),
                    height: size.height * .06,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 88, 117, 134),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'G',
                          style: GoogleFonts.poppins(
                            color: whiteColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 38.0,
                          ),
                        ),
                        SizedBox(width: size.width * .01),
                        Container(
                          width: 1,
                          height: double.infinity,
                          color: whiteColor.withOpacity(0.5),
                        ),
                        SizedBox(width: size.width * .03),
                        Expanded(
                          child: Text(
                            'sign in with Google',
                            style: GoogleFonts.poppins(
                              color: whiteColor,
                              fontWeight: FontWeight.w500,
                              fontSize: 15.0,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
