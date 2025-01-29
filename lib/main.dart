import 'package:flutter/material.dart';
import 'package:nftmarketplace/core/resources/router_app.dart';
import 'package:nftmarketplace/features/onboarding/on_boarding_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: RouterApp.routes,
      initialRoute: NamedRoute.onBoarding,
      title: 'NFT Marketplace',
    );
  }
}
