import 'package:flutter/material.dart';
import 'package:nftmarketplace/core/resources/color_manager.dart';
import 'package:nftmarketplace/core/resources/manage_style_text.dart';
import 'package:nftmarketplace/core/resources/string_manager.dart';

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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [],
          ),
        ),
      ),
    );
  }
}
