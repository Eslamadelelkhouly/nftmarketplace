import 'package:flutter/material.dart';
import 'package:nftmarketplace/features/onboarding/screen/home_screen.dart';
import 'package:nftmarketplace/features/onboarding/screen/on_boarding_screen.dart';
import 'package:nftmarketplace/features/onboarding/screen/stastics_screen.dart';

class RouterApp {
  static Map<String, Widget Function(BuildContext)> routes = {
    NamedRoute.onBoarding: (context) => const OnBoardingScreen(),
    NamedRoute.homeScreen: (context) => const HomeScreen(),
    NamedRoute.StatisticScreen: (context) => const StasticsScreen(),
  };
}

class NamedRoute {
  static const String onBoarding = '/onboarding';
  static const String homeScreen = '/home';
  static const String StatisticScreen = '/stastics';
}
