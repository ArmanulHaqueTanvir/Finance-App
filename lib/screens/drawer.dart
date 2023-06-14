import 'package:finance_app/colors.dart';
import 'package:flutter/material.dart';

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final res_height = MediaQuery.of(context).size.height;
    final res_width = MediaQuery.of(context).size.width;
    return Container(
      width: double.infinity,
      child: Drawer(
        backgroundColor: Colors.black,
        child: ListView(
          padding: const EdgeInsets.only(left: 25, right: 10),
          children: [
            SizedBox(height: res_height * 0.075),
            Align(
              alignment: Alignment.topRight,
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: kSecondaryColor,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Icon(
                      Icons.close,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: SizedBox(
                height: 60,
                child: Image.asset("assets/user.png"),
              ),
            ),
            SizedBox(height: res_height * 0.0175),
            const Text(
              "Tanvir",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              "Flutter Developer",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
            ),
            SizedBox(height: res_height * 0.04),
            const DrawerItems(
                text: "Corporation", image: "assets/corporation.png"),
            const DrawerItems(
                text: "Security setting", image: "assets/policeman.png"),
            const DrawerItems(
                text: "Online Shopping", image: "assets/shopping-cart.png"),
            const DrawerItems(text: "Groceris", image: "assets/food.png"),
            const DrawerItems(text: "Utilities", image: "assets/tools.png"),
            const DrawerItems(
                text: "Thump Scanner", image: "assets/scanner.png"),
          ],
        ),
      ),
    );
  }
}

class DrawerItems extends StatelessWidget {
  final text;
  final image;
  const DrawerItems({super.key, required this.text, required this.image});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Image.asset(
        image,
        color: Colors.white,
        height: 30,
        width: 30,
      ),
      onTap: () {
        Navigator.pop(context);
      },
      title: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 15,
        ),
      ),
    );
  }
}
