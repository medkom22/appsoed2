import 'package:flutter/material.dart';

class MainContentWidget extends StatelessWidget {
  final String items;
  final String text;
  final VoidCallback onTap;
  const MainContentWidget({
    Key? key,
    required this.onTap,
    required this.text,
    required this.items,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: SizedBox(
            height: 60,
            width: 60,
            child: Card(
              elevation: 4,
              color: const Color(0xffFDB731),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: Image.asset(
                  'assets/Icon-$items.png',
                  width: 24,
                  height: 24,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 4,
        ),
        Text(
          text,
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}
