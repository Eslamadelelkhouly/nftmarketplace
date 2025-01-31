import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:nftmarketplace/core/resources/color_manager.dart';
import 'package:nftmarketplace/core/resources/manage_style_text.dart';
import 'package:nftmarketplace/core/resources/router_app.dart';
import 'package:nftmarketplace/core/resources/string_manager.dart';
import 'package:nftmarketplace/features/onboarding/widgets/custom_button_splash_screen.dart';

class CardSplashScreen extends StatelessWidget {
  const CardSplashScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
        child: Container(
          padding: const EdgeInsets.all(20),
          width: 306,
          height: 191,
          color: ColorManager.white.withOpacity(0.5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                StringManager.TitleCard,
                style: ManageStyleText.textStyleHeading19,
              ),
              SizedBox(
                height: 2,
              ),
              Text(
                StringManager.SubTitleCard,
                textAlign: TextAlign.center,
                style: ManageStyleText.textStyleDescription.copyWith(
                  color: Colors.grey[300],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 198,
                height: 45,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(33),
                  border: Border.all(
                    color: ColorManager.white,
                  ),
                ),
                child: CustomButtonSplashScreen(
                  onPressed: () {
                    Navigator.pushNamed(context, NamedRoute.homeScreen);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      borderRadius: BorderRadius.circular(27),
    );
  }
}
