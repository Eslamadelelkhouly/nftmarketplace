import 'package:flutter/material.dart';
import 'package:nftmarketplace/core/resources/color_manager.dart';
import 'package:nftmarketplace/core/resources/manage_style_text.dart';
import 'package:nftmarketplace/core/resources/router_app.dart';
import 'package:nftmarketplace/core/resources/string_manager.dart';
import 'package:nftmarketplace/features/onboarding/widgets/custom_navigation_bar.dart';
import 'package:nftmarketplace/features/onboarding/widgets/home_body.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          extendBody: true,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            centerTitle: true,
            title: Text(
              StringManager.TitleHome,
              style: ManageStyleText.textStyleHeadingHome,
            ),
          ),
          bottomNavigationBar: CustomNavigationBar(
            onPressedStastics: () {
              Navigator.pushNamed(context, NamedRoute.StatisticScreen);
            },
            onPressedHome: () {},
          ),
          backgroundColor: ColorManager.PrimaryBackground,
          body: HomeBody(),
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
