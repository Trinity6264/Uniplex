

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:uniplex/view_model/dashboard/movie/movie_view_model.dart';


class MovieView extends StatelessWidget {
  const MovieView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<MovieViewModel>.reactive(
      viewModelBuilder: () => MovieViewModel(),
      builder: (context, model, child) => Scaffold(),
    );
  }
}