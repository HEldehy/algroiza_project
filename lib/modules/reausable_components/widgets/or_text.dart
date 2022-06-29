import 'package:flutter/material.dart';

class MyOrText extends StatelessWidget {
  const MyOrText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 1,
          width: width / 2.6,
          color: Colors.grey[500],
        ),
        SizedBox(
          width: width / 39.2,
        ),
        Center(
          child: Text(
            'Or',
            style: TextStyle(
                fontSize: 16.0,
                fontFamily: 'ICT',
                fontWeight: FontWeight.w600,
                color: Colors.grey[500]),
          ),
        ),
        SizedBox(
          width: width / 39.2,
        ),
        Container(
          height: 1,
          width: width / 2.6,
          color: Colors.grey,
        ),
      ],
    );
  }
}
