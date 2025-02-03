import 'package:flutter/material.dart';
import 'package:nftmarketplace/features/onboarding/models/container_two_model.dart';
import 'package:nftmarketplace/features/onboarding/widgets/container_two_home.dart';

class ListViewContainerTwo extends StatelessWidget {
  const ListViewContainerTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 200,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) => SizedBox(
          width: 8,
        ),
        itemCount: containerOfList.length,
        itemBuilder: (context, index) {
          return ContainerTwoHome(
            model: containerOfList[index],
          );
        },
      ),
    );
  }
}
