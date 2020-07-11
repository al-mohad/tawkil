import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tawkil/screens/home_screen.dart';
import 'package:tawkil/utils/constants.dart';

class SignInScreen extends StatelessWidget {
  static String id = 'signin';
  const SignInScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 130.0, left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Sign in',
                style: kLargeText,
              ),
              Container(
                margin: EdgeInsets.only(right: 90.0),
                child: Form(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(height: 25.0),
                      TextFormField(
                        decoration: InputDecoration(
                            hintText: 'Mobile number', hintStyle: kHintStyle),
                      ),
                      SizedBox(height: 25.0),
                      TextFormField(
                        decoration: InputDecoration(
                            hintText: 'Password', hintStyle: kHintStyle),
                      ),
                      SizedBox(height: 15.0),
                      Align(
                        alignment: Alignment.topRight,
                        child: Text(
                          'Forgot pass.',
                          style: TextStyle(fontFamily: 'Product Sans'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  CupertinoPageRoute(
                    builder: (_) => HomeScreen(),
                  ),
                ),
                child: Container(
                  height: 45,
                  width: 110,
                  decoration: BoxDecoration(
                    color: kLightGreen,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Text(
                      'Sign in',
                      style: kSmallText,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              Text(
                'Need an account?',
                style: TextStyle(fontFamily: 'Product Sans'),
              ),
              SizedBox(height: 5.0),
              Text(
                'SignUp',
                style: TextStyle(
                    decoration: TextDecoration.underline,
                    fontFamily: 'Product Sans'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
