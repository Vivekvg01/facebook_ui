import 'package:flutter/material.dart';

Widget headerButton({
    required String buttonText,
    required IconData buttonIcon,
    required void Function() buttonAction,
    required Color buttonColor,
  }) {
    return ElevatedButton.icon(
      onPressed: buttonAction,
      icon: Icon(
        buttonIcon,
        color: buttonColor,
      ),
      label: Text(
        buttonText,
        style: TextStyle(color: Colors.black),
      ),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.white),
        elevation: MaterialStateProperty.all(0),
      ),
    );
  }