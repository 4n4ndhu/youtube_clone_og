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
        length: 6,
        initialIndex: 1,
        child: Scaffold(
          backgroundColor: ColorConstants.primaryblack,
          appBar: _appBar_tabBar(),
          body: TabBarView(children: [
            Container(
              color: ColorConstants.primaryblack,
            ),
            _AllSection(),
            _TrendingSection(),
            _GamingSection(),
            _MusicSection(),
            _FoodSection(),
          ]),
        ));
  }

  SingleChildScrollView _FoodSection() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 15),
        child: Column(children: [
          ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) => videoCardWidget(
                    thumbnail: trendingCardData.trendingVideoCardData[index]
                        ["thumbnail"],
                    caption: trendingCardData.trendingVideoCardData[index]
                        ["caption"],
                    dpUrl: trendingCardData.trendingVideoCardData[index]["dp"],
                    channelname: trendingCardData.trendingVideoCardData[index]
                        ["channelName"],
                    views: trendingCardData.trendingVideoCardData[index]
                        ["views"],
                    onCardTaped: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => VideoScreen(
                                videoUrl: trendingVideo.trendingVideoData[index]
                                    ["videoUrl"],
                                caption: trendingVideo.trendingVideoData[index]
                                    ["caption"],
                                details: trendingVideo.trendingVideoData[index]
                                    ["details"],
                                DpimageUrl: trendingVideo
                                    .trendingVideoData[index]["dpImage"],
                                channelName: trendingVideo
                                    .trendingVideoData[index]["Name"],
                                subCount: trendingVideo.trendingVideoData[index]
                                    ["subcount"]),
                          ));
                    },
                  ),
              separatorBuilder: (context, index) => SizedBox(
                    height: 20,
                  ),
              itemCount: trendingCardData.trendingVideoCardData.length)
        ]),
      ),
    );
  }

  SingleChildScrollView _MusicSection() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 15),
        child: Column(children: [
          ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) => videoCardWidget(
                    thumbnail: trendingCardData.trendingVideoCardData[index]
                        ["thumbnail"],
                    caption: trendingCardData.trendingVideoCardData[index]
                        ["caption"],
                    dpUrl: trendingCardData.trendingVideoCardData[index]["dp"],
                    channelname: trendingCardData.trendingVideoCardData[index]
                        ["channelName"],
                    views: trendingCardData.trendingVideoCardData[index]
                        ["views"],
                    onCardTaped: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => VideoScreen(
                                videoUrl: trendingVideo.trendingVideoData[index]
                                    ["videoUrl"],
                                caption: trendingVideo.trendingVideoData[index]
                                    ["caption"],
                                details: trendingVideo.trendingVideoData[index]
                                    ["details"],
                                DpimageUrl: trendingVideo
                                    .trendingVideoData[index]["dpImage"],
                                channelName: trendingVideo
                                    .trendingVideoData[index]["Name"],
                                subCount: trendingVideo.trendingVideoData[index]
                                    ["subcount"]),
                          ));
                    },
                  ),
              separatorBuilder: (context, index) => SizedBox(
                    height: 20,
                  ),
              itemCount: trendingCardData.trendingVideoCardData.length)
        ]),
      ),
    );
  }

  SingleChildScrollView _GamingSection() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 15),
        child: Column(children: [
          ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) => videoCardWidget(
                    thumbnail: gamingCardData.gamingVideoCardData[index]
                        ["thumbnail"],
                    caption: gamingCardData.gamingVideoCardData[index]
                        ["caption"],
                    dpUrl: gamingCardData.gamingVideoCardData[index]["dp"],
                    channelname: gamingCardData.gamingVideoCardData[index]
                        ["channelName"],
                    views: gamingCardData.gamingVideoCardData[index]["views"],
                    onCardTaped: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => VideoScreen(
                                videoUrl: gamingVideo.gamingVideoData[index]
                                    ["videoUrl"],
                                caption: gamingVideo.gamingVideoData[index]
                                    ["caption"],
                                details: gamingVideo.gamingVideoData[index]
                                    ["details"],
                                DpimageUrl: gamingVideo.gamingVideoData[index]
                                    ["dpImage"],
                                channelName: gamingVideo.gamingVideoData[index]
                                    ["Name"],
                                subCount: gamingVideo.gamingVideoData[index]
                                    ["subcount"]),
                          ));
                    },
                  ),
              separatorBuilder: (context, index) => SizedBox(
                    height: 20,
                  ),
              itemCount: gamingCardData.gamingVideoCardData.length)
        ]),
      ),
    );
  }

  SingleChildScrollView _TrendingSection() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 15),
        child: Column(children: [
          ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) => videoCardWidget(
                    thumbnail: trendingCardData.trendingVideoCardData[index]
                        ["thumbnail"],
                    caption: trendingCardData.trendingVideoCardData[index]
                        ["caption"],
                    dpUrl: trendingCardData.trendingVideoCardData[index]["dp"],
                    channelname: trendingCardData.trendingVideoCardData[index]
                        ["channelName"],
                    views: trendingCardData.trendingVideoCardData[index]
                        ["views"],
                    onCardTaped: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => VideoScreen(
                                videoUrl: trendingVideo.trendingVideoData[index]
                                    ["videoUrl"],
                                caption: trendingVideo.trendingVideoData[index]
                                    ["caption"],
                                details: trendingVideo.trendingVideoData[index]
                                    ["details"],
                                DpimageUrl: trendingVideo
                                    .trendingVideoData[index]["dpImage"],
                                channelName: trendingVideo
                                    .trendingVideoData[index]["Name"],
                                subCount: trendingVideo.trendingVideoData[index]
                                    ["subcount"]),
                          ));
                    },
                  ),
              separatorBuilder: (context, index) => SizedBox(
                    height: 20,
                  ),
              itemCount: trendingCardData.trendingVideoCardData.length)
        ]),
      ),
    );
  }

  SingleChildScrollView _AllSection() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(height: 50, "assets/images/shorts1-removebg-preview.png"),
          SizedBox(height: 10),
          gridview(),
          SizedBox(height: 40),
          ListView.builder(
            itemCount: AllvideoData.allvideodata.length,
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (context, index) => videoCardWidget(
              thumbnail: AllCardData.allvideocarddata[index]["thumbnail"],
              views: AllCardData.allvideocarddata[index]["views"],
              caption: AllCardData.allvideocarddata[index]["caption"],
              channelname: AllCardData.allvideocarddata[index]["channelName"],
              dpUrl: AllCardData.allvideocarddata[index]["dp"],
              onCardTaped: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => VideoScreen(
                        videoUrl: AllvideoData.allvideodata[index]["videoUrl"],
                        caption: AllvideoData.allvideodata[index]["caption"],
                        details: AllvideoData.allvideodata[index]["details"],
                        DpimageUrl: AllvideoData.allvideodata[index]["dpImage"],
                        channelName: AllvideoData.allvideodata[index]["Name"],
                        subCount: AllvideoData.allvideodata[index]["subcount"],
                      ),
                    ));
              },
            ),
          )
        ],
      ),
    );
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
              child: Text(
                "All",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
            ),
            Tab(
              child: Text("Trending",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
            ),
            Tab(
              child: Text("Gaming",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
            ),
            Tab(
              child: Text("Music",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
            ),
            Tab(
              child: Text("Food",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
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
