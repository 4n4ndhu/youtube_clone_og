import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youtube_clone_og/view/bottom_nav_screen.dart';
import 'package:youtube_clone_og/view/home_screen/home_screen.dart';
import 'package:youtube_clone_og/view/utils/constants/color_constatns.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => BottomNavScreen()),
        (route) => false,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.primaryblack,
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                    "https://static.vecteezy.com/system/resources/previews/023/986/480/original/youtube-logo-youtube-logo-transparent-youtube-icon-transparent-free-free-png.png",
                  ),
                  fit: BoxFit.fill)),
        ),
      ),
    );
  }
}
