import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:nftmarketplace/core/resources/asset_image_manger.dart';
import 'package:nftmarketplace/core/resources/color_manager.dart';
import 'package:nftmarketplace/core/resources/manage_style_text.dart';
import 'package:nftmarketplace/features/onboarding/models/container_two_model.dart';

class ContainerTwoHome extends StatefulWidget {
  ContainerTwoHome({super.key, required this.model});
  Color color = Colors.grey;
  final ContainerTwoModel model;

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
            children: [
              Container(
                width: 140,
                height: 105,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(widget.model.imagecontainer),
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
                    textAlign: TextAlign.center,
                    widget.model.title,
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
