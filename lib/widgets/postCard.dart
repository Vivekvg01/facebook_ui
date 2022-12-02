import 'package:facebook_ui/assets.dart';
import 'package:facebook_ui/sections/headerButtonSection.dart';
import 'package:facebook_ui/widgets/avatar.dart';
import 'package:facebook_ui/widgets/headerButtonCreate.dart';
import 'package:flutter/material.dart';

class Postcard extends StatelessWidget {
  final String avatar;
  final String name;
  final String publishedAt;
  final String postTitle;
  final String postImage;
  final bool showBlueTick;
  final String likeCount;
  final String commentCount;
  final String shareCount;

  Postcard(
      {required this.avatar,
      required this.name,
      required this.publishedAt,
      required this.postTitle,
      required this.postImage,
      this.showBlueTick = false,
      required this.likeCount,
      required this.shareCount,
      required this.commentCount});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          postCardHeader(),
          titleSection(),
          imageSection(),
          footerSection(),
          Divider(
            thickness: 1,
            color: Colors.grey[300],
          ),
          HeaderButtonSection(
            buttonOne: headerButton(
              buttonText: "Like",
              buttonIcon: Icons.thumb_up_off_alt_outlined,
              buttonAction: () {
                print("Liked");
              },
              buttonColor: Colors.grey.shade700,
            ),
            buttonTwo: headerButton(
              buttonText: "Comment",
              buttonIcon: Icons.comment,
              buttonAction: () {
                print("Add Comment");
              },
              buttonColor: Colors.grey.shade700,
            ),
            buttonThree: headerButton(
              buttonText: "Share",
              buttonIcon: Icons.share,
              buttonAction: () {
                print("Share Post");
              },
              buttonColor: Colors.grey.shade700,
            ),
          ),
        ],
      ),
    );
  }

  Widget footerSection() {
    return Container(
      height: 50,
      padding: EdgeInsets.only(
        left: 10,
        right: 10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                width: 15,
                height: 15,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.thumb_up,
                  color: Colors.white,
                  size: 10,
                ),
              ),
              SizedBox(
                width: 5,
              ),
              displayText(label: likeCount),
            ],
          ),
          Container(
            child: Row(
              children: [
                displayText(label: commentCount),
                SizedBox(
                  width: 5,
                ),
                displayText(label: "Comments"),
                SizedBox(
                  width: 10,
                ),
                displayText(label: shareCount),
                SizedBox(
                  width: 5,
                ),
                displayText(label: "Share"),
                SizedBox(
                  width: 10,
                ),
                Avatar(
                  displayImage: avatar,
                  displaStatus: false,
                  width: 25,
                  height: 25,
                ),
                IconButton(
                  onPressed: () {
                    print("Drop down Clicked");
                  },
                  icon: Icon(Icons.arrow_drop_down),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget displayText({
    required String label,
  }) {
    return Text(
      label == null ? "" : label,
      style: TextStyle(
        color: Colors.grey.shade700,
      ),
    );
  }

  Widget imageSection() {
    return Container(
      child: Image.asset(postImage),
    );
  }

  Widget titleSection() {
    return postTitle != null && postTitle != ""
        ? Container(
            padding: EdgeInsets.only(
              left: 10,
              right: 10,
              bottom: 5,
            ),
            child: Text(
              postTitle,
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
              ),
            ),
          )
        : SizedBox();
  }

  Widget postCardHeader() {
    return ListTile(
      leading: Avatar(
        displayImage: avatar,
        displaStatus: false,
      ),
      title: Row(
        children: [
          Text(name),
          SizedBox(
            width: 10,
          ),
          showBlueTick
              ? Icon(
                  Icons.verified,
                  color: Colors.blueAccent,
                )
              : SizedBox(),
        ],
      ),
      subtitle: Row(
        children: [
          Text(publishedAt),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.public,
            color: Colors.grey.shade700,
            size: 15,
          ),
        ],
      ),
      trailing: IconButton(
        onPressed: () {},
        icon: Icon(
          Icons.more_horiz,
          color: Colors.grey.shade700,
        ),
      ),
    );
  }
}
