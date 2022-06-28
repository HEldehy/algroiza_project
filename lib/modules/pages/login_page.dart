import 'package:flutter/material.dart';
import 'package:testt/modules/pages/register_page.dart';
import 'package:testt/modules/reausable_components/widgets/my_button.dart';
import 'package:testt/modules/reausable_components/widgets/text_button_module.dart';

import '../reausable_components/widgets/my_country_code.dart';
import '../reausable_components/widgets/my_outliner_button.dart';

class LoginPage extends StatelessWidget {
  static String id = 'LoginPage';
  const LoginPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
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
                  physics:const BouncingScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          top: height / 26,
                          left: height / 40,
                        ),
                        child: Text(
                          'Welcome To Fashion Daily',
                          style: TextStyle(
                              fontSize: 16.0,
                              fontFamily: 'ICT',
                              fontWeight: FontWeight.w600,
                              color: Colors.grey[500]),
                        ),
                      ),
                      SizedBox(
                        height: height / 80,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: height / 40,
                          right: height / 80,
                        ),
                        child: Row(
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
                                text: 'Help', onClick: () {}, color: Colors.blue),
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
                      ),
                      SizedBox(
                        height: height / 80,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: height / 40,
                        ),
                        child: Text(
                          'Phone Number',
                          style: TextStyle(
                              fontSize: 16.0,
                              fontFamily: 'ICT',
                              fontWeight: FontWeight.w600,
                              color: Colors.grey[500]),
                        ),
                      ),
                      SizedBox(
                        height: height / 80,
                      ),

                      const MyCountryCode(),
                      SizedBox(
                        height: height / 80,
                      ),
                      MyButton(
                          onClick: () {},
                          height: height / 15.5,
                          width: double.infinity,
                          buttonColor: Colors.blue,
                          radius: height / 100,
                          text: 'Sign In',
                          textColor: Colors.white),
                      SizedBox(
                        height: height / 100,
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
                        height: height / 100,
                      ),
                      const MyOutlineButton(),
                      SizedBox(
                        height: height / 30,
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
                      Padding(
                        padding: EdgeInsets.only(left: height / 35),
                        child: Text(
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
                      ),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
