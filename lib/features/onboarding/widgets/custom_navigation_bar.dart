import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:nftmarketplace/core/resources/color_manager.dart';

class CustomNavigationBar extends StatelessWidget {
  const CustomNavigationBar(
      {super.key, this.onPressedHome, this.onPressedStastics});
  final void Function()? onPressedHome;
  final void Function()? onPressedStastics;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
        child: SizedBox(
          width: double.infinity,
          child: Container(
            padding: const EdgeInsets.all(10),
            width: double.infinity,
            height: 110,
            color: ColorManager.white.withOpacity(0.5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: onPressedHome,
                  icon: Icon(
                    Icons.home,
                    size: 40,
                    color: ColorManager.white,
                  ),
                ),
                IconButton(
                  onPressed: onPressedStastics,
                  icon: Icon(
                    Icons.stacked_bar_chart,
                    size: 40,
                    color: ColorManager.white,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.search,
                    size: 40,
                    color: ColorManager.white,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.person,
                    size: 40,
                    color: ColorManager.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      borderRadius: BorderRadius.circular(45),
    );
  }
}
