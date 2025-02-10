import 'package:flutter/material.dart';
import 'package:nftmarketplace/core/resources/manage_style_text.dart';

class ActivityTitleCard extends StatelessWidget {
  const ActivityTitleCard({
    super.key,
    required this.active,
    required this.text,
    required this.icon,
  });
  final bool active;
  final String text;
  final Icon icon;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon.icon,
              color: active ? Colors.white : Colors.grey,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              'Activity',
              style: ManageStyleText.textStyleButton,
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          height: 5,
          width: 100,
          decoration: BoxDecoration(
            color: active ? Color(0xff97A9F6) : Colors.grey,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(5),
              topRight: Radius.circular(5),
            ),
          ),
        ),
      ],
    );
  }
}
