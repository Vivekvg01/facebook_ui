import 'package:facebook_ui/assets.dart';
import 'package:facebook_ui/widgets/suggestionCard.dart';
import 'package:flutter/material.dart';

class SuggetionSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450,
      child: Column(
        children: [
          ListTile(
            title: Text("People You May Know"),
            trailing: IconButton(
              onPressed: () {
                print("More Pressed");
              },
              icon: Icon(
                Icons.more_horiz,
                color: Colors.grey.shade700,
              ),
            ),
          ),
          Container(
            height: 390,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                SuggestionCard(
                  avatar: tommy,
                  name: "Tommy Shelby",
                  mutualFriends: "# Mutal Friends",
                  addFriend: () {
                    print("Add Freied");
                  },
                  removeFriend: () {
                    print("Remove Suggestion");
                  },
                ),
                SuggestionCard(
                    avatar: tovino,
                    name: "Minnal Murali",
                    mutualFriends: "3 Mutal Friends",
                    addFriend: () {
                      print("Add Friend");
                    },
                    removeFriend: () {
                      print("remove Friend");
                    })
              ],
            ),
          ),
        ],
      ),
    );
  }
}
