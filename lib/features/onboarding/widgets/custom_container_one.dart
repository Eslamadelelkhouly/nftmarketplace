import 'package:flutter/material.dart';

class CustomContainerOne extends StatelessWidget {
  const CustomContainerOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 253,
      height: 168,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(11),
        child: Image.asset(
          'assets/images/img1.jpeg',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
