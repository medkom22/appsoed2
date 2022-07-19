import 'package:flutter/material.dart';

import '../provider/launcer_provider.dart';

class SocialWidget extends StatelessWidget {
  final String image;
  final String link;
  const SocialWidget({
    Key? key,
    required this.image,
    required this.link,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        LauncherProvider.launcherURL(link);
      },
      child: Image.asset(
        'assets/$image.png',
        width: 40,
        height: 40,
        fit: BoxFit.cover,
      ),
    );
  }
}
