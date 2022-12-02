import 'package:flutter/material.dart';
import '../assets.dart';

class SuggestionCard extends StatelessWidget {
  final String avatar;
  final String name;
  final String mutualFriends;
  final void Function() addFriend;
  final void Function() removeFriend;

  SuggestionCard(
      {required this.avatar,
      required this.name,
      required this.mutualFriends,
      required this.addFriend,
      required this.removeFriend,
      });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      margin: EdgeInsets.only(
        left: 10,
        right: 10,
      ),
      child: Stack(
        children: [
          suggestionImage(),
          suggestionInfo(),
        ],
      ),
    );
  }

  Widget suggestionInfo() {
    return Positioned(
      bottom: 0,
      right: 0,
      left: 0,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          border: Border.all(color: Colors.grey.shade300),
        ),
        height: 135,
        child: Column(
          children: [
            ListTile(
              title: Text(name != null ? name: ""),
              subtitle: Text(mutualFriends  != null ? mutualFriends: ""),
            ),
            Container(
              padding: EdgeInsets.only(
                right: 10,
                left: 10,
                bottom: 10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  iconButton(
                    buttonIcon: Icons.account_box,
                    buttonAction: addFriend,
                    buttonTextColor: Colors.white,
                    buttonColor: Colors.blue.shade700,
                    buttonIconColor: Colors.white,
                    buttonText: "Add Friend",
                  ),
                  blankButton(
                    buttonAction: removeFriend,
                    buttonText: "Remove",
                    buttonColor: Colors.grey.shade300,
                    buttontextColor: Colors.black,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget blankButton({
    required void Function() buttonAction,
    required String buttonText,
    required Color buttonColor,
    required Color buttontextColor,
  }) {
    return ElevatedButton(
      onPressed: () {},
      child: Text(
        buttonText,
        style: TextStyle(color: buttontextColor),
      ),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(buttonColor),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(5),
            ),
          ),
        ),
      ),
    );
  }

  Widget iconButton({
    required IconData buttonIcon,
    required void Function() buttonAction,
    required Color buttonTextColor,
    required Color buttonColor,
    required Color buttonIconColor,
    required String buttonText,
  }) {
    return ElevatedButton.icon(
      onPressed: buttonAction,
      icon: Icon(buttonIcon),
      label: Text(
        buttonText,
        style: TextStyle(
          color: buttonTextColor,
        ),
      ),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(buttonColor),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(5),
            ),
          ),
        ),
      ),
    );
  }

  Widget suggestionImage() {
    return Positioned(
      top: 0,
      bottom: 0,
      right: 0,
      left: 0,
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
        child: avatar != null ? Image.asset(
          avatar,
          height: 250,
          fit: BoxFit.cover,
        ) :SizedBox(),
      ),
    );
  }
}
