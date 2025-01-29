import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:nftmarketplace/core/resources/manage_style_text.dart';
import 'package:nftmarketplace/core/resources/string_manager.dart';

class CustomButtonSplashScreen extends StatelessWidget {
  const CustomButtonSplashScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
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
    );
  }
}
