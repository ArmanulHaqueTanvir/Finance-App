import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../colors.dart';

class Activity extends StatelessWidget {
  double width;
  Activity({super.key, required this.width});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          "Activities",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
        Container(
          padding: const EdgeInsets.all(2),
          width: width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: kSecondaryColor,
          ),
          child: const Text(
            "This Week",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }
}
