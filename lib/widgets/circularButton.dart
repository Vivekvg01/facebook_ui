import 'package:flutter/material.dart';

class CircularButton extends StatelessWidget {
  final IconData iconButton;
  final void Function() buttonAction;
  final Color iconColor;

  CircularButton({
    required this.iconButton,
    required this.buttonAction,
     this.iconColor = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[300],
        shape: BoxShape.circle,
      ),
      child: IconButton(
        onPressed: buttonAction,
        icon: Icon(
          iconButton,
          color: iconColor,
        ),
      ),
    );
  }
}
