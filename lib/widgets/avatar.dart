import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  final String displayImage;
  final bool displaStatus;
  final bool displayBorder;
  final double width;
  final double height;
  Avatar({
    required this.displayImage,
    required this.displaStatus,
    this.displayBorder = false,
    this.width = 40, 
    this.height = 40,
  }); 

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: displayBorder
            ? Border.all(
                color: Colors.blueAccent,
                width: 3,
              )
            : Border(),
        shape: BoxShape.circle,
      ),
      padding: EdgeInsets.only(
        left: 4,
        right: 4,
      ),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(110),
            child: Image.asset(
              displayImage,
              width: width,
              height: height,
            ),
          ),
          displaStatus
              ? Positioned(
                  bottom: 0,
                  right: 1,
                  child: Container(
                    width: 15,
                    height: 15,
                    decoration: BoxDecoration(
                      color: Colors.greenAccent,
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.white,
                        width: 2,
                      ),
                    ),
                  ),
                )
              : SizedBox(),
        ],
      ),
    );
  }
}
