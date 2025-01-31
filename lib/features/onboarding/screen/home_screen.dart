import 'package:flutter/material.dart';
import 'package:nftmarketplace/core/resources/color_manager.dart';
import 'package:nftmarketplace/features/onboarding/widgets/title_home_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.PrimaryBackground,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 12,
              ),
              TitleHomeScreen(),
            ],
          ),
        ),
      ),
    );
  }
}
