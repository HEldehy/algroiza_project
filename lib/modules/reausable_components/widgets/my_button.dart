import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final VoidCallback onClick;
  final double height;
  final double width;
  final Color buttonColor;
  final double radius;
  final String text;
  final Color textColor;
  const MyButton({
    Key? key,
    required this.onClick,
    required this.height,
    required this.width,
    required this.buttonColor,
    required this.radius,
    required this.text,
    required this.textColor

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        onClick();
      },
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
            color: buttonColor, borderRadius: BorderRadius.circular(radius)),
        child:  Center(
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(color:textColor),
          ),
        ),
      ),
    );
  }
}
