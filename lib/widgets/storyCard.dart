import 'package:facebook_ui/assets.dart';
import 'package:facebook_ui/widgets/avatar.dart';
import 'package:facebook_ui/widgets/circularButton.dart';
import 'package:flutter/material.dart';

class StoryCard extends StatelessWidget {
  final String labelText;
  final String story;
  final String avatar;
  final bool addStoryStatus;
  final bool displayBorder;

  StoryCard({
    required this.labelText,
    required this.story,
    required this.avatar,
    this.addStoryStatus = false,
    this.displayBorder = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin: EdgeInsets.only(
        left: 5,
        right: 5,
        top: 10,
        bottom: 10,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(story),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 5,
            left: 5,
            child: addStoryStatus
                ? CircularButton(
                    iconButton: Icons.add,
                    buttonAction: () {
                      print("Add Your Story");
                    },
                    iconColor: Colors.blue,
                  )
                : Avatar(
                    displayImage: avatar,
                    displaStatus: false,
                    displayBorder: displayBorder,
                    width: 35,
                    height: 35,
                  ),
          ),
          Positioned(
            bottom: 10,
            left: 10,
            child: Text(
              labelText != null ? labelText : "",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
