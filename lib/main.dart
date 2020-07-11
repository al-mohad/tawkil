import 'package:flutter/material.dart';
import 'package:tawkil/screens/home_screen.dart';
import 'package:tawkil/screens/signin_screen.dart';
import 'package:tawkil/screens/signup_screen.dart';
import 'package:tawkil/screens/welcome_screen.dart';
import 'package:tawkil/utils/constants.dart';

void main() => runApp(Tawkil());

class Tawkil extends StatelessWidget {
  const Tawkil({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: kLightGreen),
      routes: {
        Welcomescreen.id: (context) => Welcomescreen(),
        SignInScreen.id: (context) => SignInScreen(),
        SignUpScreen.id: (context) => SignUpScreen(),
        HomeScreen.id: (context) => HomeScreen()
      },
      initialRoute: Welcomescreen.id,
    );
  }
}
