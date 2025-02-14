import 'package:flutter/material.dart';
import 'package:nftmarketplace/core/resources/asset_image_manger.dart';
import 'package:nftmarketplace/core/resources/manage_style_text.dart';
import 'package:nftmarketplace/features/onboarding/models/container_stastic_model.dart';

class ContainerBodyStastics extends StatelessWidget {
  const ContainerBodyStastics({
    super.key,
    required this.model,
  });
  final ContainerStasticModel model;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      width: 290,
      height: 60,
      child: Row(
        children: [
          Text(
            model.count,
            style: ManageStyleText.textStyle14.copyWith(
              color: Colors.grey,
            ),
          ),
          SizedBox(
            width: 9,
          ),
          Container(
            width: 50,
            height: 50,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(9),
              child: Image.asset(
                model.imageurl,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            width: 14,
          ),
          Container(
            padding: const EdgeInsets.only(top: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  model.title,
                  style: ManageStyleText.textStyleButton,
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  'View info',
                  style: ManageStyleText.textStyleDescription.copyWith(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 60,
          ),
          Container(
            child: Column(
              children: [
                Text(
                  model.money,
                  style: ManageStyleText.textStyle14,
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('         '),
                    Text(
                      model.precentage,
                      style: ManageStyleText.textStyle14.copyWith(
                        color: Colors.green,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
