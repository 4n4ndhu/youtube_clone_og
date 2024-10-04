import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youtube_clone_og/view/utils/constants/color_constatns.dart';

class historyCardWidget extends StatelessWidget {
  const historyCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 172,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/minecraft thumb.jpg"),
                  fit: BoxFit.cover),
              color: ColorConstants.primarywhite,
              borderRadius: BorderRadius.circular(15),
            ),
            height: 98,
            width: 150,
          ),
          SizedBox(height: 8),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 133,
                child: Text(
                  "Minecraft Trails & Tales Update: Official Launch Trailer",
                  style: TextStyle(
                      color: ColorConstants.primarywhite, fontSize: 16),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Icon(
                Icons.more_vert,
                color: ColorConstants.primarywhite,
              )
            ],
          ),
          SizedBox(
              width: 150,
              child: Text(
                "mrBeast Gaming",
                style:
                    TextStyle(color: ColorConstants.lightwhite, fontSize: 14),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ))
        ],
      ),
    );
  }
}
