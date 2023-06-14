import 'package:finance_app/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class TransactionCard extends StatelessWidget {
  final title, image, date, amount;

  TransactionCard({
    super.key,
    required this.title,
    required this.image,
    required this.date,
    required this.amount,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: kSecondaryColor,
      ),
      child: ListTile(
        leading: Image.asset(
          image,
          width: 30,
          color: Colors.white,
        ),
        title: Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 15,
            fontWeight: FontWeight.w500,
          ),
        ),
        subtitle: Text(
          date,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 10,
          ),
        ),
        trailing: Text(
          amount,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 15,
          ),
        ),
      ),
    );
  }
}
