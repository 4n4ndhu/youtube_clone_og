import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youtube_clone_og/view/profile_screen/widget/history_card_widget.dart';
import 'package:youtube_clone_og/view/utils/constants/color_constatns.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.primaryblack,
      appBar: _buildAppBarSection(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildProfileDetailsSection(),
            SizedBox(height: 15),
            _buildTabBarSection(),
            SizedBox(height: 15),
            _biuldHistorySection(),
            SizedBox(height: 15),
            _buildPlaylistsSection(),
            SizedBox(height: 40),
            _buildRemainingSection(),
            SizedBox(height: 15),
          ],
        ),
      ),
    );
  }

  Column _buildRemainingSection() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Row(
            children: [
              Icon(
                Icons.slideshow_outlined,
                color: ColorConstants.primarywhite,
                size: 30,
              ),
              SizedBox(width: 25),
              Text(
                "Your videos",
                style: TextStyle(
                    color: ColorConstants.primarywhite,
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              )
            ],
          ),
        ),
        SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Row(
            children: [
              Icon(
                Icons.download_outlined,
                color: ColorConstants.primarywhite,
                size: 30,
              ),
              SizedBox(width: 25),
              Text(
                "Downloads",
                style: TextStyle(
                    color: ColorConstants.primarywhite,
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              )
            ],
          ),
        ),
        SizedBox(height: 20),
        Divider(),
        SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Row(
            children: [
              Icon(
                Icons.movie_outlined,
                color: ColorConstants.primarywhite,
                size: 30,
              ),
              SizedBox(width: 25),
              Text(
                "Your movies",
                style: TextStyle(
                    color: ColorConstants.primarywhite,
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              )
            ],
          ),
        ),
        SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Row(
            children: [
              Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: ColorConstants.primarywhite),
                      borderRadius: BorderRadius.circular(6)),
                  height: 24,
                  width: 30,
                  child: Icon(
                    Icons.play_arrow,
                    size: 15,
                    color: ColorConstants.primarywhite,
                  )),
              SizedBox(width: 25),
              Text(
                "Get Youtube Premium",
                style: TextStyle(
                    color: ColorConstants.primarywhite,
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              )
            ],
          ),
        ),
        SizedBox(height: 20),
        Divider(),
        SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Row(
            children: [
              Icon(
                Icons.bar_chart_sharp,
                color: ColorConstants.primarywhite,
                size: 30,
              ),
              SizedBox(width: 25),
              Text(
                "Time watched",
                style: TextStyle(
                    color: ColorConstants.primarywhite,
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              )
            ],
          ),
        ),
        SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Row(
            children: [
              Icon(
                Icons.help_outline_rounded,
                color: ColorConstants.primarywhite,
                size: 30,
              ),
              SizedBox(width: 25),
              Text(
                "Help & feedback",
                style: TextStyle(
                    color: ColorConstants.primarywhite,
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              )
            ],
          ),
        ),
      ],
    );
  }

  Padding _buildPlaylistsSection() {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Playlists",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: ColorConstants.primarywhite,
                      fontSize: 24),
                ),
                Container(
                  margin: EdgeInsets.only(right: 20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                          color: ColorConstants.lightwhite.withOpacity(.5))),
                  height: 40,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Text(
                        "View all",
                        style: TextStyle(color: ColorConstants.primarywhite),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                historyCardWidget(),
                SizedBox(width: 10),
                historyCardWidget(),
                SizedBox(width: 10),
                historyCardWidget(),
                SizedBox(width: 10),
                historyCardWidget()
              ],
            ),
          )
        ],
      ),
    );
  }

  Padding _biuldHistorySection() {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "History",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: ColorConstants.primarywhite,
                      fontSize: 24),
                ),
                Container(
                  margin: EdgeInsets.only(right: 20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                          color: ColorConstants.lightwhite.withOpacity(.5))),
                  height: 40,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Text(
                        "View all",
                        style: TextStyle(color: ColorConstants.primarywhite),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                historyCardWidget(),
                SizedBox(width: 10),
                historyCardWidget(),
                SizedBox(width: 10),
                historyCardWidget(),
                SizedBox(width: 10),
                historyCardWidget()
              ],
            ),
          )
        ],
      ),
    );
  }

  SingleChildScrollView _buildTabBarSection() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Row(
                children: [
                  Icon(
                    Icons.switch_account_outlined,
                    color: ColorConstants.primarywhite,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Switch account",
                    style: TextStyle(color: ColorConstants.primarywhite),
                  )
                ],
              ),
              height: 45,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: ColorConstants.lightblack,
              ),
            ),
            SizedBox(width: 15),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Row(
                children: [
                  Icon(
                    Icons.g_mobiledata,
                    color: ColorConstants.primarywhite,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Google Account",
                    style: TextStyle(color: ColorConstants.primarywhite),
                  )
                ],
              ),
              height: 45,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: ColorConstants.lightblack,
              ),
            ),
            SizedBox(width: 15),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Row(
                children: [
                  Icon(
                    CupertinoIcons.arrowshape_turn_up_right,
                    color: ColorConstants.lightwhite,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Share channel",
                    style: TextStyle(color: ColorConstants.primarywhite),
                  )
                ],
              ),
              height: 45,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: ColorConstants.lightblack,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Padding _buildProfileDetailsSection() {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 50,
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "CyberOp",
                style: TextStyle(
                    color: ColorConstants.primarywhite,
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
              ),
              Row(
                children: [
                  Text(
                    "@19bvfx",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        color: ColorConstants.primarywhite, fontSize: 12),
                  ),
                  SizedBox(width: 10),
                  Text(
                    "view chanel >",
                    style: TextStyle(
                        color: ColorConstants.lightwhite, fontSize: 14),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }

  AppBar _buildAppBarSection() {
    return AppBar(
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
        ),
        Icon(
          Icons.settings_outlined,
          color: ColorConstants.primarywhite,
          size: 30,
        ),
        SizedBox(
          width: 15,
        ),
      ],
    );
  }
}
