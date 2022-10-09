import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:uniplex/constant/color_pallet.dart';
import 'package:uniplex/view_model/dashboard/dashboard_view_model.dart';
import 'package:uniplex/views/dashboard/home/home_view.dart';
import 'package:uniplex/views/dashboard/movie/movie_view.dart';
import 'package:uniplex/views/dashboard/profile/profile_view.dart';
import 'package:uniplex/views/dashboard/tickets/tickets_view.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<DashboardViewModel>.reactive(
      viewModelBuilder: () => DashboardViewModel(),
      builder: (context, model, child) => Scaffold(
        backgroundColor: backgroundColor,
        body: getViewFormIndex(model.currentIndex),
        bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: whiteColor,
          backgroundColor: backgroundColor,
          currentIndex: model.currentIndex,
          fixedColor: primaryColor,
          onTap: model.setIndex,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              tooltip: 'Home Page',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.local_movies_outlined),
              label: 'Movies',
              tooltip: 'Movies Page',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_rounded),
              label: 'Tickets',
              tooltip: 'Tickets Page',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outlined),
              label: 'Profile',
              tooltip: 'Profile Page',
            ),
          ],
          type: BottomNavigationBarType.fixed,
        ),
      ),
    );
  }

  Widget getViewFormIndex(int index) {
    switch (index) {
      case 0:
        return const HomeView();
      case 1:
        return const MovieView();
      case 2:
        return const TicketView();
      case 3:
        return const ProfileView();
      default:
        return const HomeView();
    }
  }
}
