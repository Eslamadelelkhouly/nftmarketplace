import 'package:flutter/material.dart';
import 'package:nftmarketplace/features/onboarding/widgets/custom_container_one.dart';
import 'package:nftmarketplace/features/onboarding/widgets/custom_title_on_container_one.dart';

class StackContainerOne extends StatelessWidget {
  const StackContainerOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      child: const Stack(
        children: [
          CustomContainerOne(),
          Positioned(
            bottom: 0,
            child: CustomTitleOnContainerOne(),
          ),
        ],
      ),
    );
  }
}
