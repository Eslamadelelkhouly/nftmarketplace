import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:nftmarketplace/core/resources/manage_style_text.dart';

class CustomTitleOnContainerOne extends StatelessWidget {
  const CustomTitleOnContainerOne({super.key});

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 0.6, sigmaY: 0.6),
      child: Container(
        width: 255,
        height: 45,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(11),
            bottomRight: Radius.circular(11),
          ),
          gradient: LinearGradient(
            begin: AlignmentDirectional.topCenter,
            end: AlignmentDirectional.bottomCenter,
            colors: [
              Color(0xff00000000).withOpacity(0.07),
              Color(0xff00000033).withOpacity(0.3),
            ],
          ),
        ),
        child: Text(
          textAlign: TextAlign.center,
          'Art',
          style: ManageStyleText.textStyleCardList,
        ),
      ),
    );
  }
}
