import 'package:flutter/material.dart';
import 'package:youtube_clone_og/view/data/data.dart';
import 'package:youtube_clone_og/view/utils/constants/color_constatns.dart';

class gridview extends StatelessWidget {
  const gridview({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: GridView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: 4,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisExtent: 250,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            crossAxisCount: 2),
        itemBuilder: (context, index) => Container(
          child: Stack(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: IconButton(
                    onPressed: () {
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
                                    Icons.flag_outlined,
                                    color: ColorConstants.primarywhite,
                                    size: 25,
                                  ),
                                  SizedBox(
                                    width: 30,
                                  ),
                                  Text(
                                    "Report",
                                    style: TextStyle(
                                        fontSize: 17, color: Colors.white),
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
                                  Text("Not interested",
                                      style: TextStyle(
                                          fontSize: 17,
                                          color: ColorConstants.primarywhite))
                                ],
                              ),
                              SizedBox(
                                height: 25,
                              ),
                              Row(
                                children: [
                                  Icon(Icons.feedback_outlined,
                                      color: ColorConstants.primarywhite,
                                      size: 25),
                                  SizedBox(
                                    width: 30,
                                  ),
                                  Text("Send feedback",
                                      style: TextStyle(
                                          fontSize: 17, color: Colors.white))
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
                    icon: Icon(Icons.more_vert)),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    shortscaption[index],
                    style: TextStyle(color: Colors.white),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
            ],
          ),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(shorts[index]), fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(10),
              color: ColorConstants.primarywhite),
        ),
      ),
    );
  }
}
