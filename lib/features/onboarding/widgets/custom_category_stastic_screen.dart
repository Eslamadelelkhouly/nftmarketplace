import 'package:flutter/material.dart';
import 'package:nftmarketplace/core/resources/color_manager.dart';
import 'package:nftmarketplace/core/resources/manage_style_text.dart';

class CustomCategoryStasticScreen extends StatelessWidget {
  const CustomCategoryStasticScreen(
      {super.key,
      required this.text,
      required this.iconstart,
      required this.iconend});
  final String text;
  final Icon iconstart;
  final Icon iconend;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 148,
      height: 40,
      decoration: BoxDecoration(
        color: ColorManager.panfsag.withOpacity(0.15),
        borderRadius: BorderRadius.circular(27),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            iconstart.icon,
            color: Colors.grey,
          ),
          Text(
            text,
            textAlign: TextAlign.center,
            style: ManageStyleText.textStyle14,
          ),
          Icon(
            iconend.icon,
            color: Colors.grey,
          ),
        ],
      ),
    );
  }
}
