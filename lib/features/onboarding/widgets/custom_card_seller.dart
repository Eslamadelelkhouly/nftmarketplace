import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:nftmarketplace/core/resources/asset_image_manger.dart';
import 'package:nftmarketplace/core/resources/color_manager.dart';
import 'package:nftmarketplace/core/resources/manage_style_text.dart';
import 'package:nftmarketplace/features/onboarding/models/seller_model.dart';

class CustomCardSeller extends StatefulWidget {
  CustomCardSeller({super.key, required this.model});
  Color coloricon = Colors.grey;
  final SellerModel model;
  @override
  State<CustomCardSeller> createState() => _CustomCardSellerState();
}

class _CustomCardSellerState extends State<CustomCardSeller> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
        child: Container(
          padding: const EdgeInsets.only(top: 20),
          width: 170,
          height: 240,
          color: ColorManager.white.withOpacity(0.5),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(20),
                width: 140,
                height: 105,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(widget.model.imageurl),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.model.title,
                        style: ManageStyleText.textStyleDescription.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        widget.model.subtitle,
                        style: ManageStyleText.textStyleDescription,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 3),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.hail),
                    Text(
                      widget.model.txticon,
                      style: ManageStyleText.textStyleDescription,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: IconButton(
                            onPressed: () {
                              setState(() {
                                if (widget.coloricon == Colors.grey) {
                                  widget.coloricon = Colors.red;
                                } else {
                                  widget.coloricon = Colors.grey;
                                }
                              });
                            },
                            icon: Icon(
                              Icons.favorite,
                              size: 17,
                              fill: double.minPositive,
                              color: widget.coloricon,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Text(
                            '200',
                            style: ManageStyleText.textStyleDescription,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      borderRadius: BorderRadius.circular(27),
    );
  }
}
