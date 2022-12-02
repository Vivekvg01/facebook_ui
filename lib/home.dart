import 'package:facebook_ui/assets.dart';
import 'package:facebook_ui/sections/headerButtonSection.dart';
import 'package:facebook_ui/sections/roomSection.dart';
import 'package:facebook_ui/sections/statusSection.dart';
import 'package:facebook_ui/sections/storySection.dart';
import 'package:facebook_ui/sections/suggestionSection.dart';
import 'package:facebook_ui/widgets/circularButton.dart';
import 'package:facebook_ui/widgets/headerButtonCreate.dart';
import 'package:facebook_ui/widgets/postCard.dart';
import 'package:flutter/material.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget thinDivider = Divider(
      thickness: 1,
      color: Colors.grey[300],
    );
    Widget thickDivider = Divider(
      thickness: 10,
      color: Colors.grey[300],
    );
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            "facebook",
            style: TextStyle(
              color: Colors.blue,
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            CircularButton(
              iconButton: Icons.search,
              buttonAction: () {
                print("Search Button Pressed");
              },
            ),
            Padding(
              padding: EdgeInsets.only(left: 6),
            ),
            CircularButton(
              iconButton: Icons.chat,
              buttonAction: () {
                print("Message Button pressed");
              },
            ),
          ],
        ),
        body: ListView(
          children: [
            StatusSection(),
            thinDivider,
            HeaderButtonSection(
              buttonOne: headerButton(
                buttonText: "Live",
                buttonIcon: Icons.video_call,
                buttonAction: () {
                  print("Go Live");
                },
                buttonColor: Colors.red,
              ),
              buttonTwo: headerButton(
                buttonText: "Photo",
                buttonIcon: Icons.photo_library,
                buttonAction: () {
                  print("Add Photo");
                },
                buttonColor: Colors.green,
              ),
              buttonThree: headerButton(
                buttonText: "Room",
                buttonIcon: Icons.video_call,
                buttonAction: () {
                  print("Go Room");
                },
                buttonColor: Colors.purple,
              ),
            ),
            thickDivider,
            RoomSection(),
            thickDivider,
            StorySection(),
            thickDivider,
            Postcard(
              avatar: khaby,
              name: "Khaby",
              publishedAt: "4h",
              postTitle: "Happy New Year🥳🎉🥂",
              postImage: newyear,
              showBlueTick: true,
              likeCount: "102K",
              commentCount: "20K",
              shareCount: "1K",
            ),
            thickDivider,
            Postcard(
              avatar: ducati,
              name: "Ducati",
              publishedAt: "40M",
              postTitle:   ducatititle,
              postImage: ducatipost,
              likeCount: "60K",
              shareCount: "500",
              commentCount: "2K",
              showBlueTick: true,
            ),
            thickDivider,
            Postcard(
              avatar: cristiano,
              name: "Cristiano Ronaldo",
              publishedAt: "Jan 11",
              postTitle:   "Good Morning 🏃🏻‍♂️☀️😀",
              postImage: ronaldopost,
              likeCount: "1.4M",
              shareCount: "500K",
              commentCount: "200K",
              showBlueTick: true,
            ),
            thickDivider,
            SuggetionSection(),
          
            thickDivider,
              Postcard(
              avatar: khaby,
              name: "Khaby",
              publishedAt: "4h",
              postTitle: "Happy New Year🥳🎉🥂",
              postImage: newyear,
              showBlueTick: true,
              likeCount: "102K",
              commentCount: "20K",
              shareCount: "1K",
            ),
            thickDivider,
          ],
        ),
      ),
    );
  }
}
