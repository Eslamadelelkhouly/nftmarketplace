import 'package:flutter/material.dart';
import 'package:nftmarketplace/core/resources/manage_style_text.dart';
import 'package:nftmarketplace/core/resources/string_manager.dart';

class TitleHomeScreen extends StatelessWidget {
  const TitleHomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      StringManager.TitleHome,
      style: ManageStyleText.textStyleHeadingHome,
    );
  }
}
