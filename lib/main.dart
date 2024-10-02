import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:youtube_clone_og/view/bottom_nav_screen.dart';
import 'package:youtube_clone_og/view/subscription_screen/subscrption_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => Cart(),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: BottomNavScreen(),
        ));
  }
}
