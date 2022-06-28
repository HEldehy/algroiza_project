import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:testt/modules/pages/register_page.dart';
import 'modules/pages/login_page.dart';
import 'modules/pages/on_boarding_page.dart';
import 'modules/reausable_components/widgets/my_country_code.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  static String id='LoginPage';
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'InterShip',
      theme: ThemeData(
        appBarTheme:const AppBarTheme(
          backwardsCompatibility: false,
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
            statusBarIconBrightness: Brightness.dark,
          ),
        ),

        primarySwatch: Colors.blue,
      ),
      routes: {
        OnBoardingPage.id:(context)=>const OnBoardingPage(),
        LoginPage.id:(context)=>const LoginPage(),
        RegisterPage.id:(context)=>const RegisterPage(),

      },
      initialRoute: OnBoardingPage.id,
    );
  }
}


