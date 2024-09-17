import 'package:flutter/material.dart';
import 'package:youtube_clone_og/view/utils/constants/color_constatns.dart';

class videoCardWidget extends StatelessWidget {
  String thumbnail = "";
  String dpUrl = "";
  String channelname = "";
  String views = "";
  String caption = "";
  void Function()? onCardTaped;

  videoCardWidget({
    required this.onCardTaped,
    required this.thumbnail,
    required this.caption,
    required this.dpUrl,
    required this.channelname,
    required this.views,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onCardTaped,
      child: Column(
        children: [
          Container(
              child: Image.asset(
                thumbnail,
                fit: BoxFit.cover,
              ),
              height: 200,
              width: double.infinity,
              color: ColorConstants.primarywhite),
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
            trailing: InkWell(onTap: () {}, child: Icon(Icons.more_vert)),
          ),
        ],
      ),
    );
  }
}
