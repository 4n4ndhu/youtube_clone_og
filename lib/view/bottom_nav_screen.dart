import 'package:flutter/material.dart';
import 'package:youtube_clone_og/view/home_screen/home_screen.dart';
import 'package:youtube_clone_og/view/shorts_screen/shorts_screen.dart';
import 'package:youtube_clone_og/view/utils/constants/color_constatns.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  List screens = [
    HomeScreen(),
    ShortsScreen(),
    Container(
      color: Colors.blue,
    ),
    Container(
      color: Colors.green,
    ),
    Container(
      color: Colors.orange,
    ),
  ];
  int selected = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[selected],
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: ColorConstants.primarywhite,
          unselectedItemColor: ColorConstants.primarywhite,
          backgroundColor: ColorConstants.primaryblack,
          currentIndex: selected,
          onTap: (value) {
            selected = value;
            setState(() {});
          },
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
                activeIcon: Icon(
                  Icons.home,
                ),
                icon: Icon(
                  Icons.home_outlined,
                ),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.play_circle_outline,
                ),
                activeIcon: Icon(
                  Icons.play_circle,
                ),
                label: "Shorts"),
            BottomNavigationBarItem(
                activeIcon: Icon(
                  Icons.add_circle,
                ),
                icon: Icon(
                  Icons.add_circle_outline,
                ),
                label: "Add"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.subscriptions_outlined,
                ),
                activeIcon: Icon(
                  Icons.subscriptions,
                ),
                label: "Subscriptions"),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person_outline,
              ),
              activeIcon: Icon(
                Icons.person,
              ),
              label: "You",
            ),
          ]),
    );
  }
}
