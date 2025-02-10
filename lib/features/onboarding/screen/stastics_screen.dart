import 'package:flutter/material.dart';
import 'package:nftmarketplace/core/resources/color_manager.dart';
import 'package:nftmarketplace/core/resources/router_app.dart';
import 'package:nftmarketplace/features/onboarding/widgets/custom_navigation_bar.dart';

class StasticsScreen extends StatelessWidget {
  const StasticsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          backgroundColor: ColorManager.PrimaryBackground,
          bottomNavigationBar: CustomNavigationBar(
            onPressedHome: () {
              Navigator.pop(context);
            },
            onPressedStastics: () {},
          ),
        ),
        Positioned(
          left: 170,
          bottom: 50,
          child: GestureDetector(
            onTap: () {},
            child: Container(
              width: 70,
              height: 100,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: StarBorder.polygon(sides: 6, squash: 0.5),
              ),
              child: Icon(
                Icons.add,
                color: ColorManager.black,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
