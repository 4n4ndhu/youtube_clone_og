import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youtube_clone_og/view/utils/constants/color_constatns.dart';

class ShortsScreenWidget extends StatelessWidget {
  final String BgVideo;
  final String dpImage;
  final String channelName;
  final String Caption;
  final String audioImg;

  const ShortsScreenWidget({
    required this.BgVideo,
    required this.dpImage,
    required this.channelName,
    required this.Caption,
    required this.audioImg,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover, image: AssetImage(BgVideo))),
        ),
        Align(
          alignment: Alignment.topRight,
          child: SizedBox(
            child: Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(
                    Icons.search,
                    size: 30,
                    color: ColorConstants.primarywhite,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Icon(
                    Icons.more_vert,
                    size: 30,
                    color: ColorConstants.primarywhite,
                  ),
                  SizedBox(
                    width: 15,
                  )
                ],
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: SizedBox(
            child: Padding(
              padding: const EdgeInsets.only(right: 15, bottom: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(
                    Icons.thumb_up,
                    size: 25,
                    color: ColorConstants.primarywhite,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Like",
                    style: TextStyle(
                      color: ColorConstants.primarywhite,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Icon(
                    Icons.thumb_down,
                    size: 25,
                    color: ColorConstants.primarywhite,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Dislike",
                    style: TextStyle(
                      color: ColorConstants.primarywhite,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Icon(
                    Icons.comment,
                    size: 25,
                    color: ColorConstants.primarywhite,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "0",
                    style: TextStyle(
                      color: ColorConstants.primarywhite,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Icon(
                    CupertinoIcons.arrowshape_turn_up_right_fill,
                    size: 25,
                    color: ColorConstants.primarywhite,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Share",
                    style: TextStyle(
                      color: ColorConstants.primarywhite,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Icon(
                    Icons.favorite,
                    size: 25,
                    color: ColorConstants.primarywhite,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "remix",
                    style: TextStyle(
                      color: ColorConstants.primarywhite,
                    ),
                  ),
                  SizedBox(height: 30),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                        image: DecorationImage(
                            image: AssetImage(audioImg), fit: BoxFit.cover)),
                    height: 40,
                    width: 40,
                  ),
                ],
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomLeft,
          child: SizedBox(
            width: 320,
            child: Padding(
              padding: const EdgeInsets.only(left: 15, bottom: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage(dpImage),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        channelName,
                        style: TextStyle(
                            color: ColorConstants.primarywhite,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        child: Center(
                          child: Text(
                            "Subscribe",
                            style: TextStyle(
                                color: ColorConstants.primaryblack,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        height: 40,
                        // width: 85,
                      )
                    ],
                  ),
                  SizedBox(height: 20),
                  Text(
                    Caption,
                    style: TextStyle(
                        color: ColorConstants.primarywhite,
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
