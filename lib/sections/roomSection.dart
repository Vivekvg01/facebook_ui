import 'package:facebook_ui/assets.dart';
import 'package:facebook_ui/widgets/avatar.dart';
import 'package:flutter/material.dart';

class RoomSection extends StatelessWidget {
  const RoomSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.all(10),
        children: [
          createRoomButton(),
          Avatar(
            displayImage: strell,
            displaStatus: true,
          ),
          Avatar(
            displayImage: ducati,
            displaStatus: true,
          ),
          Avatar(
            displayImage: aprilia,
            displaStatus: true,
          ),
          Avatar(
            displayImage: cristiano,
            displaStatus: true,
          ),
          Avatar(
            displayImage: kbfc,
            displaStatus: true,
          ),
          Avatar(
            displayImage: messi,
            displaStatus: true,
          ),
          Avatar(
            displayImage: ramos,
            displaStatus: true,
          ),
          Avatar(
            displayImage: messi,
            displaStatus: true,
          ),
          Avatar(
            displayImage: ramos,
            displaStatus: true,
          ),
          Avatar(
            displayImage: tommy,
            displaStatus: true,
          ),
          Avatar(
            displayImage: khaby,
            displaStatus: true,
          ),
        ],
      ),
    );
  }

  Widget createRoomButton() {
    return Container(
      padding: EdgeInsets.only(
        left: 5,
        right: 5,
      ),
      child: TextButton.icon(
        onPressed: () {},
        icon: Icon(
          Icons.video_call,
          color: Colors.purple,
        ),
        label: Text("Create \nRoom"),
        style: ButtonStyle(
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
              side: BorderSide(
                color: Colors.blue.shade100,
                width: 2,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
