import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:nftmarketplace/core/resources/asset_image_manger.dart';
import 'package:nftmarketplace/core/resources/color_manager.dart';
import 'package:nftmarketplace/core/resources/manage_style_text.dart';

class ContainerTwoHome extends StatefulWidget {
  ContainerTwoHome({super.key});
  Color color = Colors.grey;

  @override
  State<ContainerTwoHome> createState() => _ContainerTwoHomeState();
}

class _ContainerTwoHomeState extends State<ContainerTwoHome> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
        child: Container(
          padding: const EdgeInsets.all(20),
          width: 158,
          height: 200,
          color: ColorManager.white.withOpacity(0.5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 140,
                height: 105,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(AssetImageManger.image1card2),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '3D Art',
                    style: ManageStyleText.textStyleDescription,
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          setState(() {
                            if (widget.color == Colors.grey) {
                              widget.color = Colors.red;
                            } else {
                              widget.color = Colors.grey;
                            }
                          });
                        },
                        icon: Icon(
                          Icons.favorite,
                          size: 17,
                          fill: double.minPositive,
                          color: widget.color,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      borderRadius: BorderRadius.circular(27),
    );
  }
}
