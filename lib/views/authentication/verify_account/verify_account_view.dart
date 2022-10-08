import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';
import 'package:uniplex/constant/color_pallet.dart';
import 'package:uniplex/helper/pin_text_Field.dart';
import 'package:uniplex/view_model/authentication/verify_account/verify_account_view_model.dart';

class VerifyAccountView extends StatelessWidget {
  const VerifyAccountView({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ViewModelBuilder<VerifyAccountViewModel>.reactive(
      viewModelBuilder: () => VerifyAccountViewModel(),
      builder: (context, model, child) {
        return Scaffold(
          backgroundColor: backgroundColor,
          body: SafeArea(
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: size.height * .01),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_back_ios_outlined,
                        color: whiteColor,
                      ),
                    ),
                    SizedBox(height: size.height * .07),
                    Container(
                      width: double.infinity,
                      alignment: Alignment.center,
                      child: Text(
                        'Verify Account',
                        style: GoogleFonts.poppins(
                          color: whiteColor,
                          fontSize: 30.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    SizedBox(height: size.height * .03),
                    Container(
                      width: double.infinity,
                      alignment: Alignment.center,
                      child: Text(
                        'Please enter the 4-digit code sent your email tom*****@gmail.com',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                          color: whiteColor,
                          wordSpacing: 1.2,
                          fontSize: 15.0,
                        ),
                      ),
                    ),
                    SizedBox(height: size.height * .02),
                    Container(
                      width: double.infinity,
                      height: size.height * 0.15,
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          PinTextField(),
                          PinTextField(),
                          PinTextField(),
                          PinTextField(),
                        ],
                      ),
                    ),
                    SizedBox(height: size.height * .005),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Change email',
                            style: GoogleFonts.poppins(
                              color: paleGreenColor,
                              fontSize: 15.0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Resend code',
                            style: GoogleFonts.poppins(
                              color: paleGreenColor,
                              fontSize: 15.0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
