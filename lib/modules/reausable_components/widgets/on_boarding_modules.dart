import 'package:flutter/material.dart';
import 'package:testt/models/on_boarding_model.dart';

class OnBoardingBuildModules extends StatelessWidget {
  const OnBoardingBuildModules({Key? key, required this.model})
      : super(key: key);
  final OnBoarding model;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: Image.asset(model.image)),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Text(
            model.title,
            textAlign: TextAlign.center,
            style: const TextStyle(
                fontSize: 20.0, fontFamily: 'ICT', fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(
          height: 10.0,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Text(
            model.text,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 14.0,
                fontFamily: 'ICT',
                fontWeight: FontWeight.w500,
                color: Colors.grey[500]),
          ),
        ),
      ],
    );
  }
}
