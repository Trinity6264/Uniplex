import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';
import 'package:uniplex/constant/color_pallet.dart';
import 'package:uniplex/view_model/splash/splash_view_model.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SplashViewModel>.nonReactive(
      viewModelBuilder: () => SplashViewModel(),
      builder: (context, model, child) => Scaffold(
        backgroundColor: backgroundColor,
        body: Center(
          child: Text(
            'Uniplex',
            style: GoogleFonts.poppins(
              color: primaryColor,
              fontSize: 50.0,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.5,
            ),
          ),
        ),
      ),
    );
  }
}
