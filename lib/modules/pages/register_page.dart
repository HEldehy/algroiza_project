import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:testt/modules/pages/login_page.dart';
import '../reausable_components/widgets/my_button.dart';
import '../reausable_components/widgets/my_country_code.dart';
import '../reausable_components/widgets/my_form_field.dart';
import '../reausable_components/widgets/my_outliner_button.dart';
import '../reausable_components/widgets/or_text.dart';
import '../reausable_components/widgets/text_button_module.dart';

class RegisterPage extends StatelessWidget {
  static String id = 'RegisterPage';
  const RegisterPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    var emailController = TextEditingController();
    var passwordController = TextEditingController();
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
                flex: 1,
                child: Stack(
                  alignment: Alignment.centerLeft,
                  children: [
                    SizedBox(
                        width: double.infinity,
                        child: Image.asset(
                          'assets/image/p4.png',
                          fit: BoxFit.cover,
                        )),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.black),
                        child: IconButton(
                          onPressed: () {
                            Navigator.pushNamed(context, LoginPage.id);
                          },
                          icon: const Icon(
                            Icons.arrow_back_ios,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                )),
            Expanded(
                flex: 5,
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 23),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Welcome To Fashion Daily',
                          style: TextStyle(
                              fontSize: 16.0,
                              fontFamily: 'ICT',
                              fontWeight: FontWeight.w600,
                              color: Colors.grey[500]),
                        ),
                        Row(
                          children: [
                            Text(
                              'Register',
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
                          height: 5,
                        ),
                        Text(
                          'Email',
                          style: TextStyle(
                              fontSize: 16.0,
                              fontFamily: 'ICT',
                              fontWeight: FontWeight.w600,
                              color: Colors.grey[500]),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        MyFormField(
                            controller: emailController,
                            type: TextInputType.emailAddress,
                            icon: Icons.email,
                            label: 'Eg .example@gmail.com',
                            validator: () {
                              'Email must Not be empty';
                            }),
                        const SizedBox(
                          height: 5,
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
                          height: 10,
                        ),
                        const MyCountryCode(),
                        const SizedBox(
                          height: 10,
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Text(
                          'Password',
                          style: TextStyle(
                              fontSize: 16.0,
                              fontFamily: 'ICT',
                              fontWeight: FontWeight.w600,
                              color: Colors.grey[500]),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        MyFormField(
                            controller: passwordController,
                            type: TextInputType.visiblePassword,
                            icon: Icons.lock,
                            suffix: Icons.visibility,
                            label: 'Password',
                            validator: () {
                              'Password must Not be empty';
                            }),
                        const SizedBox(
                          height: 15,
                        ),
                        MyButton(
                            onClick: () {},
                            height: height / 15.5,
                            //  width: double.infinity,
                            buttonColor: Colors.blue,
                            radius: height / 100,
                            text: 'Register',
                            textColor: Colors.white),
                        const SizedBox(
                          height: 5,
                        ),
                        const MyOrText(),
                        const SizedBox(
                          height: 5,
                        ),
                        const MyOutlineButton(),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'has any account ?',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                fontFamily: 'ICT',
                                color: Colors.grey[500],
                              ),
                            ),
                            ButtonOfText(
                                text: 'Sign in here',
                                color: Colors.blue,
                                onClick: () {
                                  Navigator.pushNamed(context, LoginPage.id);
                                }),
                          ],
                        ),
                        Text(
                          'By regestering your account ,you are agree to our',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            fontFamily: 'ICT',
                            color: Colors.grey[500],
                          ),
                        ),
                        Center(
                          child: ButtonOfText(
                              text: 'terms and condition',
                              color: Colors.blue,
                              onClick: () {}),
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
