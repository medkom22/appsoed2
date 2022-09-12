import 'package:flutter/material.dart';

import '../../common/constant.dart';

class ItemWidget extends StatelessWidget {
  final VoidCallback onPress;
  final String text;
  final IconData icon;
  const ItemWidget(
      {Key? key, required this.icon, required this.onPress, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 70,
          height: 70,
          decoration: BoxDecoration(
            color: orangeColor,
            borderRadius: BorderRadius.circular(16),
          ),
          child: IconButton(
            onPressed: onPress,
            icon: Icon(
              icon,
              color: whiteColor,
              size: 30,
            ),
          ),
        ),
        const SizedBox(
          height: 4,
        ),
        Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: medium,
            fontSize: 16,
          ),
        )
      ],
    );
  }
}
