import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';
import 'package:uniplex/constant/color_pallet.dart';
import 'package:uniplex/view_model/onboarding/onboarding_view_model.dart';
import 'package:uniplex/views/onboarding/widget/onboard_widget.dart';

class OnBoardView extends StatelessWidget {
  OnBoardView({super.key});
  final PageController _pageController = PageController();

  final pageData = const [
    {
      'svg': busSvg,
      'title': 'Easy Ticket Booking',
      'description':
          'Booking movie tickets has never been this simple. Click on your choices and start booking'
    },
    {
      'svg': otpSvg,
      'title': 'Seat Reservation',
      'description':
          'Select Accessible Seats!, Quickly book your seats alongside your tickets in Our Seating Plan',
    },
    {
      'svg': paymentSvg,
      'title': 'Online Payment',
      'description':
          'Frustrated about long queue?\n You don\'t need to pay at the cinema hall, Pick the choice you want and make payments fast and quick ',
    },
  ];

// Prev func

  void prevPage(int index) {
    _pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 300),
      curve: Curves.ease,
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ViewModelBuilder<OnBoardViewModel>.reactive(
      viewModelBuilder: () => OnBoardViewModel(),
      onDispose: (model) {
        _pageController.dispose();
      },
      builder: (context, model, child) => Scaffold(
        backgroundColor: backgroundColor,
        body: SafeArea(
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                Expanded(
                  child: Stack(
                    children: [
                      backgroundGradient(),
                      SizedBox(
                        width: double.infinity,
                        height: double.infinity,
                        child: PageView.builder(
                          controller: _pageController,
                          itemCount: pageData.length,
                          physics: const BouncingScrollPhysics(),
                          onPageChanged: model.onPageChanged,
                          itemBuilder: (context, index) {
                            final list = pageData[index];
                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(top: 20),
                                  width: double.infinity,
                                  height: size.height * 0.35,
                                  child: Center(
                                    child: SvgPicture.asset(
                                      list['svg']!,
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                                SizedBox(height: size.height * .15),
                                Text(
                                  list['title']!,
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w600,
                                    color: whiteColor,
                                    fontSize: 22.0,
                                    letterSpacing: 1.1,
                                  ),
                                ),
                                SizedBox(height: size.height * .05),
                                SizedBox(
                                  width: size.width * 0.7,
                                  child: Text(
                                    list['description']!,
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.poppins(
                                      color: whiteColor,
                                    ),
                                  ),
                                ),
                                SizedBox(height: size.height * .05),
                                // model.pageIndex == pageData.length?
                                if (model.pageIndex == pageData.length - 1)
                                  ElevatedButton(
                                    onPressed: () {},
                                    child: Text(
                                      'Get Started!',
                                      style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w600,
                                        color: backgroundColor,
                                      ),
                                    ),
                                  ),
                              ],
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  height: size.height * 0.1,
                  child: Row(
                    children: [
                      TextButton(
                        child: Text(
                          model.pageIndex == 0 ? 'Skip' : 'Prev',
                          style: GoogleFonts.poppins(
                            color: primaryColor,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        onPressed: () {
                          if (model.pageIndex == 0) {
                            log('Login Page');
                            return;
                          } else {
                            prevPage(--model.pageIndex);
                          }
                        },
                      ),
                      Expanded(
                        child: Container(
                          alignment: Alignment.center,
                          width: double.infinity,
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              dotContainer(model.pageIndex == 0, size),
                              dotContainer(model.pageIndex == 1, size),
                              dotContainer(model.pageIndex == 2, size),
                            ],
                          ),
                        ),
                      ),
                      model.pageIndex == 0
                          ? SizedBox(
                              width: size.width * .18,
                            )
                          : TextButton(
                              child: Text(
                                'Next',
                                style: GoogleFonts.poppins(
                                  color: whiteColor,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              onPressed: () {
                                if (model.pageIndex < pageData.length - 1) {
                                  prevPage(++model.pageIndex);
                                }
                              },
                            ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
