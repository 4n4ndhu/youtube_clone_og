import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:youtube_clone_og/view/data/data.dart';
import 'package:youtube_clone_og/view/shorts_screen/shorts_screen_widget.dart';
import 'package:youtube_clone_og/view/utils/constants/color_constatns.dart';

class ShortsScreen extends StatelessWidget {
  const ShortsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: PageView.builder(
          itemCount: ShortsscreenData.shortsScreenData.length,
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) => ShortsScreenWidget(
              BgVideo: ShortsscreenData.shortsScreenData[index]["bgVid"],
              dpImage: ShortsscreenData.shortsScreenData[index]["dpImage"],
              channelName: ShortsscreenData.shortsScreenData[index]
                  ["channelName"],
              Caption: ShortsscreenData.shortsScreenData[index]["caption"],
              audioImg: ShortsscreenData.shortsScreenData[index]["audioImage"]),
        ),
      ),
    );
  }
}
