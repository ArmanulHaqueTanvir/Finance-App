import 'package:flutter/material.dart';
import '../colors.dart';

class IconContainer extends StatelessWidget {
  IconData icon;
  IconContainer({
    super.key,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: kSecondaryColor,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Icon(
          icon,
          color: kPrimaryColor,
          size: 35,
        ),
      ),
    );
  }
}
