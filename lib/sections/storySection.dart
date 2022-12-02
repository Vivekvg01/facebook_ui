import 'package:facebook_ui/assets.dart';
import 'package:facebook_ui/widgets/storyCard.dart';
import 'package:flutter/material.dart';

class StorySection extends StatelessWidget {
  const StorySection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          StoryCard(
            labelText: "Add to Story",
            story: strell,
            avatar: strell,
            addStoryStatus: true,
          ),
          StoryCard(
            labelText: "Khaby00",
            story: khabystory,
            avatar: khaby,
            displayBorder: true
            ,
          ),
          StoryCard(
            labelText: "Cristiano Ronaldo",
            story: ronaldostory,
            avatar: cristiano,
            displayBorder: true,
          ),
          StoryCard(
            labelText: "Sergio Ramos",
            story: ramosstory,
            avatar: ramos,
            displayBorder: true,
          ),
          StoryCard(
            labelText: "Ducati",
            story: panigale,
            avatar: ducati,
            displayBorder: true,
          ),
        ],
      ),
    );
  }
}
