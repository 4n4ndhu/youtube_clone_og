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
                    thumbnail: FoodCardData.foodVideoCardData[index]
                        ["thumbnail"],
                    caption: FoodCardData.foodVideoCardData[index]["caption"],
                    dpUrl: FoodCardData.foodVideoCardData[index]["dp"],
                    channelname: FoodCardData.foodVideoCardData[index]
                        ["channelName"],
                    views: FoodCardData.foodVideoCardData[index]["views"],
                    onCardTaped: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => VideoScreen(
                                videoUrl: FoodVideo.foodVideoData[index]
                                    ["videoUrl"],
                                caption: FoodVideo.foodVideoData[index]
                                    ["caption"],
                                details: FoodVideo.foodVideoData[index]
                                    ["details"],
                                DpimageUrl: FoodVideo.foodVideoData[index]
                                    ["dpImage"],
                                channelName: FoodVideo.foodVideoData[index]
                                    ["Name"],
                                subCount: FoodVideo.foodVideoData[index]
                                    ["subcount"]),
                          ));
                    },
                  ),
              separatorBuilder: (context, index) => SizedBox(
                    height: 20,
                  ),
              itemCount: FoodCardData.foodVideoCardData.length)
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
                    thumbnail: MusicCardData.musicVideoCardData[index]
                        ["thumbnail"],
                    caption: MusicCardData.musicVideoCardData[index]["caption"],
                    dpUrl: MusicCardData.musicVideoCardData[index]["dp"],
                    channelname: MusicCardData.musicVideoCardData[index]
                        ["channelName"],
                    views: MusicCardData.musicVideoCardData[index]["views"],
                    onCardTaped: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => VideoScreen(
                                videoUrl: MusicVideo.musicVideoData[index]
                                    ["videoUrl"],
                                caption: MusicVideo.musicVideoData[index]
                                    ["caption"],
                                details: MusicVideo.musicVideoData[index]
                                    ["details"],
                                DpimageUrl: MusicVideo.musicVideoData[index]
                                    ["dpImage"],
                                channelName: MusicVideo.musicVideoData[index]
                                    ["Name"],
                                subCount: MusicVideo.musicVideoData[index]
                                    ["subcount"]),
                          ));
                    },
                  ),
              separatorBuilder: (context, index) => SizedBox(
                    height: 20,
                  ),
              itemCount: MusicCardData.musicVideoCardData.length)
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
                    thumbnail: GamingCardData.gamingVideoCardData[index]
                        ["thumbnail"],
                    caption: GamingCardData.gamingVideoCardData[index]
                        ["caption"],
                    dpUrl: GamingCardData.gamingVideoCardData[index]["dp"],
                    channelname: GamingCardData.gamingVideoCardData[index]
                        ["channelName"],
                    views: GamingCardData.gamingVideoCardData[index]["views"],
                    onCardTaped: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => VideoScreen(
                                videoUrl: GamingVideo.gamingVideoData[index]
                                    ["videoUrl"],
                                caption: GamingVideo.gamingVideoData[index]
                                    ["caption"],
                                details: GamingVideo.gamingVideoData[index]
                                    ["details"],
                                DpimageUrl: GamingVideo.gamingVideoData[index]
                                    ["dpImage"],
                                channelName: GamingVideo.gamingVideoData[index]
                                    ["Name"],
                                subCount: GamingVideo.gamingVideoData[index]
                                    ["subcount"]),
                          ));
                    },
                  ),
              separatorBuilder: (context, index) => SizedBox(
                    height: 20,
                  ),
              itemCount: GamingCardData.gamingVideoCardData.length)
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
                    thumbnail: TrendingCardData.trendingVideoCardData[index]
                        ["thumbnail"],
                    caption: TrendingCardData.trendingVideoCardData[index]
                        ["caption"],
                    dpUrl: TrendingCardData.trendingVideoCardData[index]["dp"],
                    channelname: TrendingCardData.trendingVideoCardData[index]
                        ["channelName"],
                    views: TrendingCardData.trendingVideoCardData[index]
                        ["views"],
                    onCardTaped: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => VideoScreen(
                                videoUrl: TrendingVideo.trendingVideoData[index]
                                    ["videoUrl"],
                                caption: TrendingVideo.trendingVideoData[index]
                                    ["caption"],
                                details: TrendingVideo.trendingVideoData[index]
                                    ["details"],
                                DpimageUrl: TrendingVideo
                                    .trendingVideoData[index]["dpImage"],
                                channelName: TrendingVideo
                                    .trendingVideoData[index]["Name"],
                                subCount: TrendingVideo.trendingVideoData[index]
                                    ["subcount"]),
                          ));
                    },
                  ),
              separatorBuilder: (context, index) => SizedBox(
                    height: 20,
                  ),
              itemCount: TrendingCardData.trendingVideoCardData.length)
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
