import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youtube_clone_og/view/utils/constants/color_constatns.dart';

class videoCardWidget extends StatelessWidget {
  String thumbnail = "";
  String dpUrl = "";
  String channelname = "";
  String views = "";
  String caption = "";
  String duration = "";

  void Function()? onCardTaped;

  videoCardWidget({
    required this.onCardTaped,
    required this.thumbnail,
    required this.caption,
    required this.dpUrl,
    required this.channelname,
    required this.views,
    required this.duration,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onCardTaped,
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                child: Image.asset(
                  thumbnail,
                  fit: BoxFit.cover,
                ),
                height: 200,
                width: double.infinity,
              ),
              Positioned(
                right: 10,
                bottom: 10,
                child: Container(
                  child: Center(
                      child: Text(
                    duration,
                    style: TextStyle(color: Colors.white),
                  )),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: ColorConstants.primaryblack.withOpacity(.7),
                  ),
                  height: 26,
                  width: 42,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          ListTile(
            titleAlignment: ListTileTitleAlignment.top,
            leading: CircleAvatar(
              backgroundImage: AssetImage(dpUrl),
            ),
            title: Text(
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              caption,
              style: TextStyle(color: Colors.white),
            ),
            subtitle: Wrap(
              children: [
                Text(channelname,
                    style: TextStyle(color: ColorConstants.lightwhite)),
                Text(views, style: TextStyle(color: ColorConstants.lightwhite))
              ],
            ),
            trailing: _buildBottomSheetSection(context),
          ),
        ],
      ),
    );
  }

  InkWell _buildBottomSheetSection(BuildContext context) {
    return InkWell(
        onTap: () {
          showModalBottomSheet(
            backgroundColor: ColorConstants.primaryblack,
            context: context,
            builder: (context) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.schedule,
                        color: ColorConstants.primarywhite,
                        size: 25,
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Text(
                        "Save to Watch later",
                        style: TextStyle(fontSize: 17, color: Colors.white),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.bookmark_outline_sharp,
                        color: ColorConstants.primarywhite,
                        size: 25,
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Text("Save to playlist",
                          style: TextStyle(
                              fontSize: 17, color: ColorConstants.primarywhite))
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    children: [
                      Icon(Icons.download_outlined,
                          color: ColorConstants.primarywhite, size: 25),
                      SizedBox(
                        width: 30,
                      ),
                      Text("Download video",
                          style: TextStyle(fontSize: 17, color: Colors.white))
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    children: [
                      Icon(
                        CupertinoIcons.arrowshape_turn_up_right,
                        color: ColorConstants.primarywhite,
                        size: 25,
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Text(
                        "Share",
                        style: TextStyle(fontSize: 17, color: Colors.white),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.not_interested,
                        color: ColorConstants.primarywhite,
                        size: 25,
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Text(
                        "Not interested",
                        style: TextStyle(fontSize: 17, color: Colors.white),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.no_accounts_outlined,
                        color: ColorConstants.primarywhite,
                        size: 25,
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Text(
                        "Don't recommend channel",
                        style: TextStyle(fontSize: 17, color: Colors.white),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.flag_outlined,
                        color: ColorConstants.primarywhite,
                        size: 25,
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Text(
                        "Report",
                        style: TextStyle(fontSize: 17, color: Colors.white),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                ],
              ),
            ),
          );
        },
        child: Icon(
          Icons.more_vert,
          color: ColorConstants.primarywhite,
        ));
  }
}
