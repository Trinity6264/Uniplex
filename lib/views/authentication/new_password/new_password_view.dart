import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';
import 'package:uniplex/constant/color_pallet.dart';
import 'package:uniplex/helper/TextFieldWidget.dart';
import 'package:uniplex/helper/input_dec.dart';
import 'package:uniplex/view_model/authentication/new_password/new_password_view_model.dart';

class NewPassWordView extends StatelessWidget {
  const NewPassWordView({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ViewModelBuilder<NewPasswordViewModel>.reactive(
      viewModelBuilder: () => NewPasswordViewModel(),
      builder: (context, model, child) {
        return Scaffold(
          backgroundColor: backgroundColor,
          body: SafeArea(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Enter a new password',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      color: primaryColor,
                      fontWeight: FontWeight.w700,
                      fontSize: 20.0,
                    ),
                  ),
                  SizedBox(height: size.height * .1),
                  TextFieldWidget(
                    label: 'New Password',
                    keyBoard: TextInputType.visiblePassword,
                    inputAction: TextInputAction.next,
                    inputDecoration: inputDec,
                  ),
                  SizedBox(height: size.height * .05),
                  TextFieldWidget(
                    label: 'Confirm Password',
                    keyBoard: TextInputType.visiblePassword,
                    inputAction: TextInputAction.done,
                    inputDecoration: inputDec,
                  ),
                  SizedBox(height: size.height * .05),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        model.showSnack('errorMessage');
                      },
                      child: Text(
                        'Send Request',
                        style: GoogleFonts.poppins(
                          color: backgroundColor,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
