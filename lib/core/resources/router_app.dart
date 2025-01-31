import 'package:flutter/material.dart';
import 'package:nftmarketplace/features/onboarding/screen/home_screen.dart';
import 'package:nftmarketplace/features/onboarding/screen/on_boarding_screen.dart';

class RouterApp {
  static Map<String, Widget Function(BuildContext)> routes = {
    NamedRoute.onBoarding: (context) => const OnBoardingScreen(),
    NamedRoute.homeScreen: (context) => const HomeScreen(),
  };
}

class NamedRoute {
  static const String onBoarding = '/onboarding';
  static const String homeScreen = '/home';
}
