import 'package:flutter/material.dart';
import 'package:nftmarketplace/core/resources/manage_style_text.dart';
import 'package:nftmarketplace/core/resources/string_manager.dart';

class TitleSplashScreen extends StatelessWidget {
  const TitleSplashScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      StringManager.Title,
      style: ManageStyleText.textStyleHeading,
      textAlign: TextAlign.left,
    );
  }
}
