import 'package:finance_app/screens/drawer.dart';
import 'package:finance_app/widgets/activity.dart';
import 'package:finance_app/widgets/fl_chart.dart';
import 'package:finance_app/widgets/home_page_card.dart';
import 'package:flutter/material.dart';
import '../widgets/bottomNavBar.dart';
import '../widgets/iconContainer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    final res_height = MediaQuery.of(context).size.height;
    final res_width = MediaQuery.of(context).size.width;
    return Scaffold(
      key: scaffoldKey,
      drawer: const DrawerScreen(),
      bottomNavigationBar:
          const BottomNavBar(), // bottom navigation bar from Widgets.......
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: GestureDetector(
          onTap: () {
            scaffoldKey.currentState?.openDrawer();
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              "assets/menu.png",
              color: Colors.white,
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset("assets/user.png"),
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.only(left: 10, right: 10),
        children: [
          SizedBox(height: res_height * 0.025),
          const Text(
            "Your Balance",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: res_height * 0.025),
          // this is from widgets start......
          HomePageCard(height: res_height * 0.125),
          // this is from widgets end
          SizedBox(height: res_width * 0.025),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconContainer(
                icon: Icons.arrow_upward_outlined,
              ),
              IconContainer(
                icon: Icons.arrow_downward_outlined,
              ),
              IconContainer(
                icon: Icons.food_bank,
              ),
              IconContainer(
                icon: Icons.charging_station_rounded,
              ),
            ],
          ),
          SizedBox(height: res_height * 0.025),

          // this is from widgets start......

          Column(
            children: [
              Activity(width: res_width * 0.15),
              const BarChartSample2(), // Chart From Widgets here.......
            ],
          ),
          // this is from widgets end.....
        ],
      ),
    );
  }
}
