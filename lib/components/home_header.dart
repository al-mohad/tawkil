import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tawkil/utils/constants.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        margin: EdgeInsets.only(top: 50.0, left: 30.0, right: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Assalamu Alaikum',
                  style: kLargeText.copyWith(
                      fontSize: 18, fontWeight: FontWeight.normal),
                ),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/man.png'),
                    ),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                )
              ],
            ),
            Text(
              'Good Morning',
              style: kLargeText.copyWith(fontSize: 35),
            ),
            SizedBox(height: 30.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  width: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: kGreen),
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: Icon(
                        FontAwesomeIcons.search,
                        color: kLightGreen.withAlpha(150),
                      ),
                      hintText: 'Search here',
                      hintStyle: kHintStyle.copyWith(
                        color: kLighterGreen.withAlpha(80),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 45.0,
                  width: 45.0,
                  decoration: BoxDecoration(
                    color: kLighterGreen.withAlpha(150),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Icon(
                    FontAwesomeIcons.microphoneAlt,
                    color: Colors.white,
                    size: 38,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
