import 'package:flutter/material.dart';

class MyOutlineButton extends StatelessWidget {
  const MyOutlineButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Container(
      height: 50,
      width: double.infinity,
      child: OutlinedButton(
          style: OutlinedButton.styleFrom(
              side: BorderSide(
                  width: 2,
                  style: BorderStyle.solid,
                  color:
                      Color.alphaBlend(Color(0xFF0091ea), Color(0xFF0091ea)))),
          onPressed: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                  height: height / 25,
                  width: height / 25,
                  child: Image.asset('assets/image/p5.png')),
              SizedBox(
                width: height / 60,
              ),
              const Text('Sign in with google')
            ],
          )),
    );
  }
}
