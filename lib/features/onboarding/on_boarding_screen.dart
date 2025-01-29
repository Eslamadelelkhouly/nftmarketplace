import 'package:flutter/material.dart';
import 'package:nftmarketplace/core/resources/asset_image_manger.dart';
import 'package:nftmarketplace/core/resources/color_manager.dart';
import 'package:nftmarketplace/core/resources/manage_style_text.dart';
import 'package:nftmarketplace/core/resources/string_manager.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset(
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
              AssetImageManger.ImageOnBoarding,
            ),
            SizedBox(
              height: double.infinity,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 80),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      StringManager.Title,
                      style: ManageStyleText.textStyleHeading,
                      textAlign: TextAlign.left,
                    ),
                    Spacer(),
                    Text(
                      StringManager.Title,
                      style: ManageStyleText.textStyleHeading,
                      textAlign: TextAlign.left,
                    ),
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
