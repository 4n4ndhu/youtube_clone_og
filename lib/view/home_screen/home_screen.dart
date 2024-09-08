import 'package:flutter/material.dart';
import 'package:youtube_clone_og/view/data/data.dart';
import 'package:youtube_clone_og/view/global_widget/video_card.dart';
import 'package:youtube_clone_og/view/home_screen/widget/gridview.dart';
import 'package:youtube_clone_og/view/utils/constants/color_constatns.dart';
import 'package:youtube_clone_og/view/video_screen/video_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 8,
        initialIndex: 1,
        child: Scaffold(
          backgroundColor: ColorConstants.primaryblack,
          appBar: _appBar_tabBar(),
          body: TabBarView(children: [
            Container(
              color: ColorConstants.primaryblack,
            ),
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                      height: 50, "assets/images/shorts1-removebg-preview.png"),
                  SizedBox(height: 10),
                  gridview(),
                  SizedBox(height: 40),
                  ListView.builder(
                      itemCount: videolist.videoCardList.length,
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (context, index) => InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => VideoScreen(
                                        videoUrl: videolist.videoCardList[index]
                                            ["videoUrl"],
                                        caption: videolist.videoCardList[index]
                                            ["caption"],
                                        details: videolist.videoCardList[index]
                                            ["details"],
                                        imageUrl: videolist.videoCardList[index]
                                            ["dpImage"],
                                        channelName: videolist
                                            .videoCardList[index]["Name"],
                                        subCount: videolist.videoCardList[index]
                                            ["subcount"]),
                                  ));
                            },
                            child: videoCard(
                              thumbnail: videodata.videos[index]["thumbnail"],
                              views: videodata.videos[index]["views"],
                              caption: videodata.videos[index]["caption"],
                              channelname: videodata.videos[index]
                                  ["channelName"],
                              dpUrl: videodata.videos[index]["dp"],
                            ),
                          ))
                ],
              ),
            ),
            Container(
              color: Colors.red,
            ),
            Container(
              color: Colors.yellow,
            ),
            Container(
              color: Colors.blue,
            ),
            Container(
              color: Colors.green,
            ),
            Container(
              color: Colors.grey,
            ),
            Container(
              color: Colors.orange,
            ),
          ]),
        ));
  }

  AppBar _appBar_tabBar() {
    return AppBar(
      leadingWidth: 100,
      leading: SizedBox(
        height: 60,
        width: 50,
        child: Image.asset(
          "assets/images/YouTube-White-Full-Color-Logo.png",
          fit: BoxFit.cover,
        ),
      ),
      bottom: TabBar(
          indicatorWeight: .1,
          tabAlignment: TabAlignment.start,
          isScrollable: true,
          indicatorSize: TabBarIndicatorSize.tab,
          indicatorColor: ColorConstants.primarywhite,
          dividerColor: Colors.transparent,
          labelColor: ColorConstants.primaryblack,
          unselectedLabelColor: ColorConstants.primarywhite,
          indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: Colors.white),
          tabs: [
            Tab(
              icon: Icon(Icons.explore_outlined),
            ),
            Tab(
              child: Container(
                child: Text(
                  "All",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
              ),
            ),
            Tab(
              child: Container(
                child: Text("Trending",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
              ),
            ),
            Tab(
              child: Container(
                child: Text("New to you",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
              ),
            ),
            Tab(
              child: Container(
                child: Text("Gaming",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
              ),
            ),
            Tab(
              child: Container(
                child: Text("Music",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
              ),
            ),
            Tab(
              child: Container(
                child: Text("Food",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
              ),
            ),
            Tab(
              child: Container(
                child: Text("Movies",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
              ),
            ),
          ]),
      backgroundColor: ColorConstants.primaryblack,
      actions: [
        Icon(
          Icons.cast,
          color: ColorConstants.primarywhite,
          size: 30,
        ),
        SizedBox(
          width: 15,
        ),
        Icon(
          Icons.notifications_outlined,
          color: ColorConstants.primarywhite,
          size: 30,
        ),
        SizedBox(
          width: 15,
        ),
        Icon(
          Icons.search,
          color: ColorConstants.primarywhite,
          size: 30,
        ),
        SizedBox(
          width: 15,
        )
      ],
    );
  }
}
