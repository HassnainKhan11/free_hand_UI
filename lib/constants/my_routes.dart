import 'package:flutter/material.dart';
import 'package:free_hand_ui/constants/routes_names.dart';
import 'package:free_hand_ui/screens/onboarding_view.dart';
import 'package:free_hand_ui/screens/product_view.dart';
import 'package:free_hand_ui/screens/services_view.dart';
import 'package:free_hand_ui/screens/splash_view.dart';
import 'package:free_hand_ui/utils/bottom_nav.dart';

import '../screens/home_view.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesNames.navBarRoute:
        return MaterialPageRoute(builder: (BuildContext context) {
          return const BottomNavigation();
        });

      case RoutesNames.splashViewRoute:
        return MaterialPageRoute(
            builder: (BuildContext context) => const SplashView());

      case RoutesNames.homeRoute:
        return MaterialPageRoute(builder: (BuildContext context) {
          return const HomeView();
        });

      case RoutesNames.serviceRoute:
        return MaterialPageRoute(
            builder: (BuildContext context) => const ServicesView());

      case RoutesNames.productViewRoute:
        return MaterialPageRoute(
            builder: (BuildContext context) => const ProductView());

      case RoutesNames.onBoardingRoute:
        return MaterialPageRoute(
            builder: (BuildContext context) => const OnBoardingView());

      default:
        return MaterialPageRoute(
            builder: (BuildContext context) => const Scaffold(
                  body: Center(
                    child: Text('No route found'),
                  ),
                ));
    }
  }
}
