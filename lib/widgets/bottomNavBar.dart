import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:finance_app/colors.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  bool isPressed = true;
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  int _page = 0;
  void _onItemTapped(int index) {
    setState(() {
      _page = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      color: Colors.grey,
      onTap: _onItemTapped,
      animationDuration: const Duration(milliseconds: 300),
      backgroundColor: Theme.of(context).primaryColor.withOpacity(0.1),
      buttonBackgroundColor: kPrimaryColor,
      items: [
        Icon(
          Icons.home,
          size: 25,
          color: isPressed == true ? Colors.black : Colors.white,
        ),
        Icon(
          Icons.favorite,
          size: 25,
          color: isPressed == true ? Colors.black : Colors.white,
        ),
        Icon(
          Icons.shopping_bag,
          size: 25,
          color: isPressed == true ? Colors.black : Colors.white,
        ),
        Icon(
          Icons.person,
          size: 25,
          color: isPressed == true ? Colors.black : Colors.white,
        )
      ],
    );
  }
}
