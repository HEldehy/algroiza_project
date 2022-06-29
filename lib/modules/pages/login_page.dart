import 'package:flutter/material.dart';
import 'package:testt/modules/pages/register_page.dart';
import 'package:testt/modules/reausable_components/widgets/my_button.dart';
import 'package:testt/modules/reausable_components/widgets/text_button_module.dart';

import '../reausable_components/widgets/my_country_code.dart';
import '../reausable_components/widgets/my_outliner_button.dart';
import '../reausable_components/widgets/or_text.dart';

class LoginPage extends StatelessWidget {
  static String id = 'LoginPage';
  const LoginPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
                flex: 1,
                child: SizedBox(
                    width: double.infinity,
                    child: Image.asset(
                      'assets/image/p4.png',
                      fit: BoxFit.cover,
                    ))),
            Expanded(
                flex: 2,
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 22),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 15,
                        ),
                        Text(
                          'Welcome To Fashion Daily',
                          style: TextStyle(
                              fontSize: 16.0,
                              fontFamily: 'ICT',
                              fontWeight: FontWeight.w600,
                              color: Colors.grey[500]),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Text(
                              'Sign in',
                              style: TextStyle(
                                  fontSize: height / 26,
                                  fontFamily: 'JUN',
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            const Spacer(),
                            ButtonOfText(
                                text: 'Help',
                                onClick: () {},
                                color: Colors.blue),
                            Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25),
                                    color: Colors.blue),
                                child: const Icon(
                                  Icons.question_mark,
                                  size: 20,
                                  color: Colors.white,
                                )),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Phone Number',
                          style: TextStyle(
                              fontSize: 16.0,
                              fontFamily: 'ICT',
                              fontWeight: FontWeight.w600,
                              color: Colors.grey[500]),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const MyCountryCode(),
                        const SizedBox(
                          height: 15,
                        ),
                        MyButton(
                            onClick: () {},
                            height: height / 15.5,
                            buttonColor: Colors.blue,
                            radius: height / 100,
                            text: 'Sign In',
                            textColor: Colors.white),
                        const SizedBox(
                          height: 10,
                        ),
                        const MyOrText(),
                        const SizedBox(
                          height: 10,
                        ),
                        const MyOutlineButton(),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Don\'t has any account ?',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                fontFamily: 'ICT',
                                color: Colors.grey[500],
                              ),
                            ),
                            ButtonOfText(
                                text: 'Register here'.toUpperCase(),
                                color: Colors.blue,
                                onClick: () {
                                  Navigator.pushNamed(context, RegisterPage.id);
                                }),
                          ],
                        ),
                        Text(
                          'Use the application according  to policy rules.'
                          'Any kinds of version'
                          ' will be subject to sanction',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            fontFamily: 'ICT',
                            color: Colors.grey[500],
                          ),
                        ),
                      ],
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
