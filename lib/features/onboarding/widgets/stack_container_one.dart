import 'package:flutter/material.dart';
import 'package:nftmarketplace/features/onboarding/models/container_one_model.dart';
import 'package:nftmarketplace/features/onboarding/widgets/custom_container_one.dart';
import 'package:nftmarketplace/features/onboarding/widgets/custom_title_on_container_one.dart';

class StackContainerOne extends StatelessWidget {
  const StackContainerOne({super.key, required this.modelcontainer});

  final ContainerOneModel modelcontainer;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      child: Stack(
        children: [
          CustomContainerOne(
            image: modelcontainer.image,
          ),
          Positioned(
            bottom: 0,
            child: CustomTitleOnContainerOne(
              text: modelcontainer.title,
            ),
          ),
        ],
      ),
    );
  }
}
