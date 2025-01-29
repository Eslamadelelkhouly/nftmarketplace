import 'package:flutter/material.dart';
import 'package:nftmarketplace/features/onboarding/on_boarding_screen.dart';

class RouterApp {
  static Map<String, Widget Function(BuildContext)> routes = {
    NamedRoute.onBoarding: (context) => const OnBoardingScreen(),
  };
}

class NamedRoute {
  static const String onBoarding = '/onboarding';
}
