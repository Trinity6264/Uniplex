

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:uniplex/view_model/dashboard/home/home_view_model.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      viewModelBuilder: () => HomeViewModel(),
      builder: (context, model, child) => Scaffold(),
    );
  }
}