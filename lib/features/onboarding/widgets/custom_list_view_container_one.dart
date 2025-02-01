import 'package:flutter/material.dart';
import 'package:nftmarketplace/features/onboarding/widgets/stack_container_one.dart';

class CustomListViewContainerOne extends StatelessWidget {
  const CustomListViewContainerOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(5),
        ),
        itemCount: 3,
        itemBuilder: (context, inex) {
          return StackContainerOne();
        },
      ),
    );
  }
}
