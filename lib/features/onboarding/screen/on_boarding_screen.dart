import 'package:flutter/material.dart';
import 'package:nftmarketplace/features/onboarding/widgets/background_image_splash_screen.dart';
import 'package:nftmarketplace/features/onboarding/widgets/card_splash_screen.dart';
import 'package:nftmarketplace/features/onboarding/widgets/title_splash_screen.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            BackgroundImage(),
            SizedBox(
              height: double.infinity,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 80),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TitleSplashScreen(),
                    const Spacer(),
                    const CardSplashScreen(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
