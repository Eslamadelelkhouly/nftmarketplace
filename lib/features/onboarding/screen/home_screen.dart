import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:nftmarketplace/core/resources/color_manager.dart';
import 'package:nftmarketplace/core/resources/manage_style_text.dart';
import 'package:nftmarketplace/core/resources/string_manager.dart';
import 'package:nftmarketplace/features/onboarding/widgets/custom_list_view_container_one.dart';
import 'package:nftmarketplace/features/onboarding/widgets/list_view_container_two.dart';
import 'package:nftmarketplace/features/onboarding/widgets/list_view_seller.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
          bottomNavigationBar: ClipRRect(
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
                        onPressed: () {},
                        icon: Icon(
                          Icons.home,
                          size: 40,
                          color: ColorManager.white,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
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
          ),
          backgroundColor: ColorManager.PrimaryBackground,
          body: SafeArea(
            child: Container(
              width: double.infinity,
              height: double.infinity,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 15),
                    const CustomListViewContainerOne(),
                    SizedBox(height: 30),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              textAlign: TextAlign.start,
                              'Trending Collections',
                              style: ManageStyleText.TitleList2,
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            const ListViewContainerTwo(),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              'Top Seller',
                              style: ManageStyleText.TitleList2,
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            ListViewSeller(),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              'Top Seller',
                              style: ManageStyleText.TitleList2,
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            ListViewSeller(),
                            SizedBox(
                              height: 100,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
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
