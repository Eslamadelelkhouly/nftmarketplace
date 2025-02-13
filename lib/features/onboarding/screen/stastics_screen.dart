import 'package:flutter/material.dart';
import 'package:nftmarketplace/core/resources/color_manager.dart';
import 'package:nftmarketplace/core/resources/manage_style_text.dart';
import 'package:nftmarketplace/features/onboarding/widgets/activity_title_card.dart';
import 'package:nftmarketplace/features/onboarding/widgets/card_title_stastic_screen.dart';
import 'package:nftmarketplace/features/onboarding/widgets/custom_category_stastic_screen.dart';
import 'package:nftmarketplace/features/onboarding/widgets/custom_navigation_bar.dart';

class StasticsScreen extends StatefulWidget {
  StasticsScreen({super.key});

  @override
  State<StasticsScreen> createState() => _StasticsScreenState();
}

class _StasticsScreenState extends State<StasticsScreen> {
  bool isRankActive = false;
  bool isActivityActive = false;

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
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            centerTitle: true,
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 14),
                child: Icon(Icons.more_horiz),
              ),
            ],
            title: Text(
              'Stats',
              style: ManageStyleText.textStyleHeadingHome,
            ),
          ),
          body: Container(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          isRankActive = true;
                          isActivityActive = false;
                        });
                      },
                      child: CartTitleStasticsScreen(
                        icon: Icon(Icons.stacked_bar_chart),
                        text: 'Ranking',
                        active: isRankActive,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          isActivityActive = true;
                          isRankActive = false;
                        });
                      },
                      child: ActivityTitleCard(
                        icon: Icon(Icons.add_chart_rounded),
                        text: 'Activity',
                        active: isActivityActive,
                      ),
                    ),
                  ],
                ),
                Divider(thickness: 0.6, color: Colors.grey),
                SizedBox(
                  height: 27,
                ),
                Container(
                  width: 330,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CustomCategoryStasticScreen(
                        text: 'All categories',
                        iconstart: Icon(Icons.grid_view),
                        iconend: Icon(Icons.expand_more),
                      ),
                      SizedBox(
                        width: 25,
                      ),
                      CustomCategoryStasticScreen(
                        text: 'All Chains',
                        iconstart: Icon(Icons.insert_link),
                        iconend: Icon(Icons.expand_more),
                      ),
                    ],
                  ),
                ),
              ],
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
              child: Icon(Icons.add, color: ColorManager.black),
            ),
          ),
        ),
      ],
    );
  }
}
