import 'dart:ui';

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
                    const Text(
                      StringManager.Title,
                      style: ManageStyleText.textStyleHeading,
                      textAlign: TextAlign.left,
                    ),
                    const Spacer(),
                    ClipRRect(
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
                                style: ManageStyleText.textStyleDescription
                                    .copyWith(
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
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(33),
                                  child: BackdropFilter(
                                    filter: ImageFilter.blur(
                                      sigmaX: 10,
                                      sigmaY: 10,
                                    ),
                                    child: MaterialButton(
                                      onPressed: () {},
                                      child: Text(
                                        StringManager.textbutton,
                                        style: ManageStyleText.textStyleButton,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      borderRadius: BorderRadius.circular(27),
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
