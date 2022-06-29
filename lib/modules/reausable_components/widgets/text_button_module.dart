import 'package:flutter/material.dart';

class ButtonOfText extends StatelessWidget {
  final String text;
  final VoidCallback onClick;
  final Color color;
  const ButtonOfText(
      {Key? key,
      required this.text,
      required this.onClick,
      required this.color})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextButton(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        onPressed: () {
          onClick();
        },
        child: Text(
          text,
          style: TextStyle(color: color),
        ));
  }
}
