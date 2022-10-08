import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';
import 'package:uniplex/constant/color_pallet.dart';
import 'package:uniplex/helper/TextFieldWidget.dart';
import 'package:uniplex/helper/input_dec.dart';
import 'package:uniplex/view_model/authentication/signup/signup_view_model.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ViewModelBuilder<SignUpViewModel>.reactive(
      viewModelBuilder: () => SignUpViewModel(),
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
                  SizedBox(height: size.height * .03),
                  Text(
                    'Create An Account',
                    style: GoogleFonts.poppins(
                      color: whiteColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 30.0,
                    ),
                  ),
                  SizedBox(height: size.height * .02),
                  TextFieldWidget(
                    inputAction: TextInputAction.next,
                    keyBoard: TextInputType.name,
                    label: 'Full Name*',
                    inputDecoration: inputDec.copyWith(
                      hintText: 'Tomiwa Mariam',
                      filled: true,
                      fillColor: whiteColor,
                    ),
                  ),
                  SizedBox(height: size.height * .02),
                  TextFieldWidget(
                    inputAction: TextInputAction.next,
                    keyBoard: TextInputType.emailAddress,
                    label: 'Email Address*',
                    inputDecoration: inputDec.copyWith(
                      hintText: 'user@gmail.com',
                      filled: true,
                      fillColor: whiteColor,
                    ),
                  ),
                  SizedBox(height: size.height * .02),
                  TextFieldWidget(
                    label: 'Password*',
                    inputAction: TextInputAction.next,
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
                  TextFieldWidget(
                    label: 'Confirm Password*',
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
                    children: [
                      Checkbox(
                        value: model.agree,
                        onChanged: model.onChangedAgree,
                        hoverColor: whiteColor,
                        activeColor: paleGreenColor,
                        checkColor: whiteColor,
                        focusColor: paleGreenColor,
                      ),
                      RichText(
                        text: TextSpan(children: [
                          const TextSpan(text: 'I agree to the'),
                          TextSpan(
                            text: ' Terms of Use*',
                            style: GoogleFonts.poppins(
                              color: paleGreenColor,
                            ),
                          ),
                        ]),
                      )
                    ],
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: model.toVerifyAccount,
                      child: Text(
                        'Sign up!',
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
                          const TextSpan(text: 'Already have an account?     '),
                          TextSpan(
                            text: 'Login',
                            recognizer: TapGestureRecognizer()
                              ..onTap = model.toLoginPage,
                            style: GoogleFonts.poppins(
                              color: paleGreenColor,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
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
