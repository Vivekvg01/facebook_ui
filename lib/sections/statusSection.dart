// import 'package:facebook_ui/assets.dart';
import 'package:facebook_ui/assets.dart';
import 'package:facebook_ui/widgets/avatar.dart';
import 'package:flutter/material.dart';

class StatusSection extends StatelessWidget {
  const StatusSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Avatar(
        displayImage: strell,
        displaStatus: false,
      ),
      title: TextField(
        decoration: InputDecoration(
          hintText: "What's on your mind?",
          hintStyle: TextStyle(color: Colors.black),
          enabledBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
        ),
      ),
    );
  }
}
