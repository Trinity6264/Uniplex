import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:uniplex/constant/color_pallet.dart';

class OnBoard extends StatelessWidget {
  const OnBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
        child: Text(
          'data',
          style: TextStyle(
            color: whiteColor,
          ),
        ),
      ),
    );
  }
}
