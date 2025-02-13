import 'package:flutter/material.dart';
import 'package:nftmarketplace/features/onboarding/widgets/custom_category_stastic_screen.dart';

class RowOfCategories extends StatelessWidget {
  const RowOfCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 330,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CustomCategoryStasticScreen(
            text: 'All categories',
            iconstart: Icon(Icons.grid_view),
            iconend: Icon(Icons.expand_more),
          ),
          SizedBox(
            width: 25,
          ),
          CustomCategoryStasticScreen(
            text: 'All Chains',
            iconstart: Icon(Icons.insert_link),
            iconend: Icon(Icons.expand_more),
          ),
        ],
      ),
    );
  }
}
