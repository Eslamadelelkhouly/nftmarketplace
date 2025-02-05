import 'package:flutter/material.dart';
import 'package:nftmarketplace/features/onboarding/models/seller_model.dart';
import 'package:nftmarketplace/features/onboarding/widgets/custom_card_seller.dart';

class ListViewSeller extends StatelessWidget {
  const ListViewSeller({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 230,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) => SizedBox(
          width: 8,
        ),
        itemCount: modelofseller.length,
        itemBuilder: (context, index) {
          return CustomCardSeller(
            model: modelofseller[index],
          );
        },
      ),
    );
  }
}
