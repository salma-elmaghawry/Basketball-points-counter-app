import 'package:flutter/material.dart';

class CustomElevatedbutton extends StatelessWidget {
  CustomElevatedbutton(
      {super.key,
      required this.onPressed,
      required this.backgroundColor,
      required this.text});
  final String text;
  void Function()? onPressed;
  Color? backgroundColor;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor, minimumSize:const  Size(150, 50)),
      onPressed: onPressed,
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 15,
          color: Colors.white,
        ),
      ),
    );
  }
}
