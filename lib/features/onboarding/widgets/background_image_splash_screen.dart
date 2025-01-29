import 'package:flutter/material.dart';
import 'package:nftmarketplace/core/resources/asset_image_manger.dart';

class BackgroundImage extends StatelessWidget {
  const BackgroundImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      width: double.infinity,
      height: double.infinity,
      fit: BoxFit.cover,
      AssetImageManger.ImageOnBoarding,
    );
  }
}

