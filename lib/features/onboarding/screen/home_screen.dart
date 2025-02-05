import 'package:flutter/material.dart';
import 'package:nftmarketplace/core/resources/color_manager.dart';
import 'package:nftmarketplace/core/resources/manage_style_text.dart';
import 'package:nftmarketplace/core/resources/string_manager.dart';
import 'package:nftmarketplace/features/onboarding/widgets/custom_card_seller.dart';
import 'package:nftmarketplace/features/onboarding/widgets/custom_list_view_container_one.dart';
import 'package:nftmarketplace/features/onboarding/widgets/list_view_container_two.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text(
          StringManager.TitleHome,
          style: ManageStyleText.textStyleHeadingHome,
        ),
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
                        CustomCardSeller(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
