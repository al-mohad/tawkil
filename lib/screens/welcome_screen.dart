import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tawkil/screens/signin_screen.dart';
import 'package:tawkil/utils/constants.dart';

class WelcomeScreen extends StatelessWidget {
  static String id = 'welcomeScreen';
  const WelcomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kLightGreen,
      body: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              margin: EdgeInsets.only(top: 100.0, left: 30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Get', style: kBigText),
                  Text('Your Hajj', style: kBigText),
                  Text('Done!', style: kBigText),
                  SizedBox(height: 30.0),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Text('We will perform your hajj', style: kSmallText),
                        Text('you just relax', style: kSmallText)
                      ],
                    ),
                  ),
                  SizedBox(height: 30.0),
                  GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      CupertinoPageRoute(builder: (_) => SignInScreen()),
                    ),
                    child: Container(
                      height: 50,
                      width: 150,
                      decoration: BoxDecoration(
                          color: kLightGrey.withAlpha(90),
                          borderRadius: BorderRadius.circular(20)),
                      child:
                          Center(child: Text('Get Started', style: kSmallText)),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: Stack(
                alignment: Alignment.bottomRight,
                children: <Widget>[
                  Positioned(
                    bottom: 26,
                    right: 100,
                    child: Text('Tawkil', style: kBigText),
                  ),
                  Positioned(
                    right: -8,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 30, bottom: 20),
                      child: Icon(
                        FontAwesomeIcons.kaaba,
                        color: Colors.white,
                        size: 70,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
