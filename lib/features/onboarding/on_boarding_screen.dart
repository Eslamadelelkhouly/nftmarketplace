import 'package:flutter/material.dart';
import 'package:nftmarketplace/core/resources/color_manager.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              ColorManager.panfsag,
              ColorManager.panfsaglight,
            ],
          ),
        ),
      ),
    );
  }
}
