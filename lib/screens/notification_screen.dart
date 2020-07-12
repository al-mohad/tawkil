import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tawkil/utils/constants.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffeeeef0),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Text(
              'NOTIFICATION',
              style: kBigText.copyWith(color: kDarkGrey),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 56,
                itemBuilder: (_, index) {
                  return Stack(
                    children: <Widget>[
                      Container(
                        margin:
                            EdgeInsets.only(top: 20.0, left: 10.0, right: 20.0),
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          ),
                        ),
                        child: Text(
                            'This is the details page of the big data web page i designed. The first screen is 2D illustrations of my business.'),
                      ),
                      RotatedBox(
                        quarterTurns: -95,
                        child: Container(
                            margin: EdgeInsets.only(
                                right: 10.0, top: 0.0, bottom: 50),
                            child: Icon(FontAwesomeIcons.solidBell)),
                      )
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
