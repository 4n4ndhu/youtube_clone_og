import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:youtube_clone_og/view/data/data.dart';
import 'package:youtube_clone_og/view/subscription_screen/subscrption_screen.dart';

class ClickShortsScreen extends StatelessWidget {
  final String bgUrl;
  final String dpUrl;
  final String name;
  final String audioUrl;
  final String caption;

  const ClickShortsScreen({
    super.key,
    required this.audioUrl,
    required this.dpUrl,
    required this.name,
    required this.bgUrl,
    required this.caption,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: PageView.builder(
          itemCount: shortsData.shortsviewdata.length,
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            final productName = shortsData.shortsviewdata[index]["name"];
            final isInList = Provider.of<Cart>(context).isInList(productName);
            return Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            shortsData.shortsviewdata[index]["bgUrl"]),
                        fit: BoxFit.cover),
                    color: Colors.red,
                  ),
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
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Icon(
                            Icons.more_vert,
                            size: 30,
                            color: Colors.white,
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
                            color: Colors.white,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Like",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Icon(
                            Icons.thumb_down,
                            size: 25,
                            color: Colors.white,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Dislike",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Icon(
                            Icons.comment,
                            size: 25,
                            color: Colors.white,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "0",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Icon(
                            Icons.favorite,
                            size: 25,
                            color: Colors.white,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Share",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Icon(
                            Icons.favorite,
                            size: 25,
                            color: Colors.white,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "remix",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 30),
                          Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(shortsData
                                      .shortsviewdata[index]["audioUrl"]),
                                  fit: BoxFit.cover),
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5),
                            ),
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
                                backgroundImage: NetworkImage(
                                    shortsData.shortsviewdata[index]["dpUrl"]),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              SizedBox(
                                width: 126,
                                child: Text(
                                  shortsData.shortsviewdata[index]["name"],
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              ElevatedButton(
                                  onPressed: () {
                                    if (isInList) {
                                      Provider.of<Cart>(context, listen: false)
                                          .removeItem(productName);
                                    } else {
                                      Provider.of<Cart>(context, listen: false)
                                          .addItem(
                                              productName,
                                              shortsData.shortsviewdata[index]
                                                  ["dpUrl"]);
                                    }
                                    ScaffoldMessenger.of(context).showSnackBar(
                                        SnackBar(
                                            content: Text(isInList
                                                ? '$productName unsubscribed'
                                                : '$productName subscribed')));
                                  },
                                  child: Text(
                                      isInList ? 'subscribed' : "subscribe"))
                            ],
                          ),
                          SizedBox(height: 20),
                          Text(
                            shortsData.shortsviewdata[index]["caption"],
                            style: TextStyle(
                                color: Colors.white,
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
          },
        ),
      ),
    );
  }
}
