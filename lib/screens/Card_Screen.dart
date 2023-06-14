import 'package:finance_app/colors.dart';
import 'package:finance_app/widgets/transactionCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../widgets/MasterCard.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final res_height = MediaQuery.of(context).size.height;
    final res_width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        actions: const [
          Icon(
            Icons.more_vert,
            size: 25,
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.only(left: 10, right: 10),
        children: [
          SizedBox(
            height: res_height * 0.025,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Your Cards",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "You  have 3 active cards",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
              MaterialButton(
                padding: const EdgeInsets.all(10),
                shape: const CircleBorder(),
                onPressed: () {},
                color: const Color(0xffffd674),
                textColor: Colors.black,
                child: const Icon(
                  Icons.add,
                  size: 30,
                ),
              ),
            ],
          ),
          SizedBox(height: res_height * 0.025),

          // Master Card Start Here...

          const MasterCard(),

          SizedBox(height: res_height * 0.025),

          TransactionCard(
            title: "KFC",
            image: "assets/burger.png",
            date: "june 14",
            amount: "+\$2.10",
          ),
          SizedBox(height: res_height * 0.015),
          TransactionCard(
            title: "Paypal",
            image: "assets/paypal.png",
            date: "August 21",
            amount: "+\$12.345",
          ),
          SizedBox(height: res_height * 0.015),
          TransactionCard(
            title: "Car Repair",
            image: "assets/maintenance.png",
            date: "March 15",
            amount: "+\$22.10",
          ),
          SizedBox(height: res_height * 0.015),
        ],
      ),
    );
  }
}
